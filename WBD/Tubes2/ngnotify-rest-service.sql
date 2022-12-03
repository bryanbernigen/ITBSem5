PGDMP                         z            bi1yy426usclyzasq6sa    11.12    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    34655965    bi1yy426usclyzasq6sa    DATABASE     h   CREATE DATABASE bi1yy426usclyzasq6sa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_GB.utf8';
 $   DROP DATABASE bi1yy426usclyzasq6sa;
                uzcs3iyzirjhhshe0ckr    false            �           0    0    DATABASE bi1yy426usclyzasq6sa    ACL     �   REVOKE CONNECT,TEMPORARY ON DATABASE bi1yy426usclyzasq6sa FROM PUBLIC;
GRANT TEMPORARY ON DATABASE bi1yy426usclyzasq6sa TO PUBLIC;
                   uzcs3iyzirjhhshe0ckr    false    6366            -            2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    45            A           3602    3516527    french_unaccent    TEXT SEARCH CONFIGURATION     �  CREATE TEXT SEARCH CONFIGURATION public.french_unaccent (
    PARSER = pg_catalog."default" );

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR asciiword WITH french_stem;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR word WITH public.unaccent, french_stem;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR numword WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR email WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR url WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR host WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR sfloat WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR version WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR hword_numpart WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR hword_part WITH public.unaccent, french_stem;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR hword_asciipart WITH french_stem;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR numhword WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR asciihword WITH french_stem;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR hword WITH public.unaccent, french_stem;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR url_path WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR file WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR "float" WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR "int" WITH simple;

