PGDMP     4    9                x            bd_sistemaBiblioteca    12.3    12.3 �    [           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            \           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ]           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ^           1262    16823    bd_sistemaBiblioteca    DATABASE     �   CREATE DATABASE "bd_sistemaBiblioteca" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
 &   DROP DATABASE "bd_sistemaBiblioteca";
                postgres    false            �            1259    16824    GestionPrestamo_autorlibro    TABLE     Y  CREATE TABLE public."GestionPrestamo_autorlibro" (
    "idAutorLibro" integer NOT NULL,
    "nombreAutorLibro" character varying(100) NOT NULL,
    "apellidosAutorLibro" character varying(100) NOT NULL,
    "descripcionAutorLibro" text,
    "fechaCreacionAutorLibro" timestamp with time zone NOT NULL,
    "estadoAutorLibro" boolean NOT NULL
);
 0   DROP TABLE public."GestionPrestamo_autorlibro";
       public         heap    postgres    false            �            1259    16830 +   GestionPrestamo_autorlibro_idAutorLibro_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_autorlibro_idAutorLibro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."GestionPrestamo_autorlibro_idAutorLibro_seq";
       public          postgres    false    202            _           0    0 +   GestionPrestamo_autorlibro_idAutorLibro_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_autorlibro_idAutorLibro_seq" OWNED BY public."GestionPrestamo_autorlibro"."idAutorLibro";
          public          postgres    false    203            �            1259    16832    GestionPrestamo_bibliotecario    TABLE     C  CREATE TABLE public."GestionPrestamo_bibliotecario" (
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
       public         heap    postgres    false            �            1259    16838 1   GestionPrestamo_bibliotecario_idBibliotecario_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_bibliotecario_idBibliotecario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public."GestionPrestamo_bibliotecario_idBibliotecario_seq";
       public          postgres    false    204            `           0    0 1   GestionPrestamo_bibliotecario_idBibliotecario_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_bibliotecario_idBibliotecario_seq" OWNED BY public."GestionPrestamo_bibliotecario"."idBibliotecario";
          public          postgres    false    205            �            1259    16840    GestionPrestamo_editorial    TABLE       CREATE TABLE public."GestionPrestamo_editorial" (
    "idEditorial" integer NOT NULL,
    "tituloEditorial" character varying(200) NOT NULL,
    "descripcionEditorial" text,
    "fechaCreacionEditorial" timestamp with time zone NOT NULL,
    "estadoEditorial" boolean NOT NULL
);
 /   DROP TABLE public."GestionPrestamo_editorial";
       public         heap    postgres    false            �            1259    16846 )   GestionPrestamo_editorial_idEditorial_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_editorial_idEditorial_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."GestionPrestamo_editorial_idEditorial_seq";
       public          postgres    false    206            a           0    0 )   GestionPrestamo_editorial_idEditorial_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."GestionPrestamo_editorial_idEditorial_seq" OWNED BY public."GestionPrestamo_editorial"."idEditorial";
          public          postgres    false    207            �            1259    16848    GestionPrestamo_etiquetalibro    TABLE       CREATE TABLE public."GestionPrestamo_etiquetalibro" (
    "idEtiquetaLibro" integer NOT NULL,
    "tituloEtiquetaLibro" character varying(100) NOT NULL,
    "fechaCreacionEtiquetaLibro" timestamp with time zone NOT NULL,
    "estadoEtiquetaLibro" boolean NOT NULL
);
 3   DROP TABLE public."GestionPrestamo_etiquetalibro";
       public         heap    postgres    false            �            1259    16851 1   GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public."GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq";
       public          postgres    false    208            b           0    0 1   GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq" OWNED BY public."GestionPrestamo_etiquetalibro"."idEtiquetaLibro";
          public          postgres    false    209            �            1259    16853    GestionPrestamo_generolibro    TABLE       CREATE TABLE public."GestionPrestamo_generolibro" (
    "idGeneroLibro" integer NOT NULL,
    "tituloGeneroLibro" character varying(200) NOT NULL,
    "fechaCreacionGeneroLibro" timestamp with time zone NOT NULL,
    "estadoGeneroLibro" boolean NOT NULL
);
 1   DROP TABLE public."GestionPrestamo_generolibro";
       public         heap    postgres    false            �            1259    16856 -   GestionPrestamo_generolibro_idGeneroLibro_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_generolibro_idGeneroLibro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."GestionPrestamo_generolibro_idGeneroLibro_seq";
       public          postgres    false    210            c           0    0 -   GestionPrestamo_generolibro_idGeneroLibro_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_generolibro_idGeneroLibro_seq" OWNED BY public."GestionPrestamo_generolibro"."idGeneroLibro";
          public          postgres    false    211            �            1259    16858    GestionPrestamo_idioma    TABLE     �   CREATE TABLE public."GestionPrestamo_idioma" (
    "idIdioma" integer NOT NULL,
    "tituloIdioma" character varying(200) NOT NULL,
    "estadoIdioma" boolean NOT NULL
);
 ,   DROP TABLE public."GestionPrestamo_idioma";
       public         heap    postgres    false            �            1259    16861 #   GestionPrestamo_idioma_idIdioma_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_idioma_idIdioma_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."GestionPrestamo_idioma_idIdioma_seq";
       public          postgres    false    212            d           0    0 #   GestionPrestamo_idioma_idIdioma_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."GestionPrestamo_idioma_idIdioma_seq" OWNED BY public."GestionPrestamo_idioma"."idIdioma";
          public          postgres    false    213            �            1259    16863    GestionPrestamo_lector    TABLE     h  CREATE TABLE public."GestionPrestamo_lector" (
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
       public         heap    postgres    false            �            1259    16866 #   GestionPrestamo_lector_idLector_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_lector_idLector_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."GestionPrestamo_lector_idLector_seq";
       public          postgres    false    214            e           0    0 #   GestionPrestamo_lector_idLector_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."GestionPrestamo_lector_idLector_seq" OWNED BY public."GestionPrestamo_lector"."idLector";
          public          postgres    false    215            �            1259    16868    GestionPrestamo_libro    TABLE     H  CREATE TABLE public."GestionPrestamo_libro" (
    "idLibro" integer NOT NULL,
    "codigoLibro" character varying(20) NOT NULL,
    "tituloLibro" character varying(200) NOT NULL,
    "formatoLibro" character varying(1) NOT NULL,
    "resumenLibro" text NOT NULL,
    "ISBNLibro" character varying(20) NOT NULL,
    "anioPublicacionLibro" integer NOT NULL,
    "fechaCreacionLibro" timestamp with time zone NOT NULL,
    "estadoLibro" boolean NOT NULL,
    "editorial_Libro_id" integer,
    "idiomaLibro_id" integer,
    "paisLibro_id" integer,
    "bibliotecario_Libro_id" integer
);
 +   DROP TABLE public."GestionPrestamo_libro";
       public         heap    postgres    false            �            1259    16874 &   GestionPrestamo_libro_autorLibro_Libro    TABLE     �   CREATE TABLE public."GestionPrestamo_libro_autorLibro_Libro" (
    id integer NOT NULL,
    libro_id integer NOT NULL,
    autorlibro_id integer NOT NULL
);
 <   DROP TABLE public."GestionPrestamo_libro_autorLibro_Libro";
       public         heap    postgres    false            �            1259    16877 -   GestionPrestamo_libro_autorLibro_Libro_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_libro_autorLibro_Libro_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."GestionPrestamo_libro_autorLibro_Libro_id_seq";
       public          postgres    false    217            f           0    0 -   GestionPrestamo_libro_autorLibro_Libro_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_libro_autorLibro_Libro_id_seq" OWNED BY public."GestionPrestamo_libro_autorLibro_Libro".id;
          public          postgres    false    218            �            1259    16879 )   GestionPrestamo_libro_etiquetaLibro_Libro    TABLE     �   CREATE TABLE public."GestionPrestamo_libro_etiquetaLibro_Libro" (
    id integer NOT NULL,
    libro_id integer NOT NULL,
    etiquetalibro_id integer NOT NULL
);
 ?   DROP TABLE public."GestionPrestamo_libro_etiquetaLibro_Libro";
       public         heap    postgres    false            �            1259    16882 0   GestionPrestamo_libro_etiquetaLibro_Libro_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_libro_etiquetaLibro_Libro_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public."GestionPrestamo_libro_etiquetaLibro_Libro_id_seq";
       public          postgres    false    219            g           0    0 0   GestionPrestamo_libro_etiquetaLibro_Libro_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_libro_etiquetaLibro_Libro_id_seq" OWNED BY public."GestionPrestamo_libro_etiquetaLibro_Libro".id;
          public          postgres    false    220            �            1259    16884 !   GestionPrestamo_libro_generoLibro    TABLE     �   CREATE TABLE public."GestionPrestamo_libro_generoLibro" (
    id integer NOT NULL,
    libro_id integer NOT NULL,
    generolibro_id integer NOT NULL
);
 7   DROP TABLE public."GestionPrestamo_libro_generoLibro";
       public         heap    postgres    false            �            1259    16887 (   GestionPrestamo_libro_generoLibro_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_libro_generoLibro_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."GestionPrestamo_libro_generoLibro_id_seq";
       public          postgres    false    221            h           0    0 (   GestionPrestamo_libro_generoLibro_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."GestionPrestamo_libro_generoLibro_id_seq" OWNED BY public."GestionPrestamo_libro_generoLibro".id;
          public          postgres    false    222            �            1259    16889 !   GestionPrestamo_libro_idLibro_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_libro_idLibro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."GestionPrestamo_libro_idLibro_seq";
       public          postgres    false    216            i           0    0 !   GestionPrestamo_libro_idLibro_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."GestionPrestamo_libro_idLibro_seq" OWNED BY public."GestionPrestamo_libro"."idLibro";
          public          postgres    false    223            �            1259    16891    GestionPrestamo_libroinstancia    TABLE     =  CREATE TABLE public."GestionPrestamo_libroinstancia" (
    "idLibroInstancia" integer NOT NULL,
    "estadoPrestamoLibroInstancia" character varying(1) NOT NULL,
    "fechaCreacionLibroInstancia" timestamp with time zone NOT NULL,
    "estadoLibroInstancia" boolean NOT NULL,
    "libro_LibroInstancia_id" integer
);
 4   DROP TABLE public."GestionPrestamo_libroinstancia";
       public         heap    postgres    false            �            1259    16894 3   GestionPrestamo_libroinstancia_idLibroInstancia_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_libroinstancia_idLibroInstancia_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public."GestionPrestamo_libroinstancia_idLibroInstancia_seq";
       public          postgres    false    224            j           0    0 3   GestionPrestamo_libroinstancia_idLibroInstancia_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_libroinstancia_idLibroInstancia_seq" OWNED BY public."GestionPrestamo_libroinstancia"."idLibroInstancia";
          public          postgres    false    225            �            1259    16896    GestionPrestamo_pais    TABLE     �   CREATE TABLE public."GestionPrestamo_pais" (
    "idPais" integer NOT NULL,
    "tituloPais" character varying(200) NOT NULL,
    "estadoPais" boolean NOT NULL,
    "isoPais" character varying(2) NOT NULL
);
 *   DROP TABLE public."GestionPrestamo_pais";
       public         heap    postgres    false            �            1259    16899 !   GestionPrestamo_pais_idIdioma_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_pais_idIdioma_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."GestionPrestamo_pais_idIdioma_seq";
       public          postgres    false    226            k           0    0 !   GestionPrestamo_pais_idIdioma_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."GestionPrestamo_pais_idIdioma_seq" OWNED BY public."GestionPrestamo_pais"."idPais";
          public          postgres    false    227            �            1259    16901    GestionPrestamo_reservacion    TABLE     �  CREATE TABLE public."GestionPrestamo_reservacion" (
    "idReservacion" integer NOT NULL,
    "tipoAdquisicionReservacion" character varying(1) NOT NULL,
    "fechaEmisionReservacion" timestamp with time zone NOT NULL,
    "fechaRetornoReservacion" timestamp with time zone NOT NULL,
    "estadoReservacion" boolean NOT NULL,
    "lector_Reservacion_id" integer,
    "libro_Reservacion_id" integer,
    "bibliotecario_Reservacion_id" integer
);
 1   DROP TABLE public."GestionPrestamo_reservacion";
       public         heap    postgres    false            �            1259    16904 -   GestionPrestamo_reservacion_idReservacion_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_reservacion_idReservacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."GestionPrestamo_reservacion_idReservacion_seq";
       public          postgres    false    228            l           0    0 -   GestionPrestamo_reservacion_idReservacion_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_reservacion_idReservacion_seq" OWNED BY public."GestionPrestamo_reservacion"."idReservacion";
          public          postgres    false    229            �            1259    16906    GestionPrestamo_tipousuario    TABLE       CREATE TABLE public."GestionPrestamo_tipousuario" (
    "idTipoUsuario" integer NOT NULL,
    "nombreTipoUsuario" character varying(100) NOT NULL,
    "fechaCreacionTipoUsuario" timestamp with time zone NOT NULL,
    "estadoTipoUsuario" boolean NOT NULL
);
 1   DROP TABLE public."GestionPrestamo_tipousuario";
       public         heap    postgres    false            �            1259    16909 -   GestionPrestamo_tipousuario_idTipoUsuario_seq    SEQUENCE     �   CREATE SEQUENCE public."GestionPrestamo_tipousuario_idTipoUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."GestionPrestamo_tipousuario_idTipoUsuario_seq";
       public          postgres    false    230            m           0    0 -   GestionPrestamo_tipousuario_idTipoUsuario_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."GestionPrestamo_tipousuario_idTipoUsuario_seq" OWNED BY public."GestionPrestamo_tipousuario"."idTipoUsuario";
          public          postgres    false    231            �            1259    16911 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16914    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    232            n           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    233            �            1259    16916    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16919    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    234            o           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    235            �            1259    16921    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16924    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    236            p           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    237            �            1259    16926 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16932    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16935    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    239            q           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    240            �            1259    16937    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    238            r           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    241            �            1259    16939    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16942 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    242            s           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    243            �            1259    16944    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    16951    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    244            t           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    245            �            1259    16953    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16956    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    246            u           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    247            �            1259    16958    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16964    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    248            v           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    249            �            1259    16966    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false                       2604    16972 '   GestionPrestamo_autorlibro idAutorLibro    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_autorlibro" ALTER COLUMN "idAutorLibro" SET DEFAULT nextval('public."GestionPrestamo_autorlibro_idAutorLibro_seq"'::regclass);
 Z   ALTER TABLE public."GestionPrestamo_autorlibro" ALTER COLUMN "idAutorLibro" DROP DEFAULT;
       public          postgres    false    203    202                       2604    16973 -   GestionPrestamo_bibliotecario idBibliotecario    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_bibliotecario" ALTER COLUMN "idBibliotecario" SET DEFAULT nextval('public."GestionPrestamo_bibliotecario_idBibliotecario_seq"'::regclass);
 `   ALTER TABLE public."GestionPrestamo_bibliotecario" ALTER COLUMN "idBibliotecario" DROP DEFAULT;
       public          postgres    false    205    204                       2604    16974 %   GestionPrestamo_editorial idEditorial    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_editorial" ALTER COLUMN "idEditorial" SET DEFAULT nextval('public."GestionPrestamo_editorial_idEditorial_seq"'::regclass);
 X   ALTER TABLE public."GestionPrestamo_editorial" ALTER COLUMN "idEditorial" DROP DEFAULT;
       public          postgres    false    207    206                       2604    16975 -   GestionPrestamo_etiquetalibro idEtiquetaLibro    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_etiquetalibro" ALTER COLUMN "idEtiquetaLibro" SET DEFAULT nextval('public."GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq"'::regclass);
 `   ALTER TABLE public."GestionPrestamo_etiquetalibro" ALTER COLUMN "idEtiquetaLibro" DROP DEFAULT;
       public          postgres    false    209    208                       2604    16976 )   GestionPrestamo_generolibro idGeneroLibro    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_generolibro" ALTER COLUMN "idGeneroLibro" SET DEFAULT nextval('public."GestionPrestamo_generolibro_idGeneroLibro_seq"'::regclass);
 \   ALTER TABLE public."GestionPrestamo_generolibro" ALTER COLUMN "idGeneroLibro" DROP DEFAULT;
       public          postgres    false    211    210                       2604    16977    GestionPrestamo_idioma idIdioma    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_idioma" ALTER COLUMN "idIdioma" SET DEFAULT nextval('public."GestionPrestamo_idioma_idIdioma_seq"'::regclass);
 R   ALTER TABLE public."GestionPrestamo_idioma" ALTER COLUMN "idIdioma" DROP DEFAULT;
       public          postgres    false    213    212                       2604    16978    GestionPrestamo_lector idLector    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_lector" ALTER COLUMN "idLector" SET DEFAULT nextval('public."GestionPrestamo_lector_idLector_seq"'::regclass);
 R   ALTER TABLE public."GestionPrestamo_lector" ALTER COLUMN "idLector" DROP DEFAULT;
       public          postgres    false    215    214                       2604    16979    GestionPrestamo_libro idLibro    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libro" ALTER COLUMN "idLibro" SET DEFAULT nextval('public."GestionPrestamo_libro_idLibro_seq"'::regclass);
 P   ALTER TABLE public."GestionPrestamo_libro" ALTER COLUMN "idLibro" DROP DEFAULT;
       public          postgres    false    223    216                       2604    16980 )   GestionPrestamo_libro_autorLibro_Libro id    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" ALTER COLUMN id SET DEFAULT nextval('public."GestionPrestamo_libro_autorLibro_Libro_id_seq"'::regclass);
 Z   ALTER TABLE public."GestionPrestamo_libro_autorLibro_Libro" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217                       2604    16981 ,   GestionPrestamo_libro_etiquetaLibro_Libro id    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" ALTER COLUMN id SET DEFAULT nextval('public."GestionPrestamo_libro_etiquetaLibro_Libro_id_seq"'::regclass);
 ]   ALTER TABLE public."GestionPrestamo_libro_etiquetaLibro_Libro" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219                       2604    16982 $   GestionPrestamo_libro_generoLibro id    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro" ALTER COLUMN id SET DEFAULT nextval('public."GestionPrestamo_libro_generoLibro_id_seq"'::regclass);
 U   ALTER TABLE public."GestionPrestamo_libro_generoLibro" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221                        2604    16983 /   GestionPrestamo_libroinstancia idLibroInstancia    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_libroinstancia" ALTER COLUMN "idLibroInstancia" SET DEFAULT nextval('public."GestionPrestamo_libroinstancia_idLibroInstancia_seq"'::regclass);
 b   ALTER TABLE public."GestionPrestamo_libroinstancia" ALTER COLUMN "idLibroInstancia" DROP DEFAULT;
       public          postgres    false    225    224            !           2604    16984    GestionPrestamo_pais idPais    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_pais" ALTER COLUMN "idPais" SET DEFAULT nextval('public."GestionPrestamo_pais_idIdioma_seq"'::regclass);
 N   ALTER TABLE public."GestionPrestamo_pais" ALTER COLUMN "idPais" DROP DEFAULT;
       public          postgres    false    227    226            "           2604    16985 )   GestionPrestamo_reservacion idReservacion    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_reservacion" ALTER COLUMN "idReservacion" SET DEFAULT nextval('public."GestionPrestamo_reservacion_idReservacion_seq"'::regclass);
 \   ALTER TABLE public."GestionPrestamo_reservacion" ALTER COLUMN "idReservacion" DROP DEFAULT;
       public          postgres    false    229    228            #           2604    16986 )   GestionPrestamo_tipousuario idTipoUsuario    DEFAULT     �   ALTER TABLE ONLY public."GestionPrestamo_tipousuario" ALTER COLUMN "idTipoUsuario" SET DEFAULT nextval('public."GestionPrestamo_tipousuario_idTipoUsuario_seq"'::regclass);
 \   ALTER TABLE public."GestionPrestamo_tipousuario" ALTER COLUMN "idTipoUsuario" DROP DEFAULT;
       public          postgres    false    231    230            $           2604    16987    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            %           2604    16988    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            &           2604    16989    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            '           2604    16990    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    238            (           2604    16991    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            )           2604    16992    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            *           2604    16993    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            ,           2604    16994    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246            -           2604    16995    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248            (          0    16824    GestionPrestamo_autorlibro 
   TABLE DATA           �   COPY public."GestionPrestamo_autorlibro" ("idAutorLibro", "nombreAutorLibro", "apellidosAutorLibro", "descripcionAutorLibro", "fechaCreacionAutorLibro", "estadoAutorLibro") FROM stdin;
    public          postgres    false    202   �k      *          0    16832    GestionPrestamo_bibliotecario 
   TABLE DATA           �  COPY public."GestionPrestamo_bibliotecario" ("idBibliotecario", "nombreBibliotecario", "apellidosBibliotecario", "direccionBibliotecario", "DNIBibliotecario", "telefonoBibliotecario", "emailBibliotecario", "sexoBibliotecario", "usernameBibliotecario", "claveBibliotecario", "fechaNacimientoBibliotecario", "fechaCreacionBibliotecario", "estadoBibliotecario", "tipoBibliotecario_Bibliotecario_id") FROM stdin;
    public          postgres    false    204   %l      ,          0    16840    GestionPrestamo_editorial 
   TABLE DATA           �   COPY public."GestionPrestamo_editorial" ("idEditorial", "tituloEditorial", "descripcionEditorial", "fechaCreacionEditorial", "estadoEditorial") FROM stdin;
    public          postgres    false    206   �l      .          0    16848    GestionPrestamo_etiquetalibro 
   TABLE DATA           �   COPY public."GestionPrestamo_etiquetalibro" ("idEtiquetaLibro", "tituloEtiquetaLibro", "fechaCreacionEtiquetaLibro", "estadoEtiquetaLibro") FROM stdin;
    public          postgres    false    208   �m      0          0    16853    GestionPrestamo_generolibro 
   TABLE DATA           �   COPY public."GestionPrestamo_generolibro" ("idGeneroLibro", "tituloGeneroLibro", "fechaCreacionGeneroLibro", "estadoGeneroLibro") FROM stdin;
    public          postgres    false    210   �o      2          0    16858    GestionPrestamo_idioma 
   TABLE DATA           ^   COPY public."GestionPrestamo_idioma" ("idIdioma", "tituloIdioma", "estadoIdioma") FROM stdin;
    public          postgres    false    212   (q      4          0    16863    GestionPrestamo_lector 
   TABLE DATA             COPY public."GestionPrestamo_lector" ("idLector", "nombreLector", "apellidosLector", "DNILector", "emailLector", "sexoLector", "usernameLector", "claveLector", "fechaNacimientoLector", "fechaCreacionLector", "estadoLector", "tipoUsuario_Lector_id") FROM stdin;
    public          postgres    false    214   �w      6          0    16868    GestionPrestamo_libro 
   TABLE DATA             COPY public."GestionPrestamo_libro" ("idLibro", "codigoLibro", "tituloLibro", "formatoLibro", "resumenLibro", "ISBNLibro", "anioPublicacionLibro", "fechaCreacionLibro", "estadoLibro", "editorial_Libro_id", "idiomaLibro_id", "paisLibro_id", "bibliotecario_Libro_id") FROM stdin;
    public          postgres    false    216   �      7          0    16874 &   GestionPrestamo_libro_autorLibro_Libro 
   TABLE DATA           _   COPY public."GestionPrestamo_libro_autorLibro_Libro" (id, libro_id, autorlibro_id) FROM stdin;
    public          postgres    false    217   ��      9          0    16879 )   GestionPrestamo_libro_etiquetaLibro_Libro 
   TABLE DATA           e   COPY public."GestionPrestamo_libro_etiquetaLibro_Libro" (id, libro_id, etiquetalibro_id) FROM stdin;
    public          postgres    false    219   "�      ;          0    16884 !   GestionPrestamo_libro_generoLibro 
   TABLE DATA           [   COPY public."GestionPrestamo_libro_generoLibro" (id, libro_id, generolibro_id) FROM stdin;
    public          postgres    false    221   �      >          0    16891    GestionPrestamo_libroinstancia 
   TABLE DATA           �   COPY public."GestionPrestamo_libroinstancia" ("idLibroInstancia", "estadoPrestamoLibroInstancia", "fechaCreacionLibroInstancia", "estadoLibroInstancia", "libro_LibroInstancia_id") FROM stdin;
    public          postgres    false    224   c�      @          0    16896    GestionPrestamo_pais 
   TABLE DATA           a   COPY public."GestionPrestamo_pais" ("idPais", "tituloPais", "estadoPais", "isoPais") FROM stdin;
    public          postgres    false    226   ͯ      B          0    16901    GestionPrestamo_reservacion 
   TABLE DATA             COPY public."GestionPrestamo_reservacion" ("idReservacion", "tipoAdquisicionReservacion", "fechaEmisionReservacion", "fechaRetornoReservacion", "estadoReservacion", "lector_Reservacion_id", "libro_Reservacion_id", "bibliotecario_Reservacion_id") FROM stdin;
    public          postgres    false    228   =�      D          0    16906    GestionPrestamo_tipousuario 
   TABLE DATA           �   COPY public."GestionPrestamo_tipousuario" ("idTipoUsuario", "nombreTipoUsuario", "fechaCreacionTipoUsuario", "estadoTipoUsuario") FROM stdin;
    public          postgres    false    230   ��      F          0    16911 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    232   �      H          0    16916    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    234   �      J          0    16921    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    236   )�      L          0    16926 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    238   ��      M          0    16932    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    239   �      P          0    16939    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    242   3�      R          0    16944    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    244   P�      T          0    16953    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    246   m�      V          0    16958    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    248   G�      X          0    16966    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    250   ��      w           0    0 +   GestionPrestamo_autorlibro_idAutorLibro_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."GestionPrestamo_autorlibro_idAutorLibro_seq"', 2, true);
          public          postgres    false    203            x           0    0 1   GestionPrestamo_bibliotecario_idBibliotecario_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."GestionPrestamo_bibliotecario_idBibliotecario_seq"', 1, true);
          public          postgres    false    205            y           0    0 )   GestionPrestamo_editorial_idEditorial_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."GestionPrestamo_editorial_idEditorial_seq"', 3, true);
          public          postgres    false    207            z           0    0 1   GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."GestionPrestamo_etiquetalibro_idEtiquetaLibro_seq"', 25, true);
          public          postgres    false    209            {           0    0 -   GestionPrestamo_generolibro_idGeneroLibro_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."GestionPrestamo_generolibro_idGeneroLibro_seq"', 8, true);
          public          postgres    false    211            |           0    0 #   GestionPrestamo_idioma_idIdioma_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."GestionPrestamo_idioma_idIdioma_seq"', 1, false);
          public          postgres    false    213            }           0    0 #   GestionPrestamo_lector_idLector_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."GestionPrestamo_lector_idLector_seq"', 1, false);
          public          postgres    false    215            ~           0    0 -   GestionPrestamo_libro_autorLibro_Libro_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."GestionPrestamo_libro_autorLibro_Libro_id_seq"', 19, true);
          public          postgres    false    218                       0    0 0   GestionPrestamo_libro_etiquetaLibro_Libro_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."GestionPrestamo_libro_etiquetaLibro_Libro_id_seq"', 46, true);
          public          postgres    false    220            �           0    0 (   GestionPrestamo_libro_generoLibro_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."GestionPrestamo_libro_generoLibro_id_seq"', 29, true);
          public          postgres    false    222            �           0    0 !   GestionPrestamo_libro_idLibro_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."GestionPrestamo_libro_idLibro_seq"', 18, true);
          public          postgres    false    223            �           0    0 3   GestionPrestamo_libroinstancia_idLibroInstancia_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public."GestionPrestamo_libroinstancia_idLibroInstancia_seq"', 5, true);
          public          postgres    false    225            �           0    0 !   GestionPrestamo_pais_idIdioma_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."GestionPrestamo_pais_idIdioma_seq"', 1, false);
          public          postgres    false    227            �           0    0 -   GestionPrestamo_reservacion_idReservacion_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."GestionPrestamo_reservacion_idReservacion_seq"', 2, true);
          public          postgres    false    229            �           0    0 -   GestionPrestamo_tipousuario_idTipoUsuario_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."GestionPrestamo_tipousuario_idTipoUsuario_seq"', 2, true);
          public          postgres    false    231            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    233            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    235            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);
          public          postgres    false    237            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    240            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    241            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    243            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    245            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    247            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);
          public          postgres    false    249            /           2606    16997 :   GestionPrestamo_autorlibro GestionPrestamo_autorlibro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_autorlibro"
    ADD CONSTRAINT "GestionPrestamo_autorlibro_pkey" PRIMARY KEY ("idAutorLibro");
 h   ALTER TABLE ONLY public."GestionPrestamo_autorlibro" DROP CONSTRAINT "GestionPrestamo_autorlibro_pkey";
       public            postgres    false    202            2           2606    16999 @   GestionPrestamo_bibliotecario GestionPrestamo_bibliotecario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_bibliotecario"
    ADD CONSTRAINT "GestionPrestamo_bibliotecario_pkey" PRIMARY KEY ("idBibliotecario");
 n   ALTER TABLE ONLY public."GestionPrestamo_bibliotecario" DROP CONSTRAINT "GestionPrestamo_bibliotecario_pkey";
       public            postgres    false    204            4           2606    17001 8   GestionPrestamo_editorial GestionPrestamo_editorial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_editorial"
    ADD CONSTRAINT "GestionPrestamo_editorial_pkey" PRIMARY KEY ("idEditorial");
 f   ALTER TABLE ONLY public."GestionPrestamo_editorial" DROP CONSTRAINT "GestionPrestamo_editorial_pkey";
       public            postgres    false    206            6           2606    17003 @   GestionPrestamo_etiquetalibro GestionPrestamo_etiquetalibro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_etiquetalibro"
    ADD CONSTRAINT "GestionPrestamo_etiquetalibro_pkey" PRIMARY KEY ("idEtiquetaLibro");
 n   ALTER TABLE ONLY public."GestionPrestamo_etiquetalibro" DROP CONSTRAINT "GestionPrestamo_etiquetalibro_pkey";
       public            postgres    false    208            8           2606    17005 <   GestionPrestamo_generolibro GestionPrestamo_generolibro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_generolibro"
    ADD CONSTRAINT "GestionPrestamo_generolibro_pkey" PRIMARY KEY ("idGeneroLibro");
 j   ALTER TABLE ONLY public."GestionPrestamo_generolibro" DROP CONSTRAINT "GestionPrestamo_generolibro_pkey";
       public            postgres    false    210            :           2606    17007 2   GestionPrestamo_idioma GestionPrestamo_idioma_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."GestionPrestamo_idioma"
    ADD CONSTRAINT "GestionPrestamo_idioma_pkey" PRIMARY KEY ("idIdioma");
 `   ALTER TABLE ONLY public."GestionPrestamo_idioma" DROP CONSTRAINT "GestionPrestamo_idioma_pkey";
       public            postgres    false    212            <           2606    17009 2   GestionPrestamo_lector GestionPrestamo_lector_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."GestionPrestamo_lector"
    ADD CONSTRAINT "GestionPrestamo_lector_pkey" PRIMARY KEY ("idLector");
 `   ALTER TABLE ONLY public."GestionPrestamo_lector" DROP CONSTRAINT "GestionPrestamo_lector_pkey";
       public            postgres    false    214            E           2606    17011 d   GestionPrestamo_libro_autorLibro_Libro GestionPrestamo_libro_au_libro_id_autorlibro_id_9975258e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_au_libro_id_autorlibro_id_9975258e_uniq" UNIQUE (libro_id, autorlibro_id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libro_au_libro_id_autorlibro_id_9975258e_uniq";
       public            postgres    false    217    217            I           2606    17013 R   GestionPrestamo_libro_autorLibro_Libro GestionPrestamo_libro_autorLibro_Libro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_autorLibro_Libro_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libro_autorLibro_Libro_pkey";
       public            postgres    false    217            K           2606    17015 i   GestionPrestamo_libro_etiquetaLibro_Libro GestionPrestamo_libro_et_libro_id_etiquetalibro_i_a8bbdc08_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_et_libro_id_etiquetalibro_i_a8bbdc08_uniq" UNIQUE (libro_id, etiquetalibro_id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libro_et_libro_id_etiquetalibro_i_a8bbdc08_uniq";
       public            postgres    false    219    219            O           2606    17017 X   GestionPrestamo_libro_etiquetaLibro_Libro GestionPrestamo_libro_etiquetaLibro_Libro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libro_etiquetaLibro_Libro_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libro_etiquetaLibro_Libro_pkey";
       public            postgres    false    219            Q           2606    17019 `   GestionPrestamo_libro_generoLibro GestionPrestamo_libro_ge_libro_id_generolibro_id_649364dd_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro"
    ADD CONSTRAINT "GestionPrestamo_libro_ge_libro_id_generolibro_id_649364dd_uniq" UNIQUE (libro_id, generolibro_id);
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro" DROP CONSTRAINT "GestionPrestamo_libro_ge_libro_id_generolibro_id_649364dd_uniq";
       public            postgres    false    221    221            U           2606    17021 H   GestionPrestamo_libro_generoLibro GestionPrestamo_libro_generoLibro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro"
    ADD CONSTRAINT "GestionPrestamo_libro_generoLibro_pkey" PRIMARY KEY (id);
 v   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro" DROP CONSTRAINT "GestionPrestamo_libro_generoLibro_pkey";
       public            postgres    false    221            C           2606    17023 0   GestionPrestamo_libro GestionPrestamo_libro_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libro_pkey" PRIMARY KEY ("idLibro");
 ^   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libro_pkey";
       public            postgres    false    216            X           2606    17025 B   GestionPrestamo_libroinstancia GestionPrestamo_libroinstancia_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libroinstancia"
    ADD CONSTRAINT "GestionPrestamo_libroinstancia_pkey" PRIMARY KEY ("idLibroInstancia");
 p   ALTER TABLE ONLY public."GestionPrestamo_libroinstancia" DROP CONSTRAINT "GestionPrestamo_libroinstancia_pkey";
       public            postgres    false    224            Z           2606    17027 .   GestionPrestamo_pais GestionPrestamo_pais_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."GestionPrestamo_pais"
    ADD CONSTRAINT "GestionPrestamo_pais_pkey" PRIMARY KEY ("idPais");
 \   ALTER TABLE ONLY public."GestionPrestamo_pais" DROP CONSTRAINT "GestionPrestamo_pais_pkey";
       public            postgres    false    226            _           2606    17029 <   GestionPrestamo_reservacion GestionPrestamo_reservacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_reservacion"
    ADD CONSTRAINT "GestionPrestamo_reservacion_pkey" PRIMARY KEY ("idReservacion");
 j   ALTER TABLE ONLY public."GestionPrestamo_reservacion" DROP CONSTRAINT "GestionPrestamo_reservacion_pkey";
       public            postgres    false    228            a           2606    17031 <   GestionPrestamo_tipousuario GestionPrestamo_tipousuario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_tipousuario"
    ADD CONSTRAINT "GestionPrestamo_tipousuario_pkey" PRIMARY KEY ("idTipoUsuario");
 j   ALTER TABLE ONLY public."GestionPrestamo_tipousuario" DROP CONSTRAINT "GestionPrestamo_tipousuario_pkey";
       public            postgres    false    230            d           2606    17033    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    232            i           2606    17035 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    234    234            l           2606    17037 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    234            f           2606    17039    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    232            o           2606    17041 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    236    236            q           2606    17043 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    236            y           2606    17045 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    239            |           2606    17047 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    239    239            s           2606    17049    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    238                       2606    17051 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    242            �           2606    17053 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    242    242            v           2606    17055     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    238            �           2606    17057 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    244            �           2606    17059 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    246    246            �           2606    17061 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    246            �           2606    17063 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    248            �           2606    17065 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    250            0           1259    17066 >   GestionPrestamo_biblioteca_tipoBibliotecario_Bibliote_23d8d039    INDEX     �   CREATE INDEX "GestionPrestamo_biblioteca_tipoBibliotecario_Bibliote_23d8d039" ON public."GestionPrestamo_bibliotecario" USING btree ("tipoBibliotecario_Bibliotecario_id");
 T   DROP INDEX public."GestionPrestamo_biblioteca_tipoBibliotecario_Bibliote_23d8d039";
       public            postgres    false    204            =           1259    17067 5   GestionPrestamo_lector_tipoUsuario_Lector_id_71e59025    INDEX     �   CREATE INDEX "GestionPrestamo_lector_tipoUsuario_Lector_id_71e59025" ON public."GestionPrestamo_lector" USING btree ("tipoUsuario_Lector_id");
 K   DROP INDEX public."GestionPrestamo_lector_tipoUsuario_Lector_id_71e59025";
       public            postgres    false    214            F           1259    17068 =   GestionPrestamo_libro_autorLibro_Libro_autorlibro_id_b24617ce    INDEX     �   CREATE INDEX "GestionPrestamo_libro_autorLibro_Libro_autorlibro_id_b24617ce" ON public."GestionPrestamo_libro_autorLibro_Libro" USING btree (autorlibro_id);
 S   DROP INDEX public."GestionPrestamo_libro_autorLibro_Libro_autorlibro_id_b24617ce";
       public            postgres    false    217            G           1259    17069 8   GestionPrestamo_libro_autorLibro_Libro_libro_id_d0897661    INDEX     �   CREATE INDEX "GestionPrestamo_libro_autorLibro_Libro_libro_id_d0897661" ON public."GestionPrestamo_libro_autorLibro_Libro" USING btree (libro_id);
 N   DROP INDEX public."GestionPrestamo_libro_autorLibro_Libro_libro_id_d0897661";
       public            postgres    false    217            >           1259    17070 5   GestionPrestamo_libro_bibliotecario_Libro_id_7524027f    INDEX     �   CREATE INDEX "GestionPrestamo_libro_bibliotecario_Libro_id_7524027f" ON public."GestionPrestamo_libro" USING btree ("bibliotecario_Libro_id");
 K   DROP INDEX public."GestionPrestamo_libro_bibliotecario_Libro_id_7524027f";
       public            postgres    false    216            ?           1259    17071 1   GestionPrestamo_libro_editorial_Libro_id_11c9b532    INDEX     �   CREATE INDEX "GestionPrestamo_libro_editorial_Libro_id_11c9b532" ON public."GestionPrestamo_libro" USING btree ("editorial_Libro_id");
 G   DROP INDEX public."GestionPrestamo_libro_editorial_Libro_id_11c9b532";
       public            postgres    false    216            L           1259    17072 4   GestionPrestamo_libro_etiq_etiquetalibro_id_d7aa48c7    INDEX     �   CREATE INDEX "GestionPrestamo_libro_etiq_etiquetalibro_id_d7aa48c7" ON public."GestionPrestamo_libro_etiquetaLibro_Libro" USING btree (etiquetalibro_id);
 J   DROP INDEX public."GestionPrestamo_libro_etiq_etiquetalibro_id_d7aa48c7";
       public            postgres    false    219            M           1259    17073 ;   GestionPrestamo_libro_etiquetaLibro_Libro_libro_id_c180724a    INDEX     �   CREATE INDEX "GestionPrestamo_libro_etiquetaLibro_Libro_libro_id_c180724a" ON public."GestionPrestamo_libro_etiquetaLibro_Libro" USING btree (libro_id);
 Q   DROP INDEX public."GestionPrestamo_libro_etiquetaLibro_Libro_libro_id_c180724a";
       public            postgres    false    219            R           1259    17074 9   GestionPrestamo_libro_generoLibro_generolibro_id_5ea3a0ca    INDEX     �   CREATE INDEX "GestionPrestamo_libro_generoLibro_generolibro_id_5ea3a0ca" ON public."GestionPrestamo_libro_generoLibro" USING btree (generolibro_id);
 O   DROP INDEX public."GestionPrestamo_libro_generoLibro_generolibro_id_5ea3a0ca";
       public            postgres    false    221            S           1259    17075 3   GestionPrestamo_libro_generoLibro_libro_id_fe06c974    INDEX     �   CREATE INDEX "GestionPrestamo_libro_generoLibro_libro_id_fe06c974" ON public."GestionPrestamo_libro_generoLibro" USING btree (libro_id);
 I   DROP INDEX public."GestionPrestamo_libro_generoLibro_libro_id_fe06c974";
       public            postgres    false    221            @           1259    17076 -   GestionPrestamo_libro_idiomaLibro_id_ac1b5915    INDEX        CREATE INDEX "GestionPrestamo_libro_idiomaLibro_id_ac1b5915" ON public."GestionPrestamo_libro" USING btree ("idiomaLibro_id");
 C   DROP INDEX public."GestionPrestamo_libro_idiomaLibro_id_ac1b5915";
       public            postgres    false    216            A           1259    17077 +   GestionPrestamo_libro_paisLibro_id_ecb9eba1    INDEX     {   CREATE INDEX "GestionPrestamo_libro_paisLibro_id_ecb9eba1" ON public."GestionPrestamo_libro" USING btree ("paisLibro_id");
 A   DROP INDEX public."GestionPrestamo_libro_paisLibro_id_ecb9eba1";
       public            postgres    false    216            V           1259    17078 ?   GestionPrestamo_libroinstancia_libro_LibroInstancia_id_f8a99d40    INDEX     �   CREATE INDEX "GestionPrestamo_libroinstancia_libro_LibroInstancia_id_f8a99d40" ON public."GestionPrestamo_libroinstancia" USING btree ("libro_LibroInstancia_id");
 U   DROP INDEX public."GestionPrestamo_libroinstancia_libro_LibroInstancia_id_f8a99d40";
       public            postgres    false    224            [           1259    17079 >   GestionPrestamo_reservacio_bibliotecario_Reservacion__e91ccdec    INDEX     �   CREATE INDEX "GestionPrestamo_reservacio_bibliotecario_Reservacion__e91ccdec" ON public."GestionPrestamo_reservacion" USING btree ("bibliotecario_Reservacion_id");
 T   DROP INDEX public."GestionPrestamo_reservacio_bibliotecario_Reservacion__e91ccdec";
       public            postgres    false    228            \           1259    17080 :   GestionPrestamo_reservacion_lector_Reservacion_id_b0dfc4d4    INDEX     �   CREATE INDEX "GestionPrestamo_reservacion_lector_Reservacion_id_b0dfc4d4" ON public."GestionPrestamo_reservacion" USING btree ("lector_Reservacion_id");
 P   DROP INDEX public."GestionPrestamo_reservacion_lector_Reservacion_id_b0dfc4d4";
       public            postgres    false    228            ]           1259    17081 9   GestionPrestamo_reservacion_libro_Reservacion_id_bac09b68    INDEX     �   CREATE INDEX "GestionPrestamo_reservacion_libro_Reservacion_id_bac09b68" ON public."GestionPrestamo_reservacion" USING btree ("libro_Reservacion_id");
 O   DROP INDEX public."GestionPrestamo_reservacion_libro_Reservacion_id_bac09b68";
       public            postgres    false    228            b           1259    17082    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    232            g           1259    17083 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    234            j           1259    17084 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    234            m           1259    17085 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    236            w           1259    17086 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    239            z           1259    17087 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    239            }           1259    17088 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    242            �           1259    17089 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    242            t           1259    17090     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    238            �           1259    17091 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    244            �           1259    17092 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    244            �           1259    17093 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    250            �           1259    17094 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    250            �           2606    17095 ]   GestionPrestamo_bibliotecario GestionPrestamo_bibl_tipoBibliotecario_Bi_23d8d039_fk_GestionPr    FK CONSTRAINT        ALTER TABLE ONLY public."GestionPrestamo_bibliotecario"
    ADD CONSTRAINT "GestionPrestamo_bibl_tipoBibliotecario_Bi_23d8d039_fk_GestionPr" FOREIGN KEY ("tipoBibliotecario_Bibliotecario_id") REFERENCES public."GestionPrestamo_tipousuario"("idTipoUsuario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_bibliotecario" DROP CONSTRAINT "GestionPrestamo_bibl_tipoBibliotecario_Bi_23d8d039_fk_GestionPr";
       public          postgres    false    204    230    2913            �           2606    17100 V   GestionPrestamo_lector GestionPrestamo_lect_tipoUsuario_Lector_i_71e59025_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_lector"
    ADD CONSTRAINT "GestionPrestamo_lect_tipoUsuario_Lector_i_71e59025_fk_GestionPr" FOREIGN KEY ("tipoUsuario_Lector_id") REFERENCES public."GestionPrestamo_tipousuario"("idTipoUsuario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_lector" DROP CONSTRAINT "GestionPrestamo_lect_tipoUsuario_Lector_i_71e59025_fk_GestionPr";
       public          postgres    false    214    2913    230            �           2606    17105 _   GestionPrestamo_libro_autorLibro_Libro GestionPrestamo_libr_autorlibro_id_b24617ce_fk_GestionPr    FK CONSTRAINT     	  ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_autorlibro_id_b24617ce_fk_GestionPr" FOREIGN KEY (autorlibro_id) REFERENCES public."GestionPrestamo_autorlibro"("idAutorLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libr_autorlibro_id_b24617ce_fk_GestionPr";
       public          postgres    false    217    202    2863            �           2606    17110 U   GestionPrestamo_libro GestionPrestamo_libr_bibliotecario_Libro__7524027f_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libr_bibliotecario_Libro__7524027f_fk_GestionPr" FOREIGN KEY ("bibliotecario_Libro_id") REFERENCES public."GestionPrestamo_bibliotecario"("idBibliotecario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libr_bibliotecario_Libro__7524027f_fk_GestionPr";
       public          postgres    false    216    204    2866            �           2606    17115 S   GestionPrestamo_libro GestionPrestamo_libr_editorial_Libro_id_11c9b532_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libr_editorial_Libro_id_11c9b532_fk_GestionPr" FOREIGN KEY ("editorial_Libro_id") REFERENCES public."GestionPrestamo_editorial"("idEditorial") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libr_editorial_Libro_id_11c9b532_fk_GestionPr";
       public          postgres    false    216    2868    206            �           2606    17120 e   GestionPrestamo_libro_etiquetaLibro_Libro GestionPrestamo_libr_etiquetalibro_id_d7aa48c7_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_etiquetalibro_id_d7aa48c7_fk_GestionPr" FOREIGN KEY (etiquetalibro_id) REFERENCES public."GestionPrestamo_etiquetalibro"("idEtiquetaLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libr_etiquetalibro_id_d7aa48c7_fk_GestionPr";
       public          postgres    false    2870    219    208            �           2606    17125 [   GestionPrestamo_libro_generoLibro GestionPrestamo_libr_generolibro_id_5ea3a0ca_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro"
    ADD CONSTRAINT "GestionPrestamo_libr_generolibro_id_5ea3a0ca_fk_GestionPr" FOREIGN KEY (generolibro_id) REFERENCES public."GestionPrestamo_generolibro"("idGeneroLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro" DROP CONSTRAINT "GestionPrestamo_libr_generolibro_id_5ea3a0ca_fk_GestionPr";
       public          postgres    false    221    2872    210            �           2606    17130 O   GestionPrestamo_libro GestionPrestamo_libr_idiomaLibro_id_ac1b5915_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libr_idiomaLibro_id_ac1b5915_fk_GestionPr" FOREIGN KEY ("idiomaLibro_id") REFERENCES public."GestionPrestamo_idioma"("idIdioma") DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libr_idiomaLibro_id_ac1b5915_fk_GestionPr";
       public          postgres    false    216    212    2874            �           2606    17135 ^   GestionPrestamo_libroinstancia GestionPrestamo_libr_libro_LibroInstancia_f8a99d40_fk_GestionPr    FK CONSTRAINT     
  ALTER TABLE ONLY public."GestionPrestamo_libroinstancia"
    ADD CONSTRAINT "GestionPrestamo_libr_libro_LibroInstancia_f8a99d40_fk_GestionPr" FOREIGN KEY ("libro_LibroInstancia_id") REFERENCES public."GestionPrestamo_libro"("idLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libroinstancia" DROP CONSTRAINT "GestionPrestamo_libr_libro_LibroInstancia_f8a99d40_fk_GestionPr";
       public          postgres    false    2883    224    216            �           2606    17140 ]   GestionPrestamo_libro_etiquetaLibro_Libro GestionPrestamo_libr_libro_id_c180724a_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_libro_id_c180724a_fk_GestionPr" FOREIGN KEY (libro_id) REFERENCES public."GestionPrestamo_libro"("idLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_etiquetaLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libr_libro_id_c180724a_fk_GestionPr";
       public          postgres    false    2883    216    219            �           2606    17145 Z   GestionPrestamo_libro_autorLibro_Libro GestionPrestamo_libr_libro_id_d0897661_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro"
    ADD CONSTRAINT "GestionPrestamo_libr_libro_id_d0897661_fk_GestionPr" FOREIGN KEY (libro_id) REFERENCES public."GestionPrestamo_libro"("idLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_autorLibro_Libro" DROP CONSTRAINT "GestionPrestamo_libr_libro_id_d0897661_fk_GestionPr";
       public          postgres    false    2883    216    217            �           2606    17150 U   GestionPrestamo_libro_generoLibro GestionPrestamo_libr_libro_id_fe06c974_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro"
    ADD CONSTRAINT "GestionPrestamo_libr_libro_id_fe06c974_fk_GestionPr" FOREIGN KEY (libro_id) REFERENCES public."GestionPrestamo_libro"("idLibro") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_libro_generoLibro" DROP CONSTRAINT "GestionPrestamo_libr_libro_id_fe06c974_fk_GestionPr";
       public          postgres    false    2883    221    216            �           2606    17155 M   GestionPrestamo_libro GestionPrestamo_libr_paisLibro_id_ecb9eba1_fk_GestionPr    FK CONSTRAINT     �   ALTER TABLE ONLY public."GestionPrestamo_libro"
    ADD CONSTRAINT "GestionPrestamo_libr_paisLibro_id_ecb9eba1_fk_GestionPr" FOREIGN KEY ("paisLibro_id") REFERENCES public."GestionPrestamo_pais"("idPais") DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."GestionPrestamo_libro" DROP CONSTRAINT "GestionPrestamo_libr_paisLibro_id_ecb9eba1_fk_GestionPr";
       public          postgres    false    216    226    2906            �           2606    17160 [   GestionPrestamo_reservacion GestionPrestamo_rese_bibliotecario_Reserv_e91ccdec_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_reservacion"
    ADD CONSTRAINT "GestionPrestamo_rese_bibliotecario_Reserv_e91ccdec_fk_GestionPr" FOREIGN KEY ("bibliotecario_Reservacion_id") REFERENCES public."GestionPrestamo_bibliotecario"("idBibliotecario") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_reservacion" DROP CONSTRAINT "GestionPrestamo_rese_bibliotecario_Reserv_e91ccdec_fk_GestionPr";
       public          postgres    false    228    204    2866            �           2606    17165 [   GestionPrestamo_reservacion GestionPrestamo_rese_lector_Reservacion_i_b0dfc4d4_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_reservacion"
    ADD CONSTRAINT "GestionPrestamo_rese_lector_Reservacion_i_b0dfc4d4_fk_GestionPr" FOREIGN KEY ("lector_Reservacion_id") REFERENCES public."GestionPrestamo_lector"("idLector") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_reservacion" DROP CONSTRAINT "GestionPrestamo_rese_lector_Reservacion_i_b0dfc4d4_fk_GestionPr";
       public          postgres    false    214    2876    228            �           2606    17170 [   GestionPrestamo_reservacion GestionPrestamo_rese_libro_Reservacion_id_bac09b68_fk_GestionPr    FK CONSTRAINT       ALTER TABLE ONLY public."GestionPrestamo_reservacion"
    ADD CONSTRAINT "GestionPrestamo_rese_libro_Reservacion_id_bac09b68_fk_GestionPr" FOREIGN KEY ("libro_Reservacion_id") REFERENCES public."GestionPrestamo_libroinstancia"("idLibroInstancia") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."GestionPrestamo_reservacion" DROP CONSTRAINT "GestionPrestamo_rese_libro_Reservacion_id_bac09b68_fk_GestionPr";
       public          postgres    false    228    224    2904            �           2606    17175 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    236    234    2929            �           2606    17180 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    232    234    2918            �           2606    17185 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2954    236    246            �           2606    17190 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    232    2918    239            �           2606    17195 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    238    239    2931            �           2606    17200 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2929    236    242            �           2606    17205 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2931    238    242            �           2606    17210 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    244    246    2954            �           2606    17215 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    238    244    2931            (   �   x�3��)�,��ʯL�K-VpL/��I,�t,-�/RH-.H<�1?�����@��L��B��������R������X������hJrb1g��y��U
�Eɇ�&r�u�)�X��Y�XZX@4��qqq MG$B      *   �   x�ͽ
�0@���)��ro�4I'�AD�,�PCH��)B��
g��CpsK|�s硎�y�V��ǜ�..ϗ�x��?��=���Vj%4Y-�Q�*�����|���O}L�B��	&��H�B�@֪�,�a���U!*��,�4�CbϜ1���0       ,   �   x�U�K� ��1��@.�>��H�'ז	C1�-���Tc�����H2b�r�d2̡�0�a���#
84\vL�ӝSFH��,�T�q���C����&_��$$�����a`�i�m�n�껍��	���+o����䯶N�3F�J�[}��7~<;�      .   T  x�m��r�0���)�lh����pSft �u��Q�X��u��U���b��ݟ��s��P޴�i��l���6�v�D@�N��2�͸ʘ$	��ՔJ�N -�֖�`�"�{�����1��T�z����q�m|���cNH" M{N�{S����J�*�兯�љR��XXFj��P|컐���U*�V*�8A[���.ج�b�Ip�X�`|,�)L���,E_MU�W[OW!; c�h�RFѷ�js4�;�.�!��PIcڌ�/�>����yF%	!k��Ծ,��;���4�p� � Ri������r�G���!?DryI�x%&��O]����¥�U���p� \!��)��I4/}��� W�ȵ��5�b���6	g!�s�n!ht�xa���@F�PD	���f��v9{�����6\�7��T��Dj����C�r�e�]�߂~���S�{\n�����|;{�w�)��T $����s�|k��GX�S����hj�I��	�j G�|1xF^*��oaC��f��k�����?4���{�D^���]�v���������0���i>y�QE4(����d2�ک"�      0   &  x�m�Mn�0����@���w�	)����*u���
��,��Qz��z.VRRE��>�7�f8I��+k��7��ꋞ� �5�`e`�aZ��� q�Z׌��-�BX)�����$���]��V!�ȵ��*���a�g�uF�1�f��>��_�TV�|��"�\s:EY�-�h�>��߆���
I��·\N�hPʹOvUٺgw�������Fㅖ`aCIip������F��>M�0J�t:$�*�7��n:mo6>�tGd0�d�4��ܱ+��~镰�(D��>2��>�!q      2   b  x�mV�r#7>s����*���}���O<�q"ٻI�BIL7��#��Q�C9�:�7��~ [�IU� ��R,ֻF���M,?+"��F�փK�b�z�X�k�:���	JL!��uj�A�b�Tm��o�i�ӽ!%9�U�=�I){���;�p~�#'�_�[+s8~��L��n=��`|�3�,ģ��,řn�;~�d��U{���8g��_�%hߪ��ű8�>�-NęӃ%�q*Ύ��Z92���#Ĺ8Wshq!��YKpz�Lg�+�싚E�a�;����%s��I/� �=NŁ$�8��U�j:K��Y3�NSIʪM�"g��Q�5�CR��׍�E�D|P���mW�ڶ���t..^m_�,��⦯�i+���v��G��E��w��w/Q��K�+d)�ťy�|���+7������U�rl��of�=��J��ŕjM8f&ŕ��6�Ӗ��Z݅��q匮m��n�
��Q5=A��{;PXY.����,�8m[5���l�����Z�����oH��i����6�����3b�����s?�Q� ��v����)�`k{��^��}�b��G�c�B��k�+�7>�b*q��v���g�\ �t:O�'���@l"�Uϧ~-Rp�S���U���5~f������fA��n?rc(~�b��iQa�U=�!\P9�M��RK)n�n<�0�+�b���r/�q�W��k?�&�d+��#�%�E��˜�D�kt����0y@���(�W�=*��Us�~�Ew�>p�Y��4$4�)�*���ʁQ��Y%P�	�ߤ�F�T��.��av��q�yM��>uVU�����
�Fo�9��ߪ���D�%�:�������!E�Sp�oL�3�h����[&��sq��V��*�ch8ߠ x�(��J)���F�+�{������h  w֍ԙgv�e+ ���^kt�V�4������([f(ِ	T8ٹ;���;�f')s����` _{�#'
(�q�1C� 	���d�/z�ʞ��~0�h#���l0����|��&V�]���k���	Hf�;�aŽ�O�X���.�1hs$�טE�r�@���T����I&X�A�����S��ǐ	|�������4�0��]���b<�$��{�a`7|A	��ô����ǎ@�n��Oj���]��D���3�)~��[�б��8m����D��*rAh�ca:L 	�Z���кR�� t���n�'k$b��>��r���?����Z�W���V��-���А@���0-�Z  �T�?l�Q~�m; �m�d�~z�/�1�"�p��@#�1`�����$��J��=frl��ˤ� ��2_Ʒ��L�h�2[�]k�$�>���dx��~p�=�V�����y��
s�尀v+�a�i�XQ�Fo�a���;�$���?�8�n���pz�!�>; o��83[�S7�ZI�{ظ�*�~n�9�=������u����h��#�Cd���|��@�#Nv�X�Kd*	`ݿlkf3��1]:�:��ߍ=���l��7�����u�Jďh���"�,LŏcK����7o��5���      4      x��}�r�8��5�)�� ��}մĒY-�nJr���e�f�$z����\��<���b�I���g�؎�\�S@��s�h����ƚD��M��,'����[|F��9�f�e1W(!mW����\���r��ky�d��jUn؆������q]��ka��[|�/��������/���v�|����؁��	�&�8�s��6����������Vp����ދu�+WE)�ח��-+�d�p�pX4����b�Ӑ��8J���z�sm�T��J�?��b�����Y�e�Cvx_8�bs;\����u�%l��O�V��x��)�,�R����rW�g��*�ve�n�
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
V]ߙ��0�OzjygV��V���x6	�.���4	RӞtml^��dw��;�\Z�<�/�`x�<�>�g������@} l�ᐝ$\X��﫿��o�m���      6      x��Z;sI��1��"�Bx����(��5�����]�J������y�Z�d�cC�8q�c�eVU? Rsqk�R�||�ef�o����^�Ԭ7y&���H�8_��Pi��L��LE��id�Pطu����B�7�Jeڐ����f�H��lL�賵���ǑX�PE�~�F��޴�8���X�U�e��'�J�Do�'X%�S!���:SA�'�h��H�z�5)���VX!m�K{>���D2�&YK�b���t��&�!�8�҉�2�Bb'�m��z�5���[�x�!ų�ۊT���0~TI�CCG�'��[��1�y�̄8 �7l����.�c�GRhC;Q
�_�)-����s!P�C��wC�ȏ�_]&����E-!�Ƅ�H�
U��I�Ĭ�f}�&�I,fJ�B=0	^��Lh����)� �bU�9T��*��'���>b9��z��ClȅL���~���m��cD��������d�����
i%u��ad�Q�2lB<{TO���ɬ��DA�k�_n��U���I�G�@�;+d����^�tO�\��N�Դ1�J�oEC��E���9���o����TQ��Q)ؒՒ�(w:�0ؘM��?3)��cVw��O&n���h�l��)�T	#�t���<�H��F���������<gL�v��ƱɁ�����P>$jK���V��-�U=(Y٬7��@1g�y"�������_�A�/(���k�Z*�����g���U�]�@&���zi�&�3J�V�ؤ~���QV��$����t�ܯ��7@�L�_h�G��z��r�u[m2�\��4��X�-T�˛�x�?��I��Ϸ��m�p���	��S�P�h[�֕MK�)�����opJ)���οC� ���YI':Ն����8iQ[�H~_��J�%����bE ^�@r�璕,�����-6˱99Ej �1.Q�۩x�}]BP��8�^��3�H��t	<���Jn"[�!X��]f�Mz�jLF�q��;�tƍn����������;�v{�~���k�A#kt���16:?u}��6�^f�o�I�81�\H�界Q���*�w��}�Cϐ���erN9;..�*����p�w2�#�ɕJSX Ղ"iM�
��O$�^	�b��O�,��P)����t@Z@��渥tya�|bC��8b�S�5������y끼�rɰ ó�ӳ�E���@}�{ppŚ-�)y%a�M�z%��pV���3>��/��ITH�E�<�||G�#Tk�{]9ĩv��T�~�UsP���%
n�ߒ�9Y�f��#�D������ۿ�A��M�s���ʳ��ۜ�,镕jvbmt\�:�C�����IHJ�����	��g.�ޖ�M��dKR�`9�hP,}_[���8���J=����&�Z�U=
�VX,U�\',k��"��Ԝ}�� ���%v�׊Z�	�>�)������ѧJM�T{+d��*/N+@�T���T�;��J�H�PІ�Y����$�PhB��+��s��<%U6�D�e��e���䁏/���jb��2d~��L�׼���
h^* Iz��2��iT.� t��	�G�`�5f�ƞ���Ԃ�]L��j(���
�E�3����P�=�P�WVQ�j�Y�<��i��9��H/c1���{����D����W�=e�(�mr��I
%Z::R�̥QF�mIg��,�r�YX��Q&���So���Ҍhi��ieX�2�T#�!���.�r�)8WZQ��(L2$Jُl���q�щO�%+奥�3�.v|y�
2*4}hT�B��!3��� ��Z;o���Y��Ȼ;���<:4����2P�U�E��q8_m����>�.4����$qj�%���i�$�F��'�.�u�h�������G/,)��;�G� j�}��e�_~Ra0��^�_`N���#VRad�?�4�AnᱫpQ	�[�L�v&/�ӆ�ȚR��`�V*ac3c~I���)3k6f��Z�������J%&Pe|�]�q���0�✴ﾭ@�'�����>�Y�Ć\g�Q7:����5O�<T忏Ih������j谦8T܊�#��lI�T�3̤T����"`��u9\� �ڂ����D�x"LJ]�6+��>*��N���%�=�
�����Z{&%�?���V"����*_��c:���`�{�)To����>�?��lv?����|1_��sqq7�>;_�7��ί��!޺Y��kqsw1���2;���'�u�gǑ��v��]��,���
��qp�i]��E��	�ZgyhS�ÃZ�*->#/����d�'�@ۛᮇ^3V�~�"ի�x�Na��l�d:ҽ�I��75s��x1�(f�%2P���.G"\*��7�=ās_�'��C���DVPllv`�LrN]!��ԯ���G�('��D��"�rS�Y��ؗ{,��G:
�T9Mqw��O	�r�(�XNd)�%<����2O��[�e��I�!ja=Q�d[�MJ�6|�sj���L������!���/bV��*�Y�v�*l�"`2�*�{�7`N
ר�r�n�>��ź�׌��b�d��X�_0�|y[&YrkX��H�TA=�����*PU��M{�ְ?�B�C�x���l�𦰾@���.m���� �8��T���J�Ȼۣ���=>ܽ7���^k��uۃ��G~�Q��5W
y��?����\ D�5��6������x��(�y��# LKtZ���I�F�{�\o(��jO�m[FL	�y����d�.;B�6��(���D�=�G�
*S�%Q6w�P�^�۹f7Ad3�&-1x�Dm@Z�kÖxK��a�z�=�F 8��5 ��'�A	H� Ac�{�(OQ�PUv���Opz$ �q;m(9'NE�M�E;N��:0�U޶~�w_�.@��k��:Q(�&��|Gl��=����cO�B2>��Be�~P�>BFL���P�mD��(b�+���*�Ka
��;�\����$�h+��vi���H>��)�t�#�
��ф4G$�6��#���ߓ��h}�E��ǝ��1���2��tЙ�ǭѠ��eW�����z6��x͊zH����G�hK�mÝ¯`�T%Mv@���X�V��AiDm���a$��8�^�_�7({}�%�[ "kSU!/Qӫ��y���%̝5	;�ɸ����)��?�G�O��Ǥc�p�x[+��]�-F(�"�H�#���>A�#��;f��i�`j*���Bա��"b �`�(y;��?s��kp���kӹ��~G,MW��{3?y�#FNb$*^��'9�-�
���!ӑml1)3{�J?P��Y��:�<� ��g2_{�G1�5�<&_DF`��3.�[p,��S����!�X�8�����ǋ�7=�i	S[/��{���H7%fcU��^wE��/�g�K���w�O���͊��ܝVc����׋�GDv�}�������Rjv�n��ӞM]��2��=��,>jO�|V���}&L�*�ƣ�h�>t<>Lo	�)��@h�VHY��llϱ���͵�
'ؤ;�S<�4jOH�ɞ����Q��que�"�� ���oo�f��ә���Y���7���v����?蜌�nO�k�7��ڭ�?�?�ߟ$5��2���ϒWg�vw4���4{������5�Ǿt�����uuwz3[�O��f�j~zwszsu�!ys7[Ԁ9�����Z���O��O{#�ݾ��UI|��E���./ �W7�f%4+5��zȀ����c�Ǩ��SȂZp/iM�Eז��D�)N�~�O�j�ԓ�}�d��q���8m:��W�()�Q�U���رB��*�d��ݚ�G�o�+��)�펤�Vj�d�,�Y�Ud9��uZ�3?�)�����0��&��܇8�:�|�T6&y�ķ,��Վ��"]�oZ�ڂ�߄��H��c�}k��ӝj�QB�����k��M�,a��9#�H�p���z���<��Տgi� �  �w:�[�m)L� [pKWb���}Ezmr�:mZ$o��W��v��`(��+G�e�����hA�j�b[���&z��_���1?�
��ҟ�uIl{>dՄ����Ϧ�ϖ��"Rܣ��l��	|zNT�;Ku���VУtT���*�|�vyD����U�sEW�yMLf�����N����U���e��3oR��&@ݩW���ݿ����(����l�ӕ��&o ��oZ���M��$4	D�z+Ӡ2�"�����s�{�9"�?"=<�E��A;ӥ.����䄎M�����A���8=�[�ܨf�gs��A���dB�kН���� �;��׆�E�Ϲ��5�?���H ������i�;�vۓ�a�T0�N�6S����[�3�`�7;�_������L��a�}G��P�=P��7M���R#��{;���6|aqD�J�t�h��<��k%�j�� 拀k��]�t�1i#��1��4t0 2n��U1��O����Ïܮ���WP�K'?w��b�����v�6�L�Í��\r`S-O���j�d�d1�)�H�w�C��(mj��*�hBS��~v_��;@R�H�:ȃ��7J���jIX���K�Ri~��O�i�V�fj��9��8�R�@W�����W�6Q/W����\U�M`��FW�.�0o�TW6@�Y��~���Ό�Tv?(��o���3m��?[������!���P����m@]�X�SƐ��&gY��\ԃ"6���!V�E�D�;l[�7O��Q�rE��D�P������Ɍ���"W�t�K���_�!�=�f��i�[!���o�o~Ai�"��-Z<>�!�Q~+OY�԰��5��<^������n�ί��_�H�<���;&t��Y;�̽�Q���.��|�E&�?�.��z���~�ף�tH{���.�a�;�Lj�J*���>��ޠ�9���駟����      7   Q   x�̹�0�,�#�z{q�u���`-���髗:5�Ң[�������m��Ø} #�2F0��3N@c�4H�頻���      9   �   x��ѕ!C�I1{������؄n��a0�TMlՍR-td|8�W��������f�L��m6X��l��1տ��_���LXq�ISg}���b�e��x�?f"�辧�xr��zTcs��2}y;�8ʺ�i;JS�\;�܎�����Z�͓���M����o�Xh����3�      ;   q   x��� ��a��]��=ɧC�S*��x�����rk��}��%��6?��*�� �ԍ-���ܪ��#昺����Wl\�
�!V��KT�����	q�n���������      >   Z   x�mʹ�0����s��Q�B���G�F�퍗�=��5y���j+�׊=��3(��ؖ�C��۽L�gyu@Aߕ�r�+�i�˟u��\�      @   `
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
�~������I�"g�ڒB�� �:jS<A٩�_�Vi%�<ċ���/C�v�Q���]�*p�'��e� ��a�#=��g�w���|�5`[�h�V!@G���K�(��S��'<=�;�\ �`�BBX; m��W�jew�l�7�?�>�9�Y�-J������4��M�(d�`O�6��+s����7�;��!WUEF�t�� �w��j�.�x��*���M�u��"� �-R��to�o_g���~��~}��98z��M�"�3�׷-���J�.��F���1{��]v�V��㪬l�����ᄖ@	���<�b�'ÉO_ti����`{×Z�C���_����i[T      B   B   x�3�L�4202�50�52V04�26�20�33417��50EȚ+ZZ H��ӒӐӐ+F��� �c�      D   P   x�3�tL����,.)JL�/�4202�50�5�P0��21�2�г0�016�50�,�2��IM.����L�������0F��� `�v      F      x������ � �      H      x������ � �      J   �  x�e�ю�0E�������<�7*U�X�%RB�ڿ/̌=s�7<>#�S���T��[5��*L���j��oc����O?�P\R�@�-�aE�K
	���`{A�6�=����8O�!5-���(v�=Y?`EаgU�wɖ�e~=܁���V.͋� �uJ��ҨJ�B�����;��~��]_feyZ�� �8��-Ӵ4O����<��[���Gp-Hi���lE
X���X��?�7�YФl�����jG�2��we�3c�������YeDwz�Z��u�݉��B��^GT�,�iq����Ȓ�%u�_�u���~��;�/��P�"]�@"�1/ZLB��/pML����b?���?@v,'��YTlj�dA�4�&+���+�����B�R�Wr�x�w$cl���7%wh:�����]`��m���eN4�1\rW��i �eC������/��5������|���!���h� �J�]�L��!�Dh��0l���|��ȷ4E�-dK�t>e��Bh����O���d �0��LaƄ%���'����\�i���k�'W}{~��h�.o��f����(��IoĴhZ}|��O���w�4�~r��<$"��a�����fuǯ�1o��>�5�D{MJ���_�"���A��D��I`M��_��~��ٚ�$S�'�I�7𐘂m�Mv
��-����?�B�      L      x������ � �      M      x������ � �      P      x������ � �      R      x������ � �      T   �   x�m�Mn1���0U�������%H�])�/�$R%����!��P����6!�~e!U�
���"<�V1�!s���o���CP|l뫁c�@��}�մ�݉��$''�
qǜ�Ύ�L�M�@|������V�݀}��x�0��K��u�`��w��f��U5���DK�}@�����*�O��t�� �^�M      V   L  x���[n�0��d�@й���u0��I<)�R��(�$��	���}p�#�Sյ?���n 誶�*_��h^���J��F��{��v
�4}�a|Vi
��Q�J������BH�S���SS��JlriN^���9�9|�!4�[p���SV@V`T2����?��ܟڟ�񵫎��������¢�n�.�q�oB�"���D�-=r�����04�8��R�k���C{�Oe)��1���+u�%4���*Zi�� l��e�e��|>dI);��֨�8���i�:��jYt�Q1ݿ�j��sw)�/�hA��S�����:���y��0t�k�8����.��8��I�l�Xc��d"�%�X��R��J�����!b�O%�Aw�cD��C��q�#��)��V�n�OO����<B��FW<���s����ߝ"M�X�'� ��2R%(4%��gJ��`a�Q�9H�C*n�[K������Q�����l�R�r��s�zpH�9dJ�B�b�H� };���R�H�BIf޽$s�y�� �R�� ��')����B�a��WH��,Y�Ocf��U�����      X      x������ � �     