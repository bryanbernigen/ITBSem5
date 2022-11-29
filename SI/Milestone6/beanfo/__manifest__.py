{
    'name': "Beanfo",
    'summary': 'Odoo module to keep track of customer, transaction, and promotion data',
    'description': 'An Odoo module as a centralized repository for customer data, transaction, and promotions',
    'sequence': -100,
    'author': "Owen Christian Wijaya",
    'category': 'Uncategorized',
    'version': '1.0',
    'depends': ['base','mass_mailing'],
    'data': [
        'security/ir.model.access.csv',
        'views/beanfo_forms.xml',
        'views/beanfo_menus.xml',
        'views/beanfo_trees.xml',
    ],
    'demo': [

    ],
    'qweb': [

    ],
    'installable': True,
    'application': True,
    'auto_install': False,
}