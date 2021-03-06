PGDMP     7                    v        	   books_app    10.3    10.3     i           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            j           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            k           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            l           1262    24785 	   books_app    DATABASE     �   CREATE DATABASE books_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE books_app;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            m           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            n           0    0    SCHEMA public    ACL     &   GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5                        3079    12278    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            o           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24789    books    TABLE     �   CREATE TABLE public.books (
    book_id integer NOT NULL,
    author character varying(50),
    title character varying(255),
    isbn character varying(25),
    image_url character varying(255),
    description text NOT NULL
);
    DROP TABLE public.books;
       public         postgres    false    5            �            1259    24787    books_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.books_book_id_seq;
       public       postgres    false    5    197            p           0    0    books_book_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books.book_id;
            public       postgres    false    196            �           2604    24792    books book_id    DEFAULT     n   ALTER TABLE ONLY public.books ALTER COLUMN book_id SET DEFAULT nextval('public.books_book_id_seq'::regclass);
 <   ALTER TABLE public.books ALTER COLUMN book_id DROP DEFAULT;
       public       postgres    false    196    197    197            f          0    24789    books 
   TABLE DATA               U   COPY public.books (book_id, author, title, isbn, image_url, description) FROM stdin;
    public       postgres    false    197   j       q           0    0    books_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.books_book_id_seq', 5, true);
            public       postgres    false    196            �           2606    24797    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public         postgres    false    197            f   �
  x��Yko�6�l�
"$_FOl7M c�<��i�$N� ((��ءH-3V~��{��#I���~	`������s�լ�޸Z�(N�wJ[�߽����
)�'�����G/_���=X�V�o���b�޽[;��޹ިe��|�n�lT6�S�'Ӄw�����׏N��=ymcP�I籢q�o�?Y�~��xr|[��:i�7��K�Q'}~���;�2�B�A��7
�ꨝ�qPbt!�N�.�l��N7��b�������j�� ��R�O���4�b^������6J�
�.�:G����2̢12݄�蔌	���^��Q�ڔ�_���ѣ���诗:�V`���㘟�AԴU�G�&��:�9�?ܓ��M�1iUO�ư����Ĥ��;�9*���G./>��S�\�H�U��$���-��q�.N^��Z�� d�-9��^�5�	1E��A��4O����nMAߺ%&�ţ�J���H��Q��B�8j�q�D�|c��
a�h��QR(�j�k:D��<)2mTȃ�lO���7,şC[�^m�Hg5�|6���)j V����%���[� �Ĭ���x��u~�$�ŇSr'�L��ek����a�[�� �+UE�p��E�p�vyY�w��iҪQ��,΁X��:"Gq8���o�_gP�:�:�gt/��V�oȾR�W؋�}\�%Y_P	�X���7!���2м-ED�z�,>t�+ 3�RW��K���f�j�F�'6:��DZ��a4��D��rFv�p�#��nk��vYL����x�֍B��(��:���Q��-��8�P��bH��M���i�:i�Kˁ���f���8q��`A 4�f�5{���Y��1�b�!~�M:R�6��� 0Ǩ�!�s 
" z~��"]2cI�K)�Uʄ�S��@�&P �,Ct��5�ז�����`F��qD��`x8/�/�g*+?ƿx�@��u��k\�������!8�|�x�O�fP3-;r���K��H!�~P]ߕ�>�e9��w>$#ŋ%��g��*!��R��B���x��,�!@ĝčا�̙�LL^+�K<� ��)�F���D�g��y�S�Ӳ*LJ2i0�<jWO^-���Q��������W�ܴe�]�� Ef�8x�r)�ϜF�x�8�n5z��2���mqw�d �L�mt�J�k�u���I�_N�u�ȏ�.*��U�c��og�ciK�h��Ϗ <��Q�7MUtU+c)S �c%�@���rY��8`�o�y���A�n�w��<y�}t||������/���y�䷣W������G���%^B�!�(�=>'�؈�㤽b�d(v	p�<^��ȍ����R<BƝ53��kqx�D���wH�j�L��bw�7�0#-2��5AX�2���;k��2���-��R��?:������N|0;Ԅ.�Qi7��Ҁt��\�:s%�bi�qΎ�ZD�p1����e�qܪ�v�5�2³���rˮ���1cQ(��N��\�LijX�m����lr;ܔ�Wr�"��F�D���1�%�ob�L��W ���eo:�w��%h��/5�ng�|�z�qާ)R
��X���NS��Z]!�K�r̖�?i�N������b�� �wV�g�18�·�g,
f
d���D��U� u��s�����nV�r�p�C>o����?1�?�5�=x���y����|,���Jmj#9�y��5���a�K�g"�,�n{����������_���'|\|�}�ʥ|��%�4�B�Nj�!�LHA�?��f)O\�G�a�lÍ�| d�I,&5 �s�CA����}�+*8�ڬ���kC]O�ޡx`,b3X�  �\]��︻�l|��I�9��T�т|�Y��>��k�� v��F�m����Ę4��p|���G�e��u�^L��q�(3��+4N�8g�ޅ�ŝ�7b��\�2-��Ƚ��''���|j��:}��F_����c0:ڻ�=���tt�:X?8�r��h5�?;:���Go&2�m��-��(�u�LF�BK#ܙLD($I=�KhF�&TB�@L\�-�G�^%B �`��斆�x��	��b�rׁ h����ίh�J���mf�^�H�Vͯ�ǋ	��,�k�����+A�k}��J��R���Mq�����o���?|Y�g�ڟ���"�� ����̮�	�����A ���_����L'=Ď��Eu<u�<&�B�D�����&�ܝ=Q��U?OgP�4p�_�m�i8"槛�dt��-�O�64�mt���x=I�ʇX��L8E�];ͤ���4�H�h����1x�2��8�'M(~�̴E>�Y�r��3J�ƩX�̵@*�Fr蘥�'�5�/O����:K@�N�?�P��	��,,!{�!#��	�K;7{z�~G�;TZU.����Dq�=R �X�2�	-�4 ��1w\���A���Y�����:K�M~�"`�7(B���<�����|��� ���Yt��;�ᖲ�h���E�W8v�^�G�f�lH!��5G[�Υ��:���ɹ�/�`=OO����I2"��	#�@Q�E�a�H�Q|�&5�<հ�����E�2��)Y�m}�ih�GkQ�'��jHy��KT��_>S��Ѷ|c��Q,��CBɣz�0"58s;�8��C��,�h����.�������\�A�     