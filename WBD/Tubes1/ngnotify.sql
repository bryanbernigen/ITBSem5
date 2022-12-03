PGDMP     +                
    z            dak3kf6ed4dot5     14.5 (Ubuntu 14.5-1.pgdg20.04+1)    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33499800    dak3kf6ed4dot5    DATABASE     c   CREATE DATABASE dak3kf6ed4dot5 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dak3kf6ed4dot5;
                maafomxdjrciiu    false            �           0    0    DATABASE dak3kf6ed4dot5    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE dak3kf6ed4dot5 FROM PUBLIC;
                   maafomxdjrciiu    false    4326            �           0    0    dak3kf6ed4dot5    DATABASE PROPERTIES     R   ALTER DATABASE dak3kf6ed4dot5 SET search_path TO '$user', 'public', 'heroku_ext';
                     maafomxdjrciiu    false                        2615    33499805 
   heroku_ext    SCHEMA        CREATE SCHEMA heroku_ext;
    DROP SCHEMA heroku_ext;
                uefs4t52rrluhh    false            �           0    0    SCHEMA heroku_ext    ACL     4   GRANT USAGE ON SCHEMA heroku_ext TO maafomxdjrciiu;
                   uefs4t52rrluhh    false    6            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO maafomxdjrciiu;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   maafomxdjrciiu    false    5            �           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO maafomxdjrciiu;
                   postgres    false    841            �            1259    33507509    albums    TABLE     /  CREATE TABLE public.albums (
    album_id integer NOT NULL,
    judul character varying(64) NOT NULL,
    penyanyi character varying(128) NOT NULL,
    total_duration integer NOT NULL,
    image_path character varying(2048) NOT NULL,
    tanggal_terbit date NOT NULL,
    genre character varying(64)
);
    DROP TABLE public.albums;
       public         heap    maafomxdjrciiu    false            �            1259    33507508    album_album_id_seq    SEQUENCE     �   ALTER TABLE public.albums ALTER COLUMN album_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.album_album_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          maafomxdjrciiu    false    213            �            1259    33507917    sessions    TABLE     �   CREATE TABLE public.sessions (
    session_id character varying(32) NOT NULL,
    access integer,
    data character varying(1024)
);
    DROP TABLE public.sessions;
       public         heap    maafomxdjrciiu    false            �            1259    33507701    songs    TABLE     t  CREATE TABLE public.songs (
    song_id integer NOT NULL,
    judul character varying(64) NOT NULL,
    penyanyi character varying(128),
    tanggal_terbit date NOT NULL,
    genre character varying(64),
    duration integer NOT NULL,
    audio_path character varying(256) NOT NULL,
    image_path character varying(2048),
    album_id integer NOT NULL,
    lyric text
);
    DROP TABLE public.songs;
       public         heap    maafomxdjrciiu    false            �            1259    33507700    song_song_id_seq    SEQUENCE     �   ALTER TABLE public.songs ALTER COLUMN song_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.song_song_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          maafomxdjrciiu    false    215            �            1259    33504481    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    email character varying(256) NOT NULL,
    password character varying(256) NOT NULL,
    username character varying(256) NOT NULL,
    "isAdmin" boolean NOT NULL
);
    DROP TABLE public.users;
       public         heap    maafomxdjrciiu    false            �            1259    33504480    user_user_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          maafomxdjrciiu    false    211            �          0    33507509    albums 
   TABLE DATA           n   COPY public.albums (album_id, judul, penyanyi, total_duration, image_path, tanggal_terbit, genre) FROM stdin;
    public          maafomxdjrciiu    false    213   8        �          0    33507917    sessions 
   TABLE DATA           <   COPY public.sessions (session_id, access, data) FROM stdin;
    public          maafomxdjrciiu    false    216   D$       �          0    33507701    songs 
   TABLE DATA           �   COPY public.songs (song_id, judul, penyanyi, tanggal_terbit, genre, duration, audio_path, image_path, album_id, lyric) FROM stdin;
    public          maafomxdjrciiu    false    215   a$       �          0    33504481    users 
   TABLE DATA           N   COPY public.users (user_id, email, password, username, "isAdmin") FROM stdin;
    public          maafomxdjrciiu    false    211   7�       �           0    0    album_album_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.album_album_id_seq', 14, true);
          public          maafomxdjrciiu    false    212            �           0    0    song_song_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.song_song_id_seq', 71, true);
          public          maafomxdjrciiu    false    214            �           0    0    user_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_user_id_seq', 16, true);
          public          maafomxdjrciiu    false    210            I           2606    33507515    albums album_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT album_pkey PRIMARY KEY (album_id);
 ;   ALTER TABLE ONLY public.albums DROP CONSTRAINT album_pkey;
       public            maafomxdjrciiu    false    213            M           2606    33507923    sessions sessions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (session_id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            maafomxdjrciiu    false    216            K           2606    33507707    songs song_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.songs
    ADD CONSTRAINT song_pkey PRIMARY KEY (song_id);
 9   ALTER TABLE ONLY public.songs DROP CONSTRAINT song_pkey;
       public            maafomxdjrciiu    false    215            G           2606    33504487    users user_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 9   ALTER TABLE ONLY public.users DROP CONSTRAINT user_pkey;
       public            maafomxdjrciiu    false    211            N           2606    33507708 %   songs song_album_id_to_album_album_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.songs
    ADD CONSTRAINT song_album_id_to_album_album_id FOREIGN KEY (album_id) REFERENCES public.albums(album_id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.songs DROP CONSTRAINT song_album_id_to_album_album_id;
       public          maafomxdjrciiu    false    4169    215    213            �   �  x��T]o�8}v�_X�J8��JhU���0����qf�$vj;�-�~�L[x��h$[��9����c�N����F�.U'^��r��$A;�wJ��������)�S:�%�]2�Ӓ	���m�܎Čg$c�����[ī�"�$�@o�����7˵7��_����N가 �b�����Kc��mb��oA��(�~���@�^��Q���n�vTj��$��o�პ*#,B�׫��i�Z�P�#�V���ЪUi�Ħ�m��"�Pa�@�Pf�F�P �Y�)+(�(�i�ԂV���H�H፠���Ò�A�&�N�Ajp��C}���U
�,7`Ƅ3�Ktm���	���o��.�5~��A��*3:|f�r�<?�U�I�p
4̆*/{G���>h�9e)�6On���$q�&'Y��Y��8��4aU��2n惤͚��sHX�x������8�KHћ`��*�wp��2�ɐ�4+��`��3���!����A���<8>�h�W�N�?_�E���9J��7%��鳸|�,�����f����ϫ*p���{3��Nj��p8��`�Ce�#�*r�.1���P�E��_I�dY�+�pق�j��4!������$�6c���#G�O]h���Z+��\Ԇmwi驢#}hY
,n�2牐B�e-xS	H�J�U��h1g3k�.eo�����W&$3�M�|��]o��{�4�Q2��ngX0v�H(8�e/�d�ۥ��<Ow5W�f�|��P�y��r8�7V�3���=�C�����4`of�̈́�y���M�s��d�ӀϺ_��Σ�ZⅲᲚ�cO
��~�!��,�:^�c_Np߾'�gWM�Z|8_���v�R�V_jm�/��꾼�x�����w�[E��-���&nݷq����r��ct�ËWg��G�Z�+8G���<�����8�?ƢE����NZ�&�/�W4M
aHTe�eq-��,xW�$�4�>�Ǔ������X��      �      x������ � �      �      x���ioW�0�Y�5�k�l�ƥ��U�cɑɢXɢ���� NZ�����Λ�Qzl��mw�ix�Vbw�������(���>�9���*��1�;�cK�Sgy��0s��jǜ������\�ߙ��pt������1gX3����Q�g�Q�v�H5����+���pW�摚�p�T��v��x�՛'[���;�Vo�� ���n��t��5����	��gXw��BSN�Qxx�o���sZM�En3<�4ʝ�\Α�uD���a�mU�V������΅��\[��9G/؅|�0�U�̕���kT��fWK����3W��e�R;|��2��8?����_��r��L/��]<�
I���w��G�g:~[�ٻ;����v���������_}�_��ٻ�O_��pW�?�������um���o�#MY��0ls���s�oZ����#�L��Xb�W���o^��܆����C�?]/�ˍ�qL/���6��p���������������&�����Ǉ������������8��#�0rc�������Km����g��?����%9��r<­����qb^���[t�x���{�N`I���ى57�U���p���V<�"́_����ѭ��8��{��8lX������_�S�����������y������u�ԛ�[;?�%�t���N�#x�.�fC<\��On����	�+il^�<�7��%n�iK^4\;�-����������|U����������o�	 �� �x���4X�� {q�;���_ޓ`�'��Q@�΋O��b�r�!�OB�������8N<ܿ����w�|���Cg�= ?ȝ'0v�-����c���1�c�C�QH1F13���c��C��g��1���DMk���v�5�O�,d8�b�-e<Q+��D?~ǘYFlC�{����v�l�̍��ι�g�)�����o������0t��y�.@�`��T�\ ANS�~���똩!�xr�v~x6���&��#���Ժb� �o6�����wt4 Xä	�J��]���I����w[1}Ӑ�|��
s�փg�߿�G$�ty����v~�����|��ս�*�h�Ê�6�N/T�浆��0Y�(�}>2xq�I����_mi�rM/-�� �%Y}���������P��kx��PFC����*���4�j�:M /-�;�E��)�ySl�ݽJ�{",D&ఞ��~���.���ǿĜ�81�#%B[��	��b?'��V���`�!�M1c��ٻK{ח��j��wm>���y.<>�~���+��5�6����{ݏ9n��p ��ߔ;�W 	�2r� Ø&�Ya����	�b�8,qkr6B|���=����n�u �p���aŎu����ڋu`�_�VL8����N)�阹ɨc��P��k
�!�;	u��J�A��6uL{?�Clw�|��9s�Uq��+�ך9�T�c��������.8�ـ��\n.���kf
�v�|�����q'h�-�g��߿�v��ťsW��k�����٦�k(K��3Y���k%H<Z���m5T #��?	�,N ����pK��� ���!�����M����(���eA��.�a���|6p��w�:�2�Ky3 69�|p����/�%_D��K�%dD[�+2̟>'6�<��/$��a���ցHk���t�JГl��#[�K���פM~�-q���������>������'R�������G�,�\ڰK:�_����fc�b�����o2 ������l>�H�W<E��.0���!��y�I]iKó ��}���K Dߢ�����}�8HM���<"�5�u/(���� A��'���g�	Ky��r�A{��D\�/���I��2<�n<�H�#���9m��G;۟�M�f�D��~��Ŷ�`5o��&���=n}���6��6�^!���3$Y�VZ���?���|��ۉ5�Bb[Ъ@]��r����03�!�L��NĺA���W�rV2����{��xA�A@�A����=q5Fn�jX�.N�zW���oe#fFZA��m�	#����B.�ӏ���B�_O��=��.�����2��y�xHjާ[�Y�2��P� A(���E�s�����?���ֿ�	�Aҳgl���p�߾���_y�M@w��km���L�Al�K�@� �j|������7�����Ưx3r�h��8��k����tD,	^tu4�D��' ��f�6P\����+I��Kc BL�PV�σ͍�'���SX��D����ё���#U��|[,[�Jp�m�t���Ot�����������<-f����;�� %��[Izy	b:�JR'��[(��|��o��?�랁Jڙ��dT���dK �w����s:]���+;]�ކ�XY�e	�����c� 	�L V^�%냧���~�
���|L�&��(��7�w^m��F��O!/I�^���P���o�,D�BA�%tz��r���֓��-�L���� C�A�^�v��C��}�^z�j�{Ŵ�:�§:�fo�=I�.w�6>(�l{Ŷrs���f�h�,w��bn�ҍ��r�YR�$�<25���f}[ꤛR-��֛؄]�aEM�i���A� ��7��3��G�h��a�0�ڏ�U�2IChE�"�K��>���G��l��0vgc��+6?HM��%���K1[��kR��~��#^KQ���m
�"jl$ke�W���	hC{�J�A\�z�6��		Y�&��$T,�T lBg.< Hv^Ķ!<�a�jl�#1Q	��u�ͤ�Ǟ��|b�JJ�
��8
����Mi*
����7J��&���tu�����?�#��ץ��� /��2	D����	����+ic��E�d8q�,���)����y�n*���x&n��ش2�3��������KKκ��_�5m�P4l��mlαp��;z�3�^�
钼��@���/��7�6���>C�?}��+�h]�g�[�׷�AT��m)^�����΋��|�+a�f���;��{f���.zUwf�|���'�p!#?��W��T�󧮖��[���ʩh��Q;u���/�'�ByL�b��ω�>E�ia��D*8�'H��c��o���kAB'���%RAd�z�����/���ol5��/�� uQ~4���!:�{���v}<G�'�Vt@���S���{]�ɂ2V��_�M�����|Ei������7bS,l�����%OW�q��F��l�A�ş���)U�,s8�0O���1�#�\��C<T���e��=��翛Ն�E�dUK17݈�����(^�ے���1ˢ7 ��u1| `z�R�ȗC~� �p�o��+�cC~R��m&���KN��m	���$}�d��%c�-Yn�wK���sY�V����|�2拈��3���E�~!�#�Y� �E_��Cd�G�P�G�"�<2Т(v�
/�]�oH�e�7>�Ed�!�J���?��&o�)� �A�{�	���a��^{�(���p|L�BӜz��
��+�g��i�����ϰ	�(������îr�������;1\,t������a�z�S���S�3���UN�+�0�d2 -M�S������TQ)��o�$��t3i�+_d��'�ڋV92�,*E�Xԕ>YУ}����+�*\���($i2p��{;�7��]�x�����~+,�k��y�����P!z
55�Gߡ�q�	�����D�(���\��f�n��'6��jq-��HĻX���&�V|I�%�O��`��]"GҴ�,��}H��aO,i*%��A�vz��I��e'^�Ow����]F@$�4���M��YR���DTpVz�v�"�36d(����l�ڐV��g�;��M��Rl|��]8����|8���	�,������YJ��H@8����:��n��0^<ͼe�����:���H�F0���    �Y��e2���������;^+l��n�6���5��h���fׯ�� �t�l�9~�W[XX]�r��������|p��h��Sz��U�T[4�D]?X�r��a��\A/檶ۨ[s���݄����.*#!�j��jN�1�Z�J=�V|7�����xC�r5�K �Z��.��o�~�MZ�}8��V���\�!"���qߓ4�I�,`�2-��H*)c�����x'./������wp�.F3Eu4M�Q�V�:���SDģ�0�	���G^�Ekk���I
:aQEA���u:Zͩ`�V����+n��~�[�<}HX�i�:���T�Z����Pk��H�P4['�;k.>Zw���&4~�/bS�ׯ�����\M��^$��
P+��ˈ<<?؂8^��UP����LZ��de�c�_��M;[a��dD��3�_FNN��EQ��A8xOZ���_���+�5<R���;��ظ������D�����SYu#�8*�	�a˟���}��\������@ϰ�+L�=����G��O	�DJ��F1#��QL�)G�SS�$ȧ,e�f�7�iK�gS2�F�{� Fs,`�on��
��L���O&��t;L���5~ɧ�:���+�
���*N���~6r�MZ��g��ġ2��Y>r�F�3���%̇˾ҥ�{�C�l���4���dl���!��J3��jW��7y�9!��M!�酹�9g��5�U��U��Q�`!șǯ����At����/��ת��R.FT|a#H�C
ܤ����U�j��L��9̏��y�y-�9j^�i��^u+^ե�j�� \Hjũ�&=p!--
<1[����Y*���j��0�-N���6�W�d9o�%<�8�B��*L��)�a��S���R����"~��6�_a�!�D)%"�.՝�@p�0F.`>���m�Κ��� � .YRhz@G/=���R�D׽5 X��sʍX��8	�1��qX�"��L�r(�a+��8uZB�>�~<��K��-�=��9M$�Ha�X�����lV|@J�_Kkv� .^w;�{�`������ސ&���L��o�z!�������S�����$��9��;}�d@|
/��8�U��% Fh�Sr.���\�d�N~Ш�j-�+@26)��]�LOk���ZE��i��;PV8iGb��)�����v�\��RW���n��@�
�t�CJ>N�*�nH���1�i@Z�F1�-e�b��O�3q�Sôi�`��D�L4�|k�`J��"I��Q��y��i����ߕ��<�9����zs̰Q�Z�T�Z2>f>�Z-�M>~�Y��:+��t����5����}�L`Nj�ہ����� �e�&f��^�Ks��^�9�ܺ5c[)B���O�k�W-������Rgi�r�V�Cw�$Z9:�ZK�� 9��s�A~	���F?�|��Νh�4��>��=�KuV���Ϝs@?{=ڀ�����$C�HS$�\�١��Ks�c���F�Q.���5۝���걳#)[���\�@���x��w�Ö	~� gU���J��sĐ�Z��e���ǅ)���� ���oMa˜�Q�!u����7�+Wq�T�7q���U� �n�a2�o��Ѹ��Gx�YE#�P���N��\̶~�jZ.��J�X�J1�PH��;�-ݡ���V��z��{��45]H�	�`�{^.3�����]ʡ!�k�����'�Qz�/~��P���e:^�d[s<�-
��D9�V�cJ��LK�a4^Dץpa�@ɮos�Fv<��h��Jw�*5e��md�A#�ala����~[43��9�)�1Ý�o{gf�;33ܙ9����w���1_�NA�A��Ӎ�E�c"��ki��	�lN��չ�ײ��������;kTr�/�:v����/��GFY��4�k'Ѐ�oj^;�4��5s��-���H��>��N]q[��Ρz�V�=�j��T�އ�.]��Y�p�ZՆ[�w�6�B�o3��IP#��W/�Mj������~BZ@���l&�}*��t��TPgf��M��/�֦���KZnⱆ�����0��F�o6k|Qs}$�0�UBUA"ގ�:���Q#�,:�~�āy�x�h�]����� ObqÉ�9D�@.�x� `É����5����tpGBD���^��x��8#P/y����\�u����N�T�̮����z&�>FMed��rfMFp�5�o �5{�ۨ�j*N't���%P	����R:J��6q�p���4�DA'������t4��Ѐ�Zn8M7�%���]���&"R�^��{�B@ȃbv������� �;�WI�Y�����Z�xUͯ	:���J��+�f�W6�eX%���{F��
�I?�5n*;�T���a�s$���>J��33�s�mn��A���_ơ�>�����c�[������I������=���Ɋ��${��ݣL���猜�)N�.�׃���������E���/U��^�Թ�WK�'�Y�F� �'��߲,i	�~�� �N�%�Ȣ�V��r���A�jE��4���ߝe�U����!�hoh��:Pl� ����ˉ,a3Ap�Ip�"���+�S/v����A�Ė	�#��(�QǤW˖RB,����Q�<�����c$(�����j�Kv2�$�4��ｫDX�B�"�֥���~����,�Ik��Ƃrb��>�I�99ys��̙qa �)^ϼ]�r�]�0	2h��p�Lt<��a�u@d*{ٍ"1��z��zd>��9׿b�)����Nu�S/F��R�#��SqpF8F�Y�����ʘS� �/>��*Q'�ș�1	ՠ7�A�M����Z�["�4?.M/�(6�#X���D[��\��� 3�d2�$�W&�BKl���lՠ�e���m���@}��؉��=��,�`Ң��)�RjT0si�֔�>�GƦ�<:!F|iNޚ�|j3� �YH=]q��K�
H��|Vc�7Ү�]T�@E��RA�e��Z+�})�j&C-Ǳ�:�RLoFvph�$eR`[���<d���싢ۦa����|�2�sh��MꫳK��ȧ&Zy}���*��?~�83�FXep�,����Um>#�[��c�W?8�ѫ�� o�}߹t�����3�fͨGk��F�>U/֤$�5�%`.sO`�.�ۄ̭���*si��t�&��7��F�u�s����R��@����������_�IQ�Z��CA�n��a䷥n)���G(����
�z�9+�rL�d�D����>����$��!=#^���C��Εt��)�J�|'�Bi������թ��/s�-_Nխ*C]�ǀ��nxP#���MN�!�!�w�xU%x#�B
/��'�m��c&�MJ]yAk���m�/\�������B�|J��FM)]pj�e�=)��F�ע�Ƌ)4�å��:s
��
��u�BV�emk��ѲP�Ҧ]���x��*7�^c꽪���հ�s��=�^�|��(L>�b��(M=	3��$�lI֓P��`�ո/'�9�Mi=����CƮ��w,�x��^5pfι�b�N�k
oZnN/#Ӌ�tF��^�U�ۗ���zP�x���.�����G{��K�ᐹ��鬸G�r����U�d��Q0�RI/�l�2�v�ɗ�r�q���~9+�x�3�g����-�V���S��}	Q�˘�P_��!��[Y�l����L?I5�;�ǐ�HNC���:�d$ß�1�G ���4/��&�� *��艽i�7��R����L ���aU��96�،]<�(q]�4w���u�@l=�::�fY�p�t�ހp
,�����k���ÇSZji��ͪ;s�ԡ����N��B
�f�҉ډ���գF��֮��'/\��7�W����w����uB���/WA~�8�^0�E���U=g[�U�9��a��&�ERUῥ�����[��o�꿥���KU�9�QދNo�����
"P��Mg    l�z���j����G���򕵵��\��Ժ�?��B�����I��h?/��2��N��@`�U�L��C�����~B�箨 a�KD:8�jHQ�VgI�!KM?h�{%� �%����H'`�	�)g(����a/`��%��1x�2N8aC?z�*�� +!
��;푧MRR7�!r㊺��=D��?�	x�Q�x� �;M�5+��]�i�XG�8�x�0=�"�QL%q��U�`��p^#�sED�H�+�0Um�Y1����ha�աt0r����RjN�)�gSl5ǃ	�,�"�&ٹG�ެtB7
���u۱�'^9q���R+�����+�А������EabW�8q�Р"���9�wpVm
\5��%Ӑ��1�����
b/��x�l��;�/�Sc��iP��4��K��Ц&��)'̞������o	*<'54��}���|X����3V���*�Uff�2��`��r�n/��؞��J�=�fG@9wh�)L�!����>N,Yp�=%��5��w,}�h���W5�%TP�n���?�R3+�"׳1Ri©�"����P��!)1���:!���w������c�����)hDmJ�󑸂ruЩ��?�����ξ�<�*� ���6�~�Q�>����Ґ��ZA U��O����{T+��?0lVV	��+�����5�!���ϰ_(����,�F�E��!�g����8 �4�"j�4ee�+4)�։k?a�l���%�	�I߬���E-����ST�����؂��6�(��!����Ӛk9�ǭ'r��n�����"bD0rO��2~�8���T�]�W����Ȇ��I�T��U͏Kc���w�I�J��}�-7�R`�o�>�{J �o0���G�Sc��?O��ũЯ!3(;��� �y ��<��4�g��!�>�%���b3X|��^��[=��' �P�A#�<x��zE5 W�5�R�$gv跡�T�B,���6�c�� ������~�M"�4;,�ɦ�%�as 9��5y.���њ�4���ikUBB:��*��'N�����!n�7�+Y�;���B��'֘�g���?��SQ��5���XBv�	��X�q�P1����T�'R�g(7�<s[ U�}��m,���������'X2�����3x��f�:� �������:���F*�^�ټ���0��i��\~���c�z�:��>�TRA���2��������2+�����oRf�I��JA�,++)�씤LU�G�(�(;)���q��kbe"e�4�8R��B�I�mL!e�����Vj�c��H���.rl�hy�8������Kb.m r~�)Ӊ�e��~e��#�����Q<Vֈ8J98z�͈Smr��\^����8��� �6yY!�~7�{ȬgMۈ�a#�,)��HQ��nD;ح��\�>��`�49�}!gA���#3r�)�Y����{
r򩑳PH�O��4�,�ROV/L�1_���_c=�F.��y�r��Z�ӫ�r�dp�p�i`]i6���.���89^���S=��V��[���~�rk�oG�֑ʑJ���0����QZ��6܏>B�Hyg�b���2���"K=*��ܽ熑T��O��J)�/��͊4��gR�J��+kQ�[����W���h6&3\�k鄫�6A��R�e)R@��ؚ]�����Rq-P�;߄7��z�c�t#�_#�y-��W1-p)>�Mi���>�%�VsZ=���R,�_�qC��e3�?<Iں��ƪ�U��8g�qE��7�ۢcR���oKM��
9����?�R�$3�boT|A�u�ZxYXA����Ā"��6Q�o����ގuV�;O�`w���l���+���#�3�w*�n|ԗ�:�P'>�Ow}�2y�6���h^����_Pƾ��C*���+�~n��ߋM��*Bt������{�Ώ� ��O������RI��<C�m��	�ے���,���ɯ�Q8��A_�Ӊ�Z���V��% 6�}Ц��@�8(�A$o���j���dH'	�����m�a!<@G�U�(��-�iQ����pYf,�YU~�
�Kur��������� ~�ߒ�H��(K��u#@�U���m�n�n	w���s���T!!�5)٨�m���DF\���K��T��9���l:i��R�'��4E�g���\w�t��6�w������"���"���J�C�2�T�O-S�F����ۊ�,����𡢔x��U4���
�����H)�YP�42��i��Lk(��},I/��,��R�S�W�˄^f1;z��ri�˒%�ǡ��F�*���˒��vi"���K�h�z�b��q�����p������-;�s�N��
�ND���B��	���U7E^�MCs7�-�A.�c�R2�=B��.E. �p��j��N$�-E>bn�f��[+8�� I�Z���*|
 �i\��������R�p`��#"m#P��em^Y32>yNc!�D�-��R�k�
�55������K3W׋� :��)��j+���r��B��啽����Sp-�X�7�'r���D[�"�D��)q,�.���z�~������F�Yq�:p�;�l�V��蕸���N����z�k��Cn��J�Gt<88��[��HN9�Wv"P���~�V��Q_�����X��ޣN '���*���<�a�E����W׽j��o&F�ta�M�{m������2Z�i ��`,��N#R��T*��O�4�N�W�Q�W�I�Z��s	�[rBW��D��C	�>�_���U�J���:n�YYӡ�U�Z����hj$��(�BT��S�R6T53A��8d��m2�����jZ��W3�1Wa��5�|��� ޺�Br���
���z� ��'�5�4�WQ� ��q�`٭�� J�+��]}��z,����f�)��"h�[��*��$Pv]r fL�Vc����N
�j�~�Dk�aҕ";rr�0h�dyn&���19H��8"�Ul^�=���x[�z���+� Y=Qy]�f�eV1�Y��Xf'Η[�O�2�Ȇe���l+lډC���.d�2��/,�K�wҗ5���õ�w�y
�9�t�0�8���L�M�K���ו��e��毝���J}Yo,,���:���ڗ�����S�/۴m�\SwkN�T֭�eW��L	�(T���1�n�ꦬ�	�^p��5��<�E=���OIA�P�iP��J���4��Q��bh4���~��@UU��O��q��>�'}n罪(1�5*9�u%[+�y����a��4*�9�Մ8H�VN�5+�77e&37x�b1�3�t1���=j3�'��QY?/ ]�;Q,��V���ϓ�y��&%KC�Re�K�*� ��(ϴG�[��ΊTĥ�tp�'qw	����J&8�[B~��D��%:��f�a���"�׊�5�ej�
T�"`UJ�ː�hxe����3���N4�����}V<V��R�3-[ڟc[_F�Q=�S/�u��@&��R/Le�,R�n��Ma���r1֏�!��M!�+ͻ���7���rVsz�9�?�x+�T�Ls ��: ���~,;eQ�Wz���cᷖH	����6����3�?��ضw>���3��&,6¦6Ivk�ev�OQ
b�siի��Eg��p�D���vs��'���;ջ�7b�q#&��s\?�a*��bi��!��51 f�5����T��Nx��y��7�:VfZE����D�<��&+^��:����2��Y��ݕ�A�h��"�U���p��`K��zK���%{��(��(�`H�OT}U�$�Emd2T~����HG�m�@�yOr�	_�&��V�Y�k	;�m]�yOq/���2�|��V�S�j���)�[S��ӭ7�v��r��)3��b����x�!�k���h��|����WP�vd�EXeolvZ� 'cV�o�d1��G����.�2�e�XfC���.����e���$%��8�$4�i���	��|_Hu�F1�S���$'|�O��H    �^�L�^����$)�8��&bW�B�x�b>J��H*#�'�M5)�8u:�ˢ���<��V�F�慨�bB� ����D���ņȲ�'�*UB&!�$��h�I3��)�J�Q��]���)�ӚB�)�dMA'2��'�_�����8�C�𓟲�L�A���SI�H	����*	�N���H�a�������+V�p�^
N�]����^.����~����Hd$�/F^et��&Q�R�-`\�\H�P�Ve3AARD�<���=aHӫV,����LQ���j(K�qΓHX�HHX"���H
�f���!�.QK�=�~4�2����g�	�2Q���{� .� �JeT�j0��*!'�]ԙ'��HBVr�DC���(_�XX��Qʨ�%IN���d.��c�bdTJ8�E�vF@/d�����DCrѹO��壽K���n@s�f5�+�0�θL}����ّ��¶�b���5'��ARVKD;T=|��B$���^�T�C&�J6��f�(�8Q���(?�_�YC���RA��k�NJEOO��/�2�\�d)vLe)�v�O#�TH+F1ݰ������Ț��i���	ِXq�J��X3w?`�V�]��Bv%m��	�� �S�U���X�ڻ%�Lߪ���dZ�����T��C}χ����.w���Lc:�3�r����ƥڕ l��zñ�j��rt������ߊ��U�,LT�������g��q��D��vD�RC��$;CJqAtH�_T���hk^%fd0�"Eǒ�S��Q"�9��o,4\�c�	-�+ILe���|�8�}�b(h����m�0S�ߐ>tYq���,�=ڗ%C��5YD��v9��:��[�� �B�c���	5:�pٯRg�Dc cǶˊ�Qt�+�(+>5c�r0LłNS��a9��D5 ���9���-� ��_ڱf���$�;+��m��?�-촰HZl�6�C�u�C�*/|*%>�b�H-���#m6zQ�q��1���F��<8T�����h�K����e�W��>`9#-�r��>Aְ2�,��}��
OM[��rl1��R��f.�X}.p��wu}��Ga�b���.�+k�TX?���mV��B�:H(Sm"�~3�8��$l���
�$�GӞ�*�48�-a���A���,���ke �Vrke ���a�=A�)̐la���ź*�y�\�mea>]�Sh��u�d���V3V?��`�S�t�zϻv���˵�S���ܑ�q�V��𣹏N�5v4���a6k��B�e��1��<t�2t��Z:"YRO��i�!��p9Dr'�(:�P��V�N_�L���k���Bj����K�_v�l��})�LK
Eh��h؜Ǉ���?�	)n_(UR4��U'}��pX�����&�.Hg��*F��P��3�Z��sJ���˘�%��\��A����� (�&� ���v����ʃq���>xlIJx�$Rr�M�m�I�R�	�-aV]�B�������LF�7E�Q,�P���yQ�pD;AG����=ǰ� �B.yL���XM���=���3wR�	�|d�C!��I.Q�	�o7
e�d])����pY�D�� �l=#�$z�I��<�l[���R�'���Yd���Xqi8V/�nj��v�\�a7�4�1���c�o=��"F����Sq��W7늛�K�QϮ��C���e��^�T�dX�O'n�E��U�_�W��Y��G�w�7�Y������\�+3��Wfose���Y=��jZY�j��j>�Vo�U٤�舯A(��[��"@./D��-��,��Q�/�3J������Q�s�eǹ���[�R�}�v^�~��J^Ĳ2�+(C��ܥ����uU�#�˝�Hs1F?�{eV��	���Yp^�r]�d��54��L�w��kky��sf�ޖ��0R�ˁ�̝�-?q����bbn��������4/G<��Ff�����-�[V&Jџ��,�@e��y(�:P`/��R ��j]zY�:!��z�bL�1�2�DF�LY���b�,�Y�ӥej��X-K�0�uP?O�n�5�i[��<��8I�})����5ĳ�~�����PAPՂe[;с�0��Q����Tc�֢Lr��GK�ߠCN� C�	*�Y�5J�9cv�(�,�QT{4!f��k1ӵD�v����^݇�b�2r�����`a$J����b�?�΢��<�����9��	���߲�
��~�/1��z^����T����e��9/�Ju^�P��wy��yғ7��,R).����e���߱��L��Lq�U�4m姇����A�hPp?<|�\����D�]����7���/��c�;��L��7��b=	rT����퇃��}s�U�<<�RUNT��B*��i�TҌJfQ����w64���ɦѸrr�����ݕ�y�cq��g�D��zD�f��Q����?A`N�d�Ȳ��#�kw����l<��^W�sA�n��y���`��b�(�>�z���<�%����೻��?���'�<ٌ=
ȣ����� '���5��A+ �u��k:R�Y�G< �׵�C�R|�<��?���+6DAq|;V3B����bl���W��z�5m.DE�`���7f�z ;WY炪�����K�Q�m�����f p�d��_��XF�K*�jM]�!M
���$,<qi���X�.�J�z����W>�Ă�_=�5b����64�o>Ò~Ty��h�7�6�[O��g���T�NlA��K\����7:MW��b��#0@��	�䮉n�����F�F+Zsɔ���8D1쩘�N�Ѩ��v
�(n;Y�RFd1sّ�Գ#�i�Fb��,�_'#�igC3�dQ����b�>/s�?Q�©"�Y)���K9�#�ʥ���SO'�' I���j|*̈́��[�f����%d���aɲ�Òeg�%+?���4X���a�*e�%��5,Qj*)�caI;�S�3;7s������_�X9d(c~��䔢�q��kM#��W
�}2w���׺�y�J�z��a�����Xf�3�"^��%���ӓ=x�wF�YV���'*�q4:��I�I������m۱e�g����"�+�>S*t��13��})�b>%�"�C���
∎9�z��U���Rs���-�ң��DEQ��\��%|e?��-��s*�R=�i�,��$��"�:� Ü��=""�l�UOe�*�
�t�@MR+����|��K�� ��'�"�vaJY	�� �̫Ub���2/^�A�䉨�S̫��xS��+�J$S�&.ڐD�c��)K�9� ����xD,Y�{��	�H1��.c�"��nť5�-1� Zg���i"6�܄�	G5�@��m_�&b}MbW"_N��ŪI�Q�(�� l���J��+v��h%�QL!�ɮ��al����zyIgu� X�a��J�"���-�r�8��rV
�6���m����ʠ�1U�쩋/e]�2gH�$��XĴ�Ը�S�2' �e����e�I/+�YQ�Dר!�R��՗|�*cFZf�I1����JR��O|8�V�)<�q��!%�����'mٖ4������v�U�{O:���x�-}��B]w���w �*&M,_fi/�B8X����g��F'[u���T�K�c���������f�.�c�:~R֔"����ن����2����'����S�c^t�Jx�@�0f��Ś���%l�2Z�0DYe]��Z,u�{7�W;U��_u���u����˅A�x�X���@�{�r�=�@��<�D/���@ �ύ]u0,)�%H��z�*�Ej�>?&P�+�b{����)��!�V`�H���W<�@>bqq7��j~�UF���z�T�q�P���WJ����bE��``�,R�N�ҫ��F��=���T���)%����J���M/�#���V0���u�~���C16�t]e�)E�U*o��'�LM���b��'i�v���E�OR�(o����}��֠��@���:�C�K�}ؙ�������y]�9��    1bPx�.qU�ݐO�%%��^�;�e��"���kRl�	E��N링R

B/�դ�$#��8�j2,�~��0��w�큥�t��,��!I�|����iRU�~���b��'�M�I� <�]�ef.����J:�1�l�͔ ���@�[f����r��[�+RAL�ʴ+�e*S�C+z�o�7�N��G���B�v n�J�%�>��$��T9d!kzknR}ʾ�W�9Ùj�F��XzM!����S�<7��v�3��.�����\�敫���>l�>w���7��&����peB�(Y-��1�I$�I����ՅNMI\ziϷ�a��2G��R)"�X�g��cO�zDD#c)T���"�N�&NDGtQ�i,F�� Z�!�=k��;�p�,@4V5�,��dc(^��r�4�
�ɭ�nB"�S�����@��!����-9�.��܊+L�*�E�%�����J5�ȅ� �H)��[s�ric���MVvc?�r��aO!����&Ɯ6��x2�]	3�]��q�w��]�Xŭ)�TNJ"�6���k����8#� d�E6���d>�������r����0& ǃ�b�$VD�ưS@���5�u��7�SG���PU�ƏЧ�0��0S�i�8:��>��8�z₦.0{fIؓ�)�4ҐR�c�3E,�1���3��R�V�}���7K��W���+�����߅�Ħ�"۾��r�����H+DqU@�D��B�!��"ֹ��D������:#�;p)J���D"��q~�	�Ho ��V���F9EDaZ�nQ�3X���IL)Ų���&P��%�B_ŉ���CEU���^8+Jˈ����r�-�H;� ��]6���|t��;f�,WX�f.L����gD�5N۲؟ʲBפ�ub�"��������5D$��zB5ѥ�~�6�i�E�,͒�
�K�au���a�h�������8* '��Pa�cZfl��8k�@�/���|Տ����9`q'j�)����t����~�Oi���O�QJ���#;fZ$�O4d%]q"��eW�N��%S�s҉� ܓ���T�F�����ɰ`���I᥊�i��55�B+�w��je�$�K7�M
J�Y�nR���޺x�����}ܳ�`�{v��Az�'ܵb���9��O$C��������%x#��1�ZO
��B�/��u��[�^�5���~%g�o�^:s}a~����߆�����G'���G����H.����[��_b�xA��᎖��+���[/�>P<��@����!6wk�̲f/���gS+�J�k4\���"f���A�34����^V�[l{UJ�C��@�hHfl.?�D�=K8G�����TT	=��b*�(�iS�(���h�*t�D�>Tf�
W���B�*�jp=..���p5Q۵(c�"��@���L+���qo������;�auV\���|51��Xq̉���)�;-�V��T@�JI�z2�3�CV�dT�!� �S��e0��7����<��sU�=;���8Xc��`=e�B��*5m��WM�Ԝ�4+�,��F>�2�B(���)�F{��;�Mi��Q�N�B�"��(�2������Ps+�&Խ��b�sj�	�7��
 ౄ%V�@�	 ��MX�JJT��b(�f%�cd���aC��)p_�'OB~����\*����oS�_��������.�oʉ��he!V�PX�lha�R��j�>{m=�,F���f�I�iK��̒�f[�,Ƃ����� �O��� ����� ��3�p>q�Ԏ=���3Bq��e�����L�pz�[cm�E?����|�lx��_l^0��p���y�ر���=�M�-H�s�g5cV3g5K���.�E���ah�ث?���c>=Nʭ�	*v��5	"�'�)��a��ae:��nؤ���*��x�">���K6�Ƒ�o��=�"\TZ%��b�$Ԛch)C=r��G���)���^4�X2F(�'6P%�琷/.:S��_|#{:fߔ��Ufpy��)�U�݆G�RҌ��	6Ð��$��;�"���	D��m/u�4�2+���ơw+�S.�uj6�cBO��q�r��L��c#�i��#v��c�K�]�@��Nwϖ�p��o)���Ty@cW��v�NcV��v!Y'X�l���H�:�*��h�U�1��H�BiP�X��a%IK�1'V"{C�s��)1��%}�V���ۚU�4F��ǂ�.[\�X�T��7�0`ШbA!8/?%e������r{�하�*?��f����,���C�Y%6KRn������Ç`�Y6N�ۿ��bV�JH���� �|��p�G�m�z������l��6�<�V�H 1+[���A`2fCsTOA�6��9���v9�B�زC�5��S��NU���d����#ށ0�CW��w�G4�<bկ#l;����3�sV����a����^x2���_�� �D��'�e�%��a���P�R"p�=�\1oe�ȼ��9�����11/�'1�|B8!Y7Ϝg>LB2�,�8���i����.��S/� �=?s�	{��*��N�!v#EhR�j�o��/7���U�:o�?ytq�ګg���(�՚�k`y#<�M��-7:���s������rF�Z��fŭT��rE��*�Y*U�<����ГNb��a��Cəb�rQ�x��i��q��s�"�#�pG ���C���b� 1�H'�pm��L��5�8d7�6F֛I�̊��=�yA��h~&U0Z�Rb�t9lca��J�,Tc�=)�jq�G��3��/[j�L�S�0e�y��"ơ�q���IM6��M�u��v8�g��+R�tI�P�p����ʉ����	D�-�J�p�]n۞z�+M	T�4� D�D�LQ������X���NQ���R�Kǡ�ȼ+�Z��v��d$WAp42G�;�v�	?n� ��[c��-�9�5�ڐvOF.�Tj�Y1 !D���j�4�VNa�eU�4t�7;��ƭ����ߑ#੺u�&�J'�1�BWvWV<��{�8� ��*-*�ם�'S0�ܧ�hK�H��5���NaV���rR{!q����zR�)W���f.Ý�ʗS�����T�����i�NM;˞��$s�db��QF�����tQ�#��هѸ�D8���D@Ll�k�/�p�Wĵ��,J��J�  �<�,����%V1�W�$���N+�R�N+鴦�Nk_���B:픤$���aNB��d3�:�ȫu3X����҄E"�<�":�;��<~}�+{�/�-���΍����ԯ���ƍ}�\�֑ґR�,�#�H�N�#�����r�Y�f $��(�����$���V:��K�׸��`���i������5�B�dY��8�Na���(2a�
Fڈu��y�������a"��J"�J����|�uE5t)��W�f5��}Y]�k)p!4�0���٘Hq��`☖v/����,u�/�GыN��d�K��E�Su�\eP�X9���E� 1�6�h("Yw���9aA��nx���#!_I��T�qO0�-�� �6
*�6c��#aghU7l��k�S���! eO��w�$·ˠ�k{���l�l���-�R.y���_��lXI�h��NJF�a�՜���(���bSs�����������@���k�J<R���ʝ�x/X���,�o'��Z�*6��S =#&q<�tTR�Yq�� ��L\�����O�-���80:��?t2so�N� ��[�z���4ӣ�)C�/8s-�2}�'�l�.��Ӕ3&�T�' �4��L��[�%S{���Dѻt�l�����j므��T��2`������j���ڞ���������x�JK@</�\ikX��n}�Hn���ŏ�{���Բ�V:s�­s�������Q8�ι��Y$�+�*$��q��kxk�p�rQ2�`K�K�mS�k;aHV��v�J{psvH�>$EsK�m(�� ��8��s�BA���x)�c>��    m����q�	o��/�:QO�����>@Lº��@��h~=~��)�rj�F٧裚���]�tu^�lT�ŷq�t�#)�";�Z���]uQ�ZUeY	�A�A�n��4B�v��l��]a��RF��;��i�격.s1���V�����sB�3��J>�0m�m�U�j��Rb��Z�{�䅴����×�l��|����`���T�L6���2���DO�7iq �l���(�e�ŕԏ�T�q��Z�!�A����T,A��`�,�[gO��ː=m�]f|��j�XN�Y�}>�q�5bE�Up�=@wp�ml��_��.�+�}UdS	�	o��#���/s�Mv�t�	8l�����ˈŦ�jZc_Xl�S�ش&cq�aa2���X�)�S�Y���fi�Xl�2c1GX��b��Ԗ,_v��8:n�qR�����3�Kf.L�u?.d�:���2@;���,��\L�zHɻ�Qɞ��ў��Tіtp4*i������.ig���\���J��:|d4�^J��ܻT�R�t�'�gO�Ο�d�Go\���3��ޅ�_4����#��4ö5�<�E �u�YeE�ax�soF�mT��s~P���F�@L�=�ZN�ZQ#�Q����Y[n��wB�O�P<f\RF�h���öj�ve��LV��"�+u,�t�I��r�G�g�{�d$�6Q<[�HpF��|%�/�-^���T(�+Z���<�)�fqh΍�/$��j��L�*4BfM��Hqb�6��_�D��{�ޟ%���2���."ze�9G�ٸ?��[�x�D�<�k����[��Z��N���W���v���
Y!�]&U
��mKȬ8��}Ǽ+<{N5&�/<[N6*�z>d(��7*�Ջ���k�dcwh����S�a� 푀^��ox�q6��/d-�ed^@sk�V;Y�N2b�Xlg��ˁ�d��Uc�[�΢���"j@���}/�/5�3
��pa~���uE-Sv6�*���:��wY.є]�8�d�c�l������_vL;5��4��� ٣�(���JE�,}�����[3�{ڒ�g�c�[�ˀ@@�����>PK��)��;�acq����Kg�K�KKs�N�h��/-_�;���e�j�r�B�T,ڶQvK�bA/�]������Nn���������wּe��\�8�f�8�n���)Yk�_ɯ\?w���s�W��8f-][0N����|�}�pt�v*�C�Yk�Gr�u�V3G��;�vί��7:�܉�
��98t{N�;,��5}f���	U5Sld޻UX��֬�����Z�Z>�~��[���ܭ	�R���Y^Tek*i����C�aA��N)�qY<$��fH:8�S�cf\1b
�tU�[��	6M��R.� ��ip�8��*�%B�<�FU+Dh����I�w�RU�0��jC��ei4�P������&"�E�S��D������n��J^3uA�dѦ��f�o1�2�*n;86XSC~����Ǣ*-�3��<7u2]�	��M�&��
%߉�dD�p6�K/�]���(�%Zy˦���
Y&�Y�mD�1��Do"�O�XxLD�X%�*kw�]7)��CS	 �V]�DqAd8�
(��u�i��&�R�yiد�ǅ�D�M.C�����^J$��Ur�t01�鳙���\A���Җ�-?�[AؐNQ𪘉�)���v��}<SJ��e(��.��Q\����&��W��A��Y��P�;���'gʸ�Q'7�B}�(�g�}���2�'�$�y��%�O
^�8j�1��9����a�	b�1s����څ�S���KBz!�#��������1wuѼd�h��.�g��蝪�3Q(���મZ����O����v�������7�$+Euxg�v�	6~�F���� q����5�dU���8i�����_��y��]�^J^� �ʧ6�x6x��~����W���u�8Q�<����ٿ��:���c̫e!���{b��e��=�^��c���'��7�Y_�	���"����&�~���wу���-m�����ג-"q<8x�j�/�oz�uZ�w��I����m7"o�{U�E<�uQ=9��Pn�w����J�D���/^b?X��������y���K��o`���p%��.���W�E��}�5��������w��Ž�/ד�jf��#z�q���O�{����ßE+���C� ��⣗�������f� �8��d�/��<ވ��O7�O��<\�N��^�ټ?�a���׊+b� ����7l����g��/nc�b���_6�}Oo�y�I��?+NgR��{ ��-r移����s|��4�����b�,Y�_�@Lm��<������`� LC�흟�)������^��m���Z��{s�e��=�`W���*���x�8����q��pE�t�/E���=8��n�PUm	�"���V�¥	a��F����yw(�iq�(�G.U�v,v�zf�2�}`�b���KUϟ�]���T7�4ؕ����2s&) ޝ�x����<|�"]�Sx��O⾯���Ǎ��/��o�|8غ����<�@�8�Q��rra����$WF"Nܒ�nx�xw?�D�?�"(p�����O�w�\��L+4]�Q���_�n-�)��������Qᓅ;����5�B2ըl/�<�-�� i�=���7���j�D�[6������`�8`�8�;�̙s�F�H!c���e��KN{�u�dݼy~Κs���'���1�z�;]�[�XV\��o�xJ�!���P$�[=���R��;A���g��������������)&\Ѻ %���#n��>} ��ˁ��^�]f�w�"�:,iS�+� Jt�ѿ�$�H�i<�M��cIp����*���9ɀw~L�b������qĶ��j{��Ob:خ��t�S��Skf�e�e/�u�Β�0:�Ċ5@�|�Il���b����0���k�=�_����/!� �<v���M%~B�1�	��	^$�����
� �M%]�%�z˿����&�٢5|*y.]���$��B��%�JW	��[��~���g��7(���ϸ�Μ���E�wDv��9�G����ah�����~[IaR'x��wԯ}�!���]!j���l=T爨`8ճW��/��{��)�1
T���]�Pˍ���)g�F�@Š�}������($�w��?ݠ�S"��y��Qf��1��2�]�C� ^C6��Z�
���$�*;F�UI� _S�kF�<��v�%�I>���=� $'��H���;�P3��;?ݖ�P�^X��"0�ۧ�I��~����օ��JyO*.k�=���2c��g>��J��|�03�FFW;�:��� ܹd���sFn�rk~�H r�ԍ�GW���ђ\4.ګ��7�j��1'�X{��n�i9f���b�=v7�C�LlX�surh�>ų��4��֡R��Rʍ�d��A�YA�9[r�!Z5�Ȉ��-��RR%�'�;rGF��HR�\�V�=���f\uhV���j.���N��a)��t ���NX�������� /{�r	�b"�[}%�}C��]� [V)�~�A�ʥ?)- ��`S��uz���w��!���ɝdG�8Xs�9�M���p���Fx�ݻ���l��d�W3$��9qj8��UJ0U8�pN�}q�r ��T��ua 	���3ĲG��[���x��J���C*�l���r3\��P8!,q��pðY���� z.Cpz�?+T9 ;WP��zȘ��P�'�z�D���L;�9�Gd� �r�!@S�m:"�E��9��������qD3e�[�hu2����:H��a���T�<�$y}�풯�	�ĵ��b������fE��!%��$���!F�ϊ���Ψ��J'CIJ��p���$�~�h@��~L�V��B��]W�S�W�:%UŖ�Dq���\6���<G����2Lt��M���Y��*�� �  yI{���9l����a��Z��k�0AU����/I}?zc��Sy6P ܣ�D�O)���j`���AĴ���_H>�B
oA����<\Jwd������G����g�l7�ae���@��m?�'���s�N�CO�7���|ʳ-�WL9N�@�i��$�R��S�0Hख़����\�{�;sޫ�����O�wK���gэ�kQ�PY,XꝌN,�Uݥ��xn���_qz�Dת#�:��?�X��΢%��,;"Ch~�~�Z0!�1Έh�������������	a�8���)�p)p��J�U]Qd'G~;A�e� ��fD�X8��H6[LJ�2��頗?�lY^v/[I���bنˠAn	�UB��"gmĕ|�J�Ƒذ��C4[�]K����q(11[ށ{��4<��T%J�Lc���pI��Y����wz�#Ӎ}���*I��F(��̱9m��0��j�A�0rP�z�}��}.�]�>)���(k>��qTUu(�Ь\0 ]#�V���07��Xf;�3N�
0d"�D��F�a��Su?�|�ؚVb�}Pۛ5:�3�[c�UX�P��
ȍ5V�L���`YEu���$�P�LV~�i��8�=�š(y*�LaU���;q$�2ĢG�����n,�����9��_˻���(����X�C��1��a�����
;�X5�/��n��_�D=�T�ю"�;��bX��l�[�c�_`B���í�"��{fA��a�*��U�uW�@���_	~�ИE��h�.PC�_F�H���*��]D2���,��u$E#6Q��� T6�B��/��F��'̉OH!�A�����	*���d�X�����y"�q���C�o�����mU���w���;���<�sX      �   t  x�mӹ��P���bd�fFDV' ����-VU'Vv�	�IΥ�$U�|��}�s�6��0�Jф]F[c��[��{b�X�V09DD��&Y�İb�.�G˨�&�E�L:��]kf� �j �=����4Џ�5��E+2�v5�1��$
�Tz���y��sh{�P���"�f[��w�g�0�T��<˱�t�ѵ��*-�r<��9i�I�܀\�39g�{�5��)C3s(L�Zt��&'BD����F�|a�y�cH[��yrd�=F�>�T(5L�;㶽�M��&0�D��!.�����9��<�E���ջ�^�tg�f5�WR�y�������5z}�}���>(hm����_֢H�7���@�Q�<��&q�;^ėw[����R�kZ�kEo�*��������D�
��'��ɹ7ih�q��k=�Y�K�1�����?X��utcg�]�P�I!��yU��~[����^��������LO�kԛJI��ꍻ���=���J۔?s�& �/e�+~���S��1��,U_xu%�B%�4�nO��F�YWPDS ��p�e-����V�����>��%�ǚ�F/�Kr�s��`jR�t�	�[^|:�u�=��j��&i)     