ALTER TEXT SEARCH CONFIGURATION public.french_unaccent
    ADD MAPPING FOR uint WITH simple;
 7   DROP TEXT SEARCH CONFIGURATION public.french_unaccent;
       public          postgres    false    45    45    45    45    45    45    45    45    45            1           1259    34659548    songs    TABLE     �   CREATE TABLE public.songs (
    song_id integer NOT NULL,
    judul character varying(64) NOT NULL,
    penyanyi_id integer NOT NULL,
    audio_path character varying(256) NOT NULL,
    image_path character varying(256),
    duration integer
);
    DROP TABLE public.songs;
       public            uzcs3iyzirjhhshe0ckr    false    45            0           1259    34659546    songs_song_id_seq    SEQUENCE     �   ALTER TABLE public.songs ALTER COLUMN song_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.songs_song_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          uzcs3iyzirjhhshe0ckr    false    45    305            /           1259    34659525    users    TABLE     4  CREATE TABLE public.users (
    user_id integer NOT NULL,
    email character varying(256) NOT NULL,
    password character varying(256) NOT NULL,
    username character varying(256) NOT NULL,
    name character varying(256) NOT NULL,
    "isAdmin" boolean NOT NULL,
    image_path character varying(256)
);
    DROP TABLE public.users;
       public            uzcs3iyzirjhhshe0ckr    false    45            .           1259    34659523    users_user_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          uzcs3iyzirjhhshe0ckr    false    45    303            �          0    34659548    songs 
   TABLE DATA           ^   COPY public.songs (song_id, judul, penyanyi_id, audio_path, image_path, duration) FROM stdin;
    public          uzcs3iyzirjhhshe0ckr    false    305   �       L          0    1379180    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    245   �$       �          0    34659525    users 
   TABLE DATA           `   COPY public.users (user_id, email, password, username, name, "isAdmin", image_path) FROM stdin;
    public          uzcs3iyzirjhhshe0ckr    false    303   �$       �           0    0    songs_song_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.songs_song_id_seq', 42, true);
          public          uzcs3iyzirjhhshe0ckr    false    304            �           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 14, true);
          public          uzcs3iyzirjhhshe0ckr    false    302            S           2606    34659552    songs songs_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (song_id);
 :   ALTER TABLE ONLY public.songs DROP CONSTRAINT songs_pkey;
       public            uzcs3iyzirjhhshe0ckr    false    305            Q           2606    34659532    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            uzcs3iyzirjhhshe0ckr    false    303            T           2606    34659553 "   songs penyanyi_id_to_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.songs
    ADD CONSTRAINT penyanyi_id_to_users_user_id FOREIGN KEY (penyanyi_id) REFERENCES public.users(user_id);
 L   ALTER TABLE ONLY public.songs DROP CONSTRAINT penyanyi_id_to_users_user_id;
       public          uzcs3iyzirjhhshe0ckr    false    305    6225    303            �   �  x���Ko����ԧ�e7��n�i��-J���40�d�!Ql�MJ�N�=䰻� 9n�K�rOrȷ1rH&"-�;� 3�b��$J��WuUC����<.bL9��b�s��T7=���oC?}Q⢢��(�y��͐�0���� N��p�̌�����v���cu��Y�
�W�'q�ݛ�f�4By���M�YB�����x��5I����p'�T4DC}�1�t��GJ�KPX�k�Ĝ�������%�p���ܸ$�c3�����+Q��t	5��C�R��Д*�TE� P�M�sz%?WM��M�B5u6�_��_���������R\�<�$J�j�y�s�$���(���qS~̙�VE��	Tu� 1!�q�leo�j��qS�~���$N��ưIS�GV�;���  ��n ��P�m�C�P��:!�JCҹnZ��0?M�)٥���u�����xG�v������N7������h�#	�=�c?���������N���K �"����T8 YxA�s�9{�
���7A\\B&�R�0}Iir	9f�!�?���w����o���������s\�Z���u�<����*�ƣ�h<���o}�!ڠ7�2�f���E����NE棤i�ˤ��!�܄�6�KP�3�ۛ��9>�|g/��fdd�L�>p���Lv�G�����o�X3�i\�¢y@Rd���y��B��u�������62W��Yzɀ[�2��8/�B������z�ZV7�Ŭ:]s̒6��;���2Z74C�\xf`((����n���++M��j�%YnȐ�gE.�|L���W�2txƦp�5̶�T��w#�8Ww�eKAt����я�7�i������|�'p%]�$U�uU7�`�@��>'IjC�8�d8(������Y� ٷC2U`�[]��ȕ�+軧G��7�^�]g$+r��1I����
��嘞�g�M��j�.Kw/U4d�����1��!m�7�n�M�#���`kJ׽�?��UR��fM7!!�Hq4+����3X�<q>�N6�#���˧�Ee?X�ˑ�.��f�E��A�:3ڞCJv�[�J��D�LW�ҕ���W�G��N)����x~�ǿ���o���w<��[S��Yu$�Q<�{I�n_G��:��V�"���Iա&�tr]�!d�C!��4ؐU���������_�����f�]i�z_�y�	�*Ӑ����&�G�S����&0U-0 �'���`�d6d�뗴��eE�l1�3N!O����w���b����V����`&h�ୋxnc
��N��"��T���q�ʤ8����~��<3�#~��K��| ¸7�����U	�Y+K�����̇~��~��w�du�!�E�~�EG!yvc%ɡ2�.=����]��54���E/+�"��%6������N	����!a%��N��fg����,��g�N]��g������ቝq,�����j��,iU���mU�D��R����#��j~��.��[)eh������jT3�v����C(L�s��:Y��O{�B��L�@��Q��k�m�u�3��GO�
K�V��fpt�no?��wӺ�*#N���
����fH�I���S�tɞ\X��x�^�gd��t�ʺu��C8���"y\�unG9 sk��;��j8ߛ�ciX���衧X��eI��˖5�dMo(79�v�qh|�l4��̍�      L      x������ � �      �   �  x�mUَ�H|��bF�Tq3Rk��m�o[+��P��6��v{�wz���lEFfFFA�!�����;�G�1?]�K2�g�{�n2����k9�Kkwq���}q�,��;���̿����-w�[����L�g�!X��n��׫��^��O]g�[�&�p��
��u������}�AAd&��97id&C~��-'Ċ�˻�P�Al⹗��<�Ĺ��Z��N��ܡ�ƴ�\n�
�|�5iV��Q��X.�E�%�	�$�P�䜻-SS@e:�8�'�!ץ�}b�v�ւ�l��=2�xM�N~��Q]�Ki���y:
H�Gl�J�W (% x+�(�(/ �@��C(I�ʧ("l��ڄ=��	��3���=�Dl�6q�#��:d�S��@GB!�%΋Ą(%�>��(�8}�Xh<���Uo)ڸ���x9n�?��pPn;��G�H�jCw�
���xb1�����~LLaj�x�-�Q�=s�=�(��ܤ�ta����m��̹~�{��z��r��5��p"�����u	�͚/����QьK�8�6A�Q��8|4��g}�%��1���
<�x � �P��{gTƭ0����n��չn{��������q�Q��sA�Λh߆5�7�r���[�?���&��zX�xR�W�~��ʠ�k-�AZ�E]Q4MT$��Zc�Z8��w��xUٮJ�g����F���hT�?λ�l{�b;l{G�\ý��m�<j��0VE��U�W$��ԁ"�xVT`ٺ�,]�E",!A��G�u�"\�z͜���y�]��{g�?�/;�Z{1ƕ�I��Z_�8�)ص+CVO#s<4d��c(F��o�8��*��f�)��QD�u'NB����k�������������%^y�yڳ�S�69j�w�IOVU�G�]��Nk�A��8�0z�r��s!��Z��T�����Ȍ��3�t�p� U7eogv�:�gxpS�8�=���s�{���(
�D���Ծ�Q$��+�$���}(E�d? � k��8f'�����/0�9�S����}U�G��W�!��f��L���[�pv��ʸ�{�%
�d�Z+�+�j��8!��F� �x~�UX�)
kK���{�Ż|��
L�,>��?Y$�1nm����T��yˢY.8�Jd�y�]��5�x� Pۼ!�`�VF{�D��Ĳ#�BWi��Hc�	J�&���P_7L�d�w	��
�DA��+�X燐�Р*@(p���B �����<e_�9�����[r,O��ܲ�Ҏl��mrn	k{1�ԃb��I�7P��w9�I�G+j��4:�Z/�K����ڋ�u�m�N|�ދE�0�������k��Z��Z����b��M�(1Y��{���(�:n�Y�f������q�4�.�ARt�f_�;�b��Gq�|�0GqNJ�_���uI.���(��g![O��(�#�.I�
�Am�!��H�
����˽���4��     