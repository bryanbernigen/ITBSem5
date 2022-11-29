import datetime
from math import floor
from odoo import models, fields, api


class Customer(models.Model):
    _name = 'beanfo.customer'
    _description = 'Information about customer'
    _rec_name = 'nama'

    nama = fields.Char(
        string = 'Nama',
        required = True
    )

    email = fields.Char(
        string = 'E-mail',
        required = True
    )

    nomor_telpon = fields.Char(
        string = 'Nomor Telpon',
        required = True
    )

    jumlah_point = fields.Integer(
        string = 'Jumlah Poin',
        default = 0
    )

    boleh_dikontak = fields.Boolean(
        string = 'Apakah pelanggan ingin menerima promosi?',
        default = True
    )

    @api.model
    def create(self,vals):
        #Todo code
        #query to mailing_contact insert name and email
        self.env.cr.execute("SELECT id FROM mailing_list WHERE name = 'beanfo'");
        try:
            mailing_list_id = self.env.cr.fetchone()[0]
        except:
            self.env.cr.execute("INSERT INTO mailing_list (name,active,is_public) VALUES ('beanfo',true,true)");
            self.env.cr.execute("SELECT id FROM mailing_list WHERE name = 'beanfo'");
            mailing_list_id = self.env.cr.fetchone()[0]
        self.env.cr.execute("INSERT INTO mailing_contact (name,email,email_normalized) VALUES (%s,%s,%s)",(vals['nama'],vals['email'],vals['email']))
        self.env.cr.execute("SELECT id FROM mailing_contact WHERE name = %s AND email = %s",(vals['nama'],vals['email']))
        if(vals['boleh_dikontak']):
            #query to mailing_contact_list insert contact_id and list_id
            self.env.cr.execute("INSERT INTO mailing_contact_list_rel (contact_id,list_id,opt_out) VALUES (%s,%s,%s)",(self.env.cr.fetchone()[0],mailing_list_id,'f'))
        else:
            self.env.cr.execute("INSERT INTO mailing_contact_list_rel (contact_id,list_id,opt_out) VALUES (%s,%s,%s)",(self.env.cr.fetchone()[0],mailing_list_id,'t'))
        res = super(Customer, self).create(vals)
        return res 


class Promotion(models.Model):
    _name = 'beanfo.promotion'
    _description = 'Information about promotion'
    _rec_name = 'kode_promo'

    nama_promo = fields.Char(
        string = 'Nama Promo',
        required = True
    )

    kode_promo = fields.Char(
        string = 'Kode Promo',
        required = True
    )

    tanggal_mulai = fields.Date(
        string = 'Tanggal Mulai',
        required = True
    )

    tanggal_selesai = fields.Date(
        string = 'Tanggal Selesai',
        required = True
    )

    kuota = fields.Integer(
        string = 'Kuota Pemakaian',
        required = True
    )

    deskripsi = fields.Text(
        string = 'Deskripsi Promo',
        required = True
    )

class PersonalPromo(models.Model):
    _name = 'beanfo.personal_promo'
    _description = 'Information about personal promotions'
    _rec_name = 'kode_promo'

    nama_pelanggan = fields.Many2one(
        'beanfo.customer',
        string = 'Nama pelanggan',
        required = True
    )
    
    nama_promo = fields.Char(
        string = 'Nama Promo',
        required = True
    )

    kode_promo = fields.Char(
        string = 'Kode Promo',
        required = True
    )

    deskripsi = fields.Char(
        string = 'Deskripsi Promo',
        default = '',
    )

    terpakai_sebelumnya = fields.Boolean(
        string = 'Sudah pernah dipakai?',
        default = False
    )

    jumlah_point = fields.Integer(
        string = 'Jumlah point penggunaan',
        default = 0
    )
    

