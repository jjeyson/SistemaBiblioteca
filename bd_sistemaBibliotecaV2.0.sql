PGDMP     *                    x            bd_sistemaBiblioteca    12.3    12.3 �    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    19804    bd_sistemaBiblioteca    DATABASE     �   CREATE DATABASE "bd_sistemaBiblioteca" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
 &   DROP DATABASE "bd_sistemaBiblioteca";
                postgres    false            �            1259    19818    GestionPrestamo_autorlibro    TABLE     Y  CREATE TABLE public."GestionPrestamo_autorlibro" (
    "idAutorLibro" integer NOT NULL,
    "nombreAutorLibro" character varying(100) NOT NULL,
    "apellidosAutorLibro" character varying(100) NOT NULL,
    "descripcionAutorLibro" text,
    "fechaCreacionAutorLibro" timestamp with time zone NOT NULL,
    "estadoAutorLibro" boolean NOT NULL
);
 0   DROP TABLE public."GestionPrestamo_autorlibro";
       public         heap    postgres    false            �            1259    19816 +   GestionPrestamo_autorlibro_idAutorLibro_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_autorlibro_idAutorLibro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."GestionPrestamo_autorlibro_idAutorLibro_seq";
       public          postgres    false    205            I           0    0 +   GestionPrestamo_autorlibro_idAutorLibro_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_autorlibro_idAutorLibro_seq" OWNED BY public."GestionPrestamo_autorlibro"."idAutorLibro";
          public          postgres    false    204            �            1259    19829    GestionPrestamo_bibliotecario    TABLE     C  CREATE TABLE public."GestionPrestamo_bibliotecario" (
    "idBibliotecario" integer NOT NULL,
    "nombreBibliotecario" character varying(100) NOT NULL,
    "apellidosBibliotecario" character varying(100) NOT NULL,
    "direccionBibliotecario" character varying(250) NOT NULL,
    "DNIBibliotecario" character varying(20) NOT NULL,
    "telefonoBibliotecario" character varying(20) NOT NULL,
    "emailBibliotecario" character varying(50) NOT NULL,
    "sexoBibliotecario" character varying(1) NOT NULL,
    "usernameBibliotecario" character varying(50) NOT NULL,
    "claveBibliotecario" character varying(50) NOT NULL,
    "fechaNacimientoBibliotecario" date NOT NULL,
    "fechaCreacionBibliotecario" timestamp with time zone NOT NULL,
    "estadoBibliotecario" boolean NOT NULL,
    "tipoBibliotecario_Bibliotecario_id" integer
);
 3   DROP TABLE public."GestionPrestamo_bibliotecario";
       public         heap    postgres    false            �            1259    19827 1   GestionPrestamo_bibliotecario_idBibliotecario_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_bibliotecario_idBibliotecario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public."GestionPrestamo_bibliotecario_idBibliotecario_seq";
       public          postgres    false    207            J           0    0 1   GestionPrestamo_bibliotecario_idBibliotecario_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_bibliotecario_idBibliotecario_seq" OWNED BY public."GestionPrestamo_bibliotecario"."idBibliotecario";
          public          postgres    false    206            �            1259    19840    GestionPrestamo_editorial    TABLE       CREATE TABLE public."GestionPrestamo_editorial" (
    "idEditorial" integer NOT NULL,
    "tituloEditorial" character varying(200) NOT NULL,
    "descripcionEditorial" text,
    "fechaCreacionEditorial" timestamp with time zone NOT NULL,
    "estadoEditorial" boolean NOT NULL
);
 /   DROP TABLE public."GestionPrestamo_editorial";
       public         heap    postgres    false            �            1259    19838 )   GestionPrestamo_editorial_idEditorial_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_editorial_idEditorial_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."GestionPrestamo_editorial_idEditorial_seq";
       public          postgres    false    209            K           0    0 )   GestionPrestamo_editorial_idEditorial_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."GestionPrestamo_editorial_idEditorial_seq" OWNED BY public."GestionPrestamo_editorial"."idEditorial";
          public          postgres    false    208            �            1259    19853    GestionPrestamo_etiquetalibro    TABLE       CREATE TABLE public."GestionPrestamo_etiquetalibro" (
    "idEtiquetaLibro" integer NOT NULL,
    "tituloEtiquetaLibro" character varying(100) NOT NULL,
    "fechaCreacionEtiquetaLibro" timestamp with time zone NOT NULL,
    "estadoEtiquetaLibro" boolean NOT NULL
);
 3   DROP TABLE public."GestionPrestamo_etiquetalibro";
       public         heap    postgres    false            �            1259    19851 1   GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public."GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq";
       public          postgres    false    211            L           0    0 1   GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq" OWNED BY public."GestionPrestamo_etiquetalibro"."idEtiquetaLibro";
          public          postgres    false    210            �            1259    19863    GestionPrestamo_generolibro    TABLE       CREATE TABLE public."GestionPrestamo_generolibro" (
    "idGeneroLibro" integer NOT NULL,
    "tituloGeneroLibro" character varying(200) NOT NULL,
    "fechaCreacionGeneroLibro" timestamp with time zone NOT NULL,
    "estadoGeneroLibro" boolean NOT NULL
);
 1   DROP TABLE public."GestionPrestamo_generolibro";
       public         heap    postgres    false            �            1259    19861 -   GestionPrestamo_generolibro_idGeneroLibro_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_generolibro_idGeneroLibro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."GestionPrestamo_generolibro_idGeneroLibro_seq";
       public          postgres    false    213            M           0    0 -   GestionPrestamo_generolibro_idGeneroLibro_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_generolibro_idGeneroLibro_seq" OWNED BY public."GestionPrestamo_generolibro"."idGeneroLibro";
          public          postgres    false    212            �            1259    19873    GestionPrestamo_idioma    TABLE     �   CREATE TABLE public."GestionPrestamo_idioma" (
    "idIdioma" integer NOT NULL,
    "tituloIdioma" character varying(200) NOT NULL,
    "estadoIdioma" boolean NOT NULL
);
 ,   DROP TABLE public."GestionPrestamo_idioma";
       public         heap    postgres    false            �            1259    19871 #   GestionPrestamo_idioma_idIdioma_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_idioma_idIdioma_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."GestionPrestamo_idioma_idIdioma_seq";
       public          postgres    false    215            N           0    0 #   GestionPrestamo_idioma_idIdioma_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."GestionPrestamo_idioma_idIdioma_seq" OWNED BY public."GestionPrestamo_idioma"."idIdioma";
          public          postgres    false    214            �            1259    19881    GestionPrestamo_lector    TABLE     h  CREATE TABLE public."GestionPrestamo_lector" (
    "idLector" integer NOT NULL,
    "nombreLector" character varying(100) NOT NULL,
    "apellidosLector" character varying(100) NOT NULL,
    "DNILector" character varying(20) NOT NULL,
    "emailLector" character varying(50) NOT NULL,
    "sexoLector" character varying(1) NOT NULL,
    "usernameLector" character varying(50) NOT NULL,
    "claveLector" character varying(50) NOT NULL,
    "fechaNacimientoLector" date NOT NULL,
    "fechaCreacionLector" timestamp with time zone NOT NULL,
    "estadoLector" boolean NOT NULL,
    "tipoUsuario_Lector_id" integer
);
 ,   DROP TABLE public."GestionPrestamo_lector";
       public         heap    postgres    false            �            1259    19879 #   GestionPrestamo_lector_idLector_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_lector_idLector_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."GestionPrestamo_lector_idLector_seq";
       public          postgres    false    217            O           0    0 #   GestionPrestamo_lector_idLector_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."GestionPrestamo_lector_idLector_seq" OWNED BY public."GestionPrestamo_lector"."idLector";
          public          postgres    false    216            �            1259    19889    GestionPrestamo_libro    TABLE     H  CREATE TABLE public."GestionPrestamo_libro" (
    "idLibro" integer NOT NULL,
    "codigoLibro" character varying(20) NOT NULL,
    "tituloLibro" character varying(200) NOT NULL,
    "formatoLibro" character varying(1) NOT NULL,
    "resumenLibro" text NOT NULL,
    "ISBNLibro" character varying(20) NOT NULL,
    "anioPublicacionLibro" integer NOT NULL,
    "fechaCreacionLibro" timestamp with time zone NOT NULL,
    "estadoLibro" boolean NOT NULL,
    "bibliotecario_Libro_id" integer,
    "editorial_Libro_id" integer,
    "idiomaLibro_id" integer,
    "paisLibro_id" integer
);
 +   DROP TABLE public."GestionPrestamo_libro";
       public         heap    postgres    false            �            1259    19902 &   GestionPrestamo_libro_autorLibro_Libro    TABLE     �   CREATE TABLE public."GestionPrestamo_libro_autorLibro_Libro" (
    id integer NOT NULL,
    libro_id integer NOT NULL,
    autorlibro_id integer NOT NULL
);
 <   DROP TABLE public."GestionPrestamo_libro_autorLibro_Libro";
       public         heap    postgres    false            �            1259    19900 -   GestionPrestamo_libro_autorLibro_Libro_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_libro_autorLibro_Libro_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."GestionPrestamo_libro_autorLibro_Libro_id_seq";
       public          postgres    false    221            P           0    0 -   GestionPrestamo_libro_autorLibro_Libro_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_libro_autorLibro_Libro_id_seq" OWNED BY public."GestionPrestamo_libro_autorLibro_Libro".id;
          public          postgres    false    220            �            1259    19910 )   GestionPrestamo_libro_etiquetaLibro_Libro    TABLE     �   CREATE TABLE public."GestionPrestamo_libro_etiquetaLibro_Libro" (
    id integer NOT NULL,
    libro_id integer NOT NULL,
    etiquetalibro_id integer NOT NULL
);
 ?   DROP TABLE public."GestionPrestamo_libro_etiquetaLibro_Libro";
       public         heap    postgres    false            �            1259    19908 0   GestionPrestamo_libro_etiquetaLibro_Libro_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_libro_etiquetaLibro_Libro_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public."GestionPrestamo_libro_etiquetaLibro_Libro_id_seq";
       public          postgres    false    223            Q           0    0 0   GestionPrestamo_libro_etiquetaLibro_Libro_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_libro_etiquetaLibro_Libro_id_seq" OWNED BY public."GestionPrestamo_libro_etiquetaLibro_Libro".id;
          public          postgres    false    222            �            1259    19918 !   GestionPrestamo_libro_generoLibro    TABLE     �   CREATE TABLE public."GestionPrestamo_libro_generoLibro" (
    id integer NOT NULL,
    libro_id integer NOT NULL,
    generolibro_id integer NOT NULL
);
 7   DROP TABLE public."GestionPrestamo_libro_generoLibro";
       public         heap    postgres    false            �            1259    19916 (   GestionPrestamo_libro_generoLibro_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_libro_generoLibro_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."GestionPrestamo_libro_generoLibro_id_seq";
       public          postgres    false    225            R           0    0 (   GestionPrestamo_libro_generoLibro_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."GestionPrestamo_libro_generoLibro_id_seq" OWNED BY public."GestionPrestamo_libro_generoLibro".id;
          public          postgres    false    224            �            1259    19887 !   GestionPrestamo_libro_idLibro_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_libro_idLibro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."GestionPrestamo_libro_idLibro_seq";
       public          postgres    false    219            S           0    0 !   GestionPrestamo_libro_idLibro_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."GestionPrestamo_libro_idLibro_seq" OWNED BY public."GestionPrestamo_libro"."idLibro";
          public          postgres    false    218            �            1259    19926    GestionPrestamo_libroinstancia    TABLE     =  CREATE TABLE public."GestionPrestamo_libroinstancia" (
    "idLibroInstancia" integer NOT NULL,
    "estadoPrestamoLibroInstancia" character varying(1) NOT NULL,
    "fechaCreacionLibroInstancia" timestamp with time zone NOT NULL,
    "estadoLibroInstancia" boolean NOT NULL,
    "libro_LibroInstancia_id" integer
);
 4   DROP TABLE public."GestionPrestamo_libroinstancia";
       public         heap    postgres    false            �            1259    19924 3   GestionPrestamo_libroinstancia_idLibroInstancia_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_libroinstancia_idLibroInstancia_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public."GestionPrestamo_libroinstancia_idLibroInstancia_seq";
       public          postgres    false    227            T           0    0 3   GestionPrestamo_libroinstancia_idLibroInstancia_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_libroinstancia_idLibroInstancia_seq" OWNED BY public."GestionPrestamo_libroinstancia"."idLibroInstancia";
          public          postgres    false    226            �            1259    19934    GestionPrestamo_pais    TABLE     �   CREATE TABLE public."GestionPrestamo_pais" (
    "idPais" integer NOT NULL,
    "tituloPais" character varying(200) NOT NULL,
    "estadoPais" boolean NOT NULL,
    "isoPais" character varying(2) NOT NULL
);
 *   DROP TABLE public."GestionPrestamo_pais";
       public         heap    postgres    false            �            1259    19932    GestionPrestamo_pais_idPais_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_pais_idPais_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."GestionPrestamo_pais_idPais_seq";
       public          postgres    false    229            U           0    0    GestionPrestamo_pais_idPais_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."GestionPrestamo_pais_idPais_seq" OWNED BY public."GestionPrestamo_pais"."idPais";
          public          postgres    false    228            �            1259    19963    GestionPrestamo_reservacion    TABLE     �  CREATE TABLE public."GestionPrestamo_reservacion" (
    "idReservacion" integer NOT NULL,
    "tipoAdquisicionReservacion" character varying(1) NOT NULL,
    "fechaEmisionReservacion" timestamp with time zone NOT NULL,
    "fechaRetornoReservacion" timestamp with time zone NOT NULL,
    "estadoReservacion" boolean NOT NULL,
    "bibliotecario_Reservacion_id" integer,
    "libro_Reservacion_id" integer,
    usuario_reservacion_id integer
);
 1   DROP TABLE public."GestionPrestamo_reservacion";
       public         heap    postgres    false            �            1259    19961 -   GestionPrestamo_reservacion_idReservacion_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_reservacion_idReservacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."GestionPrestamo_reservacion_idReservacion_seq";
       public          postgres    false    235            V           0    0 -   GestionPrestamo_reservacion_idReservacion_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_reservacion_idReservacion_seq" OWNED BY public."GestionPrestamo_reservacion"."idReservacion";
          public          postgres    false    234            �            1259    19942    GestionPrestamo_tipousuario    TABLE       CREATE TABLE public."GestionPrestamo_tipousuario" (
    "idTipoUsuario" integer NOT NULL,
    "nombreTipoUsuario" character varying(100) NOT NULL,
    "fechaCreacionTipoUsuario" timestamp with time zone NOT NULL,
    "estadoTipoUsuario" boolean NOT NULL
);
 1   DROP TABLE public."GestionPrestamo_tipousuario";
       public         heap    postgres    false            �            1259    19940 -   GestionPrestamo_tipousuario_idTipoUsuario_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_tipousuario_idTipoUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."GestionPrestamo_tipousuario_idTipoUsuario_seq";
       public          postgres    false    231            W           0    0 -   GestionPrestamo_tipousuario_idTipoUsuario_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_tipousuario_idTipoUsuario_seq" OWNED BY public."GestionPrestamo_tipousuario"."idTipoUsuario";
          public          postgres    false    230            �            1259    19950    GestionPrestamo_usuario    TABLE     �  CREATE TABLE public."GestionPrestamo_usuario" (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    username character varying(50) NOT NULL,
    "nombreUsuario" character varying(100),
    "apellidosUsuario" character varying(100),
    "DNIUsuario" character varying(20),
    email character varying(50) NOT NULL,
    "direccionUsuario" character varying(250),
    "imagenUsuario" character varying(200),
    "sexoUsuario" character varying(1) NOT NULL,
    "telefonoUsuario" character varying(20),
    "fechaNacimientoUsuario" date,
    "fechaCreacionUsuario" timestamp with time zone,
    "tipoAdministradorUsuario" boolean NOT NULL,
    "estadoUsuario" boolean NOT NULL
);
 -   DROP TABLE public."GestionPrestamo_usuario";
       public         heap    postgres    false            �            1259    19948    GestionPrestamo_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_usuario_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."GestionPrestamo_usuario_id_seq";
       public          postgres    false    233            X           0    0    GestionPrestamo_usuario_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."GestionPrestamo_usuario_id_seq" OWNED BY public."GestionPrestamo_usuario".id;
          public          postgres    false    232            �            1259    20120 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    20118    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    243            Y           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    242            �            1259    20130    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    20128    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    245            Z           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    244            �            1259    20112    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    20110    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    241            [           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    240            �            1259    20088    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    20086    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    239            \           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    238            �            1259    20078    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    20076    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    237            ]           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    236            �            1259    19807    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    19805    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            ^           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    20162    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            
           2604    19821 '   GestionPrestamo_autorlibro idAutorLibro    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_autorlibro" ALTER COLUMN "idAutorLibro" SET DEFAULT nextval('public."GestionPrestamo_autorlibro_idAutorLibro_seq"'::regclass);
 Z   ALTER TABLE public."GestionPrestamo_autorlibro" ALTER COLUMN "idAutorLibro" DROP DEFAULT;
       public          postgres    false    204    205    205                       2604    19832 -   GestionPrestamo_bibliotecario idBibliotecario    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_bibliotecario" ALTER COLUMN "idBibliotecario" SET DEFAULT nextval('public."GestionPrestamo_bibliotecario_idBibliotecario_seq"'::regclass);
 `   ALTER TABLE public."GestionPrestamo_bibliotecario" ALTER COLUMN "idBibliotecario" DROP DEFAULT;
       public          postgres    false    206    207    207                       2604    19843 %   GestionPrestamo_editorial idEditorial    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_editorial" ALTER COLUMN "idEditorial" SET DEFAULT nextval('public."GestionPrestamo_editorial_idEditorial_seq"'::regclass);
 X   ALTER TABLE public."GestionPrestamo_editorial" ALTER COLUMN "idEditorial" DROP DEFAULT;
       public          postgres    false    208    209    209                       2604    19856 -   GestionPrestamo_etiquetalibro idEtiquetaLibro    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_etiquetalibro" ALTER COLUMN "idEtiquetaLibro" SET DEFAULT nextval('public."GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq"'::regclass);
 `   ALTER TABLE public."GestionPrestamo_etiquetalibro" ALTER COLUMN "idEtiquetaLibro" DROP DEFAULT;
       public          postgres    false    210    211    211                       2604    19866 )   GestionPrestamo_generolibro idGeneroLibro    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_generolibro" ALTER COLUMN "idGeneroLibro" SET DEFAULT nextval('public."GestionPrestamo_generolibro_idGeneroLibro_seq"'::regclass);
 \   ALTER TABLE public."GestionPrestamo_generolibro" ALTER COLUMN "idGeneroLibro" DROP DEFAULT;
       public          postgres    false    212    213    213                       2604    19876    GestionPrestamo_idioma idIdioma    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_idioma" ALTER COLUMN "idIdioma" SET DEFAULT nextval('public."GestionPrestamo_idioma_idIdioma_seq"'::regclass);
 R   ALTER TABLE public."GestionPrestamo_idioma" ALTER COLUMN "idIdioma" DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    19884    GestionPrestamo_lector idLector    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_lector" ALTER COLUMN "idLector" SET DEFAULT nextval('public."GestionPrestamo_lector_idLector_seq"'::regclass);
 R   ALTER TABLE public."GestionPrestamo_lector" ALTER COLUMN "idLector" DROP DEFAULT;
       public          postgres    false    217    216    217                       2604    19892    GestionPrestamo_libro idLibro    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libro" ALTER COLUMN "idLibro" SET DEFAULT nextval('public."GestionPrestamo_libro_idLibro_seq"'::regclass);
 P   ALTER TABLE public."GestionPrestamo_libro" ALTER COLUMN "idLibro" DROP DEFAULT;
       public          postgres    false    218    219    219                       2604    19905 )   GestionPrestamo_libro_autorLibro_Libro id    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" ALTER COLUMN id SET DEFAULT nextval('public."GestionPrestamo_libro_autorLibro_Libro_id_seq"'::regclass);
 Z   ALTER TABLE public."GestionPrestamo_libro_autorLibro_Libro" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    19913 ,   GestionPrestamo_libro_etiquetaLibro_Libro id    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" ALTER COLUMN id SET DEFAULT nextval('public."GestionPrestamo_libro_etiquetaLibro_Libro_id_seq"'::regclass);
 ]   ALTER TABLE public."GestionPrestamo_libro_etiquetaLibro_Libro" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223                       2604    19921 $   GestionPrestamo_libro_generoLibro id    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro" ALTER COLUMN id SET DEFAULT nextval('public."GestionPrestamo_libro_generoLibro_id_seq"'::regclass);
 U   ALTER TABLE public."GestionPrestamo_libro_generoLibro" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225                       2604    19929 /   GestionPrestamo_libroinstancia idLibroInstancia    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libroinstancia" ALTER COLUMN "idLibroInstancia" SET DEFAULT nextval('public."GestionPrestamo_libroinstancia_idLibroInstancia_seq"'::regclass);
 b   ALTER TABLE public."GestionPrestamo_libroinstancia" ALTER COLUMN "idLibroInstancia" DROP DEFAULT;
       public          postgres    false    227    226    227                       2604    19937    GestionPrestamo_pais idPais    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_pais" ALTER COLUMN "idPais" SET DEFAULT nextval('public."GestionPrestamo_pais_idPais_seq"'::regclass);
 N   ALTER TABLE public."GestionPrestamo_pais" ALTER COLUMN "idPais" DROP DEFAULT;
       public          postgres    false    229    228    229                       2604    19966 )   GestionPrestamo_reservacion idReservacion    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_reservacion" ALTER COLUMN "idReservacion" SET DEFAULT nextval('public."GestionPrestamo_reservacion_idReservacion_seq"'::regclass);
 \   ALTER TABLE public."GestionPrestamo_reservacion" ALTER COLUMN "idReservacion" DROP DEFAULT;
       public          postgres    false    235    234    235                       2604    19945 )   GestionPrestamo_tipousuario idTipoUsuario    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_tipousuario" ALTER COLUMN "idTipoUsuario" SET DEFAULT nextval('public."GestionPrestamo_tipousuario_idTipoUsuario_seq"'::regclass);
 \   ALTER TABLE public."GestionPrestamo_tipousuario" ALTER COLUMN "idTipoUsuario" DROP DEFAULT;
       public          postgres    false    231    230    231                       2604    19953    GestionPrestamo_usuario id    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_usuario" ALTER COLUMN id SET DEFAULT nextval('public."GestionPrestamo_usuario_id_seq"'::regclass);
 K   ALTER TABLE public."GestionPrestamo_usuario" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233                       2604    20123    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243                       2604    20133    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245                       2604    20115    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241                       2604    20091    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239                       2604    20081    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            	           2604    19810    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                      0    19818    GestionPrestamo_autorlibro 
   TABLE DATA           �   COPY public."GestionPrestamo_autorlibro" ("idAutorLibro", "nombreAutorLibro", "apellidosAutorLibro", "descripcionAutorLibro", "fechaCreacionAutorLibro", "estadoAutorLibro") FROM stdin;
    public          postgres    false    205   q[                0    19829    GestionPrestamo_bibliotecario 
   TABLE DATA           �  COPY public."GestionPrestamo_bibliotecario" ("idBibliotecario", "nombreBibliotecario", "apellidosBibliotecario", "direccionBibliotecario", "DNIBibliotecario", "telefonoBibliotecario", "emailBibliotecario", "sexoBibliotecario", "usernameBibliotecario", "claveBibliotecario", "fechaNacimientoBibliotecario", "fechaCreacionBibliotecario", "estadoBibliotecario", "tipoBibliotecario_Bibliotecario_id") FROM stdin;
    public          postgres    false    207   �[                0    19840    GestionPrestamo_editorial 
   TABLE DATA           �   COPY public."GestionPrestamo_editorial" ("idEditorial", "tituloEditorial", "descripcionEditorial", "fechaCreacionEditorial", "estadoEditorial") FROM stdin;
    public          postgres    false    209   �\                0    19853    GestionPrestamo_etiquetalibro 
   TABLE DATA           �   COPY public."GestionPrestamo_etiquetalibro" ("idEtiquetaLibro", "tituloEtiquetaLibro", "fechaCreacionEtiquetaLibro", "estadoEtiquetaLibro") FROM stdin;
    public          postgres    false    211   @]      !          0    19863    GestionPrestamo_generolibro 
   TABLE DATA           �   COPY public."GestionPrestamo_generolibro" ("idGeneroLibro", "tituloGeneroLibro", "fechaCreacionGeneroLibro", "estadoGeneroLibro") FROM stdin;
    public          postgres    false    213   _      #          0    19873    GestionPrestamo_idioma 
   TABLE DATA           ^   COPY public."GestionPrestamo_idioma" ("idIdioma", "tituloIdioma", "estadoIdioma") FROM stdin;
    public          postgres    false    215   `      %          0    19881    GestionPrestamo_lector 
   TABLE DATA             COPY public."GestionPrestamo_lector" ("idLector", "nombreLector", "apellidosLector", "DNILector", "emailLector", "sexoLector", "usernameLector", "claveLector", "fechaNacimientoLector", "fechaCreacionLector", "estadoLector", "tipoUsuario_Lector_id") FROM stdin;
    public          postgres    false    217   zf      '          0    19889    GestionPrestamo_libro 
   TABLE DATA             COPY public."GestionPrestamo_libro" ("idLibro", "codigoLibro", "tituloLibro", "formatoLibro", "resumenLibro", "ISBNLibro", "anioPublicacionLibro", "fechaCreacionLibro", "estadoLibro", "bibliotecario_Libro_id", "editorial_Libro_id", "idiomaLibro_id", "paisLibro_id") FROM stdin;
    public          postgres    false    219   Ȉ      )          0    19902 &   GestionPrestamo_libro_autorLibro_Libro 
   TABLE DATA           _   COPY public."GestionPrestamo_libro_autorLibro_Libro" (id, libro_id, autorlibro_id) FROM stdin;
    public          postgres    false    221   �      +          0    19910 )   GestionPrestamo_libro_etiquetaLibro_Libro 
   TABLE DATA           e   COPY public."GestionPrestamo_libro_etiquetaLibro_Libro" (id, libro_id, etiquetalibro_id) FROM stdin;
    public          postgres    false    223   ~�      -          0    19918 !   GestionPrestamo_libro_generoLibro 
   TABLE DATA           [   COPY public."GestionPrestamo_libro_generoLibro" (id, libro_id, generolibro_id) FROM stdin;
    public          postgres    false    225   >�      /          0    19926    GestionPrestamo_libroinstancia 
   TABLE DATA           �   COPY public."GestionPrestamo_libroinstancia" ("idLibroInstancia", "estadoPrestamoLibroInstancia", "fechaCreacionLibroInstancia", "estadoLibroInstancia", "libro_LibroInstancia_id") FROM stdin;
    public          postgres    false    227   �      1          0    19934    GestionPrestamo_pais 
   TABLE DATA           a   COPY public."GestionPrestamo_pais" ("idPais", "tituloPais", "estadoPais", "isoPais") FROM stdin;
    public          postgres    false    229   >�      7          0    19963    GestionPrestamo_reservacion 
   TABLE DATA             COPY public."GestionPrestamo_reservacion" ("idReservacion", "tipoAdquisicionReservacion", "fechaEmisionReservacion", "fechaRetornoReservacion", "estadoReservacion", "bibliotecario_Reservacion_id", "libro_Reservacion_id", usuario_reservacion_id) FROM stdin;
    public          postgres    false    235   ��      3          0    19942    GestionPrestamo_tipousuario 
   TABLE DATA           �   COPY public."GestionPrestamo_tipousuario" ("idTipoUsuario", "nombreTipoUsuario", "fechaCreacionTipoUsuario", "estadoTipoUsuario") FROM stdin;
    public          postgres    false    231   ��      5          0    19950    GestionPrestamo_usuario 
   TABLE DATA           7  COPY public."GestionPrestamo_usuario" (id, password, last_login, username, "nombreUsuario", "apellidosUsuario", "DNIUsuario", email, "direccionUsuario", "imagenUsuario", "sexoUsuario", "telefonoUsuario", "fechaNacimientoUsuario", "fechaCreacionUsuario", "tipoAdministradorUsuario", "estadoUsuario") FROM stdin;
    public          postgres    false    233   ]�      ?          0    20120 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    243   �      A          0    20130    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    245   �      =          0    20112    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    241   !�      ;          0    20088    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    239   �      9          0    20078    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    237   y�                0    19807    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   R�      B          0    20162    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    246   D�      _           0    0 +   GestionPrestamo_autorlibro_idAutorLibro_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."GestionPrestamo_autorlibro_idAutorLibro_seq"', 1, false);
          public          postgres    false    204            `           0    0 1   GestionPrestamo_bibliotecario_idBibliotecario_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."GestionPrestamo_bibliotecario_idBibliotecario_seq"', 1, false);
          public          postgres    false    206            a           0    0 )   GestionPrestamo_editorial_idEditorial_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."GestionPrestamo_editorial_idEditorial_seq"', 1, false);
          public          postgres    false    208            b           0    0 1   GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq"', 1, false);
          public          postgres    false    210            c           0    0 -   GestionPrestamo_generolibro_idGeneroLibro_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."GestionPrestamo_generolibro_idGeneroLibro_seq"', 1, false);
          public          postgres    false    212            d           0    0 #   GestionPrestamo_idioma_idIdioma_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."GestionPrestamo_idioma_idIdioma_seq"', 1, false);
          public          postgres    false    214            e           0    0 #   GestionPrestamo_lector_idLector_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."GestionPrestamo_lector_idLector_seq"', 1, false);
          public          postgres    false    216            f           0    0 -   GestionPrestamo_libro_autorLibro_Libro_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."GestionPrestamo_libro_autorLibro_Libro_id_seq"', 1, false);
          public          postgres    false    220            g           0    0 0   GestionPrestamo_libro_etiquetaLibro_Libro_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."GestionPrestamo_libro_etiquetaLibro_Libro_id_seq"', 1, false);
          public          postgres    false    222            h           0    0 (   GestionPrestamo_libro_generoLibro_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."GestionPrestamo_libro_generoLibro_id_seq"', 1, false);
          public          postgres    false    224            i           0    0 !   GestionPrestamo_libro_idLibro_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."GestionPrestamo_libro_idLibro_seq"', 1, false);
          public          postgres    false    218            j           0    0 3   GestionPrestamo_libroinstancia_idLibroInstancia_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public."GestionPrestamo_libroinstancia_idLibroInstancia_seq"', 1, false);
          public          postgres    false    226            k           0    0    GestionPrestamo_pais_idPais_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."GestionPrestamo_pais_idPais_seq"', 1, false);
          public          postgres    false    228            l           0    0 -   GestionPrestamo_reservacion_idReservacion_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."GestionPrestamo_reservacion_idReservacion_seq"', 1, true);
          public          postgres    false    234            m           0    0 -   GestionPrestamo_tipousuario_idTipoUsuario_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."GestionPrestamo_tipousuario_idTipoUsuario_seq"', 1, false);
          public          postgres    false    230            n           0    0    GestionPrestamo_usuario_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."GestionPrestamo_usuario_id_seq"', 5, true);
          public          postgres    false    232            o           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    242            p           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    244            q           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);
          public          postgres    false    240            r           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);
          public          postgres    false    238            s           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    236            t           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          postgres    false    202            #           2606    19826 :   GestionPrestamo_autorlibro GestionPrestamo_autorlibro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_autorlibro"
    ADD CONSTRAINT "GestionPrestamo_autorlibro_pkey" PRIMARY KEY ("idAutorLibro");
 h   ALTER TABLE ONLY public."GestionPrestamo_autorlibro" DROP CONSTRAINT "GestionPrestamo_autorlibro_pkey";
       public            postgres    false    205            &           2606    19837 @   GestionPrestamo_bibliotecario GestionPrestamo_bibliotecario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_bibliotecario"
    ADD CONSTRAINT "GestionPrestamo_bibliotecario_pkey" PRIMARY KEY ("idBibliotecario");
 n   ALTER TABLE ONLY public."GestionPrestamo_bibliotecario" DROP CONSTRAINT "GestionPrestamo_bibliotecario_pkey";
       public            postgres    false    207            (           2606    19848 8   GestionPrestamo_editorial GestionPrestamo_editorial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_editorial"
    ADD CONSTRAINT "GestionPrestamo_editorial_pkey" PRIMARY KEY ("idEditorial");
 f   ALTER TABLE ONLY public."GestionPrestamo_editorial" DROP CONSTRAINT "GestionPrestamo_editorial_pkey";
       public            postgres    false    209            +           2606    19850 G   GestionPrestamo_editorial GestionPrestamo_editorial_tituloEditorial_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_editorial"
    ADD CONSTRAINT "GestionPrestamo_editorial_tituloEditorial_key" UNIQUE ("tituloEditorial");
 u   ALTER TABLE ONLY public."GestionPrestamo_editorial" DROP CONSTRAINT "GestionPrestamo_editorial_tituloEditorial_key";
       public            postgres    false    209            -           2606    19858 @   GestionPrestamo_etiquetalibro GestionPrestamo_etiquetalibro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_etiquetalibro"
    ADD CONSTRAINT "GestionPrestamo_etiquetalibro_pkey" PRIMARY KEY ("idEtiquetaLibro");
 n   ALTER TABLE ONLY public."GestionPrestamo_etiquetalibro" DROP CONSTRAINT "GestionPrestamo_etiquetalibro_pkey";
       public            postgres    false    211            0           2606    19860 S   GestionPrestamo_etiquetalibro GestionPrestamo_etiquetalibro_tituloEtiquetaLibro_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_etiquetalibro"
    ADD CONSTRAINT "GestionPrestamo_etiquetalibro_tituloEtiquetaLibro_key" UNIQUE ("tituloEtiquetaLibro");
 �   ALTER TABLE ONLY public."GestionPrestamo_etiquetalibro" DROP CONSTRAINT "GestionPrestamo_etiquetalibro_tituloEtiquetaLibro_key";
       public            postgres    false    211            2           2606    19868 <   GestionPrestamo_generolibro GestionPrestamo_generolibro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_generolibro"
    ADD CONSTRAINT "GestionPrestamo_generolibro_pkey" PRIMARY KEY ("idGeneroLibro");
 j   ALTER TABLE ONLY public."GestionPrestamo_generolibro" DROP CONSTRAINT "GestionPrestamo_generolibro_pkey";
       public            postgres    false    213            5           2606    19870 M   GestionPrestamo_generolibro GestionPrestamo_generolibro_tituloGeneroLibro_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_generolibro"
    ADD CONSTRAINT "GestionPrestamo_generolibro_tituloGeneroLibro_key" UNIQUE ("tituloGeneroLibro");
 {   ALTER TABLE ONLY public."GestionPrestamo_generolibro" DROP CONSTRAINT "GestionPrestamo_generolibro_tituloGeneroLibro_key";
       public            postgres    false    213            7           2606    19878 2   GestionPrestamo_idioma GestionPrestamo_idioma_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."GestionPrestamo_idioma"
    ADD CONSTRAINT "GestionPrestamo_idioma_pkey" PRIMARY KEY ("idIdioma");
 `   ALTER TABLE ONLY public."GestionPrestamo_idioma" DROP CONSTRAINT "GestionPrestamo_idioma_pkey";
       public            postgres    false    215            9           2606    19886 2   GestionPrestamo_lector GestionPrestamo_lector_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."GestionPrestamo_lector"
    ADD CONSTRAINT "GestionPrestamo_lector_pkey" PRIMARY KEY ("idLector");
 `   ALTER TABLE ONLY public."GestionPrestamo_lector" DROP CONSTRAINT "GestionPrestamo_lector_pkey";
       public            postgres    false    217            E           2606    20007 d   GestionPrestamo_libro_autorLibro_Libro GestionPrestamo_libro_au_libro_id_autorlibro_id_9975258e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_au_libro_id_autorlibro_id_9975258e_uniq" UNIQUE (libro_id, autorlibro_id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libro_au_libro_id_autorlibro_id_9975258e_uniq";
       public            postgres    false    221    221            I           2606    19907 R   GestionPrestamo_libro_autorLibro_Libro GestionPrestamo_libro_autorLibro_Libro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_autorLibro_Libro_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libro_autorLibro_Libro_pkey";
       public            postgres    false    221            K           2606    20021 i   GestionPrestamo_libro_etiquetaLibro_Libro GestionPrestamo_libro_et_libro_id_etiquetalibro_i_a8bbdc08_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_et_libro_id_etiquetalibro_i_a8bbdc08_uniq" UNIQUE (libro_id, etiquetalibro_id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libro_et_libro_id_etiquetalibro_i_a8bbdc08_uniq";
       public            postgres    false    223    223            O           2606    19915 X   GestionPrestamo_libro_etiquetaLibro_Libro GestionPrestamo_libro_etiquetaLibro_Libro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_etiquetaLibro_Libro_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libro_etiquetaLibro_Libro_pkey";
       public            postgres    false    223            Q           2606    20035 `   GestionPrestamo_libro_generoLibro GestionPrestamo_libro_ge_libro_id_generolibro_id_649364dd_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro"
    ADD CONSTRAINT "GestionPrestamo_libro_ge_libro_id_generolibro_id_649364dd_uniq" UNIQUE (libro_id, generolibro_id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro" DROP CONSTRAINT "GestionPrestamo_libro_ge_libro_id_generolibro_id_649364dd_uniq";
       public            postgres    false    225    225            U           2606    19923 H   GestionPrestamo_libro_generoLibro GestionPrestamo_libro_generoLibro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro"
    ADD CONSTRAINT "GestionPrestamo_libro_generoLibro_pkey" PRIMARY KEY (id);
 v   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro" DROP CONSTRAINT "GestionPrestamo_libro_generoLibro_pkey";
       public            postgres    false    225            @           2606    19897 0   GestionPrestamo_libro GestionPrestamo_libro_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libro_pkey" PRIMARY KEY ("idLibro");
 ^   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libro_pkey";
       public            postgres    false    219            C           2606    19899 ;   GestionPrestamo_libro GestionPrestamo_libro_tituloLibro_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libro_tituloLibro_key" UNIQUE ("tituloLibro");
 i   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libro_tituloLibro_key";
       public            postgres    false    219            X           2606    19931 B   GestionPrestamo_libroinstancia GestionPrestamo_libroinstancia_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libroinstancia"
    ADD CONSTRAINT "GestionPrestamo_libroinstancia_pkey" PRIMARY KEY ("idLibroInstancia");
 p   ALTER TABLE ONLY public."GestionPrestamo_libroinstancia" DROP CONSTRAINT "GestionPrestamo_libroinstancia_pkey";
       public            postgres    false    227            Z           2606    19939 .   GestionPrestamo_pais GestionPrestamo_pais_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."GestionPrestamo_pais"
    ADD CONSTRAINT "GestionPrestamo_pais_pkey" PRIMARY KEY ("idPais");
 \   ALTER TABLE ONLY public."GestionPrestamo_pais" DROP CONSTRAINT "GestionPrestamo_pais_pkey";
       public            postgres    false    229            e           2606    19968 <   GestionPrestamo_reservacion GestionPrestamo_reservacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_reservacion"
    ADD CONSTRAINT "GestionPrestamo_reservacion_pkey" PRIMARY KEY ("idReservacion");
 j   ALTER TABLE ONLY public."GestionPrestamo_reservacion" DROP CONSTRAINT "GestionPrestamo_reservacion_pkey";
       public            postgres    false    235            \           2606    19947 <   GestionPrestamo_tipousuario GestionPrestamo_tipousuario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_tipousuario"
    ADD CONSTRAINT "GestionPrestamo_tipousuario_pkey" PRIMARY KEY ("idTipoUsuario");
 j   ALTER TABLE ONLY public."GestionPrestamo_tipousuario" DROP CONSTRAINT "GestionPrestamo_tipousuario_pkey";
       public            postgres    false    231            ^           2606    19958 4   GestionPrestamo_usuario GestionPrestamo_usuario_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."GestionPrestamo_usuario"
    ADD CONSTRAINT "GestionPrestamo_usuario_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."GestionPrestamo_usuario" DROP CONSTRAINT "GestionPrestamo_usuario_pkey";
       public            postgres    false    233            a           2606    19960 <   GestionPrestamo_usuario GestionPrestamo_usuario_username_key 
   CONSTRAINT        ALTER TABLE ONLY public."GestionPrestamo_usuario"
    ADD CONSTRAINT "GestionPrestamo_usuario_username_key" UNIQUE (username);
 j   ALTER TABLE ONLY public."GestionPrestamo_usuario" DROP CONSTRAINT "GestionPrestamo_usuario_username_key";
       public            postgres    false    233            v           2606    20160    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    243            {           2606    20146 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    245    245            ~           2606    20135 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    245            x           2606    20125    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    243            q           2606    20137 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    241    241            s           2606    20117 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    241            m           2606    20097 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    239            h           2606    20085 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    237    237            j           2606    20083 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    237            !           2606    19815 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            �           2606    20169 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    246            $           1259    20075 >   GestionPrestamo_biblioteca_tipoBibliotecario_Bibliote_23d8d039    INDEX     �   CREATE INDEX "GestionPrestamo_biblioteca_tipoBibliotecario_Bibliote_23d8d039" ON public."GestionPrestamo_bibliotecario" USING btree ("tipoBibliotecario_Bibliotecario_id");
 T   DROP INDEX public."GestionPrestamo_biblioteca_tipoBibliotecario_Bibliote_23d8d039";
       public            postgres    false    207            )           1259    19984 7   GestionPrestamo_editorial_tituloEditorial_1c636471_like    INDEX     �   CREATE INDEX "GestionPrestamo_editorial_tituloEditorial_1c636471_like" ON public."GestionPrestamo_editorial" USING btree ("tituloEditorial" varchar_pattern_ops);
 M   DROP INDEX public."GestionPrestamo_editorial_tituloEditorial_1c636471_like";
       public            postgres    false    209            .           1259    19985 ?   GestionPrestamo_etiquetalibro_tituloEtiquetaLibro_78e74ccc_like    INDEX     �   CREATE INDEX "GestionPrestamo_etiquetalibro_tituloEtiquetaLibro_78e74ccc_like" ON public."GestionPrestamo_etiquetalibro" USING btree ("tituloEtiquetaLibro" varchar_pattern_ops);
 U   DROP INDEX public."GestionPrestamo_etiquetalibro_tituloEtiquetaLibro_78e74ccc_like";
       public            postgres    false    211            3           1259    19986 ;   GestionPrestamo_generolibro_tituloGeneroLibro_1cb13809_like    INDEX     �   CREATE INDEX "GestionPrestamo_generolibro_tituloGeneroLibro_1cb13809_like" ON public."GestionPrestamo_generolibro" USING btree ("tituloGeneroLibro" varchar_pattern_ops);
 Q   DROP INDEX public."GestionPrestamo_generolibro_tituloGeneroLibro_1cb13809_like";
       public            postgres    false    213            :           1259    20074 5   GestionPrestamo_lector_tipoUsuario_Lector_id_71e59025    INDEX     �   CREATE INDEX "GestionPrestamo_lector_tipoUsuario_Lector_id_71e59025" ON public."GestionPrestamo_lector" USING btree ("tipoUsuario_Lector_id");
 K   DROP INDEX public."GestionPrestamo_lector_tipoUsuario_Lector_id_71e59025";
       public            postgres    false    217            F           1259    20019 =   GestionPrestamo_libro_autorLibro_Libro_autorlibro_id_b24617ce    INDEX     �   CREATE INDEX "GestionPrestamo_libro_autorLibro_Libro_autorlibro_id_b24617ce" ON public."GestionPrestamo_libro_autorLibro_Libro" USING btree (autorlibro_id);
 S   DROP INDEX public."GestionPrestamo_libro_autorLibro_Libro_autorlibro_id_b24617ce";
       public            postgres    false    221            G           1259    20018 8   GestionPrestamo_libro_autorLibro_Libro_libro_id_d0897661    INDEX     �   CREATE INDEX "GestionPrestamo_libro_autorLibro_Libro_libro_id_d0897661" ON public."GestionPrestamo_libro_autorLibro_Libro" USING btree (libro_id);
 N   DROP INDEX public."GestionPrestamo_libro_autorLibro_Libro_libro_id_d0897661";
       public            postgres    false    221            ;           1259    20003 5   GestionPrestamo_libro_bibliotecario_Libro_id_7524027f    INDEX     �   CREATE INDEX "GestionPrestamo_libro_bibliotecario_Libro_id_7524027f" ON public."GestionPrestamo_libro" USING btree ("bibliotecario_Libro_id");
 K   DROP INDEX public."GestionPrestamo_libro_bibliotecario_Libro_id_7524027f";
       public            postgres    false    219            <           1259    20004 1   GestionPrestamo_libro_editorial_Libro_id_11c9b532    INDEX     �   CREATE INDEX "GestionPrestamo_libro_editorial_Libro_id_11c9b532" ON public."GestionPrestamo_libro" USING btree ("editorial_Libro_id");
 G   DROP INDEX public."GestionPrestamo_libro_editorial_Libro_id_11c9b532";
       public            postgres    false    219            L           1259    20033 4   GestionPrestamo_libro_etiq_etiquetalibro_id_d7aa48c7    INDEX     �   CREATE INDEX "GestionPrestamo_libro_etiq_etiquetalibro_id_d7aa48c7" ON public."GestionPrestamo_libro_etiquetaLibro_Libro" USING btree (etiquetalibro_id);
 J   DROP INDEX public."GestionPrestamo_libro_etiq_etiquetalibro_id_d7aa48c7";
       public            postgres    false    223            M           1259    20032 ;   GestionPrestamo_libro_etiquetaLibro_Libro_libro_id_c180724a    INDEX     �   CREATE INDEX "GestionPrestamo_libro_etiquetaLibro_Libro_libro_id_c180724a" ON public."GestionPrestamo_libro_etiquetaLibro_Libro" USING btree (libro_id);
 Q   DROP INDEX public."GestionPrestamo_libro_etiquetaLibro_Libro_libro_id_c180724a";
       public            postgres    false    223            R           1259    20047 9   GestionPrestamo_libro_generoLibro_generolibro_id_5ea3a0ca    INDEX     �   CREATE INDEX "GestionPrestamo_libro_generoLibro_generolibro_id_5ea3a0ca" ON public."GestionPrestamo_libro_generoLibro" USING btree (generolibro_id);
 O   DROP INDEX public."GestionPrestamo_libro_generoLibro_generolibro_id_5ea3a0ca";
       public            postgres    false    225            S           1259    20046 3   GestionPrestamo_libro_generoLibro_libro_id_fe06c974    INDEX     �   CREATE INDEX "GestionPrestamo_libro_generoLibro_libro_id_fe06c974" ON public."GestionPrestamo_libro_generoLibro" USING btree (libro_id);
 I   DROP INDEX public."GestionPrestamo_libro_generoLibro_libro_id_fe06c974";
       public            postgres    false    225            =           1259    20005 -   GestionPrestamo_libro_idiomaLibro_id_ac1b5915    INDEX        CREATE INDEX "GestionPrestamo_libro_idiomaLibro_id_ac1b5915" ON public."GestionPrestamo_libro" USING btree ("idiomaLibro_id");
 C   DROP INDEX public."GestionPrestamo_libro_idiomaLibro_id_ac1b5915";
       public            postgres    false    219            >           1259    20073 +   GestionPrestamo_libro_paisLibro_id_ecb9eba1    INDEX     {   CREATE INDEX "GestionPrestamo_libro_paisLibro_id_ecb9eba1" ON public."GestionPrestamo_libro" USING btree ("paisLibro_id");
 A   DROP INDEX public."GestionPrestamo_libro_paisLibro_id_ecb9eba1";
       public            postgres    false    219            A           1259    20002 /   GestionPrestamo_libro_tituloLibro_e4b168fe_like    INDEX     �   CREATE INDEX "GestionPrestamo_libro_tituloLibro_e4b168fe_like" ON public."GestionPrestamo_libro" USING btree ("tituloLibro" varchar_pattern_ops);
 E   DROP INDEX public."GestionPrestamo_libro_tituloLibro_e4b168fe_like";
       public            postgres    false    219            V           1259    20053 ?   GestionPrestamo_libroinstancia_libro_LibroInstancia_id_f8a99d40    INDEX     �   CREATE INDEX "GestionPrestamo_libroinstancia_libro_LibroInstancia_id_f8a99d40" ON public."GestionPrestamo_libroinstancia" USING btree ("libro_LibroInstancia_id");
 U   DROP INDEX public."GestionPrestamo_libroinstancia_libro_LibroInstancia_id_f8a99d40";
       public            postgres    false    227            b           1259    20070 >   GestionPrestamo_reservacio_bibliotecario_Reservacion__e91ccdec    INDEX     �   CREATE INDEX "GestionPrestamo_reservacio_bibliotecario_Reservacion__e91ccdec" ON public."GestionPrestamo_reservacion" USING btree ("bibliotecario_Reservacion_id");
 T   DROP INDEX public."GestionPrestamo_reservacio_bibliotecario_Reservacion__e91ccdec";
       public            postgres    false    235            c           1259    20072 9   GestionPrestamo_reservacion_libro_Reservacion_id_bac09b68    INDEX     �   CREATE INDEX "GestionPrestamo_reservacion_libro_Reservacion_id_bac09b68" ON public."GestionPrestamo_reservacion" USING btree ("libro_Reservacion_id");
 O   DROP INDEX public."GestionPrestamo_reservacion_libro_Reservacion_id_bac09b68";
       public            postgres    false    235            f           1259    20178 ;   GestionPrestamo_reservacion_usuario_reservacion_id_540e2a93    INDEX     �   CREATE INDEX "GestionPrestamo_reservacion_usuario_reservacion_id_540e2a93" ON public."GestionPrestamo_reservacion" USING btree (usuario_reservacion_id);
 Q   DROP INDEX public."GestionPrestamo_reservacion_usuario_reservacion_id_540e2a93";
       public            postgres    false    235            _           1259    20054 .   GestionPrestamo_usuario_username_5c1d1538_like    INDEX     �   CREATE INDEX "GestionPrestamo_usuario_username_5c1d1538_like" ON public."GestionPrestamo_usuario" USING btree (username varchar_pattern_ops);
 D   DROP INDEX public."GestionPrestamo_usuario_username_5c1d1538_like";
       public            postgres    false    233            t           1259    20161    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    243            y           1259    20157 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    245            |           1259    20158 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    245            o           1259    20143 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    241            k           1259    20108 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    239            n           1259    20109 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    239                       1259    20171 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    246            �           1259    20170 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    246            �           2606    19979 ]   GestionPrestamo_bibliotecario GestionPrestamo_bibl_tipoBibliotecario_Bi_23d8d039_fk_GestionPr    FK CONSTRAINT        ALTER TABLE ONLY public."GestionPrestamo_bibliotecario"
    ADD CONSTRAINT "GestionPrestamo_bibl_tipoBibliotecario_Bi_23d8d039_fk_GestionPr" FOREIGN KEY ("tipoBibliotecario_Bibliotecario_id") REFERENCES public."GestionPrestamo_tipousuario"("idTipoUsuario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_bibliotecario" DROP CONSTRAINT "GestionPrestamo_bibl_tipoBibliotecario_Bi_23d8d039_fk_GestionPr";
       public          postgres    false    231    2908    207            �           2606    19974 V   GestionPrestamo_lector GestionPrestamo_lect_tipoUsuario_Lector_i_71e59025_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_lector"
    ADD CONSTRAINT "GestionPrestamo_lect_tipoUsuario_Lector_i_71e59025_fk_GestionPr" FOREIGN KEY ("tipoUsuario_Lector_id") REFERENCES public."GestionPrestamo_tipousuario"("idTipoUsuario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_lector" DROP CONSTRAINT "GestionPrestamo_lect_tipoUsuario_Lector_i_71e59025_fk_GestionPr";
       public          postgres    false    2908    217    231            �           2606    20013 _   GestionPrestamo_libro_autorLibro_Libro GestionPrestamo_libr_autorlibro_id_b24617ce_fk_GestionPr    FK CONSTRAINT     	  ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_autorlibro_id_b24617ce_fk_GestionPr" FOREIGN KEY (autorlibro_id) REFERENCES public."GestionPrestamo_autorlibro"("idAutorLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libr_autorlibro_id_b24617ce_fk_GestionPr";
       public          postgres    false    205    221    2851            �           2606    19987 U   GestionPrestamo_libro GestionPrestamo_libr_bibliotecario_Libro__7524027f_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libr_bibliotecario_Libro__7524027f_fk_GestionPr" FOREIGN KEY ("bibliotecario_Libro_id") REFERENCES public."GestionPrestamo_bibliotecario"("idBibliotecario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libr_bibliotecario_Libro__7524027f_fk_GestionPr";
       public          postgres    false    2854    219    207            �           2606    19992 S   GestionPrestamo_libro GestionPrestamo_libr_editorial_Libro_id_11c9b532_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libr_editorial_Libro_id_11c9b532_fk_GestionPr" FOREIGN KEY ("editorial_Libro_id") REFERENCES public."GestionPrestamo_editorial"("idEditorial") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libr_editorial_Libro_id_11c9b532_fk_GestionPr";
       public          postgres    false    209    219    2856            �           2606    20027 e   GestionPrestamo_libro_etiquetaLibro_Libro GestionPrestamo_libr_etiquetalibro_id_d7aa48c7_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_etiquetalibro_id_d7aa48c7_fk_GestionPr" FOREIGN KEY (etiquetalibro_id) REFERENCES public."GestionPrestamo_etiquetalibro"("idEtiquetaLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libr_etiquetalibro_id_d7aa48c7_fk_GestionPr";
       public          postgres    false    223    211    2861            �           2606    20041 [   GestionPrestamo_libro_generoLibro GestionPrestamo_libr_generolibro_id_5ea3a0ca_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro"
    ADD CONSTRAINT "GestionPrestamo_libr_generolibro_id_5ea3a0ca_fk_GestionPr" FOREIGN KEY (generolibro_id) REFERENCES public."GestionPrestamo_generolibro"("idGeneroLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro" DROP CONSTRAINT "GestionPrestamo_libr_generolibro_id_5ea3a0ca_fk_GestionPr";
       public          postgres    false    225    213    2866            �           2606    19997 O   GestionPrestamo_libro GestionPrestamo_libr_idiomaLibro_id_ac1b5915_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libr_idiomaLibro_id_ac1b5915_fk_GestionPr" FOREIGN KEY ("idiomaLibro_id") REFERENCES public."GestionPrestamo_idioma"("idIdioma") DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libr_idiomaLibro_id_ac1b5915_fk_GestionPr";
       public          postgres    false    215    2871    219            �           2606    20048 ^   GestionPrestamo_libroinstancia GestionPrestamo_libr_libro_LibroInstancia_f8a99d40_fk_GestionPr    FK CONSTRAINT     
  ALTER TABLE ONLY public."GestionPrestamo_libroinstancia"
    ADD CONSTRAINT "GestionPrestamo_libr_libro_LibroInstancia_f8a99d40_fk_GestionPr" FOREIGN KEY ("libro_LibroInstancia_id") REFERENCES public."GestionPrestamo_libro"("idLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libroinstancia" DROP CONSTRAINT "GestionPrestamo_libr_libro_LibroInstancia_f8a99d40_fk_GestionPr";
       public          postgres    false    2880    227    219            �           2606    20022 ]   GestionPrestamo_libro_etiquetaLibro_Libro GestionPrestamo_libr_libro_id_c180724a_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_libro_id_c180724a_fk_GestionPr" FOREIGN KEY (libro_id) REFERENCES public."GestionPrestamo_libro"("idLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libr_libro_id_c180724a_fk_GestionPr";
       public          postgres    false    223    2880    219            �           2606    20008 Z   GestionPrestamo_libro_autorLibro_Libro GestionPrestamo_libr_libro_id_d0897661_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_libro_id_d0897661_fk_GestionPr" FOREIGN KEY (libro_id) REFERENCES public."GestionPrestamo_libro"("idLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libr_libro_id_d0897661_fk_GestionPr";
       public          postgres    false    221    2880    219            �           2606    20036 U   GestionPrestamo_libro_generoLibro GestionPrestamo_libr_libro_id_fe06c974_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro"
    ADD CONSTRAINT "GestionPrestamo_libr_libro_id_fe06c974_fk_GestionPr" FOREIGN KEY (libro_id) REFERENCES public."GestionPrestamo_libro"("idLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro" DROP CONSTRAINT "GestionPrestamo_libr_libro_id_fe06c974_fk_GestionPr";
       public          postgres    false    219    225    2880            �           2606    19969 M   GestionPrestamo_libro GestionPrestamo_libr_paisLibro_id_ecb9eba1_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libr_paisLibro_id_ecb9eba1_fk_GestionPr" FOREIGN KEY ("paisLibro_id") REFERENCES public."GestionPrestamo_pais"("idPais") DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libr_paisLibro_id_ecb9eba1_fk_GestionPr";
       public          postgres    false    2906    219    229            �           2606    20055 [   GestionPrestamo_reservacion GestionPrestamo_rese_bibliotecario_Reserv_e91ccdec_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_reservacion"
    ADD CONSTRAINT "GestionPrestamo_rese_bibliotecario_Reserv_e91ccdec_fk_GestionPr" FOREIGN KEY ("bibliotecario_Reservacion_id") REFERENCES public."GestionPrestamo_bibliotecario"("idBibliotecario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_reservacion" DROP CONSTRAINT "GestionPrestamo_rese_bibliotecario_Reserv_e91ccdec_fk_GestionPr";
       public          postgres    false    235    2854    207            �           2606    20065 [   GestionPrestamo_reservacion GestionPrestamo_rese_libro_Reservacion_id_bac09b68_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_reservacion"
    ADD CONSTRAINT "GestionPrestamo_rese_libro_Reservacion_id_bac09b68_fk_GestionPr" FOREIGN KEY ("libro_Reservacion_id") REFERENCES public."GestionPrestamo_libroinstancia"("idLibroInstancia") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_reservacion" DROP CONSTRAINT "GestionPrestamo_rese_libro_Reservacion_id_bac09b68_fk_GestionPr";
       public          postgres    false    227    2904    235            �           2606    20173 [   GestionPrestamo_reservacion GestionPrestamo_rese_usuario_reservacion__540e2a93_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_reservacion"
    ADD CONSTRAINT "GestionPrestamo_rese_usuario_reservacion__540e2a93_fk_GestionPr" FOREIGN KEY (usuario_reservacion_id) REFERENCES public."GestionPrestamo_usuario"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_reservacion" DROP CONSTRAINT "GestionPrestamo_rese_usuario_reservacion__540e2a93_fk_GestionPr";
       public          postgres    false    2910    233    235            �           2606    20152 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    241    2931    245            �           2606    20147 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2936    245    243            �           2606    20138 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2922    241    237            �           2606    20098 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    239    2922    237            �           2606    20103 P   django_admin_log django_admin_log_user_id_c564eba6_fk_GestionPrestamo_usuario_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_GestionPrestamo_usuario_id" FOREIGN KEY (user_id) REFERENCES public."GestionPrestamo_usuario"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT "django_admin_log_user_id_c564eba6_fk_GestionPrestamo_usuario_id";
       public          postgres    false    239    2910    233               o   x�3��)�,��ʯL�K-VpL/��I,�t,-�/RH-.H<�1?�����@��L��B������� �5�,�2jON,�>�0/9#�J�=�(���DN�#3+3��=... ��!�         �   x���
�0 ϛ�xn�&�&ۓ�AD�Y(AC��x��[��� \������h�k�O��}��gc�k��M���$O1'yK�!�Ul,i�l�s䘠��:��qHy�c,�i���7Ԧ���
�à�V��tUS�Mij2n��ţB|��.;         �   x�U�;�0��)�A;	�k">�o@�$.,��#�g�b Ato���1�S�ar%e���̏{��$U�Uu�5i�kzaEH0�6��9�q��lv#G��~����d���f���-p��;���₝ß�jE�v\	!�)�7D         �  x�}�Mn�0��_N��t�6?M�Q`:H�H���C\��ؑm:�e0�9��B�D���c�ן�!7VS�Nk��9@<�ͽh�{�Ş����2�&k��*Y�j�̴��cg�dƠO�d�i!�'��dz	!��T-�W�	>3�˺�\�q�+�*��D�:�ijᖰ?�� ?������ec��I���V��-�y�o�O��Į���m���z\���@v��VB��L�����z��R�a+��k�u#W7� R�:{���D�"��݉�0��0B*T�G'������3c�~����Q;	��,�M^�3ʊ��H7E��yA<�(��e���$F�6_o�U���S^�U�o��e�	�,��/A���\�J_ia���B|��l�qxyC�;��r[�L�)�e�[bɁם����[����O���5wc18����f���k�      !   �   x�}�Kj�0���)�)z�N��8
��.%ЍP\#��`9�.{������R��r~�o��ʦ��� ���s���p�" 8c�Oc���"n�����@$�t��t	Co��b��U����%l9TrW���2X<	*|w�����A�����k�"ʀЌ�����1�?��� �/�sˢ%�ó�F�O�
y�)E�B�S ʝT�񩞢j�S����6��m��}���]EQ�:�em      #   b  x�mV�r#7>s����*���}���O<�q"ٻI�BIL7��#��Q�C9�:�7��~ [�IU� ��R,ֻF���M,?+"��F�փK�b�z�X�k�:���	JL!��uj�A�b�Tm��o�i�ӽ!%9�U�=�I){���;�p~�#'�_�[+s8~��L��n=��`|�3�,ģ��,řn�;~�d��U{���8g��_�%hߪ��ű8�>�-NęӃ%�q*Ύ��Z92���#Ĺ8Wshq!��YKpz�Lg�+�싚E�a�;����%s��I/� �=NŁ$�8��U�j:K��Y3�NSIʪM�"g��Q�5�CR��׍�E�D|P���mW�ڶ���t..^m_�,��⦯�i+���v��G��E��w��w/Q��K�+d)�ťy�|���+7������U�rl��of�=��J��ŕjM8f&ŕ��6�Ӗ��Z݅��q匮m��n�
��Q5=A��{;PXY.����,�8m[5���l�����Z�����oH��i����6�����3b�����s?�Q� ��v����)�`k{��^��}�b��G�c�B��k�+�7>�b*q��v���g�\ �t:O�'���@l"�Uϧ~-Rp�S���U���5~f������fA��n?rc(~�b��iQa�U=�!\P9�M��RK)n�n<�0�+�b���r/�q�W��k?�&�d+��#�%�E��˜�D�kt����0y@���(�W�=*��Us�~�Ew�>p�Y��4$4�)�*���ʁQ��Y%P�	�ߤ�F�T��.��av��q�yM��>uVU�����
�Fo�9��ߪ���D�%�:�������!E�Sp�oL�3�h����[&��sq��V��*�ch8ߠ x�(��J)���F�+�{������h  w֍ԙgv�e+ ���^kt�V�4������([f(ِ	T8ٹ;���;�f')s����` _{�#'
(�q�1C� 	���d�/z�ʞ��~0�h#���l0����|��&V�]���k���	Hf�;�aŽ�O�X���.�1hs$�טE�r�@���T����I&X�A�����S��ǐ	|�������4�0��]���b<�$��{�a`7|A	��ô����ǎ@�n��Oj���]��D���3�)~��[�б��8m����D��*rAh�ca:L 	�Z���кR�� t���n�'k$b��>��r���?����Z�W���V��-���А@���0-�Z  �T�?l�Q~�m; �m�d�~z�/�1�"�p��@#�1`�����$��J��=frl��ˤ� ��2_Ʒ��L�h�2[�]k�$�>���dx��~p�=�V�����y��
s�尀v+�a�i�XQ�Fo�a���;�$���?�8�n���pz�!�>; o��83[�S7�ZI�{ظ�*�~n�9�=������u����h��#�Cd���|��@�#Nv�X�Kd*	`ݿlkf3��1]:�:��ߍ=���l��7�����u�Jďh���"�,LŏcK����7o��5���      %      x��}�r�8��5�)�� ��}մĒY-�nJr���e�f�$z����\��<���b�I���g�؎�\�S@��s�h����ƚD��M��,'����[|F��9�f�e1W(!mW����\���r��ky�d��jUn؆������q]��ka��[|�/��������/���v�|����؁��	�&�8�s��6����������Vp����ދu�+WE)�ח��-+�d�p�pX4����b�Ӑ��8J���z�sm�T��J�?��b�����Y�e�Cvx_8�bs;\����u�%l��O�V��x��)�,�R����rW�g��*�ve�n�
VH<Z~&{�I��o�	!�%�g��tYX��v໒�M�;�fo�v��g���ٶx-C<�x���W�:M�I�௉5���k#����g/E����lɅ�{��o���ZHZ#����"��F�4�Kb���4&�8�OƵcp���=,�s�[���3d�	3��8L/�M���E����E\�k;��a���U�~�z�ZW�x��"��,�F�4�	� F|�)�X�d�P#�A`0��]�Rl3p�{�Zvd�����D�� ���pƄ}F� �������Y�l���^��Aj�mزa�P�:��-�����
��p��4nj����(ϷmX�=��Xz}ftГÌ ���1.�b�����$��.�m�6 ˓>���l���>#���	=���11�	+~��b�l��9"�b��L�i�+.P�	���!���m�� @���O�T�pa�.�	��{+�؞���sH���fMO�d�b�������"l�������4P���a=Z�߬4��fd�_�ҋrrRl����k�}�қX���	==z����(FM�A2�$��F�,���q<?��#='p|x�K�/��c�R�˾��m 儤��ŰM�87�PZ;,ïi4�p��r�E"��U�{*���%޼Ϛ6�r��&k�2>W�&�z���3e��.�N�+=O�@`{���c�{ﳡ��p5z�Lp�ؠyoE��	@	RL���%<L�e�r�qȫ]��+^�=ٖ�����&[$l�L;�� L8� |�LX�\��
�SQ�wN���*\��(FLh@	-��,�"��&ؘ��ƓNl�J���U��Q�䀕bS���YA ��&�ᛘ#�ٷv����D�@�lLy},�`�
��索�R	h���ֈ,;4Hr���x\���q2h<�;BJ�!v�%�٪���G�Dg�Sy
=^�X����6�
�2�!��3"�u�C�+V�al��7ɐ�6���Hm�WQw�7eb�����<I�9�V�Y�֊В��qA	ދա�W�%�����¯W�1#��&,� �OX�
yJ+	bk�@��m>f\�=A�FXA+���N��1;�W�3�J�*P��4>	*)4�Ϟ���g����8�CvnJh��YL1Z��͢kb��MR�T��t��&ڎ(���G(+�
����v�ǚDl�[-n�	��G�0�Z�\l�.��1Y�O�u}���{�V���Ot��ֱk�/��움y�D�"�i��s��:� .���{J�9^p���v9m�uo�"�7���cR[�f%l��x����ҏ��ؕk��r�!�?�ײ����1m�u4����D�a@X��df�8�YQ�7���=�.x�'\�u����
v��J�4�k���Qr\���+�K �C+|�4Mjv}ϖ
P����xˎk���F[G��KJ�(��s�)v�:�Β)������4!��Bx@��SV�2�ǈ6�:���6B��jP�yH��̷��DS6G���6�Gp�ڮ���'��e�^����Ko������HƿF;#+~�����m�/p��p��m
|)}��@��ح�T��F\G	c}�(6�!��X���͂�x@rF�QѢ6E�H�{˞�^i���Qu��7˄�z9�^'l�����7c���4�Q�ք)���R��FX��Z~��k�f��J�Ԋ�-9���5��i#��r@۾��价�-���O}�6ĺv�#�n�(.ׅ$ l���"��1Ҍ�?AQ�٦�{���.�ɣo�o�!���$�b�ZWy;�ЮpN�����W�Lȳ�u�xꊊ�SM��]�M�8��.��ƓDzZ?�|V���/�>�d�c��7�҆T�9�=#��l��D�R��� �r���'v���zYH0b�l��;��:��J�/M��J��+�����n"M!���u�	�k�R���A����ӑ4�ۮ �;WAnv]��~x�0���Y��_�uSh���&A����*�ãwW��xnHn]���aXK�?4��uA�A0A��t�.=%�&p����m�����}snMt��=[�Ѧ��d�[��D|�"�A�*��r�������6꺪>:��1�#` z���$�L��tr�aӸ��j�Qn� o��i���[t۸�eB�6�C���Th]��i� ��7P�'���#`���*�3}b�k#�G��MjM�����!��K얊
D��[x�`찏l]W=s"�^{���R����~K��P�c�3 �.<���亞�\�N�ۖ�E��x��m���_O�h����-�E�h��B�!<#�2�B ���tz�^y=B^�&�j���c�]�*,ƃ�u�#��;�}��Rd���gKm����ALh��axO�����A�D�O�2ӓh��DN�${����_o�"87�s�E;�+f�@�����i�`C�3BW-��y���8�����ܗ@�m��]v_��kc�G�{�I��8���QCk)W��V=PI��H��l[��% T-�lj#�G���*�H y
�g��vB~S�8���Zm������=}������k�or���q�Y4�ZWmYU۰���"?��+��E�aY��|���=n��>�ﵱ�j�Sf���Y2���S���+eY9��G�r(���f�wP�\��D�G��G�Ô�طh� ����5H/�)����Ż���G������,��6��������d���_�A�(JR:�dw �tQ�'��9���c/�<�R�i�	�~g}�ٚ�����3K�[	� `+ɩd�\�����#{���վ �l���������K�F�tqK��҇� _�V&ꎒ�8�������n�*��]>//Ŷ��6�������c�|r�&�3�&M���}}t�F�g9N��&y������gJ}�}�W�b�gH:�qto�C��oة��{��k+Qq9H�C^r�xU�K��u�׻ex<�K��p��t4l'�؁h����J
�5��CE0�Ѿi�6���Nٰ�hèa��3�T 9�A@F�64�ZXXx \(�?���}ٕ�sB�a�'v�.D��ČF_�H"�:�4i�h\�+:
lV�l��ڽd{����K����d��̀FRwOO�4 ����4��5�� ���Ⱦ�-� ,�e���Π�q���w�~9	)[�д��� OE��qM	��Vy8sg�Fc������d'��<�����g��9[)��
����[�.7Ŷ|;�C(�6HKqY)��*U������m�f6�GR8�����ѕc_=����ҩ�\�^�h< $���|����6l�eJ)i�������'�d�%ᱫ���y�n�$��'#kC��M�����d��l~��!�h,��h�5��Gb�ͭ���8m��T�������v��S�|~z�[�6 ˦�+��&e%��3_�%*܁��3�[h(�v\yؘu��e���/K�LV���I*v��xXw��O���9Pi�b�����D^��V��۹fVlGHFC�IcF��&��
����]���ӞZ�vؠs[ڈ+���H��ەv	'm%F`?�,��A�9�}ϟw�����FZe��4�D������H��iA��_�
u�9b%z	[��b��r�񾂻j��"tu�>I4q%X.����Ҙ*�#�T�!uN4$��T.+�/���w�����jU�    ۫b���������V����f�V��8�
�jf��������a���lW�=���X����F�ۤ���A� �������'��K���펰nW~���v��ʭ�B��5 �Q<�o(�$�ji]0V;&�-a���^mV�}��AWy�	��:P~�Y�yj�&�T���OG���w?����b����j����Javz�d��*�N,s�܇�SF����%Е$�M��z�Ur����g���b�����z�����`�)�Ol_n��l˃e������%�9a��ɉ
U�A���E4N����/�O�V��t���pՆ]E��
�z*��4I'T���
�}�V�b���\�r�l)��&�6�v%ta���)�@�����y��!A��>���W���[�������D��>��@�N���@T�;��o�rCR�H�a����{&]�"����ۧl[�𩠍���٥2�����o ��B��{���/h#o�\�;��<u��զ��	��@<�4���ӱw�!h�nP8`��	����l\��4a��/F�(����ơ���K7�},��I//��|}�4d�٩I�k��S*G�*'U��i�&]�kktJBt���F��?q=n_�}�!��:��|�5��?e$�l7�����^� �b�F�@#�m|������.�5L�b�n��U���u�s�{���^�ޠ&�T2�"`�c:ڳ��$�#�O��Q<&=]����$��)_W�aIՄ�u�B;U�Qǽm�Y��3'2CE+
�a݆��H��j�
�����C�5�0l�X�xz��X���t�3g���jpU�a���Q)Z7Uow���������k���-nV]�P5���>�f7��{ ���Hj,�'�C�s�]y��S-�Ϛ�|�ݔ��T�MDE���̈����\�]%�#Y�=nV��\6����p�|�,�Wfy��S݂�6�ғC�Z\�}�y[���C�'h�;aEoݶ�9�f�_�?#q�'�1z�� ٙS=���ε�ti���LG�g)z��-���@�A�S�J�T��ߢ^�h��"d��6���^�r��=��Ӎޭm�_�� ���Ce�Oze�!t�몲^�9�Ċ#	�������<_�����Gը�cZg�5�1��s�\�M�f1���ө�N��t-$�_���o�]�-��y�qۮ�&�f|�#�������|uG�� �P�b�b��?�������<�T�kd�}�f#��N��=4,>�^�1<�Q�4��mO��N��5j�0l��SҸ��E�,�U���*�j(R�o�6[����ɟ
Py��Z���cTw~�W�<DŌ��`�ha�A���=u�>��p|w�*�=�;����Y!�αU�l�#�l��7�����i8�<������Kh�-��q~����l:�۶q%��S��0�og������;*ȶ����>�g��+Ͷ-�x���ݩ6=�V�rLd�o�9��9��C�yj%T�;���6��W�����H�wG����*C"]6�ཧ�~�����΀��]�V�U,��b[�N�[w�MK?J��^$Yb��}jS�N�J��v�s�*߳�>z�r��ܤ�����i�5�!>�l@{m \EW62�`��K�˿�a��ǔ,W�n�q��bjP�X��- Bd�4�t��"�>��������� �H�붬s�:��˥�V����}���=2��Nw)!|%m��[}ڕ�0釵�Ŷ�:�o\4'y��x���#�����7� ���z]�>�1_�.t���+�}� �3����[�g�G�Kf��J��>aػS߲��%9P�G֮��o��N���j>F�U2?Xzw�]݊�u��j!�%��n�<�e`���xg ��	8�k�1
-�6G� �z���φ�Z�z����[�R��`q5�VM��y�Ǣ�1$q��Q2!���.W�8#����s�ېT�ߚt�X�Ud�^X�gTkr��O�A����]�����Щj�R���`�w&��L�n�7\�N���s�f��4�r)\�w����q�ԐM��P�x&����z<�h���d$�z�� �~����A��a.Iق�cB�Ӥe;v��OmBU�n_���j��1����d��9�`�f�[d*�� 8��Ɛ���̻q=�V�Z`&A(#����s�y��ǋ�DWs�B���p�@���c�r�>�Ƿ���w�޸S��i��qN�.B��3w��s���R���@�n}�������sM��PX�1q�\�Kz��v��S�.��q �U�Qq(��7q�6�;Cp�]�'7���$���.�OJ���g�m:��BR�ͧ��皡mZ��4�oF͡�n�q�4��ȫ�2`O���cCg40D�ޯ���NssN`z+���*9��xDe�126T�鈜�'q�V�0�Q�Z��a=�;�Xш@@�kk���NR��oohd���
y�V����^�=��^�������Ad=-��qgw�N��$�q�"t3�;��ӿO(v���
:�gj5aÿ�U�z���u�����W��}�!��5�-��d�n�4�$ ���"_�z��Z��My��ᝑ9�g�<m�������T��E��N�d��i�:[ڞt}Ū����~���Tgr��F�Cz�81��zp�?����w�Y��R��7!��s�U�Ω	�.�Ӹ����l�o�)|z-�ް�~z�Q\�t[���n�S�a2�!
>K��R{*���.��ُފDgJ��19W�W�\������jݲ��!?�\}@��iqJ;�
zrUgV�������J���0�lB��My-܄���1�r���fcshD�l�)v�i��Z��*L3
���4��&/���?M���M��:"�3����4�H����#�&�|�<��Yz�x<85�r�wA)���B�$�ΰw�{ ��h�z�N){��|�D��G7�8{*�z�cfv�)��9�ٗ��������D�Š��q��}�j_Pm�/�����\ޙ��zX������'�uz��F�)�U}�<NnO�<��Է�/5�v��u�w�耭�����Р5�"��#�KpEt��&�m�睡8����`ƺ=�n��4+�{�H�k�ڂZ�C7� ��m��س�ճpt��2tGc����?������*�������-e^��ix�%��Ssx%F���a��?��`�2�[v��"�9�ꌹq���̰e�]��k�%�*���l�8�v����;��'ڪ)3��)VM�Wu���k��Pԉ��	�!6��ؔ>u1|p�T�K�,��HCZu|p�z)��;������;�k\O���F���۠וD�.�ۿ���/��NH�پ\go�Խ+ЙU��*gZ��u٬}d9�M�������3�s�댧q=�vI����w���&��	d��|:ɍ߳m�{���J�$�}��B���N��ES�=8	�<rL����V���3��}��H���m����X�l�\Ӵ���tTO?D��pz��@�nƳ0�;"j��k�i<��c��g�ju���;�e��e!����n�q2��	V;��:���*�h4駇wo\�/s��n4�Uյ�t���BPߜT��L��ށ8=5vQ��z��ᣓ�I!�p�2�O��gwP�W��xP�ӈ*��a�9�&�+j���Ys*@o��^���q=vI�K[w�1�;�����h�UN��.��uo_9qi_�c����s���.W� �/�돼�It&����̚Pl��R�Ÿs`��m;�y�z��j����4$㯄��7�j#�PZ	<�YuW>�����X|?��A..��]���7�=�#��ot=�ӿ}x���%�.����=�Y��BD�?0��j�VB���	{�tzl�@��-��z�&��@N��R�BZ��i�w�Ÿ��T�`��
@�럍g��{���4���K�hܴD*\�	t��&[��"Kg �Kui��z(����E�� �}8Y��.~@��c�Ճ�vt�4�e��ft"�{�9 4  �^���s�(2X6�����i�K�^��Ȓ�AכKB7�:t8������:�W\�^]�J���4��YB�N �ל��4Lz}�3\ū�B_9l�m�&c�J��Ð�g+���是��[�;���C_�U�WW+4�J(}�2b�=_��)����՟�*�cf�����������ΰ���.}x4T"�Ĕ5|κ��70-e;H�ض�O�^�|����KB_��W��n�h2�]l+��Ǣ�������P�bߒt���|�@�"���ܽ�i�wo�V��x���r4V_F=� ��zB@����Z/�u枸|�$��H��g���>�#]�����l����Ψ�f�.�CL���y�]� ��?Z�=A5d�}odw晸h�$����l}�q�8:�I���Nw膾�M�;���;p�E�967��X
V]ߙ��0�OzjygV��V���x6	�.���4	RӞtml^��dw��;�\Z�<�/�`x�<�>�g������@} l�ᐝ$\X��﫿��o�m���      '   E  x�}��r�F�����53��#YEJ� �*�l�h�� p�T�#�qWy�Xz�bـ�BB�)}�OwJw�zQ�̳�,�L�IB!�e��5���۷&K���hʚdd_�*�_�"�_rI<��\Sc��1�0�z��tM�5��}��u�j��Pmz�>C����
��[i+�F@%�*�6���+ ��D,�-�w>���)��I���Q��ⷲ��*��/����K\��ֈk�S�y���m>���E� �R��s�k
�=A;+���d��^4��J{���g�T�5Çp+~���|&a�5lb�_��)�w����oE	�����A��r�t%ɸJ��$ØJ�I6y:�W�
�Az̷���8Be�<��u���tw�5|6�"g�:�*ϕ�0��/��*������r�Tӥ�i#N��Ltӷ����DRш� ��R-�ͥ��~"Z>��Do �
��}.�8�yy~��-=N��GI7�߱�eS�<���?�oT<���3�\���[�6mڪ�����`�-E���\�N�`�l���<��'qA���}݀aF}\�~q��/��foz)J�7�17�tHGt)�?E��f%<�y�g��iQͱ\���qņ;��P�^V�(N�00��Qә㡳8nֈc�3�!����ξ���G��<��.�(�v��_E1O���2G3P�;.Ԝ	|:V<j�����Dqx�E�=��C|G�r���!z�q�O7�){�ƼS7�����=�r_@݂�SQ�r�	�>�`�)s�~����^�2e��)���� ��vO��k��>�:K��k��\��:�3-{���������_?�      )   Q   x�̹�0�,�#�z{q�u���`-���髗:5�Ң[�������m��Ø} #�2F0��3N@c�4H�頻���      +   �   x��ѕ!C�I1{������؄n��a0�TMlՍR-td|8�W��������f�L��m6X��l��1տ��_���LXq�ISg}���b�e��x�?f"�辧�xr��zTcs��2}y;�8ʺ�i;JS�\;�܎�����Z�͓���M����o�Xh����3�      -   �   x��ɑE1��t0S��[.?�8F}i��8##Ud��֐�W�lr�[/�z~ �ܴe����Jy@+ol�=��/V	0��Aј�������>W��j"�N�𝊣n�:k�}�8��~L�~޵�y5�y4��S&N?/<c�<��m��$��6,�      /   @   x�3�L�4202�50�5�P04�21�2 rM9K8��Ѥ��L��F\&����\���c���� ��P      1   `
  x�}X�v�8�����=(�
%Yo�V��<������I���|�|D�8�3Y����Pv���E Uu�qj�~~��V��o��YQ�»�i�N�&W]��o�����UQ^��$s��X	������	��ñR�]�x�������oβ^F<��d�(�XJ��� a�ƼG7iw�-o6h��)�S��7���(qCn%k�l�D����gi�^8y�*J����黵ȜdÛ��T;����.�d��O�����&��f'�K�o�l���Ҽʣ~v����c�p8�Հ ?f^�H�lp��a,	F��b��<�o,
M�1o�!̎�90�𖏛N��C�!�)ou�X��g��e�l��y+ .9�ԙ>_~�x�[�^�3bg�x�\K똷a��ԳS{�۰ֈBe�\�v��gw<�m�y��$���[����eI�-o�P]��������L��O{�=o$P{I������X��ݫc3�{�p��[˧���	o��0�S��{
��M6��'ZM��D�ԫ�6�~ߊRx�E�|��g���U�G-��aÓ�ȶ��]؆T��$�����t�܇����7��~�V�v��y���.�ށ�b���4�b�;��'�tX�6iz2v�=���@�$�������.���tٽ�U%��f�;���ga쉛��9�;o"���z9>�����-�6lf7��d�}��7X�����R�ک�x��FG�TR F����'a�w�߫"'�єw;ldTi�=���..z���u»�J?]ެ �ݐ�UN�ju��|z�|%G�s4j #�Q����,R{�sY�c����ф���m66"߻=k�l"v��)�>:@H�ڵM�x�eC�KG&7<�Djs�WLF<٤/�*��F�c��A���/$���&'��d��&��zW)�Ɍ�-h����ɒ�mXg���V*�`NbvH�Ad�98Y�[o�(|�F��@L>�v�<��y^�@�d^ROz/���7�?]?Ё���(����OR�k��L��5kş�(DE�;�k]���=����-������9�������EF�z�^�*c=��V�Ώ��6����6�lZ�G��i
��g��׼�݀��B���`A6as���e��#���6]�.���Y*2ko��/�^[�n��it�'��H3���
�@3�^�d\������y� �k�lV��6�5zl.�˦9���Q��D:��P��94�H��ɥ�|�u�-j�^�>[(��N�	�j�;�bwM!��.���,f��=�6�o/Hsh�iH����Nd�c�䳴�V�:&z�E'֦�t]�"p���k �lQ}C\i"o��O�ε����*���*�.��l	��./o](�]2�{Y�]�,��l���Tʼ(���%�&FyK�?ڝ�zع��0五�.OV)M�(�:KD�����]e,s-1��d���P�[|��-�f*��1�/���6�"X��tv��t(Bf�d#��	y4v����"����F!��G5�Id��Bv��^j�"��E���G�Pl�j>��ypkD|��4B�}2|/�z� �JJU�P���F�B��E@�w�()AA� �O��=�(�b����wӰG�f�l�C;�Z��ڋ��F���0��`i�kp�F��Z��%e����\#�`׸��`d���# ���v�G�;ש9��EgT���h���XgM��_c bfo!�@�+qy+0��W���iqY%�v���ɶ���5�@�_ce=��P�j���6��co�2�EA�+�賝�V�$��q���
�B�m���V�, �1T�)z���$�U�z�yz����{�Y!�����Fu�[��J�&F��d���`n� �T��X92L�ᖚ�2
�
x�[&��u�B^��WhA��b�Bj������
��k6B�rWH��g���3`
iZ�r�L[)��:��!'xmا�?jsM���rq�h���U�5���q8���l%$� ��ob�V{��N���$��v�ڣ���N�"��IU�	,�&*?�'�{��:�(��a��ؖ��=�k���Y�qh�{��E�EZms�	�1�{��!�`�DQ�{K���a@ʉ=l���	�1�x�8%1pF�kNLn! o�$XC�[㵗���0
`޳�Q�b�Q0��z�M�"H�gr�%�Y�xU�t�<@��f�W��\sN���;	�ZRz6~�
�~������I�"g�ڒB�� �:jS<A٩�_�Vi%�<ċ���/C�v�Q���]�*p�'��e� ��a�#=��g�w���|�5`[�h�V!@G���K�(��S��'<=�;�\ �`�BBX; m��W�jew�l�7�?�>�9�Y�-J������4��M�(d�`O�6��+s����7�;��!WUEF�t�� �w��j�.�x��*���M�u��"� �-R��to�o_g���~��~}��98z��M�"�3�׷-���J�.��F���1{��]v�V��㪬l�����ᄖ@	���<�b�'ÉO_ti����`{×Z�C���_����i[T      7   ?   x�3���4202�50�50V00�24�20׳436�4�50E�5��20 "�p	�!s��qqq �~      3   P   x�3�tL����,.)JL�/�4202�50�5�P0��21�2�г0�016�50�,�2��IM.����L�������0F��� `�v      5   z  x���[o�@ş�O��o�87��&e��Rl5M*"*��O��M�iڽ�d��p�o��E�ا�T�b؂JRc�������0������7�X��{���0��}k(V�)ũ����������(݋K�����Ӑ;��q)��`�Bk#��i��b�Z�y���$7�
�Ӵ<;����r��9��Y��¤�un�� >��c�湷�T�1�4D|◸�NQ�*��5`�N Lþc`��c��5fƄ��b��a.�1�D�'���r~UB��8�=\�w��2�Z?�����4���˝e����h��t�6q=��M�p�q�>��:���DI�D���6*��1+�X��n|�*���
^Q����uN�q��M��ƃ�:R�+jD�T�"Tq6�=[Q�w�{6j�=4YAQW^����9�.�c��nA�"�f8`�8��6c{f}a�:������0�����{�o������yhz�khQ�-S��/2.u	���D��S��'��4x�N]��j��;�rgtL݌�붖%���u�N�����?V\�~!Su�D�B?�L
x��^h{`N���{��ء5�x��EZG�|�U����o:P����vA{��/e3#      ?      x������ � �      A      x������ � �      =   �  x�e�ݎ�0F����	�u�Ir�רTb��XH�l�o_�=�9w���tp�<8󳟪�~���Q�i[��3������=2�駇*��	���oƒ��_���(�f��_>ú�y2'R�����l�س��{E �Qq�l�X����$H����ri��q�)!���IT@�]g�a�������MC"\:*�5Z���
�V�<+߉hA�/��l��x�-	�ʺ���=3vՎ��^�N�&Ye�e����K5��2����B{�8 �r��L ͎�V�@�T5)鸅����fs&_�����Y�h���-l^��Ȕ�_�����~4��k[C�4��
�$i�m��A�T�$�o���o=�ר����Ԑ����=����$�=*eo�	�����_f��ˉn*�1
�+�to�H_ِn1�Ш�x��4,��0����W��$
¢��
�v�R���!����"��aW���	��$S�+�҄dJEI�8������O���d �D�$�LD��_�E�u�!�׈O�ڶy�����7Wl�֪�+��ID�HZ�}X��S��m[�G�N�D@�>.�SH��v���s�^�.P��Q����/i���A���Р"Q���#cqe� v�$Dq��9�E�Yf$%�_�����wq̨�=Cb
����<���T�d��_?������      ;   �   x�3�4202�50�50R02�22�22�303121�50�4�
�P�u�q��r�	r��Vpv� R.�
�@A�`���j��ļ��%+�j���Ԝ�b 3Z�'��D!'?=3O)��6��МӐ+F��� \��      9   �   x�m�Mn1���0U��&'����c\lW��K2IT�� ���b�y����t��&��_��.�K���rVv!I�&�J�� �����;�n݇Z�E�V��'xsp�)�tJ�,pt�f�m�'�:�z�W'����G�yfY�ƑLɮB�z����\l(��t��A��t�2ڸ}BO�ñJ����� ��O�         �  x���ݎ� �k��5p�P�{��	!�uHT�f���Z��unlR=?8�����鷋�j�BK3�`�PtF�����5b�89#v���S�S�Y��J��r ��T�:�鸄P�N%�Ur�}|��K�G{�R-�Ju��o �e����R��z�}Z������I[<<�Yo�tGNj�E����L5U���8��	J�Bڭ��vr�n4ާE�7�Q}�AO}|�"5`JlY��ǋ�ૂ���=�.�;�R��`���7�C�-���h���S�M�qC���[%SjeD�VDFȆ4k+75��
��|`�s��Q{���Y!5!��b�im1���	���,�Mo��-�y1R�T��2���#���vx1���rv���;��x�$O6n+��f������ҷ+aL䦺4
�_�3v��K%�]0� �� �� TR�s�����x�o��UKE��ԧ����      B     x�=��n�@@�<E_@3�㈘tѨ�12D��%��3xKk���v��ɗ�|8��?\�/AW�'Ǧ33�6G.�!0��DqU��Fn�b�J�$��p�qJq���2Se�m|]��"�lPbS��Ćbj~�� ���J������8���^uޖ�m��9��~K��Ò���',����-��۝�.7՟|\@�к���XJ�x����XZ	���������c<�lE_=�d�&����G� ��7���-�|��	�h�{cD�ω�8Oe�     