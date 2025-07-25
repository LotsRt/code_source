PGDMP     :    4                }           school_manager    11.16    11.16 (    /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            2           1262    28357    school_manager    DATABASE     �   CREATE DATABASE school_manager WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE school_manager;
             postgres    false            �            1259    28366    eleve    TABLE     �   CREATE TABLE public.eleve (
    id_eleve integer NOT NULL,
    nom text,
    prenom text,
    age integer,
    sexe text,
    matricule integer,
    date_naissance date,
    pere text,
    mere text,
    adresse text,
    code_filier integer
);
    DROP TABLE public.eleve;
       public         postgres    false            �            1259    28364    eleve_id_eleve_seq    SEQUENCE     �   CREATE SEQUENCE public.eleve_id_eleve_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.eleve_id_eleve_seq;
       public       postgres    false    197            3           0    0    eleve_id_eleve_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.eleve_id_eleve_seq OWNED BY public.eleve.id_eleve;
            public       postgres    false    196            �            1259    28390 
   enseignant    TABLE     y  CREATE TABLE public.enseignant (
    id_enseignant integer NOT NULL,
    code_matiere integer,
    nom text,
    prenom text,
    code_enseignant integer,
    matricule integer,
    sexe text,
    telephone text,
    adresse text,
    grade character varying(30),
    statut text,
    date_naissance date,
    date_recrutement date,
    email text,
    code_filiere integer
);
    DROP TABLE public.enseignant;
       public         postgres    false            �            1259    28388    enseignant_id_enseignant_seq    SEQUENCE     �   CREATE SEQUENCE public.enseignant_id_enseignant_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.enseignant_id_enseignant_seq;
       public       postgres    false    199            4           0    0    enseignant_id_enseignant_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.enseignant_id_enseignant_seq OWNED BY public.enseignant.id_enseignant;
            public       postgres    false    198            �            1259    28447    filier    TABLE     m   CREATE TABLE public.filier (
    id_filier integer NOT NULL,
    code_filier integer,
    nom_filier text
);
    DROP TABLE public.filier;
       public         postgres    false            �            1259    28445    filier_id_filier_seq    SEQUENCE     �   CREATE SEQUENCE public.filier_id_filier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.filier_id_filier_seq;
       public       postgres    false    203            5           0    0    filier_id_filier_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.filier_id_filier_seq OWNED BY public.filier.id_filier;
            public       postgres    false    202            �            1259    28422    matiere    TABLE     �   CREATE TABLE public.matiere (
    id_matiere integer NOT NULL,
    code_matiere integer,
    nom_matiere text,
    volume_horaire integer
);
    DROP TABLE public.matiere;
       public         postgres    false            �            1259    28420    matiere_id_matiere_seq    SEQUENCE     �   CREATE SEQUENCE public.matiere_id_matiere_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.matiere_id_matiere_seq;
       public       postgres    false    201            6           0    0    matiere_id_matiere_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.matiere_id_matiere_seq OWNED BY public.matiere.id_matiere;
            public       postgres    false    200            �
           2604    28369    eleve id_eleve    DEFAULT     p   ALTER TABLE ONLY public.eleve ALTER COLUMN id_eleve SET DEFAULT nextval('public.eleve_id_eleve_seq'::regclass);
 =   ALTER TABLE public.eleve ALTER COLUMN id_eleve DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    28393    enseignant id_enseignant    DEFAULT     �   ALTER TABLE ONLY public.enseignant ALTER COLUMN id_enseignant SET DEFAULT nextval('public.enseignant_id_enseignant_seq'::regclass);
 G   ALTER TABLE public.enseignant ALTER COLUMN id_enseignant DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    28450    filier id_filier    DEFAULT     t   ALTER TABLE ONLY public.filier ALTER COLUMN id_filier SET DEFAULT nextval('public.filier_id_filier_seq'::regclass);
 ?   ALTER TABLE public.filier ALTER COLUMN id_filier DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    28425    matiere id_matiere    DEFAULT     x   ALTER TABLE ONLY public.matiere ALTER COLUMN id_matiere SET DEFAULT nextval('public.matiere_id_matiere_seq'::regclass);
 A   ALTER TABLE public.matiere ALTER COLUMN id_matiere DROP DEFAULT;
       public       postgres    false    200    201    201            &          0    28366    eleve 
   TABLE DATA               ~   COPY public.eleve (id_eleve, nom, prenom, age, sexe, matricule, date_naissance, pere, mere, adresse, code_filier) FROM stdin;
    public       postgres    false    197   �.       (          0    28390 
   enseignant 
   TABLE DATA               �   COPY public.enseignant (id_enseignant, code_matiere, nom, prenom, code_enseignant, matricule, sexe, telephone, adresse, grade, statut, date_naissance, date_recrutement, email, code_filiere) FROM stdin;
    public       postgres    false    199   �.       ,          0    28447    filier 
   TABLE DATA               D   COPY public.filier (id_filier, code_filier, nom_filier) FROM stdin;
    public       postgres    false    203   /       *          0    28422    matiere 
   TABLE DATA               X   COPY public.matiere (id_matiere, code_matiere, nom_matiere, volume_horaire) FROM stdin;
    public       postgres    false    201   �/       7           0    0    eleve_id_eleve_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.eleve_id_eleve_seq', 13, true);
            public       postgres    false    196            8           0    0    enseignant_id_enseignant_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.enseignant_id_enseignant_seq', 11, true);
            public       postgres    false    198            9           0    0    filier_id_filier_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.filier_id_filier_seq', 15, true);
            public       postgres    false    202            :           0    0    matiere_id_matiere_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.matiere_id_matiere_seq', 8, true);
            public       postgres    false    200            �
           2606    28374    eleve eleve_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.eleve
    ADD CONSTRAINT eleve_pkey PRIMARY KEY (id_eleve);
 :   ALTER TABLE ONLY public.eleve DROP CONSTRAINT eleve_pkey;
       public         postgres    false    197            �
           2606    28398    enseignant enseignant_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.enseignant
    ADD CONSTRAINT enseignant_pkey PRIMARY KEY (id_enseignant);
 D   ALTER TABLE ONLY public.enseignant DROP CONSTRAINT enseignant_pkey;
       public         postgres    false    199            �
           2606    28452    filier filier_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.filier
    ADD CONSTRAINT filier_pkey PRIMARY KEY (id_filier);
 <   ALTER TABLE ONLY public.filier DROP CONSTRAINT filier_pkey;
       public         postgres    false    203            �
           2606    28430    matiere matiere_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.matiere
    ADD CONSTRAINT matiere_pkey PRIMARY KEY (id_matiere);
 >   ALTER TABLE ONLY public.matiere DROP CONSTRAINT matiere_pkey;
       public         postgres    false    201            �
           2606    28439 !   enseignant unique_code_enseignant 
   CONSTRAINT     g   ALTER TABLE ONLY public.enseignant
    ADD CONSTRAINT unique_code_enseignant UNIQUE (code_enseignant);
 K   ALTER TABLE ONLY public.enseignant DROP CONSTRAINT unique_code_enseignant;
       public         postgres    false    199            �
           2606    28454    filier unique_code_filier 
   CONSTRAINT     [   ALTER TABLE ONLY public.filier
    ADD CONSTRAINT unique_code_filier UNIQUE (code_filier);
 C   ALTER TABLE ONLY public.filier DROP CONSTRAINT unique_code_filier;
       public         postgres    false    203            �
           2606    28432    matiere unique_code_matiere 
   CONSTRAINT     ^   ALTER TABLE ONLY public.matiere
    ADD CONSTRAINT unique_code_matiere UNIQUE (code_matiere);
 E   ALTER TABLE ONLY public.matiere DROP CONSTRAINT unique_code_matiere;
       public         postgres    false    201            �
           2606    28464 #   enseignant unique_matrcl_enseignant 
   CONSTRAINT     c   ALTER TABLE ONLY public.enseignant
    ADD CONSTRAINT unique_matrcl_enseignant UNIQUE (matricule);
 M   ALTER TABLE ONLY public.enseignant DROP CONSTRAINT unique_matrcl_enseignant;
       public         postgres    false    199            �
           2606    28466    eleve unique_mtricule_eleve 
   CONSTRAINT     [   ALTER TABLE ONLY public.eleve
    ADD CONSTRAINT unique_mtricule_eleve UNIQUE (matricule);
 E   ALTER TABLE ONLY public.eleve DROP CONSTRAINT unique_mtricule_eleve;
       public         postgres    false    197            �
           2606    28467    enseignant foreign_codefiliere    FK CONSTRAINT     �   ALTER TABLE ONLY public.enseignant
    ADD CONSTRAINT foreign_codefiliere FOREIGN KEY (code_filiere) REFERENCES public.filier(code_filier) NOT VALID;
 H   ALTER TABLE ONLY public.enseignant DROP CONSTRAINT foreign_codefiliere;
       public       postgres    false    203    2728    199            �
           2606    28458    eleve foreign_key_code_filier    FK CONSTRAINT     �   ALTER TABLE ONLY public.eleve
    ADD CONSTRAINT foreign_key_code_filier FOREIGN KEY (code_filier) REFERENCES public.filier(code_filier) NOT VALID;
 G   ALTER TABLE ONLY public.eleve DROP CONSTRAINT foreign_key_code_filier;
       public       postgres    false    197    203    2728            �
           2606    28433 "   enseignant freign_key_code_matiere    FK CONSTRAINT     �   ALTER TABLE ONLY public.enseignant
    ADD CONSTRAINT freign_key_code_matiere FOREIGN KEY (code_matiere) REFERENCES public.matiere(code_matiere) NOT VALID;
 L   ALTER TABLE ONLY public.enseignant DROP CONSTRAINT freign_key_code_matiere;
       public       postgres    false    199    2724    201            &   T   x�34�r����s	r���*-.�44�LK������4420�4202�50�54�t�H,��/)I��ru������4����� 7D      (      x������ � �      ,   q   x�-�;1E��y1��g)iF�K$�8AbI�c6���GW��(L%PDB���Qe\���ǯ
�W���I��g6pǰM�t�]֭=]	>�M�Wsg�0Ī��%�8��'      *   r   x�=�;�0E���^��B�������'�)Xb�X�"Qޣ�Qa�;�;�%�1����B�5�k��(�a�JL�����zP�%=a�q���8�w�k���x��AD?+�!�     