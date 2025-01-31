PGDMP         ;                {            Ogrenci_Yonetim    15.2    15.2 %    .           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            /           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            0           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            1           1262    24738    Ogrenci_Yonetim    DATABASE     �   CREATE DATABASE "Ogrenci_Yonetim" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
 !   DROP DATABASE "Ogrenci_Yonetim";
                postgres    false            �            1259    24834    DersiAlanOgrenciler    TABLE     �   CREATE TABLE public."DersiAlanOgrenciler" (
    ad_soyad character varying[] NOT NULL,
    ders_id integer NOT NULL,
    donem_id integer NOT NULL
);
 )   DROP TABLE public."DersiAlanOgrenciler";
       public         heap    postgres    false            �            1259    24739    OgrenciBilgi    TABLE     "  CREATE TABLE public."OgrenciBilgi" (
    ogrenci_id integer NOT NULL,
    ad_soyad character varying[] NOT NULL,
    bolum character varying[] DEFAULT '{"Bilgisayar Mühendisliği"}'::character varying[] NOT NULL,
    cinsiyet character varying[] NOT NULL,
    donem_id integer NOT NULL
);
 "   DROP TABLE public."OgrenciBilgi";
       public         heap    postgres    false            �            1259    24748    OgretimGorevlisiBilgi    TABLE     �   CREATE TABLE public."OgretimGorevlisiBilgi" (
    ogretmen_id integer NOT NULL,
    adi_soyadi character varying[] NOT NULL,
    cinsiyet character varying[] NOT NULL
);
 +   DROP TABLE public."OgretimGorevlisiBilgi";
       public         heap    postgres    false            �            1259    24767    ders    TABLE     G  CREATE TABLE public.ders (
    ogretmen_id integer NOT NULL,
    ders_adi character varying(50)[] NOT NULL,
    ders_kredi integer NOT NULL,
    ders_id integer NOT NULL,
    saat_id integer NOT NULL,
    donem_id integer NOT NULL,
    gun_id character varying(20)[] NOT NULL,
    ders_turu character varying(20)[] NOT NULL
);
    DROP TABLE public.ders;
       public         heap    postgres    false            �            1259    24875    donemDersleri    TABLE     �   CREATE TABLE public."donemDersleri" (
    ogrenci_id integer NOT NULL,
    ders_id integer NOT NULL,
    donem_id integer NOT NULL
);
 #   DROP TABLE public."donemDersleri";
       public         heap    postgres    false            �            1259    24755    ogrencigiris    TABLE     �   CREATE TABLE public.ogrencigiris (
    "ögrenci_id" integer NOT NULL,
    kullanici_adi character varying(9) NOT NULL,
    sifre character varying(16) NOT NULL
);
     DROP TABLE public.ogrencigiris;
       public         heap    postgres    false            �            1259    24760    ogretmengiris    TABLE     �   CREATE TABLE public.ogretmengiris (
    ogretmen_id integer NOT NULL,
    kullanici_adi character varying NOT NULL,
    sifre character varying NOT NULL
);
 !   DROP TABLE public.ogretmengiris;
       public         heap    postgres    false            *          0    24834    DersiAlanOgrenciler 
   TABLE DATA           L   COPY public."DersiAlanOgrenciler" (ad_soyad, ders_id, donem_id) FROM stdin;
    public          postgres    false    219   ..       %          0    24739    OgrenciBilgi 
   TABLE DATA           Y   COPY public."OgrenciBilgi" (ogrenci_id, ad_soyad, bolum, cinsiyet, donem_id) FROM stdin;
    public          postgres    false    214   �0       &          0    24748    OgretimGorevlisiBilgi 
   TABLE DATA           T   COPY public."OgretimGorevlisiBilgi" (ogretmen_id, adi_soyadi, cinsiyet) FROM stdin;
    public          postgres    false    215   �4       )          0    24767    ders 
   TABLE DATA           p   COPY public.ders (ogretmen_id, ders_adi, ders_kredi, ders_id, saat_id, donem_id, gun_id, ders_turu) FROM stdin;
    public          postgres    false    218   M5       +          0    24875    donemDersleri 
   TABLE DATA           H   COPY public."donemDersleri" (ogrenci_id, ders_id, donem_id) FROM stdin;
    public          postgres    false    220   �8       '          0    24755    ogrencigiris 
   TABLE DATA           K   COPY public.ogrencigiris ("ögrenci_id", kullanici_adi, sifre) FROM stdin;
    public          postgres    false    216   �8       (          0    24760    ogretmengiris 
   TABLE DATA           J   COPY public.ogretmengiris (ogretmen_id, kullanici_adi, sifre) FROM stdin;
    public          postgres    false    217   �9       �           2606    24773    ders DERS_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.ders
    ADD CONSTRAINT "DERS_pkey" PRIMARY KEY (ders_turu, gun_id, donem_id, saat_id, ders_id, ders_kredi, ders_adi, ogretmen_id);
 :   ALTER TABLE ONLY public.ders DROP CONSTRAINT "DERS_pkey";
       public            postgres    false    218    218    218    218    218    218    218    218            �           2606    24840 ,   DersiAlanOgrenciler DersiAlanOgrenciler_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."DersiAlanOgrenciler"
    ADD CONSTRAINT "DersiAlanOgrenciler_pkey" PRIMARY KEY (ad_soyad, ders_id, donem_id);
 Z   ALTER TABLE ONLY public."DersiAlanOgrenciler" DROP CONSTRAINT "DersiAlanOgrenciler_pkey";
       public            postgres    false    219    219    219            ~           2606    24746    OgrenciBilgi OgrenciBilgi_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."OgrenciBilgi"
    ADD CONSTRAINT "OgrenciBilgi_pkey" PRIMARY KEY (ogrenci_id);
 L   ALTER TABLE ONLY public."OgrenciBilgi" DROP CONSTRAINT "OgrenciBilgi_pkey";
       public            postgres    false    214            �           2606    24754 0   OgretimGorevlisiBilgi OgretimGorevlisiBilgi_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public."OgretimGorevlisiBilgi"
    ADD CONSTRAINT "OgretimGorevlisiBilgi_pkey" PRIMARY KEY (ogretmen_id);
 ^   ALTER TABLE ONLY public."OgretimGorevlisiBilgi" DROP CONSTRAINT "OgretimGorevlisiBilgi_pkey";
       public            postgres    false    215            �           2606    24879     donemDersleri donemDersleri_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."donemDersleri"
    ADD CONSTRAINT "donemDersleri_pkey" PRIMARY KEY (ogrenci_id);
 N   ALTER TABLE ONLY public."donemDersleri" DROP CONSTRAINT "donemDersleri_pkey";
       public            postgres    false    220            �           2606    24759    ogrencigiris ogrencigiris_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.ogrencigiris
    ADD CONSTRAINT ogrencigiris_pkey PRIMARY KEY ("ögrenci_id");
 H   ALTER TABLE ONLY public.ogrencigiris DROP CONSTRAINT ogrencigiris_pkey;
       public            postgres    false    216            �           2606    24766     ogretmengiris ogretmengiris_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.ogretmengiris
    ADD CONSTRAINT ogretmengiris_pkey PRIMARY KEY (ogretmen_id);
 J   ALTER TABLE ONLY public.ogretmengiris DROP CONSTRAINT ogretmengiris_pkey;
       public            postgres    false    217                       1259    24853    fki_ogrenci_giris    INDEX     R   CREATE INDEX fki_ogrenci_giris ON public."OgrenciBilgi" USING btree (ogrenci_id);
 %   DROP INDEX public.fki_ogrenci_giris;
       public            postgres    false    214            �           1259    24798    fki_ogrenci_giris_id    INDEX     V   CREATE INDEX fki_ogrenci_giris_id ON public.ogrencigiris USING btree ("ögrenci_id");
 (   DROP INDEX public.fki_ogrenci_giris_id;
       public            postgres    false    216            �           1259    24886    fki_ogrenci_id    INDEX     P   CREATE INDEX fki_ogrenci_id ON public."donemDersleri" USING btree (ogrenci_id);
 "   DROP INDEX public.fki_ogrenci_id;
       public            postgres    false    220            �           1259    24847    fki_ogretmen_giris    INDEX     ]   CREATE INDEX fki_ogretmen_giris ON public."OgretimGorevlisiBilgi" USING btree (ogretmen_id);
 &   DROP INDEX public.fki_ogretmen_giris;
       public            postgres    false    215            �           1259    24785    fki_ogretmen_giris_id    INDEX     V   CREATE INDEX fki_ogretmen_giris_id ON public.ogretmengiris USING btree (ogretmen_id);
 )   DROP INDEX public.fki_ogretmen_giris_id;
       public            postgres    false    217            �           1259    24779    fki_ogretmen_id_foreignkey    INDEX     R   CREATE INDEX fki_ogretmen_id_foreignkey ON public.ders USING btree (ogretmen_id);
 .   DROP INDEX public.fki_ogretmen_id_foreignkey;
       public            postgres    false    218            �           2606    24848    OgrenciBilgi ogrenci_giris    FK CONSTRAINT     �   ALTER TABLE ONLY public."OgrenciBilgi"
    ADD CONSTRAINT ogrenci_giris FOREIGN KEY (ogrenci_id) REFERENCES public."OgrenciBilgi"(ogrenci_id) NOT VALID;
 F   ALTER TABLE ONLY public."OgrenciBilgi" DROP CONSTRAINT ogrenci_giris;
       public          postgres    false    214    214    3198            �           2606    24793    ogrencigiris ogrenci_giris_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ogrencigiris
    ADD CONSTRAINT ogrenci_giris_id FOREIGN KEY ("ögrenci_id") REFERENCES public."OgrenciBilgi"(ogrenci_id) NOT VALID;
 G   ALTER TABLE ONLY public.ogrencigiris DROP CONSTRAINT ogrenci_giris_id;
       public          postgres    false    216    214    3198            �           2606    24881    donemDersleri ogrenci_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."donemDersleri"
    ADD CONSTRAINT ogrenci_id FOREIGN KEY (ogrenci_id) REFERENCES public."OgrenciBilgi"(ogrenci_id) NOT VALID;
 D   ALTER TABLE ONLY public."donemDersleri" DROP CONSTRAINT ogrenci_id;
       public          postgres    false    220    214    3198            �           2606    24842 $   OgretimGorevlisiBilgi ogretmen_giris    FK CONSTRAINT     �   ALTER TABLE ONLY public."OgretimGorevlisiBilgi"
    ADD CONSTRAINT ogretmen_giris FOREIGN KEY (ogretmen_id) REFERENCES public.ogretmengiris(ogretmen_id) NOT VALID;
 P   ALTER TABLE ONLY public."OgretimGorevlisiBilgi" DROP CONSTRAINT ogretmen_giris;
       public          postgres    false    215    3208    217            �           2606    24780    ogretmengiris ogretmen_giris_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ogretmengiris
    ADD CONSTRAINT ogretmen_giris_id FOREIGN KEY (ogretmen_id) REFERENCES public."OgretimGorevlisiBilgi"(ogretmen_id) NOT VALID;
 I   ALTER TABLE ONLY public.ogretmengiris DROP CONSTRAINT ogretmen_giris_id;
       public          postgres    false    215    3201    217            �           2606    24774    ders ogretmen_id_foreignkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ders
    ADD CONSTRAINT ogretmen_id_foreignkey FOREIGN KEY (ogretmen_id) REFERENCES public."OgretimGorevlisiBilgi"(ogretmen_id) NOT VALID;
 E   ALTER TABLE ONLY public.ders DROP CONSTRAINT ogretmen_id_foreignkey;
       public          postgres    false    218    215    3201            *   �  x�]TKn�0]gN!� E��i��M���@��$�zn��`��;X�WI�3R���#i��Q�4."LJ��������?�wB�Ɉ�гד)�b�3���G
�>Nh;�~ӡ h���9^��x7�u\m�B7N ����y-8,�Y�K��K�FJl��*]�Yj0(�٫:��T�탒D�K!�2�B����֩[�������ڢ��Ct���^Ѣ��\��q]D\c\��ɹue��)�x\U^If�v��j���
1BJӠhtYpޓphZ����7�a�(�>�O�=�Ў���!������:��G;�T�@�l���BM)����@��fyQ��'v��t�T�N
Ȇ�D�(��3����xS%a��XhW�V��U1� /�B2�|�4mb��BO���:r�v	�E�͙(�G.�'S8{��iw:��I�u��S�����M&4��+-r) �с@W�/���!���~��q��%�)_�n�*�K��ON����B����X9�H��L�;�����Sj��O�6)�v��N���I�7%�L�����7C��
r�
�׃���Fɝ�Vv�U�7q������	���� �#��G�i	yp7:��kp�k X�v����D-`zN0S��wn��S�b��F�G	�<v\�$k��i4�m���۷���ϼ\      %   �  x���M��@���S�r�hx�Y�mt3j葰r�(�AV��� �ʫ&v���E���W?l���ڇ�t8��'���؜汣���ӥ4���f��<�IME�~~�lT��.�=P;_� f���a�$�ק�2}��K��i�{��צ��-�_�`I��"�+���|�ӥ���UHI�����G�C�v�lo�3�>��iĀ7��>��hݮ=�e�6/8���pH#3uřuRSHS\�� m:#�K�6ۨ�#n3,�{=}����3rs��H���>=����X���O�rWNa�@��m�������x8;�4gj�R}4O�֪�����Q4u%�2Pow���$Έ�/S	kך��U-�R�ʠҚ���GwX,�CtV���p�: ( ��j,��(�	�7�^�YC�|9὘����P��i�de�e�6��#�闃t�>�d��Qa�SWIT�[�'σV1����p(�.��/v���x�y7�8m�;�5��4*w�XhN;�b
#ǰ~{*ICpE嫵y�!R����YS���O�c��^H��ޯ^R0��
�ւ���7ق���Z�MRSNB@����&��%�z9,�H�[rNӯ��r$-"0Xk�ݲCKK� ��Q��������+M���iX��
�.�z�U�L�0_}h�$iI#�m4W�������XjWiT���R�]��Ğ�^�8�ڥ�ɇ:��Bʫ�vq���r��w���-ɀ��L���s����ɸ��ۗ����[�<�J���$�� n�e���tvj��׹�� \��A\!p��w�RG����UJ���1�����p4�S��F�`�p����۫-�ik�(��649ԆJ�
@��C��Omb �EBY���l��=���Kh��<"�~�i���KZ��SJ�~�N      &   �   x�M���0�3�"b����G�� %)4HD�qf��3�Cҽjn�Y����l��b���Cm,�|�Ft�$N�}��Fj<�3I*mJ�s�K��]���I\�-����I�+a�V**�48�|#T����I~+�=فe� �ʸ4�����6��Oq$��
eI9Ewʳ�� ��(�Zz      )   =  x��V�n�@=��Xqn+�1��A��]do��zl��VJ�K��AO����0��ٱ)&x%Q"��<����u��2ؗ:�R`ZĲ��Ddu�V�PD�	]WuYWí�9�3u\��,a�y]m���_O/?_���P�5����e
2��2bQ�XנG����-�E̒��A��~M$1�$����]�p�u/���&i]I�m��Q���<U��JX�fJ'([�*�/�uc|���	�v<<~���{���%[fJ�X%��D1v\�E�1>��j���:np	6�]���t��v,bLmc4�{Z`J�������WΌd48G��0�w{���*�
����Hи�s���	�� �a-C�M�������Eid�	$`s��\��^��h���8�� �"N�W�
�1V.Y
Z�.t.��T�^d-}����^v�ݛԻ7lEF�Q��{�l_B:��D��J�$�N���}`�}\#�ZA^(�([<���ޑ��v��b6&��e,$�<�6}�^W�N�F^��{�cɼ�t.rfސ�j-���vxw�9'��G�l�O��ɂ�.nC���3�,�G�3�Ul|i�M;c��Vxة�Zd�g��H�=�L��Ѭ�7�e�-4�<jcţ4��m�Ԣ9%�aA[�mr�ձ}5����G~������'"7f�Z>ߧ�>���~;�3����A
�>�ń���	��'�������C�@~t�c<��e�O(|��7D�k���=Dֳ��D�ۇC�/	��I�>ݿ��cb�����]@� �O8~s��6�K��������ۣ����`0���C�      +      x������ � �      '   �   x�=�Kr�0 ѵ9LJ�s��IԸw���z� ^�2�V���#��]v�n�w�=�O�������p�µ�m�w��̀p Cc`�2TʐSV�
]�+��tg��Ri>g�4���D�Ji*M��4���D�Ji*M������BZJ�v�����RZHKi!-�����RZH[i#m����6�V�������F�Ji+m������F:J�(��t���A:J�����Q:HG� ��t��S���s�/a��      (   8   x��� ���aD)e�ρ�\��x�5��t�9�2I�Xr��W~�N1��U     