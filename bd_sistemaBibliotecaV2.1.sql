PGDMP         8        
        x            bd_sistemaBiblioteca    12.3    12.3    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    19804    bd_sistemaBiblioteca    DATABASE     �   CREATE DATABASE "bd_sistemaBiblioteca" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
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
       public          postgres    false    205            �           0    0 +   GestionPrestamo_autorlibro_idAutorLibro_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_autorlibro_idAutorLibro_seq" OWNED BY public."GestionPrestamo_autorlibro"."idAutorLibro";
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
       public          postgres    false    207            �           0    0 1   GestionPrestamo_bibliotecario_idBibliotecario_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_bibliotecario_idBibliotecario_seq" OWNED BY public."GestionPrestamo_bibliotecario"."idBibliotecario";
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
       public          postgres    false    209            �           0    0 )   GestionPrestamo_editorial_idEditorial_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."GestionPrestamo_editorial_idEditorial_seq" OWNED BY public."GestionPrestamo_editorial"."idEditorial";
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
       public          postgres    false    211            �           0    0 1   GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq" OWNED BY public."GestionPrestamo_etiquetalibro"."idEtiquetaLibro";
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
       public          postgres    false    213            �           0    0 -   GestionPrestamo_generolibro_idGeneroLibro_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_generolibro_idGeneroLibro_seq" OWNED BY public."GestionPrestamo_generolibro"."idGeneroLibro";
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
       public          postgres    false    215            �           0    0 #   GestionPrestamo_idioma_idIdioma_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."GestionPrestamo_idioma_idIdioma_seq" OWNED BY public."GestionPrestamo_idioma"."idIdioma";
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
       public          postgres    false    217            �           0    0 #   GestionPrestamo_lector_idLector_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."GestionPrestamo_lector_idLector_seq" OWNED BY public."GestionPrestamo_lector"."idLector";
          public          postgres    false    216            �            1259    19889    GestionPrestamo_libro    TABLE     I  CREATE TABLE public."GestionPrestamo_libro" (
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
    "pais_Libro_id" integer
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
       public          postgres    false    221            �           0    0 -   GestionPrestamo_libro_autorLibro_Libro_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_libro_autorLibro_Libro_id_seq" OWNED BY public."GestionPrestamo_libro_autorLibro_Libro".id;
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
       public          postgres    false    223            �           0    0 0   GestionPrestamo_libro_etiquetaLibro_Libro_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_libro_etiquetaLibro_Libro_id_seq" OWNED BY public."GestionPrestamo_libro_etiquetaLibro_Libro".id;
          public          postgres    false    222            �            1259    19918 "   GestionPrestamo_libro_genero_Libro    TABLE     �   CREATE TABLE public."GestionPrestamo_libro_genero_Libro" (
    id integer NOT NULL,
    libro_id integer NOT NULL,
    generolibro_id integer NOT NULL
);
 8   DROP TABLE public."GestionPrestamo_libro_genero_Libro";
       public         heap    postgres    false            �            1259    19916 (   GestionPrestamo_libro_generoLibro_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_libro_generoLibro_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."GestionPrestamo_libro_generoLibro_id_seq";
       public          postgres    false    225            �           0    0 (   GestionPrestamo_libro_generoLibro_id_seq    SEQUENCE OWNED BY     z   ALTER SEQUENCE public."GestionPrestamo_libro_generoLibro_id_seq" OWNED BY public."GestionPrestamo_libro_genero_Libro".id;
          public          postgres    false    224            �            1259    19887 !   GestionPrestamo_libro_idLibro_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_libro_idLibro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."GestionPrestamo_libro_idLibro_seq";
       public          postgres    false    219            �           0    0 !   GestionPrestamo_libro_idLibro_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."GestionPrestamo_libro_idLibro_seq" OWNED BY public."GestionPrestamo_libro"."idLibro";
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
       public          postgres    false    227            �           0    0 3   GestionPrestamo_libroinstancia_idLibroInstancia_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_libroinstancia_idLibroInstancia_seq" OWNED BY public."GestionPrestamo_libroinstancia"."idLibroInstancia";
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
       public          postgres    false    229            �           0    0    GestionPrestamo_pais_idPais_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."GestionPrestamo_pais_idPais_seq" OWNED BY public."GestionPrestamo_pais"."idPais";
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
       public          postgres    false    235            �           0    0 -   GestionPrestamo_reservacion_idReservacion_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_reservacion_idReservacion_seq" OWNED BY public."GestionPrestamo_reservacion"."idReservacion";
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
       public          postgres    false    231            �           0    0 -   GestionPrestamo_tipousuario_idTipoUsuario_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_tipousuario_idTipoUsuario_seq" OWNED BY public."GestionPrestamo_tipousuario"."idTipoUsuario";
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
       public          postgres    false    233            �           0    0    GestionPrestamo_usuario_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."GestionPrestamo_usuario_id_seq" OWNED BY public."GestionPrestamo_usuario".id;
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
       public          postgres    false    243            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
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
       public          postgres    false    245            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
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
       public          postgres    false    241            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
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
       public          postgres    false    239            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
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
       public          postgres    false    237            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
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
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    20162    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    20234    social_auth_association    TABLE     <  CREATE TABLE public.social_auth_association (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    secret character varying(255) NOT NULL,
    issued integer NOT NULL,
    lifetime integer NOT NULL,
    assoc_type character varying(64) NOT NULL
);
 +   DROP TABLE public.social_auth_association;
       public         heap    postgres    false            �            1259    20232    social_auth_association_id_seq    SEQUENCE     �   CREATE SEQUENCE public.social_auth_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.social_auth_association_id_seq;
       public          postgres    false    248            �           0    0    social_auth_association_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.social_auth_association_id_seq OWNED BY public.social_auth_association.id;
          public          postgres    false    247            �            1259    20245    social_auth_code    TABLE     �   CREATE TABLE public.social_auth_code (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    code character varying(32) NOT NULL,
    verified boolean NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);
 $   DROP TABLE public.social_auth_code;
       public         heap    postgres    false            �            1259    20243    social_auth_code_id_seq    SEQUENCE     �   CREATE SEQUENCE public.social_auth_code_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.social_auth_code_id_seq;
       public          postgres    false    250            �           0    0    social_auth_code_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.social_auth_code_id_seq OWNED BY public.social_auth_code.id;
          public          postgres    false    249            �            1259    20253    social_auth_nonce    TABLE     �   CREATE TABLE public.social_auth_nonce (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    "timestamp" integer NOT NULL,
    salt character varying(65) NOT NULL
);
 %   DROP TABLE public.social_auth_nonce;
       public         heap    postgres    false            �            1259    20251    social_auth_nonce_id_seq    SEQUENCE     �   CREATE SEQUENCE public.social_auth_nonce_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.social_auth_nonce_id_seq;
       public          postgres    false    252            �           0    0    social_auth_nonce_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.social_auth_nonce_id_seq OWNED BY public.social_auth_nonce.id;
          public          postgres    false    251                        1259    20295    social_auth_partial    TABLE     T  CREATE TABLE public.social_auth_partial (
    id integer NOT NULL,
    token character varying(32) NOT NULL,
    next_step smallint NOT NULL,
    backend character varying(32) NOT NULL,
    data text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    CONSTRAINT social_auth_partial_next_step_check CHECK ((next_step >= 0))
);
 '   DROP TABLE public.social_auth_partial;
       public         heap    postgres    false            �            1259    20293    social_auth_partial_id_seq    SEQUENCE     �   CREATE SEQUENCE public.social_auth_partial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.social_auth_partial_id_seq;
       public          postgres    false    256            �           0    0    social_auth_partial_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.social_auth_partial_id_seq OWNED BY public.social_auth_partial.id;
          public          postgres    false    255            �            1259    20261    social_auth_usersocialauth    TABLE     =  CREATE TABLE public.social_auth_usersocialauth (
    id integer NOT NULL,
    provider character varying(32) NOT NULL,
    uid character varying(255) NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);
 .   DROP TABLE public.social_auth_usersocialauth;
       public         heap    postgres    false            �            1259    20259 !   social_auth_usersocialauth_id_seq    SEQUENCE     �   CREATE SEQUENCE public.social_auth_usersocialauth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.social_auth_usersocialauth_id_seq;
       public          postgres    false    254            �           0    0 !   social_auth_usersocialauth_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.social_auth_usersocialauth_id_seq OWNED BY public.social_auth_usersocialauth.id;
          public          postgres    false    253            +           2604    19821 '   GestionPrestamo_autorlibro idAutorLibro    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_autorlibro" ALTER COLUMN "idAutorLibro" SET DEFAULT nextval('public."GestionPrestamo_autorlibro_idAutorLibro_seq"'::regclass);
 Z   ALTER TABLE public."GestionPrestamo_autorlibro" ALTER COLUMN "idAutorLibro" DROP DEFAULT;
       public          postgres    false    205    204    205            ,           2604    19832 -   GestionPrestamo_bibliotecario idBibliotecario    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_bibliotecario" ALTER COLUMN "idBibliotecario" SET DEFAULT nextval('public."GestionPrestamo_bibliotecario_idBibliotecario_seq"'::regclass);
 `   ALTER TABLE public."GestionPrestamo_bibliotecario" ALTER COLUMN "idBibliotecario" DROP DEFAULT;
       public          postgres    false    207    206    207            -           2604    19843 %   GestionPrestamo_editorial idEditorial    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_editorial" ALTER COLUMN "idEditorial" SET DEFAULT nextval('public."GestionPrestamo_editorial_idEditorial_seq"'::regclass);
 X   ALTER TABLE public."GestionPrestamo_editorial" ALTER COLUMN "idEditorial" DROP DEFAULT;
       public          postgres    false    209    208    209            .           2604    19856 -   GestionPrestamo_etiquetalibro idEtiquetaLibro    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_etiquetalibro" ALTER COLUMN "idEtiquetaLibro" SET DEFAULT nextval('public."GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq"'::regclass);
 `   ALTER TABLE public."GestionPrestamo_etiquetalibro" ALTER COLUMN "idEtiquetaLibro" DROP DEFAULT;
       public          postgres    false    210    211    211            /           2604    19866 )   GestionPrestamo_generolibro idGeneroLibro    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_generolibro" ALTER COLUMN "idGeneroLibro" SET DEFAULT nextval('public."GestionPrestamo_generolibro_idGeneroLibro_seq"'::regclass);
 \   ALTER TABLE public."GestionPrestamo_generolibro" ALTER COLUMN "idGeneroLibro" DROP DEFAULT;
       public          postgres    false    212    213    213            0           2604    19876    GestionPrestamo_idioma idIdioma    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_idioma" ALTER COLUMN "idIdioma" SET DEFAULT nextval('public."GestionPrestamo_idioma_idIdioma_seq"'::regclass);
 R   ALTER TABLE public."GestionPrestamo_idioma" ALTER COLUMN "idIdioma" DROP DEFAULT;
       public          postgres    false    215    214    215            1           2604    19884    GestionPrestamo_lector idLector    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_lector" ALTER COLUMN "idLector" SET DEFAULT nextval('public."GestionPrestamo_lector_idLector_seq"'::regclass);
 R   ALTER TABLE public."GestionPrestamo_lector" ALTER COLUMN "idLector" DROP DEFAULT;
       public          postgres    false    216    217    217            2           2604    19892    GestionPrestamo_libro idLibro    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libro" ALTER COLUMN "idLibro" SET DEFAULT nextval('public."GestionPrestamo_libro_idLibro_seq"'::regclass);
 P   ALTER TABLE public."GestionPrestamo_libro" ALTER COLUMN "idLibro" DROP DEFAULT;
       public          postgres    false    218    219    219            3           2604    19905 )   GestionPrestamo_libro_autorLibro_Libro id    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" ALTER COLUMN id SET DEFAULT nextval('public."GestionPrestamo_libro_autorLibro_Libro_id_seq"'::regclass);
 Z   ALTER TABLE public."GestionPrestamo_libro_autorLibro_Libro" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            4           2604    19913 ,   GestionPrestamo_libro_etiquetaLibro_Libro id    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" ALTER COLUMN id SET DEFAULT nextval('public."GestionPrestamo_libro_etiquetaLibro_Libro_id_seq"'::regclass);
 ]   ALTER TABLE public."GestionPrestamo_libro_etiquetaLibro_Libro" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            5           2604    19921 %   GestionPrestamo_libro_genero_Libro id    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_genero_Libro" ALTER COLUMN id SET DEFAULT nextval('public."GestionPrestamo_libro_generoLibro_id_seq"'::regclass);
 V   ALTER TABLE public."GestionPrestamo_libro_genero_Libro" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            6           2604    19929 /   GestionPrestamo_libroinstancia idLibroInstancia    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libroinstancia" ALTER COLUMN "idLibroInstancia" SET DEFAULT nextval('public."GestionPrestamo_libroinstancia_idLibroInstancia_seq"'::regclass);
 b   ALTER TABLE public."GestionPrestamo_libroinstancia" ALTER COLUMN "idLibroInstancia" DROP DEFAULT;
       public          postgres    false    227    226    227            7           2604    19937    GestionPrestamo_pais idPais    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_pais" ALTER COLUMN "idPais" SET DEFAULT nextval('public."GestionPrestamo_pais_idPais_seq"'::regclass);
 N   ALTER TABLE public."GestionPrestamo_pais" ALTER COLUMN "idPais" DROP DEFAULT;
       public          postgres    false    229    228    229            :           2604    19966 )   GestionPrestamo_reservacion idReservacion    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_reservacion" ALTER COLUMN "idReservacion" SET DEFAULT nextval('public."GestionPrestamo_reservacion_idReservacion_seq"'::regclass);
 \   ALTER TABLE public."GestionPrestamo_reservacion" ALTER COLUMN "idReservacion" DROP DEFAULT;
       public          postgres    false    235    234    235            8           2604    19945 )   GestionPrestamo_tipousuario idTipoUsuario    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_tipousuario" ALTER COLUMN "idTipoUsuario" SET DEFAULT nextval('public."GestionPrestamo_tipousuario_idTipoUsuario_seq"'::regclass);
 \   ALTER TABLE public."GestionPrestamo_tipousuario" ALTER COLUMN "idTipoUsuario" DROP DEFAULT;
       public          postgres    false    231    230    231            9           2604    19953    GestionPrestamo_usuario id    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_usuario" ALTER COLUMN id SET DEFAULT nextval('public."GestionPrestamo_usuario_id_seq"'::regclass);
 K   ALTER TABLE public."GestionPrestamo_usuario" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            ?           2604    20123    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            @           2604    20133    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245            >           2604    20115    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            <           2604    20091    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            ;           2604    20081    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            *           2604    19810    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            A           2604    20237    social_auth_association id    DEFAULT     �   ALTER TABLE ONLY public.social_auth_association ALTER COLUMN id SET DEFAULT nextval('public.social_auth_association_id_seq'::regclass);
 I   ALTER TABLE public.social_auth_association ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            B           2604    20248    social_auth_code id    DEFAULT     z   ALTER TABLE ONLY public.social_auth_code ALTER COLUMN id SET DEFAULT nextval('public.social_auth_code_id_seq'::regclass);
 B   ALTER TABLE public.social_auth_code ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            C           2604    20256    social_auth_nonce id    DEFAULT     |   ALTER TABLE ONLY public.social_auth_nonce ALTER COLUMN id SET DEFAULT nextval('public.social_auth_nonce_id_seq'::regclass);
 C   ALTER TABLE public.social_auth_nonce ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            E           2604    20298    social_auth_partial id    DEFAULT     �   ALTER TABLE ONLY public.social_auth_partial ALTER COLUMN id SET DEFAULT nextval('public.social_auth_partial_id_seq'::regclass);
 E   ALTER TABLE public.social_auth_partial ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256            D           2604    20264    social_auth_usersocialauth id    DEFAULT     �   ALTER TABLE ONLY public.social_auth_usersocialauth ALTER COLUMN id SET DEFAULT nextval('public.social_auth_usersocialauth_id_seq'::regclass);
 L   ALTER TABLE public.social_auth_usersocialauth ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            \          0    19818    GestionPrestamo_autorlibro 
   TABLE DATA           �   COPY public."GestionPrestamo_autorlibro" ("idAutorLibro", "nombreAutorLibro", "apellidosAutorLibro", "descripcionAutorLibro", "fechaCreacionAutorLibro", "estadoAutorLibro") FROM stdin;
    public          postgres    false    205   &�      ^          0    19829    GestionPrestamo_bibliotecario 
   TABLE DATA           �  COPY public."GestionPrestamo_bibliotecario" ("idBibliotecario", "nombreBibliotecario", "apellidosBibliotecario", "direccionBibliotecario", "DNIBibliotecario", "telefonoBibliotecario", "emailBibliotecario", "sexoBibliotecario", "usernameBibliotecario", "claveBibliotecario", "fechaNacimientoBibliotecario", "fechaCreacionBibliotecario", "estadoBibliotecario", "tipoBibliotecario_Bibliotecario_id") FROM stdin;
    public          postgres    false    207   ��      `          0    19840    GestionPrestamo_editorial 
   TABLE DATA           �   COPY public."GestionPrestamo_editorial" ("idEditorial", "tituloEditorial", "descripcionEditorial", "fechaCreacionEditorial", "estadoEditorial") FROM stdin;
    public          postgres    false    209   ��      b          0    19853    GestionPrestamo_etiquetalibro 
   TABLE DATA           �   COPY public."GestionPrestamo_etiquetalibro" ("idEtiquetaLibro", "tituloEtiquetaLibro", "fechaCreacionEtiquetaLibro", "estadoEtiquetaLibro") FROM stdin;
    public          postgres    false    211   ��      d          0    19863    GestionPrestamo_generolibro 
   TABLE DATA           �   COPY public."GestionPrestamo_generolibro" ("idGeneroLibro", "tituloGeneroLibro", "fechaCreacionGeneroLibro", "estadoGeneroLibro") FROM stdin;
    public          postgres    false    213   C�      f          0    19873    GestionPrestamo_idioma 
   TABLE DATA           ^   COPY public."GestionPrestamo_idioma" ("idIdioma", "tituloIdioma", "estadoIdioma") FROM stdin;
    public          postgres    false    215   ��      h          0    19881    GestionPrestamo_lector 
   TABLE DATA             COPY public."GestionPrestamo_lector" ("idLector", "nombreLector", "apellidosLector", "DNILector", "emailLector", "sexoLector", "usernameLector", "claveLector", "fechaNacimientoLector", "fechaCreacionLector", "estadoLector", "tipoUsuario_Lector_id") FROM stdin;
    public          postgres    false    217   ��      j          0    19889    GestionPrestamo_libro 
   TABLE DATA             COPY public."GestionPrestamo_libro" ("idLibro", "codigoLibro", "tituloLibro", "formatoLibro", "resumenLibro", "ISBNLibro", "anioPublicacionLibro", "fechaCreacionLibro", "estadoLibro", "bibliotecario_Libro_id", "editorial_Libro_id", "idiomaLibro_id", "pais_Libro_id") FROM stdin;
    public          postgres    false    219   K�      l          0    19902 &   GestionPrestamo_libro_autorLibro_Libro 
   TABLE DATA           _   COPY public."GestionPrestamo_libro_autorLibro_Libro" (id, libro_id, autorlibro_id) FROM stdin;
    public          postgres    false    221   -      n          0    19910 )   GestionPrestamo_libro_etiquetaLibro_Libro 
   TABLE DATA           e   COPY public."GestionPrestamo_libro_etiquetaLibro_Libro" (id, libro_id, etiquetalibro_id) FROM stdin;
    public          postgres    false    223   �.      p          0    19918 "   GestionPrestamo_libro_genero_Libro 
   TABLE DATA           \   COPY public."GestionPrestamo_libro_genero_Libro" (id, libro_id, generolibro_id) FROM stdin;
    public          postgres    false    225   �1      r          0    19926    GestionPrestamo_libroinstancia 
   TABLE DATA           �   COPY public."GestionPrestamo_libroinstancia" ("idLibroInstancia", "estadoPrestamoLibroInstancia", "fechaCreacionLibroInstancia", "estadoLibroInstancia", "libro_LibroInstancia_id") FROM stdin;
    public          postgres    false    227   �3      t          0    19934    GestionPrestamo_pais 
   TABLE DATA           a   COPY public."GestionPrestamo_pais" ("idPais", "tituloPais", "estadoPais", "isoPais") FROM stdin;
    public          postgres    false    229   >4      z          0    19963    GestionPrestamo_reservacion 
   TABLE DATA             COPY public."GestionPrestamo_reservacion" ("idReservacion", "tipoAdquisicionReservacion", "fechaEmisionReservacion", "fechaRetornoReservacion", "estadoReservacion", "bibliotecario_Reservacion_id", "libro_Reservacion_id", usuario_reservacion_id) FROM stdin;
    public          postgres    false    235   �>      v          0    19942    GestionPrestamo_tipousuario 
   TABLE DATA           �   COPY public."GestionPrestamo_tipousuario" ("idTipoUsuario", "nombreTipoUsuario", "fechaCreacionTipoUsuario", "estadoTipoUsuario") FROM stdin;
    public          postgres    false    231   ?      x          0    19950    GestionPrestamo_usuario 
   TABLE DATA           7  COPY public."GestionPrestamo_usuario" (id, password, last_login, username, "nombreUsuario", "apellidosUsuario", "DNIUsuario", email, "direccionUsuario", "imagenUsuario", "sexoUsuario", "telefonoUsuario", "fechaNacimientoUsuario", "fechaCreacionUsuario", "tipoAdministradorUsuario", "estadoUsuario") FROM stdin;
    public          postgres    false    233   s?      �          0    20120 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    243   
B      �          0    20130    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    245   'B      �          0    20112    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    241   DB      ~          0    20088    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    239   �E      |          0    20078    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    237   SF      Z          0    19807    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   \G      �          0    20162    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    246   �J      �          0    20234    social_auth_association 
   TABLE DATA           o   COPY public.social_auth_association (id, server_url, handle, secret, issued, lifetime, assoc_type) FROM stdin;
    public          postgres    false    248   �K      �          0    20245    social_auth_code 
   TABLE DATA           R   COPY public.social_auth_code (id, email, code, verified, "timestamp") FROM stdin;
    public          postgres    false    250   �K      �          0    20253    social_auth_nonce 
   TABLE DATA           N   COPY public.social_auth_nonce (id, server_url, "timestamp", salt) FROM stdin;
    public          postgres    false    252   L      �          0    20295    social_auth_partial 
   TABLE DATA           _   COPY public.social_auth_partial (id, token, next_step, backend, data, "timestamp") FROM stdin;
    public          postgres    false    256   9L      �          0    20261    social_auth_usersocialauth 
   TABLE DATA           o   COPY public.social_auth_usersocialauth (id, provider, uid, extra_data, user_id, created, modified) FROM stdin;
    public          postgres    false    254   VL      �           0    0 +   GestionPrestamo_autorlibro_idAutorLibro_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."GestionPrestamo_autorlibro_idAutorLibro_seq"', 51, true);
          public          postgres    false    204            �           0    0 1   GestionPrestamo_bibliotecario_idBibliotecario_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."GestionPrestamo_bibliotecario_idBibliotecario_seq"', 2, true);
          public          postgres    false    206            �           0    0 )   GestionPrestamo_editorial_idEditorial_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."GestionPrestamo_editorial_idEditorial_seq"', 28, true);
          public          postgres    false    208            �           0    0 1   GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq"', 97, true);
          public          postgres    false    210            �           0    0 -   GestionPrestamo_generolibro_idGeneroLibro_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."GestionPrestamo_generolibro_idGeneroLibro_seq"', 40, true);
          public          postgres    false    212            �           0    0 #   GestionPrestamo_idioma_idIdioma_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."GestionPrestamo_idioma_idIdioma_seq"', 1, false);
          public          postgres    false    214            �           0    0 #   GestionPrestamo_lector_idLector_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."GestionPrestamo_lector_idLector_seq"', 1, false);
          public          postgres    false    216            �           0    0 -   GestionPrestamo_libro_autorLibro_Libro_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."GestionPrestamo_libro_autorLibro_Libro_id_seq"', 232, true);
          public          postgres    false    220            �           0    0 0   GestionPrestamo_libro_etiquetaLibro_Libro_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."GestionPrestamo_libro_etiquetaLibro_Libro_id_seq"', 424, true);
          public          postgres    false    222            �           0    0 (   GestionPrestamo_libro_generoLibro_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."GestionPrestamo_libro_generoLibro_id_seq"', 266, true);
          public          postgres    false    224            �           0    0 !   GestionPrestamo_libro_idLibro_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."GestionPrestamo_libro_idLibro_seq"', 79, true);
          public          postgres    false    218            �           0    0 3   GestionPrestamo_libroinstancia_idLibroInstancia_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public."GestionPrestamo_libroinstancia_idLibroInstancia_seq"', 1, false);
          public          postgres    false    226            �           0    0    GestionPrestamo_pais_idPais_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."GestionPrestamo_pais_idPais_seq"', 1, true);
          public          postgres    false    228            �           0    0 -   GestionPrestamo_reservacion_idReservacion_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."GestionPrestamo_reservacion_idReservacion_seq"', 2, true);
          public          postgres    false    234            �           0    0 -   GestionPrestamo_tipousuario_idTipoUsuario_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."GestionPrestamo_tipousuario_idTipoUsuario_seq"', 1, false);
          public          postgres    false    230            �           0    0    GestionPrestamo_usuario_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."GestionPrestamo_usuario_id_seq"', 5, true);
          public          postgres    false    232            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    242            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    244            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 92, true);
          public          postgres    false    240            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);
          public          postgres    false    238            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 23, true);
          public          postgres    false    236            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);
          public          postgres    false    202            �           0    0    social_auth_association_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.social_auth_association_id_seq', 1, false);
          public          postgres    false    247            �           0    0    social_auth_code_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.social_auth_code_id_seq', 1, false);
          public          postgres    false    249            �           0    0    social_auth_nonce_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.social_auth_nonce_id_seq', 1, false);
          public          postgres    false    251            �           0    0    social_auth_partial_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.social_auth_partial_id_seq', 1, false);
          public          postgres    false    255            �           0    0 !   social_auth_usersocialauth_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.social_auth_usersocialauth_id_seq', 1, false);
          public          postgres    false    253            J           2606    19826 :   GestionPrestamo_autorlibro GestionPrestamo_autorlibro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_autorlibro"
    ADD CONSTRAINT "GestionPrestamo_autorlibro_pkey" PRIMARY KEY ("idAutorLibro");
 h   ALTER TABLE ONLY public."GestionPrestamo_autorlibro" DROP CONSTRAINT "GestionPrestamo_autorlibro_pkey";
       public            postgres    false    205            M           2606    19837 @   GestionPrestamo_bibliotecario GestionPrestamo_bibliotecario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_bibliotecario"
    ADD CONSTRAINT "GestionPrestamo_bibliotecario_pkey" PRIMARY KEY ("idBibliotecario");
 n   ALTER TABLE ONLY public."GestionPrestamo_bibliotecario" DROP CONSTRAINT "GestionPrestamo_bibliotecario_pkey";
       public            postgres    false    207            O           2606    19848 8   GestionPrestamo_editorial GestionPrestamo_editorial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_editorial"
    ADD CONSTRAINT "GestionPrestamo_editorial_pkey" PRIMARY KEY ("idEditorial");
 f   ALTER TABLE ONLY public."GestionPrestamo_editorial" DROP CONSTRAINT "GestionPrestamo_editorial_pkey";
       public            postgres    false    209            R           2606    19850 G   GestionPrestamo_editorial GestionPrestamo_editorial_tituloEditorial_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_editorial"
    ADD CONSTRAINT "GestionPrestamo_editorial_tituloEditorial_key" UNIQUE ("tituloEditorial");
 u   ALTER TABLE ONLY public."GestionPrestamo_editorial" DROP CONSTRAINT "GestionPrestamo_editorial_tituloEditorial_key";
       public            postgres    false    209            T           2606    19858 @   GestionPrestamo_etiquetalibro GestionPrestamo_etiquetalibro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_etiquetalibro"
    ADD CONSTRAINT "GestionPrestamo_etiquetalibro_pkey" PRIMARY KEY ("idEtiquetaLibro");
 n   ALTER TABLE ONLY public."GestionPrestamo_etiquetalibro" DROP CONSTRAINT "GestionPrestamo_etiquetalibro_pkey";
       public            postgres    false    211            W           2606    19860 S   GestionPrestamo_etiquetalibro GestionPrestamo_etiquetalibro_tituloEtiquetaLibro_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_etiquetalibro"
    ADD CONSTRAINT "GestionPrestamo_etiquetalibro_tituloEtiquetaLibro_key" UNIQUE ("tituloEtiquetaLibro");
 �   ALTER TABLE ONLY public."GestionPrestamo_etiquetalibro" DROP CONSTRAINT "GestionPrestamo_etiquetalibro_tituloEtiquetaLibro_key";
       public            postgres    false    211            Y           2606    19868 <   GestionPrestamo_generolibro GestionPrestamo_generolibro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_generolibro"
    ADD CONSTRAINT "GestionPrestamo_generolibro_pkey" PRIMARY KEY ("idGeneroLibro");
 j   ALTER TABLE ONLY public."GestionPrestamo_generolibro" DROP CONSTRAINT "GestionPrestamo_generolibro_pkey";
       public            postgres    false    213            \           2606    19870 M   GestionPrestamo_generolibro GestionPrestamo_generolibro_tituloGeneroLibro_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_generolibro"
    ADD CONSTRAINT "GestionPrestamo_generolibro_tituloGeneroLibro_key" UNIQUE ("tituloGeneroLibro");
 {   ALTER TABLE ONLY public."GestionPrestamo_generolibro" DROP CONSTRAINT "GestionPrestamo_generolibro_tituloGeneroLibro_key";
       public            postgres    false    213            ^           2606    19878 2   GestionPrestamo_idioma GestionPrestamo_idioma_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."GestionPrestamo_idioma"
    ADD CONSTRAINT "GestionPrestamo_idioma_pkey" PRIMARY KEY ("idIdioma");
 `   ALTER TABLE ONLY public."GestionPrestamo_idioma" DROP CONSTRAINT "GestionPrestamo_idioma_pkey";
       public            postgres    false    215            `           2606    19886 2   GestionPrestamo_lector GestionPrestamo_lector_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."GestionPrestamo_lector"
    ADD CONSTRAINT "GestionPrestamo_lector_pkey" PRIMARY KEY ("idLector");
 `   ALTER TABLE ONLY public."GestionPrestamo_lector" DROP CONSTRAINT "GestionPrestamo_lector_pkey";
       public            postgres    false    217            l           2606    20007 d   GestionPrestamo_libro_autorLibro_Libro GestionPrestamo_libro_au_libro_id_autorlibro_id_9975258e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_au_libro_id_autorlibro_id_9975258e_uniq" UNIQUE (libro_id, autorlibro_id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libro_au_libro_id_autorlibro_id_9975258e_uniq";
       public            postgres    false    221    221            p           2606    19907 R   GestionPrestamo_libro_autorLibro_Libro GestionPrestamo_libro_autorLibro_Libro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_autorLibro_Libro_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libro_autorLibro_Libro_pkey";
       public            postgres    false    221            r           2606    20021 i   GestionPrestamo_libro_etiquetaLibro_Libro GestionPrestamo_libro_et_libro_id_etiquetalibro_i_a8bbdc08_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_et_libro_id_etiquetalibro_i_a8bbdc08_uniq" UNIQUE (libro_id, etiquetalibro_id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libro_et_libro_id_etiquetalibro_i_a8bbdc08_uniq";
       public            postgres    false    223    223            v           2606    19915 X   GestionPrestamo_libro_etiquetaLibro_Libro GestionPrestamo_libro_etiquetaLibro_Libro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_etiquetaLibro_Libro_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libro_etiquetaLibro_Libro_pkey";
       public            postgres    false    223            x           2606    20035 a   GestionPrestamo_libro_genero_Libro GestionPrestamo_libro_ge_libro_id_generolibro_id_649364dd_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_genero_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_ge_libro_id_generolibro_id_649364dd_uniq" UNIQUE (libro_id, generolibro_id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_genero_Libro" DROP CONSTRAINT "GestionPrestamo_libro_ge_libro_id_generolibro_id_649364dd_uniq";
       public            postgres    false    225    225            |           2606    19923 I   GestionPrestamo_libro_genero_Libro GestionPrestamo_libro_generoLibro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_genero_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_generoLibro_pkey" PRIMARY KEY (id);
 w   ALTER TABLE ONLY public."GestionPrestamo_libro_genero_Libro" DROP CONSTRAINT "GestionPrestamo_libro_generoLibro_pkey";
       public            postgres    false    225            g           2606    19897 0   GestionPrestamo_libro GestionPrestamo_libro_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libro_pkey" PRIMARY KEY ("idLibro");
 ^   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libro_pkey";
       public            postgres    false    219            j           2606    19899 ;   GestionPrestamo_libro GestionPrestamo_libro_tituloLibro_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libro_tituloLibro_key" UNIQUE ("tituloLibro");
 i   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libro_tituloLibro_key";
       public            postgres    false    219                       2606    19931 B   GestionPrestamo_libroinstancia GestionPrestamo_libroinstancia_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libroinstancia"
    ADD CONSTRAINT "GestionPrestamo_libroinstancia_pkey" PRIMARY KEY ("idLibroInstancia");
 p   ALTER TABLE ONLY public."GestionPrestamo_libroinstancia" DROP CONSTRAINT "GestionPrestamo_libroinstancia_pkey";
       public            postgres    false    227            �           2606    19939 .   GestionPrestamo_pais GestionPrestamo_pais_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."GestionPrestamo_pais"
    ADD CONSTRAINT "GestionPrestamo_pais_pkey" PRIMARY KEY ("idPais");
 \   ALTER TABLE ONLY public."GestionPrestamo_pais" DROP CONSTRAINT "GestionPrestamo_pais_pkey";
       public            postgres    false    229            �           2606    19968 <   GestionPrestamo_reservacion GestionPrestamo_reservacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_reservacion"
    ADD CONSTRAINT "GestionPrestamo_reservacion_pkey" PRIMARY KEY ("idReservacion");
 j   ALTER TABLE ONLY public."GestionPrestamo_reservacion" DROP CONSTRAINT "GestionPrestamo_reservacion_pkey";
       public            postgres    false    235            �           2606    19947 <   GestionPrestamo_tipousuario GestionPrestamo_tipousuario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_tipousuario"
    ADD CONSTRAINT "GestionPrestamo_tipousuario_pkey" PRIMARY KEY ("idTipoUsuario");
 j   ALTER TABLE ONLY public."GestionPrestamo_tipousuario" DROP CONSTRAINT "GestionPrestamo_tipousuario_pkey";
       public            postgres    false    231            �           2606    19958 4   GestionPrestamo_usuario GestionPrestamo_usuario_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."GestionPrestamo_usuario"
    ADD CONSTRAINT "GestionPrestamo_usuario_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."GestionPrestamo_usuario" DROP CONSTRAINT "GestionPrestamo_usuario_pkey";
       public            postgres    false    233            �           2606    19960 <   GestionPrestamo_usuario GestionPrestamo_usuario_username_key 
   CONSTRAINT        ALTER TABLE ONLY public."GestionPrestamo_usuario"
    ADD CONSTRAINT "GestionPrestamo_usuario_username_key" UNIQUE (username);
 j   ALTER TABLE ONLY public."GestionPrestamo_usuario" DROP CONSTRAINT "GestionPrestamo_usuario_username_key";
       public            postgres    false    233            �           2606    20160    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    243            �           2606    20146 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    245    245            �           2606    20135 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    245            �           2606    20125    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    243            �           2606    20137 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    241    241            �           2606    20117 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    241            �           2606    20097 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    239            �           2606    20085 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    237    237            �           2606    20083 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    237            H           2606    19815 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            �           2606    20169 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    246            �           2606    20242 4   social_auth_association social_auth_association_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.social_auth_association DROP CONSTRAINT social_auth_association_pkey;
       public            postgres    false    248            �           2606    20292 O   social_auth_association social_auth_association_server_url_handle_078befa2_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_server_url_handle_078befa2_uniq UNIQUE (server_url, handle);
 y   ALTER TABLE ONLY public.social_auth_association DROP CONSTRAINT social_auth_association_server_url_handle_078befa2_uniq;
       public            postgres    false    248    248            �           2606    20290 :   social_auth_code social_auth_code_email_code_801b2d02_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_email_code_801b2d02_uniq UNIQUE (email, code);
 d   ALTER TABLE ONLY public.social_auth_code DROP CONSTRAINT social_auth_code_email_code_801b2d02_uniq;
       public            postgres    false    250    250            �           2606    20250 &   social_auth_code social_auth_code_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.social_auth_code DROP CONSTRAINT social_auth_code_pkey;
       public            postgres    false    250            �           2606    20258 (   social_auth_nonce social_auth_nonce_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.social_auth_nonce DROP CONSTRAINT social_auth_nonce_pkey;
       public            postgres    false    252            �           2606    20275 K   social_auth_nonce social_auth_nonce_server_url_timestamp_salt_f6284463_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_server_url_timestamp_salt_f6284463_uniq UNIQUE (server_url, "timestamp", salt);
 u   ALTER TABLE ONLY public.social_auth_nonce DROP CONSTRAINT social_auth_nonce_server_url_timestamp_salt_f6284463_uniq;
       public            postgres    false    252    252    252            �           2606    20304 ,   social_auth_partial social_auth_partial_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.social_auth_partial
    ADD CONSTRAINT social_auth_partial_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.social_auth_partial DROP CONSTRAINT social_auth_partial_pkey;
       public            postgres    false    256            �           2606    20269 :   social_auth_usersocialauth social_auth_usersocialauth_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.social_auth_usersocialauth DROP CONSTRAINT social_auth_usersocialauth_pkey;
       public            postgres    false    254            �           2606    20271 P   social_auth_usersocialauth social_auth_usersocialauth_provider_uid_e6b5e668_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_provider_uid_e6b5e668_uniq UNIQUE (provider, uid);
 z   ALTER TABLE ONLY public.social_auth_usersocialauth DROP CONSTRAINT social_auth_usersocialauth_provider_uid_e6b5e668_uniq;
       public            postgres    false    254    254            K           1259    20075 >   GestionPrestamo_biblioteca_tipoBibliotecario_Bibliote_23d8d039    INDEX     �   CREATE INDEX "GestionPrestamo_biblioteca_tipoBibliotecario_Bibliote_23d8d039" ON public."GestionPrestamo_bibliotecario" USING btree ("tipoBibliotecario_Bibliotecario_id");
 T   DROP INDEX public."GestionPrestamo_biblioteca_tipoBibliotecario_Bibliote_23d8d039";
       public            postgres    false    207            P           1259    19984 7   GestionPrestamo_editorial_tituloEditorial_1c636471_like    INDEX     �   CREATE INDEX "GestionPrestamo_editorial_tituloEditorial_1c636471_like" ON public."GestionPrestamo_editorial" USING btree ("tituloEditorial" varchar_pattern_ops);
 M   DROP INDEX public."GestionPrestamo_editorial_tituloEditorial_1c636471_like";
       public            postgres    false    209            U           1259    19985 ?   GestionPrestamo_etiquetalibro_tituloEtiquetaLibro_78e74ccc_like    INDEX     �   CREATE INDEX "GestionPrestamo_etiquetalibro_tituloEtiquetaLibro_78e74ccc_like" ON public."GestionPrestamo_etiquetalibro" USING btree ("tituloEtiquetaLibro" varchar_pattern_ops);
 U   DROP INDEX public."GestionPrestamo_etiquetalibro_tituloEtiquetaLibro_78e74ccc_like";
       public            postgres    false    211            Z           1259    19986 ;   GestionPrestamo_generolibro_tituloGeneroLibro_1cb13809_like    INDEX     �   CREATE INDEX "GestionPrestamo_generolibro_tituloGeneroLibro_1cb13809_like" ON public."GestionPrestamo_generolibro" USING btree ("tituloGeneroLibro" varchar_pattern_ops);
 Q   DROP INDEX public."GestionPrestamo_generolibro_tituloGeneroLibro_1cb13809_like";
       public            postgres    false    213            a           1259    20074 5   GestionPrestamo_lector_tipoUsuario_Lector_id_71e59025    INDEX     �   CREATE INDEX "GestionPrestamo_lector_tipoUsuario_Lector_id_71e59025" ON public."GestionPrestamo_lector" USING btree ("tipoUsuario_Lector_id");
 K   DROP INDEX public."GestionPrestamo_lector_tipoUsuario_Lector_id_71e59025";
       public            postgres    false    217            m           1259    20019 =   GestionPrestamo_libro_autorLibro_Libro_autorlibro_id_b24617ce    INDEX     �   CREATE INDEX "GestionPrestamo_libro_autorLibro_Libro_autorlibro_id_b24617ce" ON public."GestionPrestamo_libro_autorLibro_Libro" USING btree (autorlibro_id);
 S   DROP INDEX public."GestionPrestamo_libro_autorLibro_Libro_autorlibro_id_b24617ce";
       public            postgres    false    221            n           1259    20018 8   GestionPrestamo_libro_autorLibro_Libro_libro_id_d0897661    INDEX     �   CREATE INDEX "GestionPrestamo_libro_autorLibro_Libro_libro_id_d0897661" ON public."GestionPrestamo_libro_autorLibro_Libro" USING btree (libro_id);
 N   DROP INDEX public."GestionPrestamo_libro_autorLibro_Libro_libro_id_d0897661";
       public            postgres    false    221            b           1259    20003 5   GestionPrestamo_libro_bibliotecario_Libro_id_7524027f    INDEX     �   CREATE INDEX "GestionPrestamo_libro_bibliotecario_Libro_id_7524027f" ON public."GestionPrestamo_libro" USING btree ("bibliotecario_Libro_id");
 K   DROP INDEX public."GestionPrestamo_libro_bibliotecario_Libro_id_7524027f";
       public            postgres    false    219            c           1259    20004 1   GestionPrestamo_libro_editorial_Libro_id_11c9b532    INDEX     �   CREATE INDEX "GestionPrestamo_libro_editorial_Libro_id_11c9b532" ON public."GestionPrestamo_libro" USING btree ("editorial_Libro_id");
 G   DROP INDEX public."GestionPrestamo_libro_editorial_Libro_id_11c9b532";
       public            postgres    false    219            s           1259    20033 4   GestionPrestamo_libro_etiq_etiquetalibro_id_d7aa48c7    INDEX     �   CREATE INDEX "GestionPrestamo_libro_etiq_etiquetalibro_id_d7aa48c7" ON public."GestionPrestamo_libro_etiquetaLibro_Libro" USING btree (etiquetalibro_id);
 J   DROP INDEX public."GestionPrestamo_libro_etiq_etiquetalibro_id_d7aa48c7";
       public            postgres    false    223            t           1259    20032 ;   GestionPrestamo_libro_etiquetaLibro_Libro_libro_id_c180724a    INDEX     �   CREATE INDEX "GestionPrestamo_libro_etiquetaLibro_Libro_libro_id_c180724a" ON public."GestionPrestamo_libro_etiquetaLibro_Libro" USING btree (libro_id);
 Q   DROP INDEX public."GestionPrestamo_libro_etiquetaLibro_Libro_libro_id_c180724a";
       public            postgres    false    223            y           1259    20047 9   GestionPrestamo_libro_generoLibro_generolibro_id_5ea3a0ca    INDEX     �   CREATE INDEX "GestionPrestamo_libro_generoLibro_generolibro_id_5ea3a0ca" ON public."GestionPrestamo_libro_genero_Libro" USING btree (generolibro_id);
 O   DROP INDEX public."GestionPrestamo_libro_generoLibro_generolibro_id_5ea3a0ca";
       public            postgres    false    225            z           1259    20046 3   GestionPrestamo_libro_generoLibro_libro_id_fe06c974    INDEX     �   CREATE INDEX "GestionPrestamo_libro_generoLibro_libro_id_fe06c974" ON public."GestionPrestamo_libro_genero_Libro" USING btree (libro_id);
 I   DROP INDEX public."GestionPrestamo_libro_generoLibro_libro_id_fe06c974";
       public            postgres    false    225            d           1259    20005 -   GestionPrestamo_libro_idiomaLibro_id_ac1b5915    INDEX        CREATE INDEX "GestionPrestamo_libro_idiomaLibro_id_ac1b5915" ON public."GestionPrestamo_libro" USING btree ("idiomaLibro_id");
 C   DROP INDEX public."GestionPrestamo_libro_idiomaLibro_id_ac1b5915";
       public            postgres    false    219            e           1259    20073 +   GestionPrestamo_libro_paisLibro_id_ecb9eba1    INDEX     |   CREATE INDEX "GestionPrestamo_libro_paisLibro_id_ecb9eba1" ON public."GestionPrestamo_libro" USING btree ("pais_Libro_id");
 A   DROP INDEX public."GestionPrestamo_libro_paisLibro_id_ecb9eba1";
       public            postgres    false    219            h           1259    20002 /   GestionPrestamo_libro_tituloLibro_e4b168fe_like    INDEX     �   CREATE INDEX "GestionPrestamo_libro_tituloLibro_e4b168fe_like" ON public."GestionPrestamo_libro" USING btree ("tituloLibro" varchar_pattern_ops);
 E   DROP INDEX public."GestionPrestamo_libro_tituloLibro_e4b168fe_like";
       public            postgres    false    219            }           1259    20053 ?   GestionPrestamo_libroinstancia_libro_LibroInstancia_id_f8a99d40    INDEX     �   CREATE INDEX "GestionPrestamo_libroinstancia_libro_LibroInstancia_id_f8a99d40" ON public."GestionPrestamo_libroinstancia" USING btree ("libro_LibroInstancia_id");
 U   DROP INDEX public."GestionPrestamo_libroinstancia_libro_LibroInstancia_id_f8a99d40";
       public            postgres    false    227            �           1259    20070 >   GestionPrestamo_reservacio_bibliotecario_Reservacion__e91ccdec    INDEX     �   CREATE INDEX "GestionPrestamo_reservacio_bibliotecario_Reservacion__e91ccdec" ON public."GestionPrestamo_reservacion" USING btree ("bibliotecario_Reservacion_id");
 T   DROP INDEX public."GestionPrestamo_reservacio_bibliotecario_Reservacion__e91ccdec";
       public            postgres    false    235            �           1259    20072 9   GestionPrestamo_reservacion_libro_Reservacion_id_bac09b68    INDEX     �   CREATE INDEX "GestionPrestamo_reservacion_libro_Reservacion_id_bac09b68" ON public."GestionPrestamo_reservacion" USING btree ("libro_Reservacion_id");
 O   DROP INDEX public."GestionPrestamo_reservacion_libro_Reservacion_id_bac09b68";
       public            postgres    false    235            �           1259    20178 ;   GestionPrestamo_reservacion_usuario_reservacion_id_540e2a93    INDEX     �   CREATE INDEX "GestionPrestamo_reservacion_usuario_reservacion_id_540e2a93" ON public."GestionPrestamo_reservacion" USING btree (usuario_reservacion_id);
 Q   DROP INDEX public."GestionPrestamo_reservacion_usuario_reservacion_id_540e2a93";
       public            postgres    false    235            �           1259    20054 .   GestionPrestamo_usuario_username_5c1d1538_like    INDEX     �   CREATE INDEX "GestionPrestamo_usuario_username_5c1d1538_like" ON public."GestionPrestamo_usuario" USING btree (username varchar_pattern_ops);
 D   DROP INDEX public."GestionPrestamo_usuario_username_5c1d1538_like";
       public            postgres    false    233            �           1259    20161    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    243            �           1259    20157 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    245            �           1259    20158 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    245            �           1259    20143 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    241            �           1259    20108 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    239            �           1259    20109 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    239            �           1259    20171 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    246            �           1259    20170 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    246            �           1259    20276    social_auth_code_code_a2393167    INDEX     [   CREATE INDEX social_auth_code_code_a2393167 ON public.social_auth_code USING btree (code);
 2   DROP INDEX public.social_auth_code_code_a2393167;
       public            postgres    false    250            �           1259    20277 #   social_auth_code_code_a2393167_like    INDEX     t   CREATE INDEX social_auth_code_code_a2393167_like ON public.social_auth_code USING btree (code varchar_pattern_ops);
 7   DROP INDEX public.social_auth_code_code_a2393167_like;
       public            postgres    false    250            �           1259    20308 #   social_auth_code_timestamp_176b341f    INDEX     g   CREATE INDEX social_auth_code_timestamp_176b341f ON public.social_auth_code USING btree ("timestamp");
 7   DROP INDEX public.social_auth_code_timestamp_176b341f;
       public            postgres    false    250            �           1259    20310 &   social_auth_partial_timestamp_50f2119f    INDEX     m   CREATE INDEX social_auth_partial_timestamp_50f2119f ON public.social_auth_partial USING btree ("timestamp");
 :   DROP INDEX public.social_auth_partial_timestamp_50f2119f;
       public            postgres    false    256            �           1259    20305 "   social_auth_partial_token_3017fea3    INDEX     c   CREATE INDEX social_auth_partial_token_3017fea3 ON public.social_auth_partial USING btree (token);
 6   DROP INDEX public.social_auth_partial_token_3017fea3;
       public            postgres    false    256            �           1259    20306 '   social_auth_partial_token_3017fea3_like    INDEX     |   CREATE INDEX social_auth_partial_token_3017fea3_like ON public.social_auth_partial USING btree (token varchar_pattern_ops);
 ;   DROP INDEX public.social_auth_partial_token_3017fea3_like;
       public            postgres    false    256            �           1259    20313 '   social_auth_usersocialauth_uid_796e51dc    INDEX     m   CREATE INDEX social_auth_usersocialauth_uid_796e51dc ON public.social_auth_usersocialauth USING btree (uid);
 ;   DROP INDEX public.social_auth_usersocialauth_uid_796e51dc;
       public            postgres    false    254            �           1259    20314 ,   social_auth_usersocialauth_uid_796e51dc_like    INDEX     �   CREATE INDEX social_auth_usersocialauth_uid_796e51dc_like ON public.social_auth_usersocialauth USING btree (uid varchar_pattern_ops);
 @   DROP INDEX public.social_auth_usersocialauth_uid_796e51dc_like;
       public            postgres    false    254            �           1259    20283 +   social_auth_usersocialauth_user_id_17d28448    INDEX     u   CREATE INDEX social_auth_usersocialauth_user_id_17d28448 ON public.social_auth_usersocialauth USING btree (user_id);
 ?   DROP INDEX public.social_auth_usersocialauth_user_id_17d28448;
       public            postgres    false    254            �           2606    19979 ]   GestionPrestamo_bibliotecario GestionPrestamo_bibl_tipoBibliotecario_Bi_23d8d039_fk_GestionPr    FK CONSTRAINT        ALTER TABLE ONLY public."GestionPrestamo_bibliotecario"
    ADD CONSTRAINT "GestionPrestamo_bibl_tipoBibliotecario_Bi_23d8d039_fk_GestionPr" FOREIGN KEY ("tipoBibliotecario_Bibliotecario_id") REFERENCES public."GestionPrestamo_tipousuario"("idTipoUsuario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_bibliotecario" DROP CONSTRAINT "GestionPrestamo_bibl_tipoBibliotecario_Bi_23d8d039_fk_GestionPr";
       public          postgres    false    2947    231    207            �           2606    19974 V   GestionPrestamo_lector GestionPrestamo_lect_tipoUsuario_Lector_i_71e59025_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_lector"
    ADD CONSTRAINT "GestionPrestamo_lect_tipoUsuario_Lector_i_71e59025_fk_GestionPr" FOREIGN KEY ("tipoUsuario_Lector_id") REFERENCES public."GestionPrestamo_tipousuario"("idTipoUsuario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_lector" DROP CONSTRAINT "GestionPrestamo_lect_tipoUsuario_Lector_i_71e59025_fk_GestionPr";
       public          postgres    false    217    231    2947            �           2606    20013 _   GestionPrestamo_libro_autorLibro_Libro GestionPrestamo_libr_autorlibro_id_b24617ce_fk_GestionPr    FK CONSTRAINT     	  ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_autorlibro_id_b24617ce_fk_GestionPr" FOREIGN KEY (autorlibro_id) REFERENCES public."GestionPrestamo_autorlibro"("idAutorLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libr_autorlibro_id_b24617ce_fk_GestionPr";
       public          postgres    false    205    221    2890            �           2606    19987 U   GestionPrestamo_libro GestionPrestamo_libr_bibliotecario_Libro__7524027f_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libr_bibliotecario_Libro__7524027f_fk_GestionPr" FOREIGN KEY ("bibliotecario_Libro_id") REFERENCES public."GestionPrestamo_bibliotecario"("idBibliotecario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libr_bibliotecario_Libro__7524027f_fk_GestionPr";
       public          postgres    false    219    207    2893            �           2606    19992 S   GestionPrestamo_libro GestionPrestamo_libr_editorial_Libro_id_11c9b532_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libr_editorial_Libro_id_11c9b532_fk_GestionPr" FOREIGN KEY ("editorial_Libro_id") REFERENCES public."GestionPrestamo_editorial"("idEditorial") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libr_editorial_Libro_id_11c9b532_fk_GestionPr";
       public          postgres    false    2895    209    219            �           2606    20027 e   GestionPrestamo_libro_etiquetaLibro_Libro GestionPrestamo_libr_etiquetalibro_id_d7aa48c7_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_etiquetalibro_id_d7aa48c7_fk_GestionPr" FOREIGN KEY (etiquetalibro_id) REFERENCES public."GestionPrestamo_etiquetalibro"("idEtiquetaLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libr_etiquetalibro_id_d7aa48c7_fk_GestionPr";
       public          postgres    false    211    223    2900            �           2606    20213 \   GestionPrestamo_libro_genero_Libro GestionPrestamo_libr_generolibro_id_77718efa_fk_GestionPr    FK CONSTRAINT     	  ALTER TABLE ONLY public."GestionPrestamo_libro_genero_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_generolibro_id_77718efa_fk_GestionPr" FOREIGN KEY (generolibro_id) REFERENCES public."GestionPrestamo_generolibro"("idGeneroLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_genero_Libro" DROP CONSTRAINT "GestionPrestamo_libr_generolibro_id_77718efa_fk_GestionPr";
       public          postgres    false    2905    213    225            �           2606    19997 O   GestionPrestamo_libro GestionPrestamo_libr_idiomaLibro_id_ac1b5915_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libr_idiomaLibro_id_ac1b5915_fk_GestionPr" FOREIGN KEY ("idiomaLibro_id") REFERENCES public."GestionPrestamo_idioma"("idIdioma") DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libr_idiomaLibro_id_ac1b5915_fk_GestionPr";
       public          postgres    false    2910    215    219            �           2606    20048 ^   GestionPrestamo_libroinstancia GestionPrestamo_libr_libro_LibroInstancia_f8a99d40_fk_GestionPr    FK CONSTRAINT     
  ALTER TABLE ONLY public."GestionPrestamo_libroinstancia"
    ADD CONSTRAINT "GestionPrestamo_libr_libro_LibroInstancia_f8a99d40_fk_GestionPr" FOREIGN KEY ("libro_LibroInstancia_id") REFERENCES public."GestionPrestamo_libro"("idLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libroinstancia" DROP CONSTRAINT "GestionPrestamo_libr_libro_LibroInstancia_f8a99d40_fk_GestionPr";
       public          postgres    false    219    2919    227            �           2606    20022 ]   GestionPrestamo_libro_etiquetaLibro_Libro GestionPrestamo_libr_libro_id_c180724a_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_libro_id_c180724a_fk_GestionPr" FOREIGN KEY (libro_id) REFERENCES public."GestionPrestamo_libro"("idLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libr_libro_id_c180724a_fk_GestionPr";
       public          postgres    false    2919    223    219            �           2606    20008 Z   GestionPrestamo_libro_autorLibro_Libro GestionPrestamo_libr_libro_id_d0897661_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_libro_id_d0897661_fk_GestionPr" FOREIGN KEY (libro_id) REFERENCES public."GestionPrestamo_libro"("idLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libr_libro_id_d0897661_fk_GestionPr";
       public          postgres    false    219    2919    221            �           2606    20218 V   GestionPrestamo_libro_genero_Libro GestionPrestamo_libr_libro_id_fc00005f_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_genero_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_libro_id_fc00005f_fk_GestionPr" FOREIGN KEY (libro_id) REFERENCES public."GestionPrestamo_libro"("idLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_genero_Libro" DROP CONSTRAINT "GestionPrestamo_libr_libro_id_fc00005f_fk_GestionPr";
       public          postgres    false    225    2919    219            �           2606    20189 N   GestionPrestamo_libro GestionPrestamo_libr_pais_Libro_id_d1cded08_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libr_pais_Libro_id_d1cded08_fk_GestionPr" FOREIGN KEY ("pais_Libro_id") REFERENCES public."GestionPrestamo_pais"("idPais") DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libr_pais_Libro_id_d1cded08_fk_GestionPr";
       public          postgres    false    2945    219    229            �           2606    20055 [   GestionPrestamo_reservacion GestionPrestamo_rese_bibliotecario_Reserv_e91ccdec_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_reservacion"
    ADD CONSTRAINT "GestionPrestamo_rese_bibliotecario_Reserv_e91ccdec_fk_GestionPr" FOREIGN KEY ("bibliotecario_Reservacion_id") REFERENCES public."GestionPrestamo_bibliotecario"("idBibliotecario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_reservacion" DROP CONSTRAINT "GestionPrestamo_rese_bibliotecario_Reserv_e91ccdec_fk_GestionPr";
       public          postgres    false    207    2893    235            �           2606    20065 [   GestionPrestamo_reservacion GestionPrestamo_rese_libro_Reservacion_id_bac09b68_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_reservacion"
    ADD CONSTRAINT "GestionPrestamo_rese_libro_Reservacion_id_bac09b68_fk_GestionPr" FOREIGN KEY ("libro_Reservacion_id") REFERENCES public."GestionPrestamo_libroinstancia"("idLibroInstancia") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_reservacion" DROP CONSTRAINT "GestionPrestamo_rese_libro_Reservacion_id_bac09b68_fk_GestionPr";
       public          postgres    false    235    2943    227            �           2606    20173 [   GestionPrestamo_reservacion GestionPrestamo_rese_usuario_reservacion__540e2a93_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_reservacion"
    ADD CONSTRAINT "GestionPrestamo_rese_usuario_reservacion__540e2a93_fk_GestionPr" FOREIGN KEY (usuario_reservacion_id) REFERENCES public."GestionPrestamo_usuario"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_reservacion" DROP CONSTRAINT "GestionPrestamo_rese_usuario_reservacion__540e2a93_fk_GestionPr";
       public          postgres    false    2949    233    235            �           2606    20152 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2970    241    245            �           2606    20147 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    245    243    2975            �           2606    20138 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    241    2961    237            �           2606    20098 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    239    237    2961            �           2606    20103 P   django_admin_log django_admin_log_user_id_c564eba6_fk_GestionPrestamo_usuario_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_GestionPrestamo_usuario_id" FOREIGN KEY (user_id) REFERENCES public."GestionPrestamo_usuario"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT "django_admin_log_user_id_c564eba6_fk_GestionPrestamo_usuario_id";
       public          postgres    false    233    239    2949            �           2606    20284 M   social_auth_usersocialauth social_auth_usersoci_user_id_17d28448_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT "social_auth_usersoci_user_id_17d28448_fk_GestionPr" FOREIGN KEY (user_id) REFERENCES public."GestionPrestamo_usuario"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.social_auth_usersocialauth DROP CONSTRAINT "social_auth_usersoci_user_id_17d28448_fk_GestionPr";
       public          postgres    false    254    233    2949            \   W
  x�uXM���<�Eç]`L�n-Ӧ�	���A.-�GC�"Rd��E��En���||�c��R�Ijm�0�����zU�2X�d5{_>�B�<�7Y.*4���>��?e�L�����c�}l�c_vze�5[���|�SQm�O��!��u{l�g�Ţ}!�Y���CYȪ�3Q��O�|`�+c�[���;r;���r�Ɋ�M�&?Ɋ�ȭ,�˯��X�M]3�r��0��4�.�[�Xw5�����Id�n�����!��؆ѣ�s|=��j_�,dblZ�7�=��P#�J
6�,�e�����N%G�+����o:�O˃��n��_�:�fy&���$�42Y��+��=f�g~h�eͩ�5GtxW.+��f�=���'')N��>��1�1C�o IYd�Ih�����ˢO��.7�ʉ<r{j?n��o+@3P�� U���\e[|~��QV5���E}�E�o
<�����oS�9�X9[��<Ux)ڭ�	��\�E���g��%͐#K���?D?h<�6j�����E'�FԢ |#�DRx�J�4}��8|lS!B^7[٥Sq�C�k������'�-�l'vW�J:��������C�  Q�ZX��X��!��?�Oj���J�Ŋ]q�K�ycǧV�NG:�M�4�/X����]��gV9�J��߉{��}C[T��W��ڏ�l��N��!�<Cs�S.eHB�Z�W|ld>a($�2�h���/Ŧ�8���]I8����bGA�Ǧ��DV�k�_ M�&}@�j�C�5�c��͹��ۆjȳ]�h$ߢ����AW�9���L��(��%���}}�ˊ�g)r�k?n&wԆE�3F11�^.����@Yey�GB�Z`�kD���H�W=5u��G�w3�E������ovLs��5t�J�ܵث��v"�ꓝg��<$.�u�G$,o��}#��Z��������d��qz3�dN�7��`z�3,�����`���j���EB�De�)^���_�o_	hU��e�~>}EҐK%��ǲ�%�^0�*_��Y!i.��ͳS��1t6Vi4����Q��� ��yr���w��nbO3۳{]7�|���8J����gl�c��F�iٽI&�E�IL>|s��l���-��f�[�l�cC�\�XC86{?o���h�!L_ ������=�a����G0�y偿ۿ� <(\�s_=Jj��VH��~D�^QT�o�
�&�A?����芼��`��F��'�ʮn�P2s`u��E���&RsZH�&C�,G2��8����+G�+i�r���_I�l�l�� +��������4���F~E��ݓ�iY�\^sd�����Jy�D�r�gA�lI�'_% �C�(w���^'�q�U�ݩ�N�4�J��ʋ��l�u���I��4Hf�m&vU��߅J}��Gy�EU�0�e���	^�2r��{Yw�N��|��݃I�$Ї�`o�*��Ƀ�u.�->��d��a��>�|��'TN�9����s��Z�<�hN83���|����(iʞT�IR�rùD��O�X<؞�+-$�����h���5�F��8н���I�R�9ܮӞ/���\D�(��U����^�S��5T�$�|OI"��W��"��?��oEE_o@ѷ���ų���B��8Ô4lw.�0�&��9���Q�X(�J�@�v�����m��@`�rŽ`�FV:�k!q��m��c��=�Ԉ��kv�e^��I߱4���p�,4�^_5ͱ�ii�釚:D-�Y��m�Ⱦg;~�i�Ep�n�JW����\�3�V5M�X-�p���� 	�(����M���K���lJ}f]\�����7��P��E�3|c�
�9�������ho�c�F���n�8H�t�c���.��K�s�e��b�
bh�����y<��1`%�;p�N�(�C���%�g�����> F,��~�k�MV�:x�H{D�w\�qz�1�.��/Vɋb�����K����9}���K�?�-@}`�e�.�A-�ݴ�w߀�fx#s��EV��M@r����/�F�����ZV����M��P�f>��霝����W�k4��|D�o8�Ͱ��6l�-� ��$+��<��
Nr����-A����f�d>���"
<\,��&��[��:t���W��ů���ΰ�7��=$�y�}ǫh�^L&� ����U�R�<8�X#Zq���a�	����
f��H�Lw�4Z��-'}�W[���h����Za��^��;O����R�3�-m乐�	}��v���-�opI�@ݵ|�o{�$Z�|��c�T��/� �O&�Ǻ��ިόm��I@G� ^�#: �	�5Irt����P�5�e��aN/�S�G���j;�	�ED�F�X>	��K��IV�xkCAl��.zn�~���0M�K�,����]�>�=v��>�Gh�[��R.��K�iC�4��ο��#�A���!�u���$.1X��l:�^#l�1*�Կ��Q�t���
O��ߞt���5x1]Eq���@�g�/�C���`�o�}}�%K�7��1+� �L����/ګW��^1�~      ^   �   x�E�Mj�0���S��я��x��E��B��Tu�������z��i�o1o�y�x�S8�{b�`�b�]�̶1�3�Y���e�0Y���Ƨ�����@sR���1h��F�9�	ק�F���Fa�jl@aɳ$���M)��e+T�T&�!�($<��-ln
����_�gx��!� t+ �&-	>��u������M��Y7��^��*�L#��ת(�o��P      `     x�}�͎�6���S�5AI���(^���ݞz�%f!T+���y�>LE�/�Q,;YmP@�d`~���d廢}>�$-���*_������ikO���h.�Jc9�դ�Y���9���fM:������e]x�����D�+��/I~i?=��^2G�:�}��ʓ����0E��t��-Rz��fw�.sW �s�,�VQ�\8M����7k��}\�E�YO!�X�Lh��@��ۆ�m�ɒ|�^��zB*cuĤ���/dL�]h����c��\���Eu�����u�iZZa��	\s7d�k���ο�����"�X'�m���R(��o	K�����U��vj�`M&�ƚ��RTm3�w��K>�][L��VDf�J�0��s�G�sSkP(2����%ɫ��_�-WLH�X�P��/�m��A_���xd���~&4q]��9��a�O��X��eB��E�!M[�O�j��5?�D�X�ݎ��H�>bߤe�?�Dä�b1�D\�gȲ;}hQ�����) ø���k[��{z�������Fk`q����,}��m�/�Zi�B�$`�d��w�ä�a�����GK�\�����j�1��1���PW�j�(<�;��[xTH{���_8��Ӆ�}��)-%^��ң�A��>��U�a�����.#��S�y�	O!�P�L���bD$;��	m����g,�!A��sH�ݮm���j޷��pSX�p���_C�n1L�a��1	$V�a��4�h���l���{�      b   �  x��XKr��]�N���F����d�iKT[�c�7 X��|d��� ^���E/s^�Y`���v�6_�2�{�%�M[g�ݹ,��Cm��vY�(����N�09��@�E˲����2���MVvW�j�����q�m��>E�op�1����߆�ȫ�ڻ��L(1r�vp��FoP>"�۟���,�[���+�IG$��S]��l����k!�+$�Ԟ�z�Һ<�cg Esߓ�*��W{]=����8��!=��m\ͬ���hV�]{J7�eRdI�mΧS�:���fE�m�S�+w��J8�� ui���y֞�@E2�n��xXNo��r~�y���ݟ�2�|��x��r������3 ��d��X?.�W�u�q�Z<Lo���iS�����x�B_�U�&LLș)����<:X�f����=� ��)��i~/P����]�vu��&��_{�e�9k~�s�|����8�A��'a��H��L��Ѓ��:/lEp>�:�"C�F��n���XNS�g"`��R�k��p1�*��9=���bM�:}�a��7���ScʄcA��ޕ�[૳�L�f���Ek�!����4�&�X(�I 3 箈2�C&X1�M��
�Ͷɢ����%dJ儇(�澯����WƊ�1D�uV�T�]U�Y����2��nLE`S��0��j������5{��U��S!8���4��zGD*%5����%+[_t�4)#p��?���La���0jg��v��EH�����|rv[gQ���0.t��������>�:�5w/�ӟ�K��G@g%ar�.g���eUT;�ػjk�2�f�W�%!t(B�-g飦P�]wE��R����F���"��֜b,�.Gxu	�j)0,�
�lm7�^�{�Z�4C�
���� (7�p�v��b��@�S͌��d��t�:��	e�;�p(� <�G��U����pF���Eu���K W$�Z-���1��RE�Ñ-`C����eq��@O��
d��mq��;AN$pCH4w�/���W���`:TB��;���<� ���=�2���̐��A��<�b,H��8�y����H�mj�wм�D|���\�D$A�g��*��iL`��d�X}|Z���f�9#<}��6Zi&I�`�t���N�+���wSI��!�c��|q��&�Lr�,����cv��*�X	�'��O����m��O���I��O>,g��VÖr%	���8M=)A=p��%yg�C�����p�Z���$[6٩����>~�_훧S�-���A�ө1�{�����r	R����l ��xj�O�ڡJ��=M�8 �ݏZ:W���x��Na�,�`ҟ����IϤ4A�
��rX�6��M���(���ߝ���)�Cžt�.�`�o����e'@i�n�$L-%П��/I	����!V�TR��a]���60�����^~�_�`�q�!F�~Y ��
l}n|8ٸ&��R��sԨӋm`P��K���l��2��'Vm��y�uw=V��bB5�/����ș�i��5A��<���>��·��)�;L�����m�x2&�V3�h綹�
��M2��i���o����+d~�	N�³����b��p��D�a��r|+-���\;���dָ&���r��(���u�T�u58D~�R����|(:�����c���1(T��6h]� �������Y�a�6��]93��/Ō�(����wT�n�7�����KJl�oަ�~��kg�x����H���C�-a3�l�YV�I1xY�6�:\��Fk���|}k��#��X���Zc$�����	�7��f��j��F�ſU�^.h����G��қ���>v|F      d   8  x��VMo�6=3������"u3%�"�S�iQ�VV.lɐ� ����9�!���z��P��X^47��7��7��M��"�E�?�d�-��U�SN/��d3�(��S����$-�bӼ�� s~h��vU]��	��*Y������_%x1�^�1�'���B�b���.���gx�?�y�}z���x����2K�b]<yW�U�g9�T�	z�Eh�@��O<��=L'��x2���dz=��5_�p�8�5��mݗ�S��.j�1Тn�@�MV�o��KjBY��\���rb]���d���ƌ�$���eh����#PL1��A�1\���M�5���k�z�P�2d�/N�"��F�4�P]��iS��2�����f[�.�� ��C�"&�$��p��w��={�1�p�n^*��0��$�*eX߷Bד�x��3�	�0Y,g��h����v��h��ܶ���{2�'YU�`�$2⴯K������y@oծ�fy������Y��#�S����>��� [/a��;�Ac��@�Vw�O>ty�׿|�=C��σ\��Ji%e��e�}a+��hȤ�h���:�S���*4����Z���+k_�SF�k��1p")�Rۍ�3Ppf��Njp����j{�����z��>\�No:��8���#��w��?,�Ü(���.�@S�|sgqB�0B�z�།<�:�Di�m�Н�.�~5�"�XhEw�s��=.h��3[�.�M2M��A&%��i�Y��<zg&�3QЄ `$��.�A#��|�?���b>���'(�F�V��s����|r5�:��!��Rf���FAah9�ޖ�K
��ƃea�b?h��o��us|�Q����9>�}j�����+%�*0�aŞP��G[pJ�0AG�^��Tt�
y� ���?�S����,@;��� �[��}=�0#�a N���e�ˇ������H�N��Ħ@�ͿUh�
�R�_�$��2*�N�T�[5�{l/@���+^A�d���k������>���$�m�H���,��oN+��e;X� +�{HLD�~������ n�      f   b  x�mV�r#7>s����*���}���O<�q"ٻI�BIL7��#��Q�C9�:�7��~ [�IU� ��R,ֻF���M,?+"��F�փK�b�z�X�k�:���	JL!��uj�A�b�Tm��o�i�ӽ!%9�U�=�I){���;�p~�#'�_�[+s8~��L��n=��`|�3�,ģ��,řn�;~�d��U{���8g��_�%hߪ��ű8�>�-NęӃ%�q*Ύ��Z92���#Ĺ8Wshq!��YKpz�Lg�+�싚E�a�;����%s��I/� �=NŁ$�8��U�j:K��Y3�NSIʪM�"g��Q�5�CR��׍�E�D|P���mW�ڶ���t..^m_�,��⦯�i+���v��G��E��w��w/Q��K�+d)�ťy�|���+7������U�rl��of�=��J��ŕjM8f&ŕ��6�Ӗ��Z݅��q匮m��n�
��Q5=A��{;PXY.����,�8m[5���l�����Z�����oH��i����6�����3b�����s?�Q� ��v����)�`k{��^��}�b��G�c�B��k�+�7>�b*q��v���g�\ �t:O�'���@l"�Uϧ~-Rp�S���U���5~f������fA��n?rc(~�b��iQa�U=�!\P9�M��RK)n�n<�0�+�b���r/�q�W��k?�&�d+��#�%�E��˜�D�kt����0y@���(�W�=*��Us�~�Ew�>p�Y��4$4�)�*���ʁQ��Y%P�	�ߤ�F�T��.��av��q�yM��>uVU�����
�Fo�9��ߪ���D�%�:�������!E�Sp�oL�3�h����[&��sq��V��*�ch8ߠ x�(��J)���F�+�{������h  w֍ԙgv�e+ ���^kt�V�4������([f(ِ	T8ٹ;���;�f')s����` _{�#'
(�q�1C� 	���d�/z�ʞ��~0�h#���l0����|��&V�]���k���	Hf�;�aŽ�O�X���.�1hs$�טE�r�@���T����I&X�A�����S��ǐ	|�������4�0��]���b<�$��{�a`7|A	��ô����ǎ@�n��Oj���]��D���3�)~��[�б��8m����D��*rAh�ca:L 	�Z���кR�� t���n�'k$b��>��r���?����Z�W���V��-���А@���0-�Z  �T�?l�Q~�m; �m�d�~z�/�1�"�p��@#�1`�����$��J��=frl��ˤ� ��2_Ʒ��L�h�2[�]k�$�>���dx��~p�=�V�����y��
s�尀v+�a�i�XQ�Fo�a���;�$���?�8�n���pz�!�>; o��83[�S7�ZI�{ظ�*�~n�9�=������u����h��#�Cd���|��@�#Nv�X�Kd*	`ݿlkf3��1]:�:��ߍ=���l��7�����u�Jďh���"�,LŏcK����7o��5���      h      x��}�r�8��5�)�� ��}մĒY-�nJr���e�f�$z����\��<���b�I���g�؎�\�S@��s�h����ƚD��M��,'����[|F��9�f�e1W(!mW����\���r��ky�d��jUn؆������q]��ka��[|�/��������/���v�|����؁��	�&�8�s��6����������Vp����ދu�+WE)�ח��-+�d�p�pX4����b�Ӑ��8J���z�sm�T��J�?��b�����Y�e�Cvx_8�bs;\����u�%l��O�V��x��)�,�R����rW�g��*�ve�n�
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
V]ߙ��0�OzjygV��V���x6	�.���4	RӞtml^��dw��;�\Z�<�/�`x�<�>�g������@} l�ᐝ$\X��﫿��o�m���      j      x�սK�#�u&��
i6�4"@�Q2�T��Yr4��#³�;<���֢�ЊZ�jr36%Z.d�+.d��'�K�|��p �U�Y˺�ĮH ��u��;�v�^^���:G�٢*�Eb�^�]�h^�bm�"~��j�lȢ��&=2G�4Zo�/�I�G���82�j����8�&i�4}E�id���G�V���&�2�c�x������dn�E}e�,���˸,�FT&�,��X���L�~M>���D��ۻ�~��1�U�q����c�=f�ɓ��{�����uN�/h%�6;�fDK\��jIO�4t�0�$����%o��~����ϋ��L���&:���{&�3/�,��34�7�<_�8�Z���<J�+�	��<D��8�'�:��sHּ���Jޞ"�i����d2�g��1����4ݫ`g��sl��!�h�M�/he�x#m��	?�]nFg9��<�C�穙共'�F���������/rٶ����O����E+S9�u�&2�I�N�^�nn?��9��*���&i��y\F�s6%��d�l��h^$3~�"yH�&M޻Y��kz������ˀ��A_�}��Zy�?�$�4��]G��k�dI3�t�����۸x��_���2~��"�2-͆N�>��ϒ4Y����<%��>c��M��XTs"��>-�]OI�~K���@�Ȭ�Ѭ+:����SX�M�"��d��e�� ��v_�o{(���WY?��������Z�
�IL�'Ls�[y��lD/�+^�50�UEgy|��Ղ�_��u�=�������Z`�:!�)�yi���5�:��'D@�~����~��/�I\���|�t��}B��'b�e \�	����0}SG�i�h<��z'����?"����i��'�Q�n�vz�-�g�h}�>��{���o�V|�篣W��I4��\�ߞ�F����7��W����닷�ӫ)H�����W���ד��?N�ί�+��vK�c�H4��$��O�Y�&�ʉ.�z�����@x?�O+�\�1p���5�	�{M[�_�5a_F�M��# 2��`�M��D-�eL���~?�4Ŗ��J�Gz.�nE ��㈒������	b1���{�y�@��=K�,n鵁o��ɼJM&UA3�п�(h:i3��H���sH�[#DZ�i$�
bDZ�"��˵	I���^���@�2æQ��
V]���<�̝�.�D��k&�d�şB�U�B��0~*�$��ǵ����ωF,���#���H���fX���Ȳ�'�cx̿iB�J
�4��o������ݗ��&���q�pR�h���Mi�o��:/d�In�'*ʙ<�n���DfA
*?�Y\�a-�w��c\���@�C�m?��yQ"JM����k��Nl=C��f,dM
� �6,���Ԙ���:����v��=����/�^��c��_��\�߼�&޿d�&ƾʣWII����4���I����=�<��91��y�I�I6��]L�u��ڀ�%��j?�(�3Q[��{a�}����J��~|M��,����v(�8"�����O���wru{�������׿n�o���$��e�$����*�XF����ۻb���jo�ơ�����A�ꟶ����;h���	Y�+�s��q $jҹ����`�,�%?��s:�[�x$�WE���3�?	GzS#Zn?�6��������c9��=O�J+�8#pj0��I8�SD�3ְ�J�M)�2ҳd ldC�T�@I�B��`�)���E/i����м��`�� �×��C
<������~O��D���?U��g�A� n_%~�!�z��ɰ�=a�lrHL�����i��쎇�Vםg�hK�?<r�������?ߝ�M���;?(�������Ȅ�MG��;7�tӈXh���=�-j�q���O� �6�=Z�\�+#�Vv�"."�;��<N"���@��V3mpPDz���&��L�u��䘱 ��Qip"Ċ�nY�8�����h�x�C)�T�җ�������l�)�=+A���1Y�UJ7�Ej`�,sj�����l�gD��a)��d������d�c�V�3(shXU���ȔN2u(y �|nf0(1G�f�8�F�!ɶ�X���
�3w���(r0��Z$[z��q�"���i������R$��R�؊���,e��uc�j�X�+�$����p@
����q�C2��zF��JIcH!��j+�����@��Ӹ3�O���!���Ϋm�5>�
��}VMèC>cl�oS����l�氂u��D�;9���V	�N�_}y��r�������9�><�x0:���'��H����u�`��� ��)D�����g����Ǵ����;#�ZG�ّ:G�0���*z9�=?�n&o&���ٛ��˛�w�W�o&��'�vgxҥ)�v�;�(���D��9��G����o��.�o�����۳��4�7�!�~��)�����E���;�|ww~�Y�uG8��+�y�٣�3h�Q�v�9|�C7Np�?�vg|2��K�wa�D:�=6�}�̿yiȬhD���~~y���d��<2O�ݱ�����x��H;<�]�w�'��	E�%�f{8���K�����*fytc�9)�~�u���!��,��Fd\t�O�^�5l����Z����Bc~��o�L7�zB����F��+
��5���-��"�ri�=T�]����s�yb�0�9.IV�E���qRS�!��T��l���!��/�QSt��VUS�02A��]�qd���S����f��)��n�D[ogO���0�u,,EF�Ɉ��nb���g��^T�ICƍW���s\��G&��i&OP��@�&З��/�k����q�kڦ�i���d�hG��q�H:��Q�7I5�#X��D��l����\�6|vP�NAb��v�!�]X�mnؕ�w6�o�:2����۰���w�*�'5�T�0�͈�$�����pRb�b�p�4�J���1������b���B
d����"��9�^zHk��'&��iX��g���@��
�%ފ�{����ū!eS��#���z�{�]��YFN2���{�/Ą,%��9�Nڭ���7>��o�k�f���=폚���5h��&�c���y��������$�o��d~�c�n����S\ *����C���&�i��1�M���s���M���+$D��@�G��D�/!�+��x�&���~U�]'��A3"���"����d�ٔѱ!����*NIฉ�fD/�Ѩ�!�I#�B�C�ހpe�cZ=�7�i�h�+Hl<`Vgvhu��6�k�g$ȟm?,5@G�$�@V�M�y�8f����X���Fg����NҖ}�����4�W�'�gNu��+H�x���]��)x�;z;�V�Xۘb�(���1�R����>�m�IR����;7��R|]�ڙ�?���x���H���ZD�7��*z���^�5������_AE$�T�����Ű`Nt"I�΅�I4�*�AV�Ҝ�N��H�Ί����������}���A�)�̨ҵ��H1��G0�����-���M��C]�a�1I�1D��7�$��K���<n#:+:T�{.zAZ��-�!�����d(���ǐ�Է��|FFin3J����6���A*�ISt	j�>|,I���lb��[�O�w�l,����_f�����:�N4u��#y��Ǥ9�p8�x|�߽��)5:IS�~c��j�~D2��v%M����O���ĪXqv?qҼfSA�ZŊ�P�C��r4�e�AƩ@>~�0�,��$;����RZ<ODf��޳��$N$�Ň��Q�p��Lld	5� ���A^����\ېN���ܧIfHoR� ɂEU^�z�փ���Lbw�3��F5����q��!��Y�����Z�3��O����v[�%|�a�G��(/� fe�Ʌ�p#	��5֖<u���W��	)`0���j����I�������\h��[�$e    c�zΥZ66��=���ya.�� Gv������go)������梥K����K#��J�;cg���!Ar�UW;A�Уe�[C��r�����|K��
�;u��ԧlUo�X�"����6��&)�ND���H�Q)�A[�lo-+�Ǌ4��%�̉�3Y9���P!zV�]@�Z2)&!IZ�rĠi��X\��\eƳ��R�܁�T=�p�G7g؂x�f��.�ɉ�'��;'N�����sj����KObMr�$�j��Â,(��!���
&��K��!hT�BT��cd�䙝�.�7�Y+�a%B':�uE=�`��;Bi:�0�+}R���8�°d\���*_UbZp~K^�:�R"��ҼϳFt���������F�*NSү�ɜ��~���E���L(
��`�ua�6�2y(8Ao56�e��#@$0%���^$u���kbI"�1C��Dn�wޘ ��*s��RϪ��͋i\�y�8�0�3U��P��!g��\7b8G�2�I��0�ZJ�dz�[4��̴��@<��FǷ����7�|T�i_��_�bq��|{�%���_'�:�]m�IJ:�!!u8MQD.TTC?��-��pd�8N��l"�CK�Y��%T�2j3���sЏ`1x�<��R�UT
u��0��_1��*:f�@}ĸ/�e8��<D'B?ùLV+r-C���v�{Q]�:�yq��鏎&g�W���	���W��W��7���FӋhz{��'iUI��RMӅ�ø�M%��I���ԖP�:/2rW5��'����(�y��P�
L�\�ǡS����+-"��I�m��#	Q���Ĝ����I0Q�T��!��bX���y�n�s2�ϫ9��ov��Vw��WXOЩA7��f�l�=��O���w��n*�ۏ�޾��u5�LI�Rv�}�QG������K�'�1���k-5�� �x�Ek��3�U�LPP�WB��jD�Y��K����������8bi�+3iD�>@�k�*��!IC���;���dئsi�i�	�Js���'4�.!c���QP*�M'r%5X{��+���˪L�s)*��_D�Ŗ�>g�ά�-�L�gF��ap����bL��u�6�:c��Lv��V>&�h�L��#ql`h��!x��dpF|Jڸ<�mD�����l|(��v�7��/��Űհ�M�436#S�s;��,�ؔ��S3�*���m)f>I.�!dz�.He�s�
���
�ػ؋#5D��ĳB�ge-�w�^�������,���R����hM���)p#��a��[DQ!��9��W
�`pcr�!��9����/����M�k�9�D��6 U�����X'��jA��p�\Cd��/���Ԫ
8����S�*����V~��	��`C�:6�6vl�\Z���9k����9�2�:M��� b�f�� � Q�����"AiՌ��R��C����̽�����d��������xjY��$�[})�F�������.�;?y3�ܼ�^��D�hV�s�'Iz7p���%A���=������ٔ���B�8�ڕ�Rݒ��!�H8�+	��Qj�a��% �z�ѱ*�4ӛx������TC�I`���<
P��DG]��lڭf�7��,~�K���Κ��Y�G�-�B4;}s>�nϾ���$������������s��H�:Ó�Da�w�'ө5�w�qk9u:71�=�\D�f�����U �v�9������v��$���O�ѯ���5������脚�A�L��!m�ֽ���T����z'�~{,���Jau��no<��k�O������`�����c��~���Ƨ�~�3lw{��ڱ���� ��9�̨C���AyL��k�����|t�&�i��藰o+��8G��b)���C���h�z�@�]�$���Oa����}x����KQ%�����,5�[ �_�F0X� �h=��'�?���zI�ɝ�Q�`mw_Gɝ�������'� >�oH�EÄ��O�6�y'?�4^?#ҧ_�Q�,΋GyLҼl�Qy"X�p����5��s0�E�!�b�f5�l]�҇ӫ�ɫ	���P���2������4{dİ��x�8�o���B+1��A 6�5L%�����{��=�4h
���������9��y�i x�g���� p��Q� �  �K	e+�a��	P����B0�a��Z��!V�J��T5��2��C�EX��dn7��߀�6��@�rx�I�6`���<>aȇ#�{7��Q�����T�^�Wq�g}N�x{���oɹė�ڗ�M6�hB�JW��/;f�����ٓv.+Q+.�Go��[�u�5[�Qo�/���, {&X��0tR��� oX�>o��I�[b��vm��iZt��U,Ɠ�������̫K�Igz�5�(�D����JJ����w߽���kw���n��������7h��J3�S�5Tj�g�R��d�>��at�CӶL��4��hW�+n��+ޕ�=X����p_w�EDr�	�=������A���Ma���1��`�)���ÇR������+�}�����5��n�u`�E�|�n���||vG�pu�#���Gu	Mg���U�4/oK-ag`�h!��|�(F-AA�!ǧ�qs�o�G���-SvG�Ú3����d/}��;��.l�a�����9�H�ņ;U!���a�/�����!Q�h�?����������9�pbh�>������`�h�n^�v�p(Ɂ�h������� ����^���^�\��5j�Z�A��?�u�Z�D��!�Rv��X���۱;]0�p���F�c;���B= ���i��ҠKD0Qd���
08���Ӓ�@>�Tp�p�9N����iC�fyT�,����g	�\БB�Q���f #K�	x�4�FJ�vԢ�G�-'����#���1�ԺQK�p'���@����-�a�M�9�u�{�\��%⸜\M^OQ�����Uo{q���ݓa�3�R�vgg�^�r��=t"��F��i/(2i]���F�:�g���E�x����I�c �kF�V��-ځf��ou�D��'��?��v�L�v{ܪW��z�W;����C7���;�e��_��ϊ��-.$w�~�]:Y �I��6����A�����7�����.��	��?����[_�&�m.*��a�g6�C⹫g^���9��M�P�"W�
��B�J-DW�D���8>�ds�d���˩��M���)���<�$��9�ϴz�3�~h��i	VP���6f� n�B�R@S$��9D��C{2��!ƞGK�I#������~\��^�Ι�AW2�;i�x��{@���_>Sڳ���.�@?����I���sIg&�#2c
��?l���LҔ�#*ͼZ�*nl����Dmg��|��� ײ��El%W���c��� ��[�*6���-�2� NF�L>�������Y���q&��2�d�P}ŜZb�9Y�b?J.Ւl<-sfޑ?y�`:�B�SO�Y�u�9�T��=K�����&�}��zM���y)��B"�^�,4 ���,��"�������\wŅ�Ȕ��3�p4$KM���ɗ3�����˄J�Q�� ��JD�i�f�0�~�H�
�����@���;�,�%��,�e6 ����[����UE��3m�B?����H3�c-��x�E�`�'�49��de��$#k�ac#i���q�e��0e`8ѿ��w�0�Iж����hVTk�.��@'1�}ΐ��e�AA� ����x=@�4j'�8��/�s�r��O�� �i�q�S���G���`k[p�%�uu(�{J4Hi�!s뜅ɻ}�'�F,����#��)ڧ��NR,���R�e�8,XϬH ͓V[��#ʼ"�9��R`��>��ĳ>��J6g]��^$6ϸ��S$*[ѧ���w�dk�Z1lP�u�d��"�z�(��k?pt&5`"����,��W�8v]�~�K 9QpE'�����    �"���~���JU���ST$=E��T�^jKL�G�"�	��iH�,�j�(�4�ա���IJu����ym*��Z�Qd���G`{,4�d&6�[���-�c��Z�(�BbX{�/�f�����Zm�Wb��Р)z��T9�'cXw���{�i�f���v���4a�:�d�]�eF�M�)h�P���h�gN��"�Ns�i��V�\R[����}�$R�ǐ�v��C���r.��L��f��W2�)5c���I�,��r��d�63���TL�:U�L���V��K��VXamd��<q��97bゆ%��r�9��|����.���* �}�2�sr��Mw��
��E�QD�ё"<LR{�o`	���l��ij^md��� �ʀI�V��Ȍ$���o�D����"��"6�)��b:���T�,�$P�k���#��@���gK4�?���A��օ*��Z:9���<Y�G(�2˭��ST�=�K ��	W��D���t�d|0����[�T�6���;
&DX)d_0 ��KZ��A�ʢ�����
�(:%�/�W-rf���I����WCvcz���_9���5'N���(Q\�F��T��� �9��)���\�?��6bu��򦜥�R�$s9O�}*�h����Ԙ���L.����B�B"\�l�"�ɗ��Kj�|EKЧd�e\b�ޑ�H���̸�u �Wb������^�
9�<���]�G(#�21	��Q���O,7D�;L&�Zj��ak����f�l��'L<�V&�񆹬����d�Pi��Al�"��C��3���$--�+����Jbzp�E�Q��x��&�BLV�k%KMr�=���}UJ�W~�M@#Fl�N�\�=~/����4%#�2��!�H���x��
��"v?�A�)�@FV�K�R��ӈ��&I��~}򩕺��.�w���2[�G����<�<�,'���D��TY�w�6��������tշa�ވ�]�ױj�"_V��%5���a-D��j\S���C/��nڈ��/_NhG��\_\�[�+#��
ͧp�I��
�(��A1�����_���ӿ]�&�6�]A���6h�Ɵ�ΐ�ʴ�5d�)�gn�y���x\4ʘ皔�c�}5��?`+��&I�ۂ�N~���<��3�_�C������q��XpvB�Cv-�(Բ��{�<�qWM!�?�W*ްL�*HC�� Q������R�1�>��� ��p��o�.N=�Եڞ獸�UMDN�*m�����u�F>�k��o��I�=�9|��%[�s�-F:7D�2��C@d;,M�c�mj��ק�Fǯ��4r�׏��ϷI�W��)�DT�@1�,��	t���!hܤ5����������6����~9!��t�ѷ�6��������ڢl�Wjr��b3�~O2Mj�^��֟�)��U��r����i�/�H���7⼈c��u�� gZ�GF���IVz�b`!��'<�Eq���(��(;�q�.���G�k��V�r���+���4���T
����� �����a�7�T�����rg2�rDI�Z������0}��d�V�n��O� x|�f�1W��$�؀ ���V��-�ڸbS��ē��	Z�
�I< .�,���m�k@�8�i��څ�$�N�[2��Z��)a�G4�Y�(K7\;��r�U�;�"��B2�/D"���rtx��%#{]03�A��{����%��Yk����+GA�8���%D��=J�-�[�Zhѽ
��^Ň<^2@.Tj�#���N\me1D�wB����s3\x��5�¦��h���d������.*���N��&1E���,�Gj�?h�N]Ç�$CC䬭�0�m�R(�j��T%��,�L#7�����e>������Q
�\ ����Gí��f���/_���N��I-h٧���I��~�]�r���sE�x��'�����K�BUݩ��>}�ŜBط`"�v�n6|���gERsy�����~�*KL�����V�h�B\0�аUʙlDC�B�Q�3S��_�����]Ǩ>��=��O�j�K�YL^��*�j�Mj$�����a
��Hov"�.�k�[��q����S����g��7RZb�Y��jpC��/�)��ČDԠ�צ�Etr� ϊ�@��a^��~(�KrݨS��Ƭ���{m�ac b&�X�6��i\��^�>��7D���M��U24�/���֎('��[�b5�`D�N�0�;��Ì6ط��'-��w�V`���̈B�'��83�o�����Lʘ90�V���SE�P������lWN�l^�d��a��|�����C�{�k��hFo�(;�7u�4�����r��q��ސ�A�䃼�ܮ��Zp��SMh��m��h�g�|�@�"��uZf�L�$& 'sl�C�YI��Z^N�Xrs�}��UN���CZ,gw�̑��kO��i	�����d�A"耶��D,�ja�����ſ�Fuv�<���$�*Qe&��beP���Q�
�GR!.f��MWo�S�&=<JAz�ev�����1	ޯc�8�4��_�3�=!�M[w?n[n��l&���#�7	z�>���+��P#�D��O���/�`!� YK~k���wqI�3<��k�Tt����H�W��t�����}� ��ag�{?�_�`!"�v���+�ң��+�U]b���D+�wA}�%�i���ٺ��o	�o�ӡ���A��tI�y�j��Ͷ�F��H��S��"�}��b�aP�v׀��d)JB�(�3�FuϷ?�ZA���cL��0�	G�$����(�*#b��&�|#�5��=�ݶ4�=�k0� ���@זEA�!�a9�Ҕ�KD�T�K� ���8ORk��Cx��` �Q���=������i����:�8�~����K�*�Ӫ�(z�x6g�%��YS�wqCxbqM�8 ������Y��Zu�F�N%gV�Zq =�l���{{�G���B؆��f��41���2�
u���6(�����~�y��^[d��ń8c��ػ���V.��I��t5-�SR5s���J��;��<a�Fdhk}�x���@Z���Hj!����H�.]�B{��d��{�ס���a��:r��Qm�C��׮��6��
a.�)�=*�K���=�a���µP�~��LKSȿE�2��d݊6՘���s�A	ײ[3Ѿ��?�6s~�*r��/`�B+-��,�9��ҩF´��A�5$�con���	j4����e}%h�E&��+Δ'�Bf��=JR�{��7�P�tֳ�HZ�|����7lC�y؃�V�ڌ�а�q�Z����58��.����9z��DTQI����iS�L<E�T����K�8F��i\k4]�^�.{���6����lK(�B�5=�Rp�
h�(͆���r��������
T�d0�r}m��}��4�
"h�kwk^��gf�:�ag4���ڭ�n�S�-߇�1��
��R�A���0�yI����/&�� ��D,J��?} �u&���p������\��փ�!�ō���I���ɫ���A�ۈX'MZ���M�։ţX���	�E���P�PN�T��$mxI������Yg���]H�J�'��h���g�7˒���|;�T��J+P�`�I喁���N:��\�ȣ�n�9�m�m;�f�B�H�ZL�������W��oI�� ��l�:��z%�c��pn���f
�Qۧహ�����Z��0َ��hTP"�r+P^�-'d�m�`���6.�%���@x�y�Cj�\D������ SI�u��^gt���2u��;~�]y`ͱA9w�E��ya;�b/\-u�G &��lv9��u--]#����*����֮po�7_�W�+��D�*�����%��d�����/�*u����sbZ�}��H���܃����v:�� ܡ�"Q�@�;W&V�BZ	AW	�Ƈ��o�n2�4�X�L+Vb��#9XOk<$�H��v{�    ^b������\s�������ћ����kl(�E�� ��1�KԂ���\P��Mb;�#��z��.S�s����{���5ϻJ�,�Εь�j��f���W\�g"�w��1������)K Y�,���z'��,�V,'wٜ����Â(��!S�@KZ�'
c-�	��[�-�����^��7"q ��,1�o�A�� �����SA�n��S@����\�*�F�H{Ĳ�|�y#����v�%���X6 e|uF3x+�}Em���Y��fr��i>�F`u�aFq1��"�il��� �.@#"�{�����M�_��<���%��Ql/%������#�=�W�!�!M��Ǚlj`�/$��&-^)]��El�2Y_�ܚ�^)))���*�LDF��)�ǲ~�&��>���� �v��A���f��勆��xJ�w���֐�^��e���H��;�Bk�v�x��et3��L/�<4w]�7�V�\~`�.��ƍ�-�3�GŬ�m�ˀAŲ�].y��&�QgoV�aqH]�'��QN��8�>�N���T�wdz���V�A%P�7 ��-�.~��;~���a�y�\p���q>"ڠZ˔�(���!ғ�k���z�v�y`�gM��k̡�hC�a�K頮��$b#mx�r�e���]��{c��7��P��vX�?�W���)�%�S#`�K��P폌#E�<�ֹ$|��r��$r�A�R�������Nށ���v��@���,��d��)�J�^�)���\},�7�MA��)AT���1�)Z�+қ�&_����M�˘�t�x�HO�ܸJ�;�4=<]$%��NR`��i�^�	}�H�x�2ɒsO��;���FgЄ�1K�ɟ����Gc���L��w���^|��]W%�;I:��C�9f�/\a_�}!7R�D"��R�k�9�dV�C��cMP���h<��D�֓��g��`T��}a��"�*������u"7b�KP�˨�O��L�n{8�Nh^�}bt��!H����Q��p`�s'����zXsʺa�����K�Q���O?R���������]ӊ�	��H|W���,��y�-5wY{c�Л;|k�u��ەp��
��^�x}6�e����5��E��s{q���4�-+�������K9� ��E��%��i�b(E�+Y���,�T��h+��XexAS\�u���?�_�!H
��k?��@:�b�V��
����$�ssx���g�M�#��q��g�H����Ƭ�> �9d%�R���㯫�k�#v0��zeUhGK��%���%��X�i�&8��B���ֈ&lC�{P�����묋�w2�6���ƾ;l��#Ϙ��h�S1�ei9��#���c��'<,_��'W�z^��"W���h��h� �& �g���Y�
���k�"OVDgR��;����0!|։���6�
U��mN~%�� z��بO���Ĥ���I��Kk�8�m�V�F�w��k�U��}����*k�âgO�e\�ۏYt��[����' ���W	rc����:E\��<�}��]�Mx�n��I��l�T����9,r�ę��qZ����������䊟8|s�3N��r	�ל�!<?��Z�l�0_b(�,P�� ��_,��,9(P�"�N1�+z�{z� /��NHd�m�[��v��0��$'�]hW��.I/!�oj������-^.aJ��\WV�sI��w@Y�En���7�{i��?K��4�����1*x���*za).@��p)�,^ừH��~�@��aD0b������%[����:�������n����_�6��l{rz�O�)ْr��`���k7��N{/4��*�q��\�e=��z%l�X$�N8��ø�����B��6��o����UڛZ��l©D�kJ�T(뱐|�T����Z�8�q_J߬W1�ttR�jjqz	K�~Z�>G��5^f��f�����fs���d��֦�Y l%ƶd������yL���c��n�[�e����jc��=����g�����[���e���u`q.�ԅ!1�̓�;/���}���ی�r���"�|Ԑ�-�E�jM�%a�1�Tt��j���`��Vcza+��4g_e݅m�k�&s���B%��gE��y�[K�J)w��Sߕ]�}�M�0:U�1�oo�^p�<F3U\�Ѧ�Zu�%�-b+��%U��˲@$��+�������Ły�g��Z��+��,P��d�U�:�N�?��Bu99Fǧ���d�3�IʁͤF?!)���<�[����}M�^������2	�*��&�Vn&Rj��l���\�wK�z'�h�Ó��	ʺ˲׸��K���t�Y�N�6�B��ݶ�"㒛��]��K.L��s�p>+S�2ܴeGɎ�F�ۖ�����V�����eS=p��<��^��O���oڱ)zΚ����rt0��l�L�b
�f�ʂæÇg���M������K�)�aj�5�;��Dco�8�W6���8JHvrذ�]�BH�wA��T�%�e�CN�sI�ɵx�R�9����W����.���Gu�&��N@Ҏ_�3[WO���nxrduj5RpU��An���n'bs�\5���Dc{?e�J�t��-*qZ���jzӈT/J���s�C
 �x����䬁��ǻ]�_%h��ܓ4�W8���h��ɗ�W��;׷��"�eHW�KRHܒ�>��y�U�%y��?\M޼�&W����˛��v�E��9g1�f�����`߲�-;Hq�<#�3�Έh�(�rwB5|��"هK��-H��\4]ũ��� 0����� � ��X�m>)�2<yȌ�=��b�I�eȡ��M&�U�,����e���J�%����jn�}y�<���4!��]�L��a��\�	U{G��Y@�T��4�x9�) Am�Z�.-~6.��֭ա>.(�o	�ݢ��\���dK�Ξ��<���Ԗ6m$��������|�`�bw����F�ʵがw�@��0[�W��?}`��ɼ�F<������Za��!�\.$��Z��u�rU��|�]OF�D2���ցX�fa�����t�=�t��n�zN�%*O��Bd?%ƂnA��űp�Хd���6zy��L= �渭�Eֆ�ɥJO�6V�ht���r�6�Im명[G��&=�8;�%�$�]��=� 470�hGFv���V������_���_!i