class Transaction(models.Model):
    _name = 'beanfo.transaction'
    _description = 'Information about transaction'

    nama_pelanggan = fields.Many2one(
        'beanfo.customer',
        string = 'Nama Pelanggan',
        required = True
    )

    tanggal = fields.Date(
        string = 'Tanggal Transaksi',
        required = True
    )

    total = fields.Integer(
        string = 'Total Transaksi',
        required = True
    )

    poin = fields.Integer(
        string = 'Poin yang didapat',
        required = True
    )

    id_promo_umum = fields.Many2one(
        'beanfo.promotion',
        string = 'Kode Promo Umum',
        required = False,
        default = ''
    )

    id_promo_khusus = fields.Many2one(
        'beanfo.personal_promo',
        string = 'Kode Promo Khusus',
        required = False,
        default = ''
    )

    @api.model
    def create(self,vals):
        #Get Promotion 
        self.env.cr.execute("SELECT * FROM beanfo_customer WHERE id = %s",(vals['nama_pelanggan'],))
        customer = self.env.cr.fetchone()
        customer_points = customer[4]

        if (type(vals['id_promo_umum']) is not bool):
            self.env.cr.execute("SELECT * FROM beanfo_promotion WHERE id = %s",(vals['id_promo_umum'],))
            promo = self.env.cr.fetchone()

            #check if promo is valid
            if (promo):
                #check validity date
 
                # tanggal mulai
                if(promo[3] > datetime.datetime.strptime(vals['tanggal'],'%Y-%m-%d').date()):
                    #promo havent started yet
                    raise Warning("Promo belum dimulai")
                # tanggal selesai
                elif(promo[4] < datetime.datetime.strptime(vals['tanggal'],'%Y-%m-%d').date()):
                    #promo already ended
                    raise Warning("Promo sudah berakhir")
                # stok habis
                elif(promo[5] <= 0):
                    #promo already used
                    raise Warning("Promo sudah habis")
                else:
                    #promo is valid
                    #update promo kuota
                    self.env.cr.execute("UPDATE beanfo_promotion SET kuota = %s WHERE nama_promo = %s",(promo[5]-1,promo[1]))
                  

        if (type(vals['id_promo_khusus']) is not bool):
            self.env.cr.execute("SELECT * FROM beanfo_personal_promo WHERE id = %s",(vals['id_promo_khusus'],))
            personal_promo = self.env.cr.fetchone()


            print(personal_promo)
    
            if (personal_promo != False and personal_promo[6] <= customer[4]):
                self.env.cr.execute("UPDATE beanfo_personal_promo SET terpakai_sebelumnya = True WHERE id = %s",(vals['id_promo_khusus'],))
                self.env.cr.execute("UPDATE beanfo_customer SET jumlah_point = jumlah_point - %s WHERE id = %s",(personal_promo[6], vals['nama_pelanggan']))
        

        #update customer point
        vals['poin'] = floor(vals['total']/1000)

        earned_points = vals['poin'] + customer_points

        new_promos = ""

        self.env.cr.execute(f'SELECT * FROM beanfo_personal_promo WHERE kode_promo = \'PROMO30-{vals["nama_pelanggan"]}\'AND (terpakai_sebelumnya = False)');
        promo30 = self.env.cr.fetchone()

        if (earned_points >= 300 and not promo30):
            new_promos = "INSERT INTO beanfo_personal_promo (nama_pelanggan, nama_promo, kode_promo, deskripsi, jumlah_point, terpakai_sebelumnya) VALUES ";
            new_promos += f'(\'{vals["nama_pelanggan"]}\', \'Diskon 30%\', \'PROMO30-{vals["nama_pelanggan"]}\', \'Diskon 30% untuk pembelian selanjutnya (khusus pelanggan {vals["nama_pelanggan"]})\', 300, False)'
        
        self.env.cr.execute(f'SELECT * FROM beanfo_personal_promo WHERE kode_promo = \'PROMO40-{vals["nama_pelanggan"]}\' and terpakai_sebelumnya = False');
        promo40 = self.env.cr.fetchone()

        if (earned_points >= 400 and not promo40):
            new_promos += f', (\'{vals["nama_pelanggan"]}\', \'Diskon 40%\', \'PROMO40-{vals["nama_pelanggan"]}\', \'Diskon 40% untuk pembelian selanjutnya (khusus pelanggan {vals["nama_pelanggan"]})\', 400, False)'

        self.env.cr.execute(f'SELECT * FROM beanfo_personal_promo WHERE kode_promo = \'PROMO50-{vals["nama_pelanggan"]}\' and terpakai_sebelumnya = False');
        promo50 = self.env.cr.fetchone()
        if (earned_points >= 500 and not promo50):
            new_promos += f', (\'{vals["nama_pelanggan"]}\', \'Diskon 50%\', \'PROMO50-{vals["nama_pelanggan"]}\', \'Diskon 50% untuk pembelian selanjutnya (khusus pelanggan {vals["nama_pelanggan"]})\', 500, False)'



        if new_promos != "":
            new_promos += ';'
            self.env.cr.execute(new_promos)

        self.env.cr.execute("UPDATE beanfo_customer SET jumlah_point = jumlah_point + %s WHERE id = %s",(vals['poin'],vals['nama_pelanggan']))
        #save transaction

        return super(Transaction, self).create(vals)