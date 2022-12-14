PGDMP     -                
    z            pnjualan    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16485    pnjualan    DATABASE     h   CREATE DATABASE pnjualan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE pnjualan;
                postgres    false            ?            1259    16501    baju    TABLE     ?   CREATE TABLE public.baju (
    harga_baju integer NOT NULL,
    nama_barang character varying(30),
    merek_baju character varying(30)
);
    DROP TABLE public.baju;
       public         heap    postgres    false            ?            1259    16500    baju_harga_baju_seq    SEQUENCE     ?   CREATE SEQUENCE public.baju_harga_baju_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.baju_harga_baju_seq;
       public          postgres    false    214                       0    0    baju_harga_baju_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.baju_harga_baju_seq OWNED BY public.baju.harga_baju;
          public          postgres    false    213            ?            1259    16487    laptop    TABLE     ?   CREATE TABLE public.laptop (
    harga_laptop integer NOT NULL,
    nama_barang character varying(30),
    merek_laptop character varying(30)
);
    DROP TABLE public.laptop;
       public         heap    postgres    false            ?            1259    16486    laptop_harga_laptop_seq    SEQUENCE     ?   CREATE SEQUENCE public.laptop_harga_laptop_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.laptop_harga_laptop_seq;
       public          postgres    false    210                       0    0    laptop_harga_laptop_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.laptop_harga_laptop_seq OWNED BY public.laptop.harga_laptop;
          public          postgres    false    209            ?            1259    16494    sepatu    TABLE     ?   CREATE TABLE public.sepatu (
    harga_sepatu integer NOT NULL,
    nama_barang character varying(30),
    merek_barang character varying(30)
);
    DROP TABLE public.sepatu;
       public         heap    postgres    false            ?            1259    16493    sepatu_harga_sepatu_seq    SEQUENCE     ?   CREATE SEQUENCE public.sepatu_harga_sepatu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.sepatu_harga_sepatu_seq;
       public          postgres    false    212                       0    0    sepatu_harga_sepatu_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.sepatu_harga_sepatu_seq OWNED BY public.sepatu.harga_sepatu;
          public          postgres    false    211            h           2604    16504    baju harga_baju    DEFAULT     r   ALTER TABLE ONLY public.baju ALTER COLUMN harga_baju SET DEFAULT nextval('public.baju_harga_baju_seq'::regclass);
 >   ALTER TABLE public.baju ALTER COLUMN harga_baju DROP DEFAULT;
       public          postgres    false    213    214    214            f           2604    16490    laptop harga_laptop    DEFAULT     z   ALTER TABLE ONLY public.laptop ALTER COLUMN harga_laptop SET DEFAULT nextval('public.laptop_harga_laptop_seq'::regclass);
 B   ALTER TABLE public.laptop ALTER COLUMN harga_laptop DROP DEFAULT;
       public          postgres    false    210    209    210            g           2604    16497    sepatu harga_sepatu    DEFAULT     z   ALTER TABLE ONLY public.sepatu ALTER COLUMN harga_sepatu SET DEFAULT nextval('public.sepatu_harga_sepatu_seq'::regclass);
 B   ALTER TABLE public.sepatu ALTER COLUMN harga_sepatu DROP DEFAULT;
       public          postgres    false    212    211    212            ?          0    16501    baju 
   TABLE DATA           C   COPY public.baju (harga_baju, nama_barang, merek_baju) FROM stdin;
    public          postgres    false    214          ?          0    16487    laptop 
   TABLE DATA           I   COPY public.laptop (harga_laptop, nama_barang, merek_laptop) FROM stdin;
    public          postgres    false    210   ?       ?          0    16494    sepatu 
   TABLE DATA           I   COPY public.sepatu (harga_sepatu, nama_barang, merek_barang) FROM stdin;
    public          postgres    false    212   q       	           0    0    baju_harga_baju_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.baju_harga_baju_seq', 1, false);
          public          postgres    false    213            
           0    0    laptop_harga_laptop_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.laptop_harga_laptop_seq', 1, false);
          public          postgres    false    209                       0    0    sepatu_harga_sepatu_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.sepatu_harga_sepatu_seq', 1, false);
          public          postgres    false    211            n           2606    16506    baju baju_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.baju
    ADD CONSTRAINT baju_pkey PRIMARY KEY (harga_baju);
 8   ALTER TABLE ONLY public.baju DROP CONSTRAINT baju_pkey;
       public            postgres    false    214            j           2606    16492    laptop laptop_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.laptop
    ADD CONSTRAINT laptop_pkey PRIMARY KEY (harga_laptop);
 <   ALTER TABLE ONLY public.laptop DROP CONSTRAINT laptop_pkey;
       public            postgres    false    210            l           2606    16499    sepatu sepatu_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sepatu
    ADD CONSTRAINT sepatu_pkey PRIMARY KEY (harga_sepatu);
 <   ALTER TABLE ONLY public.sepatu DROP CONSTRAINT sepatu_pkey;
       public            postgres    false    212            ?      x?365 N'G?P΀P_G?=... 4B      ?   "   x?3135 Nǀ? N_Gg'o?=... Z?      ?   !   x?322 ?`? ǐPNg?0נ`?=... U&?     