����	����G wL�w����
�#��!�Cb�x�&���a@��_��NA�|5�5��A�&�\��%���Ƴ֛4���Q3=,�a\M�V�R�}�5ԁUj����f��8H'R�̦T�{!����K
�B{�j�9h��3KDhb��a���mJ��b0mw��`5/�-9�H$)DfA++��N�PcqZ��̰�������q}>�@6K
jY��r�&I�K;~�J�bo6��Ǖ�����D�LpXp��μ=�p�휌[=n���&�x��Npy��mw�a{7�}�gܴ��f��[;6
��w�J�ųw;
m�K#�y�A�#C�P�(�E�p�k�Z栒@�!=�cFN�G7�b���،��Te�;)�C'U��c\Ї�i�B����"h!o�r�UR;�섩�:(��cpW�������`��'t>��?��� �ݠ��y/R7�[����jv��wip �G c��Ĩ� �(~*�*V��+���R������
�3�I�ۤ�(��	jX�S,�Yc�w_�h��J�Q�'i���r���u��i��ַ�V�f\}ͮz�x����/]�v��(`����P��/��i�V6� \NMЊ��M����-�pt؟_m��yx ��~g��B�]��"�AH$�K�r/��e`�Y�t�
��J*���Eɮk
�6�ڽl[o3�6��>�@4�<�XyRB��Z��[H���'^��r����7�S���%9v�J�y�N�tl���TEա.�m�Đ��]Ok��o�0qf��46��@z:�^�T�H�T��~_��O8�`�CJ�mfu��#�0���/�k�����$�� �  �qQ�C����pw�G��<�Ý�0f^��5�qլ���j ��h�oǣ�A��cmF2S�h�|�24�8��67���5Ԫ��*mrk��7o�_^L/'|��������mC�2�^_�E��魿W��%�{��\A�}�X��hA��,���o�02���.p0Ꞑ��Jmo'��j�AZ�3w�T�-
��ڭ3�	�^�]FS�ѻ�ѹX2�r�@I��l������Epۇ�
DN���{A�s��9˕���al��0Su��.W�W�vB���Q��`r̵+lP[��F�n<3��a�ͷF���T:��MN:T3�q�Ś{%x�`��K�:,���;)7�Jsw�ڼ�vz+�I��t�����ۏ��"��|K���̴��|�Z>�3�<����6A(Vp�Fn�,�����ͮTt5������m���#}��;�x�'��ؓx��?������%ƊecB��}���z�gH=���]�ǭ��:��)Xm�Vђ�$��F=/�$[dv�J��L.[�z�b�"�j�e�Z�7�:�b�u���� >�_����� �-��ă�5���!N��D�6�×��lOt��	�mP�R�D��*������~����^���>����7l�v@�{�pP��P�b�9K�ik��2Yt�mX���/$t}��K� }��,5��j+/����C[����8#'w��D#�<��{�(�ND:�d.`�!����{6p�����!��$%&������H����P�:>oߠ����Fk�W1K[����7o?�����!��p�%��`��H\�O���Y������m��έI���jc��9��5	W	����������Ǧ��ؙzkň3�y����k���=h.�Y�l��`,��wl9��9j�ۣ�\���ޙ�,ɭWD��$�q�7��8P!�_�j&��
6CZ3��sc�e+6�����O����x�P�{E�Z�[:�����(�o��p�,��?EfJ�OCD����Qw3����qm�i��Q������x���2i��(����8,p]}`����{W�,����W������zGO#���V{�������Ԗc16a����a3�Mn�+�����M�ʁ��D�܂6�g@߶N��x�ِ�Ͽ,�~����ā�Q�#��u�ԉ���o�A�J��b�����g�#/6^�e���T��=Ӳ��g���jb�VJ��������1b��4���~�`��ၴzl�#6S$ѹ{��2�����p�B�?��c�5Ծ���h���������`^�h�Mpe-����"{�ԋϭ-�^KHV�X�x�@��E0HY8Y߃m 9^��6�Q>{ ���7��m)���Jl�ܚ�y�3�X�8�&{Y�1��9��&�ZYd��On[^$AM������H^��LG6��"(>��]�h�]��ٍh���������>hiۀ`MG�.%�CH��v~P^�l&�Ci�<�}�!G���r����/z~����D�jr��e|��^V�d�֢y�]�������4LG\H;�9���ooJ�Y4+����4E
&@ު_.�~+x�їI�AR`��qRz��[��Ҧ+� l�,�O�"�t�;�z�]�����[@
�%Q��q�������r��`j��x�����Kߴm���Z���'���2��N��S�NHMJ����ϰ�����j�D\�����(�:O4���'fu�Sv��H�O�~����{���XoyQ�Z&+nރ�p,�ϫa4�ӵW����~�.��ƹ��G����ZcI�m����tU�A4>��ih�zݑ���;vQ�����`�k�E�Ƙ��m���4A����+�P]^�����H' ��6��x�0����a|H�W|�FC0k�$�y'^Dȸ�A��"k����l0��!�r�f��Z�|��!�Zع��8�$}k�ڡ��O�=��-�<hc�s�"Hs���DB?�m���� �u�6��H2���T��tވVH�qmKTM�59��V���yE�z]Ho\m�Ι��x\���+A�'��{�^ʶ��S#I����X�PZ*��t���wN�̳���?{�na)/��Ζ4���b��w�����(l���big�{�HOv�	����h\��-ך�X���za�3�x-�E��A4W[�݄�ťx�>v��.�T4K Paˈ��u8F���0�yP����.����|J^�Y�Ԭ�����#��\�܇�^�¬��&@W����;b�RJv�4�����F���%���� ��茫��G��^»��T�ho�W�H����) p��o��ex� ��fB�P0.�ϻ.��@l�L��p�lJ��w�G]t ��>�vkW͌N;��p���{{�NmI�p�^�fK �\(�661ȗ�	�pWcR������õ���QO}lX�k"���q��JQ�c��d�,V��u�F^zHm��Thkq������KT��LL�_��s�_h�n�
�§sia ��yi���Ϲ|x�=Q���7bΥ�8:�+V��%%��i��Y�������hr?+��=�x�����6��nu��c<���Q�;�A8���v^l��6K�k�WKd��@�F+�<�+�O�4�B"���@�l>V��c���w�mfJ�}n����5ӊP���!�/~!ۥ[P�~�5Lh/lV��(�\cd���!1�Vf>C=�'vÝ�@�J1����H�T��&�K��������q���ً����7��ڧ�4�Wu)b*� ��X9��ȉ��"�2�S">�N��:�#wԢ e�|Z-@�)��2�$f�YZ6�]�j8��aV��H��Dsں���i�a��#�Ց�JU�!���*�LY��v�8�N������}28Xځ����~��m��>��c���������-��      l   �  x�%�Q�!��0��.{�sl5���T��������=�e���X��vϊ�aBg]�k���1��2��6��kB_τԡ��4���K�e�$���xRMO�0�f�4�$�z��`����P��L�{��lr�i2�)1��lN'w�'�2dG��8�B��a5&5V&����\���-�V{},�N'E�1�/�c�(�O~ޟ��;,���u�{[�g���M\�5_��\��r��U��B������ٹ�V��/g��qV�/l�.V��鏮3���Л�KM����yt�����:�
:CLV��
㴍Qh�6A����9��W�0�q��V`F�^�r���Pÿ��$P[���Y���#�hAe� Pm�x��p��0��P���`Zp�/D�V�ۇ6��,t>��q�?X���      n   �  x�%�I�E!׾�t(8�]����Y��Ddc��F|c� 
��v,�.��h�%gp�"9'��/2���I5���k�Uv�A/��y���悮�6��搕�+B/&��- cY���S�]1��xf�D�ބl�5 	>�%K �ncZr�`�[�Ƨ���D�X�5�kNC|�'e�8���K����UȈwJ��j'Z�/�b��"��+G4�R�<�)��k��=/D�YT�wLz["����vwo�0��Zٮ<8����gm�%rڮ�d���^�n/��� �p��,�~o��"�UI�7�q���R��!K��ܖ�&�D���I�U�(��.vw�V��['�ۯ:&f����N�����=�K6z6���,�tv{I8G�z��"�W�q�@��dj��Ԋ�,��v�7���ݤw�}�]�w�(M�یt�Ib>h�H�[�2��p��ƛzJN�$Dn5W�$4�#u������[ƎE���8������W$���g�?�ܦ.H[�-�� qԃ�Q�DDd.��S��t��e�;�� y��~�-��w{D��.d�&"�P����JW,���'["���>��Y+eu�L��	���41V�O�������H����")>��6a*�dהl8��h,��B[t���e�Fʶv�L�#;�{M�et��0K��K�k����23���[�(�ƨ�m���6� �΂���"�$i]ĵذ�/�դlPj�~jwC%��d�ѩ��-�v������p�      p     x�%��u@!D�PL�T���_G���m��!l{����Vw\%W(kY=\Q��7�c��q!B�U��eIy([J��H*��'��)�m�ָH��y	��|�ဌ���La ׫$�/���%��Œݒ�����$�3��qd�$6�Z��Ħ��>��ۤ�3F���!f3`+p���K�4�|_T�Ҏh��0C?g����y���^���$-���5}e��i�V��1�a�W5̣�g ��!�o �_8���x �'�Io�/	J�8D��@�<�x�@��#*��^W�zq�'�F��������$�<�5pp*�t��}��5 Ӫ�8�X~�v�n}���+�h#�=�`a6��R	n �ksr�jP�l��`��Fc�w�ݎ�_�����䬙�,aͯ�E'� ���G�D�����*O�rJc�N)��C-���ɸ��9��mIS-��WI{ƾ
(|����ZS'����401���8����#��      r   @   x�3�L�4202�50�5�P04�21�2 rM9K8��Ѥ��L��F\&����\���c���� ��P      t   a
  x�}X�v�^KO��{�1�@��١�!����u�����$�y�y�^�"�{f�[^�~%���.�&'*K���~�M6���J6��-6>+#J]x�?��������<�>v��X	��
���\�;�p�Tf�3�e�l're�K��9�z�%�D��R�L�Y�"�}�I��ny�A{/�M���ϼ��mG�r+Y�f�%⬅78K�����l�AU���My�wk�9Ɇ7a��vvuǛ]6+Ȫ˟d	�M�*�N�����d��cC]��0��U���f8��>#h�m8��1��D"��d�ˏ�cI0�V��xQhNx�av΁a�[>n:��E���աcU~P���V����:� ���Rg�|�A�%o�ziΈ�50�-X�Kp-�cކ�:S�N�-o�Z#
��r��-�B���a�*:Ô�}�7�ճ,I��m�ˢr���6Y�	s�io���j/i���=6����;֣o��،��;q������s�c�!%��4���	��l��O�
��D�ԫ�6�~ߊRx�E�|���f���U�G-��a���ȶђ�]؆T��$�G���t�܇����7��~�V�v��y��F.�Fށ�b���4�b�;��'���a=��wڤ���m������t�?�;��oƼ�e�jW��9�����'n��c7ȑ���x�N����Q�Wdony�aː0�y��&�+��z<�]4���N�x̻m6>���1y�Gf����~������S����Q�����w���I\�c�	�l\*�ty���w{l�r�W�k��Ӈ�+9:��Q��j�p�,x�d������xp�|"�&|'�<h�����Y��g��]����t��ʵ�$��BC�KG�,����=V�EP����|�a>>H��!�5Xxrx�S�k�P�лJA�3�kA����K�k��:�BtZ�[�܂Ƽ�!��UO�`��n������~�=�m��<\�^���%��x�sx��������$�G�9h{y��~�$gZlx�Y+�4TE!*���~�
��y�ͦ(_o�?�L�-Ω���ot.2��ӈ�;t�P�)��j�p~L׼��P�卖��ǦU~4.���}�x͋�()dI�
�4a�6�gK�]�>B�1� l�E�K��� ������R���v�!�F��pbO�4#��@��4�5@N���(�X�W �F��ʚ�f �F�ͥq�4�ՠ�9
ޕ��H���1�F�\<�����n�EM���ge@�E��!�j�;�bwM!��.���,f��=�6�o/Hs�ӈZ�����X�gi7 �&uL� �N�MI麀E�ҏ.�4 4٢����D�zo�B�k[�!�?�U|}�TN]
k��B]^�0�P�C�d*z��ڻ$Y� �R����yQJ˷K8
fM��"�;��s'�/a*�u)]��R��QVu��vY�!ϻ�X�ZbP�.嵡.��t�[�5,8�Tұc_@�b)lBE��젟�P���F:��h�&D�EE���&B���&j���(�#����<�fE��NK��P���|v7!��ֈ�إi�P�d�^X�HAp+������v�D���!����,/PR��H�,G{�%P��c{e�a�����6� v��⛵yz�.?�p5a����"�b��+���+J�)n�ŹF���q%���"{G'F@����(	�`w�Sr��Ψ��	��ձΚ ��@���$B��bW��V`D��6�1 ��J�> 
���m�1*j�1����z����ymx1���et� �`Wh�g;���/HvE�-��u���+ɭ�Y@Vc��S�NO+xIt�2�T��
)�]�����B��uq}��
.�F��<M�@��\[�� �A^�r/��rd�x�-5�e��ȷL��b���Ђ���p���5�7"7,�+$O�\����B���?�ןS���*Wδ5�!�+Li���-r�׆}Z��6�dI��.׈8y]�aZ�x;�͆����VBB�k�&�`�'�m��D��O2�l�M��}��-�T���b�o��x��7A�@��C�3i1K�>�m�~��#A���aH�����[$^��6Ǟ�;&~��9���(�so)�S�7H9�����:�3�A� /�$� ��s͉�-䍡��k|k��Rz��F�{v>JRl�<
���X��BI��L��;��Ꝏ�{��i�����"ל�>��N�������_��«_���zlxR��٩����9�NŇ�BPv*�׺UZ	&�>j(�����G9��tA��
�	�d�6� nX�HO��������#_i���)��U���8�{�:ʠ���	OAO�N8�/�:���@�"�շZ�>��M��f A�m�u�o B�R���v�S�aD�8
�$������� d`���N~��A���#U��4]l1��� ��ڶK�-^��J�A�u�~ݮ�+�|�|E"�[����Yd{y��-�__�?wN���w������m�'?������-Q`+r�ބ�vA�݁�%�*+[Dw��B�~8�%P�8p/϶��p��]�t�G�0������g9|A0�aL����9�/�E[T      z   T   x�m���0�w3�r������_�_������v5��#:t�K!F�Zz��/g��|7�Q��Yf���Ñ��:=�Zd      v   P   x�3�tL����,.)JL�/�4202�50�5�P0��21�2�г0�016�50�,�2��IM.����L�������0F��� `�v      x   �  x���ao�0�?�_��-b[
�%�
"Ce"�i�TDT�ܯ�U3�L���9iCO��>=�d��b���*��TG�Qܶ���c��Z���1�|6t;��
)3���:�����u�"�μ8,�G�!�(7䐠�,dSJҀ"X��"�3L�(��n����~qN^�_��s^`N���)J�x�����ŷ��*�Y��@JOB%(k���6NE��?�������%��^���V�q5�j=gȵ��[t��ͮ1S,C�A~(W�mZ����*-������P`vH�1/��䱂1RN���<�_�1#�;h����Ĝ$�ҏ�pWez��£�&�1v>:���*oA�� �x�/2=�ȼD(K��  C�<n�w-����,�u�	7�F���N���wSi������PB
Q�N�GZ�����kQ��E{"f�`�Ij/�JU2V�E�;б�$Y�e(ۈ��I*���xH�\kL Cx�:�逡?v����e����9��q�yP�y�_hȋ2���;�	���)��Va嵞�����D��,�{��a�	r��v��m��65~�Q**�U"�T!�^�0p���N�r/VWs�6b���L�U�x��<NeA�׃blP�*`��o�w�V��'�#�      �      x������ � �      �      x������ � �      �   n  x�e�ݎ�0F��S��B�?��#��Db�tV���c�w�s,(����ݍe�x���Q�q������5-]MH�ٍ�XR�L��~E0�l��`{A�V̞~�
����IM�b� d;�^��,h؛*I������<��ř鷫NV.��#�uJ�0R�JȂ��b�O㺽�r�y��!.�W5V'��
�ֺe<+Qь&_`�b���n[敫nVV��nc���'US���Ĩ{��\�}��YQ�
��8 �r��L ͎�6�@�T-��x�C�V�ws��+�B����g�����y�b"�7�~�kr�#l�������d9�6($ɢlkP�(���4Y~_~����GM.���:4$_쁄z�8���:� �I���'���D��j�B�r:�-� ���3��a�ǙfaMdx��+�x2ŕk ���h� �J�]�L�!�Dh��o�HQ��(�\!S$�LA��J'$S&J���	M��x��7�BlH*����D"c�"DԈ�g�(ø��؇��5�#U�61챊��=�b��6m�L��AL���م��⩴�v-�#m�k��D���N\L �~�RЮ~�kxN�ky� ��)�׸�.���4KA� o`Gh0��qRX�!X<���|�]�����31�	�)������O�*3�䮐�fC�!=Ϧ��$e4���e�>˕�xꘒ�B�28]F,9��t��	PF��e59���E}��û+$'m˕s' 9��K�F�Lr�>_+�]M�8����
Z��E `�!+0c"!I�M��Kz;�~��,����Xޫ��$���,%�>��Aj�]칛�8��]�>�X����p2
$Ñ�
�p2"����ed�~9��&6�~      ~   �   x�3�4202�50�50R02�22�22�303121�50�4�
�P�u�q��r�	r��Vpv� R.�
�@A�`���j��ļ��%+�j���Ԝ�b 3Z�'��D!'?=3O)��6��МӐ+F��� \��      |   �   x�m�[N�0E��ŠI:�
�eH(M�b��!��=n�|ž��&��i�d"ϘZ��3��7��,T+q�aW��=��NMJ�-c����T�:�O ��	k����^Gq�4�G#q��1<*�I7�W�}tl~�mO�@��U�&�Ńu�D���>��?�$I
$C/�"{�`�?�2��7�v�is�����껽�ʲ9�N�>�b{���� O���)��r�-���
pÁg_��B/w �t�1      Z   T  x���[��:��3���A��f}=( ��j�'��e0��Ҳ㸱�d �b���'e����j����N� ���U_�z�����q/�^���7P/�;4�>�����G�X��H)�v�<U��!$I;1��[��9���o�y�>}�CYfR�682ԍA7��pE�?�p�Mu��dYFjcF��l�����ğ�)fQJY���8���Ű�I�6b����c�/�=U]7nb\џ����omQT� �PnAь:��S���3E���k�xK�4�>�(3�D�C,�fԡ��jU����I��W
.���ڥ"�T~T-q��KZ fN�=�U���ab�6�?ŮǬW� L�r�٬8d&���DR�m$z
�,�ԂB_QfԱm��Sn)tSF�y��Å���6�+G��QBR�law]�_|�ThD�Uu��56!+�c+�ڪY�w��+��P{�r$����ҵ���:�g+��J7�E-��5F�a�	�E^8�t�Q��$b�~Y/��d_��I�U )��0R�� �	���	$s s�V_��%�f�uf�]����V�*h/�r� ���k���� ]G
(��Ь����m�����{�qr���_�Y�Gӎ�:�����] 

����}_	���:�śB�D� � �|4% �g��UV�{�ZA�����N&a��3��/����/��ۂc	�������>E����~�"$�n^^o���#��32[�[�p<+��ǲ���d7��CU��_�2~d���S=�6��+��	[�3��Îƴ)���-f@�
K�b��3f<���%mQ�?c,k5��xyy��D4      �     x�=��n�0���)���R	Kv%Ҕ��@���n�Li)j���ӏy��\|'��sn��ץ7V�w�G��d�h��)����8S1�)��$jH�*{q�ƉY��G(U/-�̺!�9��ru�(N��F%�}]�fk����8�[��[N���
�UE{nOF�s��m3��9Ϻ�W)v�^�O?)4�p�:�$�q͐��*ݿ�$�5�=�:��fjaH��fUN2[���`�v�L"eTZ [���Y�~D3�0��p��7���)�"��Q�s�y�/�h       �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     