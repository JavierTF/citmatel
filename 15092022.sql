PGDMP         #                z            SISGDDO    12.10    12.10 �   y           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            z           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            {           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            |           1262    17606    SISGDDO    DATABASE     �   CREATE DATABASE "SISGDDO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Cuba.1252' LC_CTYPE = 'Spanish_Cuba.1252';
    DROP DATABASE "SISGDDO";
                postgres    false            �            1259    17607    ProyectoBaseApp_userapp    TABLE     �   CREATE TABLE public."ProyectoBaseApp_userapp" (
    user_ptr_id integer NOT NULL,
    uui uuid NOT NULL,
    image character varying(100),
    "referUser" uuid,
    fa2 boolean NOT NULL
);
 -   DROP TABLE public."ProyectoBaseApp_userapp";
       public         heap    postgres    false            c           1259    25439 "   SISGDDO_accion_indicador_objetivos    TABLE     �   CREATE TABLE public."SISGDDO_accion_indicador_objetivos" (
    id integer NOT NULL,
    nombre character varying(80) NOT NULL,
    evaluacion double precision NOT NULL,
    area_id integer,
    indicador_objetivos_id integer
);
 8   DROP TABLE public."SISGDDO_accion_indicador_objetivos";
       public         heap    postgres    false            b           1259    25437 )   SISGDDO_accion_indicador_objetivos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_accion_indicador_objetivos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."SISGDDO_accion_indicador_objetivos_id_seq";
       public          postgres    false    355            }           0    0 )   SISGDDO_accion_indicador_objetivos_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."SISGDDO_accion_indicador_objetivos_id_seq" OWNED BY public."SISGDDO_accion_indicador_objetivos".id;
          public          postgres    false    354            *           1259    24586    SISGDDO_accion_realizada    TABLE     �   CREATE TABLE public."SISGDDO_accion_realizada" (
    id integer NOT NULL,
    fecha timestamp with time zone NOT NULL,
    nombre_accion character varying(150) NOT NULL
);
 .   DROP TABLE public."SISGDDO_accion_realizada";
       public         heap    postgres    false            )           1259    24584    SISGDDO_accion_realizada_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_accion_realizada_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."SISGDDO_accion_realizada_id_seq";
       public          postgres    false    298            ~           0    0    SISGDDO_accion_realizada_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."SISGDDO_accion_realizada_id_seq" OWNED BY public."SISGDDO_accion_realizada".id;
          public          postgres    false    297            �            1259    17610    SISGDDO_acciones    TABLE     �   CREATE TABLE public."SISGDDO_acciones" (
    id integer NOT NULL,
    fecha_cumplir date NOT NULL,
    seguimiento character varying(60) NOT NULL,
    tratamiento character varying(60) NOT NULL
);
 &   DROP TABLE public."SISGDDO_acciones";
       public         heap    postgres    false            �            1259    17613    SISGDDO_acciones_correctivas    TABLE     �   CREATE TABLE public."SISGDDO_acciones_correctivas" (
    acciones_ptr_id integer NOT NULL,
    accion_tomar character varying(255) NOT NULL
);
 2   DROP TABLE public."SISGDDO_acciones_correctivas";
       public         heap    postgres    false            �            1259    17616    SISGDDO_acciones_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_acciones_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."SISGDDO_acciones_id_seq";
       public          postgres    false    203                       0    0    SISGDDO_acciones_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."SISGDDO_acciones_id_seq" OWNED BY public."SISGDDO_acciones".id;
          public          postgres    false    205            �            1259    17618    SISGDDO_acciones_preventivas    TABLE     �   CREATE TABLE public."SISGDDO_acciones_preventivas" (
    acciones_ptr_id integer NOT NULL,
    accion_tomar character varying(255) NOT NULL
);
 2   DROP TABLE public."SISGDDO_acciones_preventivas";
       public         heap    postgres    false            �            1259    17621    SISGDDO_acciones_responsable    TABLE     �   CREATE TABLE public."SISGDDO_acciones_responsable" (
    id integer NOT NULL,
    acciones_id integer NOT NULL,
    trabajador_id integer NOT NULL
);
 2   DROP TABLE public."SISGDDO_acciones_responsable";
       public         heap    postgres    false            �            1259    17624 #   SISGDDO_acciones_responsable_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_acciones_responsable_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."SISGDDO_acciones_responsable_id_seq";
       public          postgres    false    207            �           0    0 #   SISGDDO_acciones_responsable_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."SISGDDO_acciones_responsable_id_seq" OWNED BY public."SISGDDO_acciones_responsable".id;
          public          postgres    false    208            e           1259    25449    SISGDDO_acuerdo    TABLE     �   CREATE TABLE public."SISGDDO_acuerdo" (
    id integer NOT NULL,
    numero integer,
    fecha date NOT NULL,
    fecha_limite date NOT NULL,
    fecha_cumplimiento date NOT NULL,
    observaciones text,
    estado_id integer NOT NULL
);
 %   DROP TABLE public."SISGDDO_acuerdo";
       public         heap    postgres    false            d           1259    25447    SISGDDO_acuerdo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_acuerdo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."SISGDDO_acuerdo_id_seq";
       public          postgres    false    357            �           0    0    SISGDDO_acuerdo_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."SISGDDO_acuerdo_id_seq" OWNED BY public."SISGDDO_acuerdo".id;
          public          postgres    false    356                       1259    25595    SISGDDO_acuerdo_responsable    TABLE     �   CREATE TABLE public."SISGDDO_acuerdo_responsable" (
    id integer NOT NULL,
    acuerdo_id integer NOT NULL,
    trabajador_id integer NOT NULL
);
 1   DROP TABLE public."SISGDDO_acuerdo_responsable";
       public         heap    postgres    false            ~           1259    25593 "   SISGDDO_acuerdo_responsable_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_acuerdo_responsable_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."SISGDDO_acuerdo_responsable_id_seq";
       public          postgres    false    383            �           0    0 "   SISGDDO_acuerdo_responsable_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."SISGDDO_acuerdo_responsable_id_seq" OWNED BY public."SISGDDO_acuerdo_responsable".id;
          public          postgres    false    382            �            1259    17634    SISGDDO_area    TABLE     b   CREATE TABLE public."SISGDDO_area" (
    id integer NOT NULL,
    nombre character varying(65)
);
 "   DROP TABLE public."SISGDDO_area";
       public         heap    postgres    false            �            1259    17637    SISGDDO_area_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_area_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."SISGDDO_area_id_seq";
       public          postgres    false    209            �           0    0    SISGDDO_area_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."SISGDDO_area_id_seq" OWNED BY public."SISGDDO_area".id;
          public          postgres    false    210            �            1259    17650    SISGDDO_auditoria_externa    TABLE     x  CREATE TABLE public."SISGDDO_auditoria_externa" (
    id integer NOT NULL,
    no_registro integer NOT NULL,
    fecha_emision date NOT NULL,
    titulo_inf character varying(80) NOT NULL,
    resultados boolean NOT NULL,
    entidad_id integer NOT NULL,
    plan_medidas character varying(100),
    informe character varying(100),
    observaciones character varying(255)
);
 /   DROP TABLE public."SISGDDO_auditoria_externa";
       public         heap    postgres    false            �            1259    17658     SISGDDO_auditoria_externa_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_auditoria_externa_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."SISGDDO_auditoria_externa_id_seq";
       public          postgres    false    211            �           0    0     SISGDDO_auditoria_externa_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."SISGDDO_auditoria_externa_id_seq" OWNED BY public."SISGDDO_auditoria_externa".id;
          public          postgres    false    212            _           1259    25360 !   SISGDDO_auditoria_externa_proceso    TABLE     �   CREATE TABLE public."SISGDDO_auditoria_externa_proceso" (
    id integer NOT NULL,
    auditoria_externa_id integer NOT NULL,
    proceso_id integer NOT NULL
);
 7   DROP TABLE public."SISGDDO_auditoria_externa_proceso";
       public         heap    postgres    false            ^           1259    25358 (   SISGDDO_auditoria_externa_proceso_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_auditoria_externa_proceso_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."SISGDDO_auditoria_externa_proceso_id_seq";
       public          postgres    false    351            �           0    0 (   SISGDDO_auditoria_externa_proceso_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."SISGDDO_auditoria_externa_proceso_id_seq" OWNED BY public."SISGDDO_auditoria_externa_proceso".id;
          public          postgres    false    350            �            1259    17660    SISGDDO_auditoria_interna    TABLE     �   CREATE TABLE public."SISGDDO_auditoria_interna" (
    id integer NOT NULL,
    titulo_inf character varying(80) NOT NULL,
    fecha_aud date NOT NULL,
    informe character varying(100),
    proceso_id integer,
    responsable_id integer
);
 /   DROP TABLE public."SISGDDO_auditoria_interna";
       public         heap    postgres    false            �            1259    17663     SISGDDO_auditoria_interna_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_auditoria_interna_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."SISGDDO_auditoria_interna_id_seq";
       public          postgres    false    213            �           0    0     SISGDDO_auditoria_interna_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."SISGDDO_auditoria_interna_id_seq" OWNED BY public."SISGDDO_auditoria_interna".id;
          public          postgres    false    214            �            1259    17670    SISGDDO_cambiarlogotipo    TABLE     �   CREATE TABLE public."SISGDDO_cambiarlogotipo" (
    id integer NOT NULL,
    fecha_cambio date NOT NULL,
    logo character varying(100) NOT NULL
);
 -   DROP TABLE public."SISGDDO_cambiarlogotipo";
       public         heap    postgres    false            �            1259    17673    SISGDDO_cambiarlogotipo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_cambiarlogotipo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."SISGDDO_cambiarlogotipo_id_seq";
       public          postgres    false    215            �           0    0    SISGDDO_cambiarlogotipo_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."SISGDDO_cambiarlogotipo_id_seq" OWNED BY public."SISGDDO_cambiarlogotipo".id;
          public          postgres    false    216            g           1259    25462 .   SISGDDO_clasificacion_dibujo_modelo_industrial    TABLE     �   CREATE TABLE public."SISGDDO_clasificacion_dibujo_modelo_industrial" (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 D   DROP TABLE public."SISGDDO_clasificacion_dibujo_modelo_industrial";
       public         heap    postgres    false            f           1259    25460 5   SISGDDO_clasificacion_dibujo_modelo_industrial_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_clasificacion_dibujo_modelo_industrial_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public."SISGDDO_clasificacion_dibujo_modelo_industrial_id_seq";
       public          postgres    false    359            �           0    0 5   SISGDDO_clasificacion_dibujo_modelo_industrial_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."SISGDDO_clasificacion_dibujo_modelo_industrial_id_seq" OWNED BY public."SISGDDO_clasificacion_dibujo_modelo_industrial".id;
          public          postgres    false    358            i           1259    25472 )   SISGDDO_clasificacion_elemento_figurativo    TABLE     �   CREATE TABLE public."SISGDDO_clasificacion_elemento_figurativo" (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 ?   DROP TABLE public."SISGDDO_clasificacion_elemento_figurativo";
       public         heap    postgres    false            h           1259    25470 0   SISGDDO_clasificacion_elemento_figurativo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_clasificacion_elemento_figurativo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public."SISGDDO_clasificacion_elemento_figurativo_id_seq";
       public          postgres    false    361            �           0    0 0   SISGDDO_clasificacion_elemento_figurativo_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."SISGDDO_clasificacion_elemento_figurativo_id_seq" OWNED BY public."SISGDDO_clasificacion_elemento_figurativo".id;
          public          postgres    false    360            k           1259    25482    SISGDDO_clasificacion_patente    TABLE     }   CREATE TABLE public."SISGDDO_clasificacion_patente" (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL
);
 3   DROP TABLE public."SISGDDO_clasificacion_patente";
       public         heap    postgres    false            j           1259    25480 $   SISGDDO_clasificacion_patente_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_clasificacion_patente_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."SISGDDO_clasificacion_patente_id_seq";
       public          postgres    false    363            �           0    0 $   SISGDDO_clasificacion_patente_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."SISGDDO_clasificacion_patente_id_seq" OWNED BY public."SISGDDO_clasificacion_patente".id;
          public          postgres    false    362            m           1259    25492 )   SISGDDO_clasificacion_productos_servicios    TABLE     �   CREATE TABLE public."SISGDDO_clasificacion_productos_servicios" (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    producto boolean NOT NULL,
    premio boolean NOT NULL
);
 ?   DROP TABLE public."SISGDDO_clasificacion_productos_servicios";
       public         heap    postgres    false            l           1259    25490 0   SISGDDO_clasificacion_productos_servicios_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_clasificacion_productos_servicios_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public."SISGDDO_clasificacion_productos_servicios_id_seq";
       public          postgres    false    365            �           0    0 0   SISGDDO_clasificacion_productos_servicios_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."SISGDDO_clasificacion_productos_servicios_id_seq" OWNED BY public."SISGDDO_clasificacion_productos_servicios".id;
          public          postgres    false    364            o           1259    25502    SISGDDO_clasificacion_viena    TABLE     z   CREATE TABLE public."SISGDDO_clasificacion_viena" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
 1   DROP TABLE public."SISGDDO_clasificacion_viena";
       public         heap    postgres    false            n           1259    25500 "   SISGDDO_clasificacion_viena_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_clasificacion_viena_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."SISGDDO_clasificacion_viena_id_seq";
       public          postgres    false    367            �           0    0 "   SISGDDO_clasificacion_viena_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."SISGDDO_clasificacion_viena_id_seq" OWNED BY public."SISGDDO_clasificacion_viena".id;
          public          postgres    false    366            ,           1259    24594    SISGDDO_cliente    TABLE     n   CREATE TABLE public."SISGDDO_cliente" (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
 %   DROP TABLE public."SISGDDO_cliente";
       public         heap    postgres    false            +           1259    24592    SISGDDO_cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_cliente_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."SISGDDO_cliente_id_seq";
       public          postgres    false    300            �           0    0    SISGDDO_cliente_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."SISGDDO_cliente_id_seq" OWNED BY public."SISGDDO_cliente".id;
          public          postgres    false    299            -           1259    24600    SISGDDO_conclusion_adicional    TABLE     �   CREATE TABLE public."SISGDDO_conclusion_adicional" (
    proyecto_ptr_id integer NOT NULL,
    fecha date NOT NULL,
    descripcion text NOT NULL
);
 2   DROP TABLE public."SISGDDO_conclusion_adicional";
       public         heap    postgres    false            �            1259    17695    SISGDDO_curso    TABLE     �   CREATE TABLE public."SISGDDO_curso" (
    id integer NOT NULL,
    "nombre_Curso" character varying(25) NOT NULL,
    fecha date NOT NULL
);
 #   DROP TABLE public."SISGDDO_curso";
       public         heap    postgres    false            �            1259    17698    SISGDDO_curso_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_curso_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."SISGDDO_curso_id_seq";
       public          postgres    false    217            �           0    0    SISGDDO_curso_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SISGDDO_curso_id_seq" OWNED BY public."SISGDDO_curso".id;
          public          postgres    false    218            .           1259    24608    SISGDDO_dato_adicional    TABLE     �   CREATE TABLE public."SISGDDO_dato_adicional" (
    proyecto_ptr_id integer NOT NULL,
    fecha date NOT NULL,
    descripcion text NOT NULL
);
 ,   DROP TABLE public."SISGDDO_dato_adicional";
       public         heap    postgres    false            �            1259    17700    SISGDDO_dictamen_tecnico    TABLE     �  CREATE TABLE public."SISGDDO_dictamen_tecnico" (
    id integer NOT NULL,
    no_dictamen character varying(7) NOT NULL,
    fecha date NOT NULL,
    nombre_capitulos character varying(25),
    documento character varying(100),
    disennador_id integer,
    entradas_proyectos_id integer NOT NULL,
    estado_dictamen_id integer NOT NULL,
    eval_por_id integer NOT NULL,
    idioma_subtitulado_id integer,
    nuevo_idioma_id integer
);
 .   DROP TABLE public."SISGDDO_dictamen_tecnico";
       public         heap    postgres    false            �            1259    17703    SISGDDO_dictamen_tecnico_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_dictamen_tecnico_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."SISGDDO_dictamen_tecnico_id_seq";
       public          postgres    false    219            �           0    0    SISGDDO_dictamen_tecnico_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."SISGDDO_dictamen_tecnico_id_seq" OWNED BY public."SISGDDO_dictamen_tecnico".id;
          public          postgres    false    220            �            1259    17705    SISGDDO_eficacia    TABLE       CREATE TABLE public."SISGDDO_eficacia" (
    id integer NOT NULL,
    eficaz boolean NOT NULL,
    anno date NOT NULL,
    evaluado_por_id integer,
    responsable_id integer,
    semestre boolean NOT NULL,
    proceso_asociado_id integer,
    proceso_ef_id integer
);
 &   DROP TABLE public."SISGDDO_eficacia";
       public         heap    postgres    false            �            1259    17708    SISGDDO_eficacia_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_eficacia_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."SISGDDO_eficacia_id_seq";
       public          postgres    false    221            �           0    0    SISGDDO_eficacia_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."SISGDDO_eficacia_id_seq" OWNED BY public."SISGDDO_eficacia".id;
          public          postgres    false    222            W           1259    24914    SISGDDO_eficacia_indicador    TABLE     �   CREATE TABLE public."SISGDDO_eficacia_indicador" (
    id integer NOT NULL,
    eficacia_id integer NOT NULL,
    indicador_id integer NOT NULL
);
 0   DROP TABLE public."SISGDDO_eficacia_indicador";
       public         heap    postgres    false            V           1259    24912 !   SISGDDO_eficacia_indicador_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_eficacia_indicador_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."SISGDDO_eficacia_indicador_id_seq";
       public          postgres    false    343            �           0    0 !   SISGDDO_eficacia_indicador_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."SISGDDO_eficacia_indicador_id_seq" OWNED BY public."SISGDDO_eficacia_indicador".id;
          public          postgres    false    342            �            1259    17710    SISGDDO_entidad    TABLE     �   CREATE TABLE public."SISGDDO_entidad" (
    id integer NOT NULL,
    "nombre_Entidad" character varying(25) NOT NULL,
    activo boolean NOT NULL
);
 %   DROP TABLE public."SISGDDO_entidad";
       public         heap    postgres    false            �            1259    17713    SISGDDO_entidad_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_entidad_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."SISGDDO_entidad_id_seq";
       public          postgres    false    223            �           0    0    SISGDDO_entidad_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."SISGDDO_entidad_id_seq" OWNED BY public."SISGDDO_entidad".id;
          public          postgres    false    224            �            1259    17715    SISGDDO_entradas_proyecto    TABLE     �   CREATE TABLE public."SISGDDO_entradas_proyecto" (
    id integer NOT NULL,
    entregado_por_id integer,
    estado_id integer,
    fecha_entrada date NOT NULL,
    fecha_salida date
);
 /   DROP TABLE public."SISGDDO_entradas_proyecto";
       public         heap    postgres    false            Y           1259    24922 !   SISGDDO_entradas_proyecto_formato    TABLE     �   CREATE TABLE public."SISGDDO_entradas_proyecto_formato" (
    id integer NOT NULL,
    entradas_proyecto_id integer NOT NULL,
    formato_id integer NOT NULL
);
 7   DROP TABLE public."SISGDDO_entradas_proyecto_formato";
       public         heap    postgres    false            X           1259    24920 (   SISGDDO_entradas_proyecto_formato_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_entradas_proyecto_formato_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."SISGDDO_entradas_proyecto_formato_id_seq";
       public          postgres    false    345            �           0    0 (   SISGDDO_entradas_proyecto_formato_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."SISGDDO_entradas_proyecto_formato_id_seq" OWNED BY public."SISGDDO_entradas_proyecto_formato".id;
          public          postgres    false    344            �            1259    17723     SISGDDO_entradas_proyecto_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_entradas_proyecto_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."SISGDDO_entradas_proyecto_id_seq";
       public          postgres    false    225            �           0    0     SISGDDO_entradas_proyecto_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."SISGDDO_entradas_proyecto_id_seq" OWNED BY public."SISGDDO_entradas_proyecto".id;
          public          postgres    false    226            �            1259    17725    SISGDDO_estado_acuerdo    TABLE     l   CREATE TABLE public."SISGDDO_estado_acuerdo" (
    id integer NOT NULL,
    nombre character varying(25)
);
 ,   DROP TABLE public."SISGDDO_estado_acuerdo";
       public         heap    postgres    false            �            1259    17728    SISGDDO_estado_acuerdo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_estado_acuerdo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."SISGDDO_estado_acuerdo_id_seq";
       public          postgres    false    227            �           0    0    SISGDDO_estado_acuerdo_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."SISGDDO_estado_acuerdo_id_seq" OWNED BY public."SISGDDO_estado_acuerdo".id;
          public          postgres    false    228            �            1259    17730    SISGDDO_estado_dictamen    TABLE        CREATE TABLE public."SISGDDO_estado_dictamen" (
    id integer NOT NULL,
    "nombre_Estado" character varying(25) NOT NULL
);
 -   DROP TABLE public."SISGDDO_estado_dictamen";
       public         heap    postgres    false            �            1259    17733    SISGDDO_estado_dictamen_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_estado_dictamen_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."SISGDDO_estado_dictamen_id_seq";
       public          postgres    false    229            �           0    0    SISGDDO_estado_dictamen_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."SISGDDO_estado_dictamen_id_seq" OWNED BY public."SISGDDO_estado_dictamen".id;
          public          postgres    false    230            �            1259    17735     SISGDDO_estado_entradas_proyecto    TABLE     �   CREATE TABLE public."SISGDDO_estado_entradas_proyecto" (
    id integer NOT NULL,
    "nombre_Estado" character varying(25) NOT NULL
);
 6   DROP TABLE public."SISGDDO_estado_entradas_proyecto";
       public         heap    postgres    false            �            1259    17738 '   SISGDDO_estado_entradas_proyecto_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_estado_entradas_proyecto_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."SISGDDO_estado_entradas_proyecto_id_seq";
       public          postgres    false    231            �           0    0 '   SISGDDO_estado_entradas_proyecto_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."SISGDDO_estado_entradas_proyecto_id_seq" OWNED BY public."SISGDDO_estado_entradas_proyecto".id;
          public          postgres    false    232            0           1259    24618    SISGDDO_estado_incidencia    TABLE     x   CREATE TABLE public."SISGDDO_estado_incidencia" (
    id integer NOT NULL,
    estado character varying(25) NOT NULL
);
 /   DROP TABLE public."SISGDDO_estado_incidencia";
       public         heap    postgres    false            /           1259    24616     SISGDDO_estado_incidencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_estado_incidencia_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."SISGDDO_estado_incidencia_id_seq";
       public          postgres    false    304            �           0    0     SISGDDO_estado_incidencia_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."SISGDDO_estado_incidencia_id_seq" OWNED BY public."SISGDDO_estado_incidencia".id;
          public          postgres    false    303            q           1259    25512 "   SISGDDO_estado_indicador_objetivos    TABLE     �   CREATE TABLE public."SISGDDO_estado_indicador_objetivos" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
 8   DROP TABLE public."SISGDDO_estado_indicador_objetivos";
       public         heap    postgres    false            p           1259    25510 )   SISGDDO_estado_indicador_objetivos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_estado_indicador_objetivos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."SISGDDO_estado_indicador_objetivos_id_seq";
       public          postgres    false    369            �           0    0 )   SISGDDO_estado_indicador_objetivos_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."SISGDDO_estado_indicador_objetivos_id_seq" OWNED BY public."SISGDDO_estado_indicador_objetivos".id;
          public          postgres    false    368            2           1259    24626    SISGDDO_estado_licencia    TABLE     v   CREATE TABLE public."SISGDDO_estado_licencia" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
 -   DROP TABLE public."SISGDDO_estado_licencia";
       public         heap    postgres    false            1           1259    24624    SISGDDO_estado_licencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_estado_licencia_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."SISGDDO_estado_licencia_id_seq";
       public          postgres    false    306            �           0    0    SISGDDO_estado_licencia_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."SISGDDO_estado_licencia_id_seq" OWNED BY public."SISGDDO_estado_licencia".id;
          public          postgres    false    305            s           1259    25522 #   SISGDDO_estado_propiedad_industrial    TABLE     �   CREATE TABLE public."SISGDDO_estado_propiedad_industrial" (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
 9   DROP TABLE public."SISGDDO_estado_propiedad_industrial";
       public         heap    postgres    false            r           1259    25520 *   SISGDDO_estado_propiedad_industrial_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_estado_propiedad_industrial_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."SISGDDO_estado_propiedad_industrial_id_seq";
       public          postgres    false    371            �           0    0 *   SISGDDO_estado_propiedad_industrial_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."SISGDDO_estado_propiedad_industrial_id_seq" OWNED BY public."SISGDDO_estado_propiedad_industrial".id;
          public          postgres    false    370            4           1259    24636 $   SISGDDO_estado_propiedad_intelectual    TABLE     �   CREATE TABLE public."SISGDDO_estado_propiedad_intelectual" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
 :   DROP TABLE public."SISGDDO_estado_propiedad_intelectual";
       public         heap    postgres    false            3           1259    24634 +   SISGDDO_estado_propiedad_intelectual_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_estado_propiedad_intelectual_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."SISGDDO_estado_propiedad_intelectual_id_seq";
       public          postgres    false    308            �           0    0 +   SISGDDO_estado_propiedad_intelectual_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."SISGDDO_estado_propiedad_intelectual_id_seq" OWNED BY public."SISGDDO_estado_propiedad_intelectual".id;
          public          postgres    false    307            �            1259    17745    SISGDDO_estado_proyecto    TABLE        CREATE TABLE public."SISGDDO_estado_proyecto" (
    id integer NOT NULL,
    "nombre_Estado" character varying(25) NOT NULL
);
 -   DROP TABLE public."SISGDDO_estado_proyecto";
       public         heap    postgres    false            �            1259    17748    SISGDDO_estado_proyecto_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_estado_proyecto_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."SISGDDO_estado_proyecto_id_seq";
       public          postgres    false    233            �           0    0    SISGDDO_estado_proyecto_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."SISGDDO_estado_proyecto_id_seq" OWNED BY public."SISGDDO_estado_proyecto".id;
          public          postgres    false    234            �            1259    17750    SISGDDO_formacion_personal    TABLE     �   CREATE TABLE public."SISGDDO_formacion_personal" (
    id integer NOT NULL,
    titulo character varying(25) NOT NULL,
    capacitacion_necesita text NOT NULL
);
 0   DROP TABLE public."SISGDDO_formacion_personal";
       public         heap    postgres    false            �            1259    17756 1   SISGDDO_formacion_personal_capacitacion_adquirida    TABLE     �   CREATE TABLE public."SISGDDO_formacion_personal_capacitacion_adquirida" (
    id integer NOT NULL,
    formacion_personal_id integer NOT NULL,
    curso_id integer NOT NULL
);
 G   DROP TABLE public."SISGDDO_formacion_personal_capacitacion_adquirida";
       public         heap    postgres    false            �            1259    17759 8   SISGDDO_formacion_personal_capacitacion_adquirida_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_formacion_personal_capacitacion_adquirida_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 Q   DROP SEQUENCE public."SISGDDO_formacion_personal_capacitacion_adquirida_id_seq";
       public          postgres    false    236            �           0    0 8   SISGDDO_formacion_personal_capacitacion_adquirida_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."SISGDDO_formacion_personal_capacitacion_adquirida_id_seq" OWNED BY public."SISGDDO_formacion_personal_capacitacion_adquirida".id;
          public          postgres    false    237            �            1259    17761 !   SISGDDO_formacion_personal_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_formacion_personal_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."SISGDDO_formacion_personal_id_seq";
       public          postgres    false    235            �           0    0 !   SISGDDO_formacion_personal_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."SISGDDO_formacion_personal_id_seq" OWNED BY public."SISGDDO_formacion_personal".id;
          public          postgres    false    238            6           1259    24646    SISGDDO_formato    TABLE     �   CREATE TABLE public."SISGDDO_formato" (
    id integer NOT NULL,
    nombre character varying(25) NOT NULL,
    activo boolean NOT NULL
);
 %   DROP TABLE public."SISGDDO_formato";
       public         heap    postgres    false            5           1259    24644    SISGDDO_formato_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_formato_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."SISGDDO_formato_id_seq";
       public          postgres    false    310            �           0    0    SISGDDO_formato_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."SISGDDO_formato_id_seq" OWNED BY public."SISGDDO_formato".id;
          public          postgres    false    309            8           1259    24656    SISGDDO_fuente_financiamiento    TABLE     |   CREATE TABLE public."SISGDDO_fuente_financiamiento" (
    id integer NOT NULL,
    nombre character varying(80) NOT NULL
);
 3   DROP TABLE public."SISGDDO_fuente_financiamiento";
       public         heap    postgres    false            7           1259    24654 $   SISGDDO_fuente_financiamiento_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_fuente_financiamiento_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."SISGDDO_fuente_financiamiento_id_seq";
       public          postgres    false    312            �           0    0 $   SISGDDO_fuente_financiamiento_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."SISGDDO_fuente_financiamiento_id_seq" OWNED BY public."SISGDDO_fuente_financiamiento".id;
          public          postgres    false    311            �            1259    17768 "   SISGDDO_historico_dictamen_tecnico    TABLE     �   CREATE TABLE public."SISGDDO_historico_dictamen_tecnico" (
    id integer NOT NULL,
    fecha_entreda timestamp with time zone NOT NULL,
    fecha_envio_resultado timestamp with time zone NOT NULL,
    dictamen_tecnico_id integer NOT NULL
);
 8   DROP TABLE public."SISGDDO_historico_dictamen_tecnico";
       public         heap    postgres    false            �            1259    17771 )   SISGDDO_historico_dictamen_tecnico_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_historico_dictamen_tecnico_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."SISGDDO_historico_dictamen_tecnico_id_seq";
       public          postgres    false    239            �           0    0 )   SISGDDO_historico_dictamen_tecnico_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."SISGDDO_historico_dictamen_tecnico_id_seq" OWNED BY public."SISGDDO_historico_dictamen_tecnico".id;
          public          postgres    false    240            �            1259    17773 $   SISGDDO_historico_entradas_proyectos    TABLE     .  CREATE TABLE public."SISGDDO_historico_entradas_proyectos" (
    id integer NOT NULL,
    comentarios character varying(55) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    entradas_proyectos_id integer NOT NULL,
    entregado_por_id integer NOT NULL,
    recibida_por_id integer NOT NULL
);
 :   DROP TABLE public."SISGDDO_historico_entradas_proyectos";
       public         heap    postgres    false            �            1259    17776 +   SISGDDO_historico_entradas_proyectos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_historico_entradas_proyectos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."SISGDDO_historico_entradas_proyectos_id_seq";
       public          postgres    false    241            �           0    0 +   SISGDDO_historico_entradas_proyectos_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."SISGDDO_historico_entradas_proyectos_id_seq" OWNED BY public."SISGDDO_historico_entradas_proyectos".id;
          public          postgres    false    242            �            1259    17778    SISGDDO_idioma    TABLE     d   CREATE TABLE public."SISGDDO_idioma" (
    id integer NOT NULL,
    nombre character varying(25)
);
 $   DROP TABLE public."SISGDDO_idioma";
       public         heap    postgres    false            �            1259    17781    SISGDDO_idioma_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_idioma_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."SISGDDO_idioma_id_seq";
       public          postgres    false    243            �           0    0    SISGDDO_idioma_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."SISGDDO_idioma_id_seq" OWNED BY public."SISGDDO_idioma".id;
          public          postgres    false    244            :           1259    24664    SISGDDO_incidencia    TABLE       CREATE TABLE public."SISGDDO_incidencia" (
    id integer NOT NULL,
    fecha_recepcion date NOT NULL,
    fecha_cierre date NOT NULL,
    descripcion character varying(250) NOT NULL,
    respuesta text NOT NULL,
    estado_id integer NOT NULL,
    trabajador_id integer NOT NULL
);
 (   DROP TABLE public."SISGDDO_incidencia";
       public         heap    postgres    false            9           1259    24662    SISGDDO_incidencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_incidencia_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."SISGDDO_incidencia_id_seq";
       public          postgres    false    314            �           0    0    SISGDDO_incidencia_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."SISGDDO_incidencia_id_seq" OWNED BY public."SISGDDO_incidencia".id;
          public          postgres    false    313            <           1259    24675    SISGDDO_indicador    TABLE     �   CREATE TABLE public."SISGDDO_indicador" (
    id integer NOT NULL,
    nombre character varying(80) NOT NULL,
    evaluacion double precision NOT NULL,
    proceso_id integer
);
 '   DROP TABLE public."SISGDDO_indicador";
       public         heap    postgres    false            ;           1259    24673    SISGDDO_indicador_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_indicador_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."SISGDDO_indicador_id_seq";
       public          postgres    false    316            �           0    0    SISGDDO_indicador_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."SISGDDO_indicador_id_seq" OWNED BY public."SISGDDO_indicador".id;
          public          postgres    false    315            u           1259    25532    SISGDDO_indicador_objetivos    TABLE     �   CREATE TABLE public."SISGDDO_indicador_objetivos" (
    id integer NOT NULL,
    nombre character varying(80) NOT NULL,
    evaluacion double precision NOT NULL,
    estado_id integer,
    objetivo_id integer
);
 1   DROP TABLE public."SISGDDO_indicador_objetivos";
       public         heap    postgres    false            t           1259    25530 "   SISGDDO_indicador_objetivos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_indicador_objetivos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."SISGDDO_indicador_objetivos_id_seq";
       public          postgres    false    373            �           0    0 "   SISGDDO_indicador_objetivos_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."SISGDDO_indicador_objetivos_id_seq" OWNED BY public."SISGDDO_indicador_objetivos".id;
          public          postgres    false    372            >           1259    24685    SISGDDO_licencia    TABLE     F  CREATE TABLE public."SISGDDO_licencia" (
    id integer NOT NULL,
    no character varying(10000) NOT NULL,
    nombre character varying(55) NOT NULL,
    fecha_otorgamiento date NOT NULL,
    fecha_vencimiento date NOT NULL,
    entidad_id integer NOT NULL,
    estado_id integer NOT NULL,
    proceso_id integer NOT NULL
);
 &   DROP TABLE public."SISGDDO_licencia";
       public         heap    postgres    false            =           1259    24683    SISGDDO_licencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_licencia_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."SISGDDO_licencia_id_seq";
       public          postgres    false    318            �           0    0    SISGDDO_licencia_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."SISGDDO_licencia_id_seq" OWNED BY public."SISGDDO_licencia".id;
          public          postgres    false    317            U           1259    24906    SISGDDO_licencia_responsable    TABLE     �   CREATE TABLE public."SISGDDO_licencia_responsable" (
    id integer NOT NULL,
    licencia_id integer NOT NULL,
    trabajador_id integer NOT NULL
);
 2   DROP TABLE public."SISGDDO_licencia_responsable";
       public         heap    postgres    false            T           1259    24904 #   SISGDDO_licencia_responsable_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_licencia_responsable_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."SISGDDO_licencia_responsable_id_seq";
       public          postgres    false    341            �           0    0 #   SISGDDO_licencia_responsable_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."SISGDDO_licencia_responsable_id_seq" OWNED BY public."SISGDDO_licencia_responsable".id;
          public          postgres    false    340            @           1259    24700    SISGDDO_linea_tematica    TABLE     �   CREATE TABLE public."SISGDDO_linea_tematica" (
    id integer NOT NULL,
    nombre character varying(55) NOT NULL,
    anno character varying(4)
);
 ,   DROP TABLE public."SISGDDO_linea_tematica";
       public         heap    postgres    false            ?           1259    24698    SISGDDO_linea_tematica_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_linea_tematica_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."SISGDDO_linea_tematica_id_seq";
       public          postgres    false    320            �           0    0    SISGDDO_linea_tematica_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."SISGDDO_linea_tematica_id_seq" OWNED BY public."SISGDDO_linea_tematica".id;
          public          postgres    false    319            �            1259    17802    SISGDDO_metodosprueba    TABLE     t   CREATE TABLE public."SISGDDO_metodosprueba" (
    id integer NOT NULL,
    metodo character varying(25) NOT NULL
);
 +   DROP TABLE public."SISGDDO_metodosprueba";
       public         heap    postgres    false            �            1259    17805    SISGDDO_metodosprueba_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_metodosprueba_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."SISGDDO_metodosprueba_id_seq";
       public          postgres    false    245            �           0    0    SISGDDO_metodosprueba_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."SISGDDO_metodosprueba_id_seq" OWNED BY public."SISGDDO_metodosprueba".id;
          public          postgres    false    246            w           1259    25542    SISGDDO_modalidad    TABLE     p   CREATE TABLE public."SISGDDO_modalidad" (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
 '   DROP TABLE public."SISGDDO_modalidad";
       public         heap    postgres    false            v           1259    25540    SISGDDO_modalidad_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_modalidad_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."SISGDDO_modalidad_id_seq";
       public          postgres    false    375            �           0    0    SISGDDO_modalidad_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."SISGDDO_modalidad_id_seq" OWNED BY public."SISGDDO_modalidad".id;
          public          postgres    false    374            B           1259    24710    SISGDDO_notificacion    TABLE       CREATE TABLE public."SISGDDO_notificacion" (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    titulo character varying(60) NOT NULL,
    licencia_id integer NOT NULL,
    premio_id integer NOT NULL,
    propiedad_intelectual_id integer NOT NULL
);
 *   DROP TABLE public."SISGDDO_notificacion";
       public         heap    postgres    false            A           1259    24708    SISGDDO_notificacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_notificacion_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."SISGDDO_notificacion_id_seq";
       public          postgres    false    322            �           0    0    SISGDDO_notificacion_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."SISGDDO_notificacion_id_seq" OWNED BY public."SISGDDO_notificacion".id;
          public          postgres    false    321            y           1259    25552    SISGDDO_objetivo    TABLE     �   CREATE TABLE public."SISGDDO_objetivo" (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    fecha_definicion date NOT NULL,
    area_id integer NOT NULL
);
 &   DROP TABLE public."SISGDDO_objetivo";
       public         heap    postgres    false            x           1259    25550    SISGDDO_objetivo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_objetivo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."SISGDDO_objetivo_id_seq";
       public          postgres    false    377            �           0    0    SISGDDO_objetivo_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."SISGDDO_objetivo_id_seq" OWNED BY public."SISGDDO_objetivo".id;
          public          postgres    false    376            �            1259    17815    SISGDDO_organismo    TABLE     �   CREATE TABLE public."SISGDDO_organismo" (
    id integer NOT NULL,
    "nombre_Organismo" character varying(25) NOT NULL,
    activo boolean NOT NULL
);
 '   DROP TABLE public."SISGDDO_organismo";
       public         heap    postgres    false            �            1259    17818    SISGDDO_organismo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_organismo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."SISGDDO_organismo_id_seq";
       public          postgres    false    247            �           0    0    SISGDDO_organismo_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."SISGDDO_organismo_id_seq" OWNED BY public."SISGDDO_organismo".id;
          public          postgres    false    248            {           1259    25562    SISGDDO_pais    TABLE     b   CREATE TABLE public."SISGDDO_pais" (
    id integer NOT NULL,
    nombre character varying(65)
);
 "   DROP TABLE public."SISGDDO_pais";
       public         heap    postgres    false            z           1259    25560    SISGDDO_pais_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_pais_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."SISGDDO_pais_id_seq";
       public          postgres    false    379            �           0    0    SISGDDO_pais_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."SISGDDO_pais_id_seq" OWNED BY public."SISGDDO_pais".id;
          public          postgres    false    378            (           1259    18832    SISGDDO_permisos_personalizados    TABLE     S   CREATE TABLE public."SISGDDO_permisos_personalizados" (
    id integer NOT NULL
);
 5   DROP TABLE public."SISGDDO_permisos_personalizados";
       public         heap    postgres    false            '           1259    18830 &   SISGDDO_permisos_personalizados_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_permisos_personalizados_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."SISGDDO_permisos_personalizados_id_seq";
       public          postgres    false    296            �           0    0 &   SISGDDO_permisos_personalizados_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."SISGDDO_permisos_personalizados_id_seq" OWNED BY public."SISGDDO_permisos_personalizados".id;
          public          postgres    false    295            �            1259    17820    SISGDDO_plan_medidas    TABLE     �   CREATE TABLE public."SISGDDO_plan_medidas" (
    id integer NOT NULL,
    actividad character varying(50) NOT NULL,
    titulo_doc character varying(80) NOT NULL,
    fecha date NOT NULL,
    proceso_id integer NOT NULL
);
 *   DROP TABLE public."SISGDDO_plan_medidas";
       public         heap    postgres    false            �            1259    17823    SISGDDO_plan_medidas_acciones    TABLE     �   CREATE TABLE public."SISGDDO_plan_medidas_acciones" (
    id integer NOT NULL,
    plan_medidas_id integer NOT NULL,
    acciones_id integer NOT NULL
);
 3   DROP TABLE public."SISGDDO_plan_medidas_acciones";
       public         heap    postgres    false            �            1259    17826 $   SISGDDO_plan_medidas_acciones_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_plan_medidas_acciones_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."SISGDDO_plan_medidas_acciones_id_seq";
       public          postgres    false    250            �           0    0 $   SISGDDO_plan_medidas_acciones_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."SISGDDO_plan_medidas_acciones_id_seq" OWNED BY public."SISGDDO_plan_medidas_acciones".id;
          public          postgres    false    251            �            1259    17828    SISGDDO_plan_medidas_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_plan_medidas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."SISGDDO_plan_medidas_id_seq";
       public          postgres    false    249            �           0    0    SISGDDO_plan_medidas_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."SISGDDO_plan_medidas_id_seq" OWNED BY public."SISGDDO_plan_medidas".id;
          public          postgres    false    252            D           1259    24718    SISGDDO_premio    TABLE     �   CREATE TABLE public."SISGDDO_premio" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    premio boolean NOT NULL,
    entidad_id integer NOT NULL
);
 $   DROP TABLE public."SISGDDO_premio";
       public         heap    postgres    false            C           1259    24716    SISGDDO_premio_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_premio_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."SISGDDO_premio_id_seq";
       public          postgres    false    324            �           0    0    SISGDDO_premio_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."SISGDDO_premio_id_seq" OWNED BY public."SISGDDO_premio".id;
          public          postgres    false    323            a           1259    25378    SISGDDO_procedimiento    TABLE     �   CREATE TABLE public."SISGDDO_procedimiento" (
    id integer NOT NULL,
    codigo character varying(10),
    nombre character varying(60) NOT NULL,
    proceso_id integer NOT NULL
);
 +   DROP TABLE public."SISGDDO_procedimiento";
       public         heap    postgres    false            `           1259    25376    SISGDDO_procedimiento_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_procedimiento_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."SISGDDO_procedimiento_id_seq";
       public          postgres    false    353            �           0    0    SISGDDO_procedimiento_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."SISGDDO_procedimiento_id_seq" OWNED BY public."SISGDDO_procedimiento".id;
          public          postgres    false    352            �            1259    17830    SISGDDO_proceso    TABLE     �   CREATE TABLE public."SISGDDO_proceso" (
    id integer NOT NULL,
    abreviatura character varying(3) NOT NULL,
    nombre character varying(60)
);
 %   DROP TABLE public."SISGDDO_proceso";
       public         heap    postgres    false            �            1259    17833    SISGDDO_proceso_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_proceso_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."SISGDDO_proceso_id_seq";
       public          postgres    false    253            �           0    0    SISGDDO_proceso_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."SISGDDO_proceso_id_seq" OWNED BY public."SISGDDO_proceso".id;
          public          postgres    false    254            N           1259    24784    SISGDDO_proceso_responsable    TABLE     �   CREATE TABLE public."SISGDDO_proceso_responsable" (
    id integer NOT NULL,
    proceso_id integer NOT NULL,
    trabajador_id integer NOT NULL
);
 1   DROP TABLE public."SISGDDO_proceso_responsable";
       public         heap    postgres    false            M           1259    24782 "   SISGDDO_proceso_responsable_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_proceso_responsable_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."SISGDDO_proceso_responsable_id_seq";
       public          postgres    false    334            �           0    0 "   SISGDDO_proceso_responsable_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."SISGDDO_proceso_responsable_id_seq" OWNED BY public."SISGDDO_proceso_responsable".id;
          public          postgres    false    333            }           1259    25570    SISGDDO_propiedad_industrial    TABLE       CREATE TABLE public."SISGDDO_propiedad_industrial" (
    id integer NOT NULL,
    nombre character varying(80) NOT NULL,
    fecha_solicitud date NOT NULL,
    no_solicitud character varying(9) NOT NULL,
    no_certificado character varying(9) NOT NULL,
    concedido_por character varying(80) NOT NULL,
    tipo_documento character varying(80) NOT NULL,
    vigente_hasta date NOT NULL,
    observaciones text NOT NULL,
    clasificacion_dibujo_modelo_industrial_id integer NOT NULL,
    clasificacion_elemento_figurativo_id integer NOT NULL,
    clasificacion_patente_id integer NOT NULL,
    clasificacion_productos_servicios_id integer NOT NULL,
    clasificacion_viena_id integer NOT NULL,
    estado_id integer NOT NULL,
    modalidad_id integer NOT NULL,
    pais_id integer NOT NULL
);
 2   DROP TABLE public."SISGDDO_propiedad_industrial";
       public         heap    postgres    false            |           1259    25568 #   SISGDDO_propiedad_industrial_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_propiedad_industrial_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."SISGDDO_propiedad_industrial_id_seq";
       public          postgres    false    381            �           0    0 #   SISGDDO_propiedad_industrial_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."SISGDDO_propiedad_industrial_id_seq" OWNED BY public."SISGDDO_propiedad_industrial".id;
          public          postgres    false    380            F           1259    24728    SISGDDO_propiedad_intelectual    TABLE     `  CREATE TABLE public."SISGDDO_propiedad_intelectual" (
    id integer NOT NULL,
    no character varying(10000) NOT NULL,
    fecha_solicitud date NOT NULL,
    fecha_otorgamiento date NOT NULL,
    marca character varying(80) NOT NULL,
    certificado character varying(100) NOT NULL,
    observaciones text NOT NULL,
    estado_id integer NOT NULL
);
 3   DROP TABLE public."SISGDDO_propiedad_intelectual";
       public         heap    postgres    false            E           1259    24726 $   SISGDDO_propiedad_intelectual_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_propiedad_intelectual_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."SISGDDO_propiedad_intelectual_id_seq";
       public          postgres    false    326            �           0    0 $   SISGDDO_propiedad_intelectual_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."SISGDDO_propiedad_intelectual_id_seq" OWNED BY public."SISGDDO_propiedad_intelectual".id;
          public          postgres    false    325            �            1259    17835    SISGDDO_provincia    TABLE     |   CREATE TABLE public."SISGDDO_provincia" (
    id integer NOT NULL,
    "nombre_Provincia" character varying(25) NOT NULL
);
 '   DROP TABLE public."SISGDDO_provincia";
       public         heap    postgres    false                        1259    17838    SISGDDO_provincia_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_provincia_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."SISGDDO_provincia_id_seq";
       public          postgres    false    255            �           0    0    SISGDDO_provincia_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."SISGDDO_provincia_id_seq" OWNED BY public."SISGDDO_provincia".id;
          public          postgres    false    256            S           1259    24856    SISGDDO_proyecto_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_proyecto_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."SISGDDO_proyecto_id_seq";
       public          postgres    false                       1259    17840    SISGDDO_proyecto    TABLE     F  CREATE TABLE public."SISGDDO_proyecto" (
    id integer DEFAULT nextval('public."SISGDDO_proyecto_id_seq"'::regclass) NOT NULL,
    nombre_proyecto character varying(250) NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_terminacion date,
    area_id integer NOT NULL,
    estado_id integer NOT NULL,
    codigo character varying(10),
    consecutivo integer,
    costo double precision NOT NULL,
    fecha_cierre date,
    fecha_entrada date NOT NULL,
    fecha_extension date,
    observacion character varying(250),
    fuente_financiamiento_id integer,
    tipo_id integer
);
 &   DROP TABLE public."SISGDDO_proyecto";
       public         heap    postgres    false    339            P           1259    24792    SISGDDO_proyecto_calidad    TABLE     �   CREATE TABLE public."SISGDDO_proyecto_calidad" (
    id integer NOT NULL,
    proyecto_id integer NOT NULL,
    trabajador_id integer NOT NULL
);
 .   DROP TABLE public."SISGDDO_proyecto_calidad";
       public         heap    postgres    false            O           1259    24790    SISGDDO_proyecto_calidad_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_proyecto_calidad_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."SISGDDO_proyecto_calidad_id_seq";
       public          postgres    false    336            �           0    0    SISGDDO_proyecto_calidad_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."SISGDDO_proyecto_calidad_id_seq" OWNED BY public."SISGDDO_proyecto_calidad".id;
          public          postgres    false    335            R           1259    24805    SISGDDO_proyecto_disennador    TABLE     �   CREATE TABLE public."SISGDDO_proyecto_disennador" (
    id integer NOT NULL,
    proyecto_id integer NOT NULL,
    trabajador_id integer NOT NULL
);
 1   DROP TABLE public."SISGDDO_proyecto_disennador";
       public         heap    postgres    false            Q           1259    24803 "   SISGDDO_proyecto_disennador_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_proyecto_disennador_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."SISGDDO_proyecto_disennador_id_seq";
       public          postgres    false    338            �           0    0 "   SISGDDO_proyecto_disennador_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."SISGDDO_proyecto_disennador_id_seq" OWNED BY public."SISGDDO_proyecto_disennador".id;
          public          postgres    false    337            [           1259    24930    SISGDDO_proyecto_formato    TABLE     �   CREATE TABLE public."SISGDDO_proyecto_formato" (
    id integer NOT NULL,
    proyecto_id integer NOT NULL,
    formato_id integer NOT NULL
);
 .   DROP TABLE public."SISGDDO_proyecto_formato";
       public         heap    postgres    false            Z           1259    24928    SISGDDO_proyecto_formato_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_proyecto_formato_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."SISGDDO_proyecto_formato_id_seq";
       public          postgres    false    347            �           0    0    SISGDDO_proyecto_formato_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."SISGDDO_proyecto_formato_id_seq" OWNED BY public."SISGDDO_proyecto_formato".id;
          public          postgres    false    346                       1259    17843    SISGDDO_proyecto_jefe_proyecto    TABLE     �   CREATE TABLE public."SISGDDO_proyecto_jefe_proyecto" (
    id integer NOT NULL,
    proyecto_id integer NOT NULL,
    trabajador_id integer NOT NULL
);
 4   DROP TABLE public."SISGDDO_proyecto_jefe_proyecto";
       public         heap    postgres    false                       1259    17846 %   SISGDDO_proyecto_jefe_proyecto_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_proyecto_jefe_proyecto_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."SISGDDO_proyecto_jefe_proyecto_id_seq";
       public          postgres    false    258            �           0    0 %   SISGDDO_proyecto_jefe_proyecto_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."SISGDDO_proyecto_jefe_proyecto_id_seq" OWNED BY public."SISGDDO_proyecto_jefe_proyecto".id;
          public          postgres    false    259            H           1259    24741    SISGDDO_queja    TABLE     X  CREATE TABLE public."SISGDDO_queja" (
    id integer NOT NULL,
    no text NOT NULL,
    fecha_receppcion timestamp with time zone NOT NULL,
    fecha_cierre timestamp with time zone NOT NULL,
    motivo character varying(150) NOT NULL,
    cliente_id integer NOT NULL,
    proceso_id integer NOT NULL,
    via_recepcion_id integer NOT NULL
);
 #   DROP TABLE public."SISGDDO_queja";
       public         heap    postgres    false            G           1259    24739    SISGDDO_queja_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_queja_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."SISGDDO_queja_id_seq";
       public          postgres    false    328            �           0    0    SISGDDO_queja_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SISGDDO_queja_id_seq" OWNED BY public."SISGDDO_queja".id;
          public          postgres    false    327                       1259    17853    SISGDDO_sosi    TABLE     �  CREATE TABLE public."SISGDDO_sosi" (
    id integer NOT NULL,
    numero_salva character varying(7) NOT NULL,
    anno character varying(4) NOT NULL,
    autor character varying(50),
    area_id integer NOT NULL,
    persona_entrega_id integer NOT NULL,
    codigo character varying(7),
    fecha_entrega date,
    observaciones character varying(255),
    proyecto character varying(255),
    ubicacion_salva character varying(8)
);
 "   DROP TABLE public."SISGDDO_sosi";
       public         heap    postgres    false                       1259    17864    SISGDDO_sosi_formatos    TABLE     �   CREATE TABLE public."SISGDDO_sosi_formatos" (
    id integer NOT NULL,
    sosi_id integer NOT NULL,
    formato_id integer NOT NULL
);
 +   DROP TABLE public."SISGDDO_sosi_formatos";
       public         heap    postgres    false                       1259    17867    SISGDDO_sosi_formatos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_sosi_formatos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."SISGDDO_sosi_formatos_id_seq";
       public          postgres    false    261            �           0    0    SISGDDO_sosi_formatos_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."SISGDDO_sosi_formatos_id_seq" OWNED BY public."SISGDDO_sosi_formatos".id;
          public          postgres    false    262                       1259    17869    SISGDDO_sosi_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_sosi_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."SISGDDO_sosi_id_seq";
       public          postgres    false    260            �           0    0    SISGDDO_sosi_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."SISGDDO_sosi_id_seq" OWNED BY public."SISGDDO_sosi".id;
          public          postgres    false    263                       1259    17871    SISGDDO_sosi_idioma    TABLE     �   CREATE TABLE public."SISGDDO_sosi_idioma" (
    id integer NOT NULL,
    sosi_id integer NOT NULL,
    idioma_id integer NOT NULL
);
 )   DROP TABLE public."SISGDDO_sosi_idioma";
       public         heap    postgres    false            	           1259    17874    SISGDDO_sosi_idioma_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_sosi_idioma_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."SISGDDO_sosi_idioma_id_seq";
       public          postgres    false    264            �           0    0    SISGDDO_sosi_idioma_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."SISGDDO_sosi_idioma_id_seq" OWNED BY public."SISGDDO_sosi_idioma".id;
          public          postgres    false    265            ]           1259    24938    SISGDDO_sosi_linea_tematica    TABLE     �   CREATE TABLE public."SISGDDO_sosi_linea_tematica" (
    id integer NOT NULL,
    sosi_id integer NOT NULL,
    linea_tematica_id integer NOT NULL
);
 1   DROP TABLE public."SISGDDO_sosi_linea_tematica";
       public         heap    postgres    false            \           1259    24936 "   SISGDDO_sosi_linea_tematica_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_sosi_linea_tematica_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."SISGDDO_sosi_linea_tematica_id_seq";
       public          postgres    false    349            �           0    0 "   SISGDDO_sosi_linea_tematica_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."SISGDDO_sosi_linea_tematica_id_seq" OWNED BY public."SISGDDO_sosi_linea_tematica".id;
          public          postgres    false    348            J           1259    24754    SISGDDO_tipo_proyecto    TABLE     t   CREATE TABLE public."SISGDDO_tipo_proyecto" (
    id integer NOT NULL,
    nombre character varying(30) NOT NULL
);
 +   DROP TABLE public."SISGDDO_tipo_proyecto";
       public         heap    postgres    false            I           1259    24752    SISGDDO_tipo_proyecto_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_tipo_proyecto_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."SISGDDO_tipo_proyecto_id_seq";
       public          postgres    false    330            �           0    0    SISGDDO_tipo_proyecto_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."SISGDDO_tipo_proyecto_id_seq" OWNED BY public."SISGDDO_tipo_proyecto".id;
          public          postgres    false    329            
           1259    17884    SISGDDO_trabajador    TABLE     X  CREATE TABLE public."SISGDDO_trabajador" (
    id integer NOT NULL,
    nombre_trabajador character varying(25) NOT NULL,
    primer_apellido character varying(25) NOT NULL,
    segundo_apellido character varying(25) NOT NULL,
    ci character varying(11),
    cargo character varying(60) NOT NULL,
    activo boolean NOT NULL,
    formacion_personal_id integer,
    es_cuadro boolean,
    es_reserva boolean,
    fotocuadro character varying(100),
    fotoreserva character varying(100),
    planillacuadro character varying(100),
    planillareserva character varying(100),
    fecha_inicio_cuadro date,
    fecha_inicio_reserva date,
    fecha_terminacion_cuadro date,
    fecha_terminacion_reserva date,
    disennador boolean NOT NULL,
    especialista_calidad boolean NOT NULL,
    jefe_proyecto boolean NOT NULL,
    responsable boolean NOT NULL
);
 (   DROP TABLE public."SISGDDO_trabajador";
       public         heap    postgres    false                       1259    17890    SISGDDO_trabajador_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_trabajador_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."SISGDDO_trabajador_id_seq";
       public          postgres    false    266            �           0    0    SISGDDO_trabajador_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."SISGDDO_trabajador_id_seq" OWNED BY public."SISGDDO_trabajador".id;
          public          postgres    false    267                       1259    17897    SISGDDO_valoracion_encuesta    TABLE     �   CREATE TABLE public."SISGDDO_valoracion_encuesta" (
    id integer NOT NULL,
    fecha date NOT NULL,
    documento character varying(100) NOT NULL,
    "ISG_total" numeric(9,2) NOT NULL,
    elaborado_por_id integer NOT NULL
);
 1   DROP TABLE public."SISGDDO_valoracion_encuesta";
       public         heap    postgres    false                       1259    17900 "   SISGDDO_valoracion_encuesta_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_valoracion_encuesta_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."SISGDDO_valoracion_encuesta_id_seq";
       public          postgres    false    268            �           0    0 "   SISGDDO_valoracion_encuesta_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."SISGDDO_valoracion_encuesta_id_seq" OWNED BY public."SISGDDO_valoracion_encuesta".id;
          public          postgres    false    269                       1259    17902 &   SISGDDO_valoracion_encuesta_organismos    TABLE     �   CREATE TABLE public."SISGDDO_valoracion_encuesta_organismos" (
    id integer NOT NULL,
    valoracion_encuesta_id integer NOT NULL,
    organismo_id integer NOT NULL
);
 <   DROP TABLE public."SISGDDO_valoracion_encuesta_organismos";
       public         heap    postgres    false                       1259    17905 -   SISGDDO_valoracion_encuesta_organismos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_valoracion_encuesta_organismos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."SISGDDO_valoracion_encuesta_organismos_id_seq";
       public          postgres    false    270            �           0    0 -   SISGDDO_valoracion_encuesta_organismos_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."SISGDDO_valoracion_encuesta_organismos_id_seq" OWNED BY public."SISGDDO_valoracion_encuesta_organismos".id;
          public          postgres    false    271            L           1259    24762    SISGDDO_via_recepcion    TABLE     t   CREATE TABLE public."SISGDDO_via_recepcion" (
    id integer NOT NULL,
    nombre character varying(55) NOT NULL
);
 +   DROP TABLE public."SISGDDO_via_recepcion";
       public         heap    postgres    false            K           1259    24760    SISGDDO_via_recepcion_id_seq    SEQUENCE     �   CREATE SEQUENCE public."SISGDDO_via_recepcion_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."SISGDDO_via_recepcion_id_seq";
       public          postgres    false    332            �           0    0    SISGDDO_via_recepcion_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."SISGDDO_via_recepcion_id_seq" OWNED BY public."SISGDDO_via_recepcion".id;
          public          postgres    false    331                       1259    17907 
   auth_group    TABLE     �   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    activo boolean NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false                       1259    17910    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    272            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    273                       1259    17912    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false                       1259    17915    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    274            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    275                       1259    17917    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false                       1259    17920    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    276            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    277                       1259    17922 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(10) NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false                       1259    17928    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false                       1259    17931    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    279            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    280                       1259    17933    auth_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    278            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    281                       1259    17935    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false                       1259    17938 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    282            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    283                       1259    17940    captcha_captchastore    TABLE     �   CREATE TABLE public.captcha_captchastore (
    id integer NOT NULL,
    challenge character varying(32) NOT NULL,
    response character varying(32) NOT NULL,
    hashkey character varying(40) NOT NULL,
    expiration timestamp with time zone NOT NULL
);
 (   DROP TABLE public.captcha_captchastore;
       public         heap    postgres    false                       1259    17943    captcha_captchastore_id_seq    SEQUENCE     �   CREATE SEQUENCE public.captcha_captchastore_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.captcha_captchastore_id_seq;
       public          postgres    false    284            �           0    0    captcha_captchastore_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.captcha_captchastore_id_seq OWNED BY public.captcha_captchastore.id;
          public          postgres    false    285                       1259    17945    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false                       1259    17952    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    286            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    287                        1259    17954    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            !           1259    17957    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    288            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    289            "           1259    17959    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            #           1259    17965    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    290            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    291            $           1259    17967    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            %           1259    17973    notifications_notification    TABLE     �  CREATE TABLE public.notifications_notification (
    id integer NOT NULL,
    level character varying(20) NOT NULL,
    unread boolean NOT NULL,
    actor_object_id character varying(255) NOT NULL,
    verb character varying(255) NOT NULL,
    description text,
    target_object_id character varying(255),
    action_object_object_id character varying(255),
    "timestamp" timestamp with time zone NOT NULL,
    public boolean NOT NULL,
    action_object_content_type_id integer,
    actor_content_type_id integer NOT NULL,
    recipient_id integer NOT NULL,
    target_content_type_id integer,
    deleted boolean NOT NULL,
    emailed boolean NOT NULL,
    data text
);
 .   DROP TABLE public.notifications_notification;
       public         heap    postgres    false            &           1259    17979 !   notifications_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notifications_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.notifications_notification_id_seq;
       public          postgres    false    293            �           0    0 !   notifications_notification_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.notifications_notification_id_seq OWNED BY public.notifications_notification.id;
          public          postgres    false    294            �           2604    25442 %   SISGDDO_accion_indicador_objetivos id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_accion_indicador_objetivos" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_accion_indicador_objetivos_id_seq"'::regclass);
 V   ALTER TABLE public."SISGDDO_accion_indicador_objetivos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    354    355    355            �           2604    24589    SISGDDO_accion_realizada id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_accion_realizada" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_accion_realizada_id_seq"'::regclass);
 L   ALTER TABLE public."SISGDDO_accion_realizada" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    298    297    298            �           2604    17981    SISGDDO_acciones id    DEFAULT     ~   ALTER TABLE ONLY public."SISGDDO_acciones" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_acciones_id_seq"'::regclass);
 D   ALTER TABLE public."SISGDDO_acciones" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    203            �           2604    17982    SISGDDO_acciones_responsable id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_acciones_responsable" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_acciones_responsable_id_seq"'::regclass);
 P   ALTER TABLE public."SISGDDO_acciones_responsable" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207            �           2604    25452    SISGDDO_acuerdo id    DEFAULT     |   ALTER TABLE ONLY public."SISGDDO_acuerdo" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_acuerdo_id_seq"'::regclass);
 C   ALTER TABLE public."SISGDDO_acuerdo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    356    357    357                       2604    25598    SISGDDO_acuerdo_responsable id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_acuerdo_responsable" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_acuerdo_responsable_id_seq"'::regclass);
 O   ALTER TABLE public."SISGDDO_acuerdo_responsable" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    382    383    383            �           2604    17984    SISGDDO_area id    DEFAULT     v   ALTER TABLE ONLY public."SISGDDO_area" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_area_id_seq"'::regclass);
 @   ALTER TABLE public."SISGDDO_area" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    17986    SISGDDO_auditoria_externa id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_auditoria_externa" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_auditoria_externa_id_seq"'::regclass);
 M   ALTER TABLE public."SISGDDO_auditoria_externa" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �           2604    25363 $   SISGDDO_auditoria_externa_proceso id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_auditoria_externa_proceso" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_auditoria_externa_proceso_id_seq"'::regclass);
 U   ALTER TABLE public."SISGDDO_auditoria_externa_proceso" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    351    350    351            �           2604    17988    SISGDDO_auditoria_interna id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_auditoria_interna" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_auditoria_interna_id_seq"'::regclass);
 M   ALTER TABLE public."SISGDDO_auditoria_interna" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    17990    SISGDDO_cambiarlogotipo id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_cambiarlogotipo" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_cambiarlogotipo_id_seq"'::regclass);
 K   ALTER TABLE public."SISGDDO_cambiarlogotipo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215                        2604    25465 1   SISGDDO_clasificacion_dibujo_modelo_industrial id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_dibujo_modelo_industrial" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_clasificacion_dibujo_modelo_industrial_id_seq"'::regclass);
 b   ALTER TABLE public."SISGDDO_clasificacion_dibujo_modelo_industrial" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    358    359    359                       2604    25475 ,   SISGDDO_clasificacion_elemento_figurativo id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_elemento_figurativo" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_clasificacion_elemento_figurativo_id_seq"'::regclass);
 ]   ALTER TABLE public."SISGDDO_clasificacion_elemento_figurativo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    361    360    361                       2604    25485     SISGDDO_clasificacion_patente id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_patente" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_clasificacion_patente_id_seq"'::regclass);
 Q   ALTER TABLE public."SISGDDO_clasificacion_patente" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    362    363    363                       2604    25495 ,   SISGDDO_clasificacion_productos_servicios id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_productos_servicios" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_clasificacion_productos_servicios_id_seq"'::regclass);
 ]   ALTER TABLE public."SISGDDO_clasificacion_productos_servicios" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    365    364    365                       2604    25505    SISGDDO_clasificacion_viena id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_viena" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_clasificacion_viena_id_seq"'::regclass);
 O   ALTER TABLE public."SISGDDO_clasificacion_viena" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    367    366    367            �           2604    24597    SISGDDO_cliente id    DEFAULT     |   ALTER TABLE ONLY public."SISGDDO_cliente" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_cliente_id_seq"'::regclass);
 C   ALTER TABLE public."SISGDDO_cliente" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    299    300    300            �           2604    17995    SISGDDO_curso id    DEFAULT     x   ALTER TABLE ONLY public."SISGDDO_curso" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_curso_id_seq"'::regclass);
 A   ALTER TABLE public."SISGDDO_curso" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    17996    SISGDDO_dictamen_tecnico id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_dictamen_tecnico_id_seq"'::regclass);
 L   ALTER TABLE public."SISGDDO_dictamen_tecnico" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    17997    SISGDDO_eficacia id    DEFAULT     ~   ALTER TABLE ONLY public."SISGDDO_eficacia" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_eficacia_id_seq"'::regclass);
 D   ALTER TABLE public."SISGDDO_eficacia" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    24917    SISGDDO_eficacia_indicador id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_eficacia_indicador" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_eficacia_indicador_id_seq"'::regclass);
 N   ALTER TABLE public."SISGDDO_eficacia_indicador" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    343    342    343            �           2604    17998    SISGDDO_entidad id    DEFAULT     |   ALTER TABLE ONLY public."SISGDDO_entidad" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_entidad_id_seq"'::regclass);
 C   ALTER TABLE public."SISGDDO_entidad" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    17999    SISGDDO_entradas_proyecto id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_entradas_proyecto_id_seq"'::regclass);
 M   ALTER TABLE public."SISGDDO_entradas_proyecto" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    24925 $   SISGDDO_entradas_proyecto_formato id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto_formato" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_entradas_proyecto_formato_id_seq"'::regclass);
 U   ALTER TABLE public."SISGDDO_entradas_proyecto_formato" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    344    345    345            �           2604    18001    SISGDDO_estado_acuerdo id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_estado_acuerdo" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_estado_acuerdo_id_seq"'::regclass);
 J   ALTER TABLE public."SISGDDO_estado_acuerdo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    18002    SISGDDO_estado_dictamen id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_estado_dictamen" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_estado_dictamen_id_seq"'::regclass);
 K   ALTER TABLE public."SISGDDO_estado_dictamen" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    18003 #   SISGDDO_estado_entradas_proyecto id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_estado_entradas_proyecto" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_estado_entradas_proyecto_id_seq"'::regclass);
 T   ALTER TABLE public."SISGDDO_estado_entradas_proyecto" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    24621    SISGDDO_estado_incidencia id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_estado_incidencia" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_estado_incidencia_id_seq"'::regclass);
 M   ALTER TABLE public."SISGDDO_estado_incidencia" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    304    304                       2604    25515 %   SISGDDO_estado_indicador_objetivos id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_estado_indicador_objetivos" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_estado_indicador_objetivos_id_seq"'::regclass);
 V   ALTER TABLE public."SISGDDO_estado_indicador_objetivos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    369    368    369            �           2604    24629    SISGDDO_estado_licencia id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_estado_licencia" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_estado_licencia_id_seq"'::regclass);
 K   ALTER TABLE public."SISGDDO_estado_licencia" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    306    305    306                       2604    25525 &   SISGDDO_estado_propiedad_industrial id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_estado_propiedad_industrial" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_estado_propiedad_industrial_id_seq"'::regclass);
 W   ALTER TABLE public."SISGDDO_estado_propiedad_industrial" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    370    371    371            �           2604    24639 '   SISGDDO_estado_propiedad_intelectual id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_estado_propiedad_intelectual" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_estado_propiedad_intelectual_id_seq"'::regclass);
 X   ALTER TABLE public."SISGDDO_estado_propiedad_intelectual" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    308    307    308            �           2604    18005    SISGDDO_estado_proyecto id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_estado_proyecto" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_estado_proyecto_id_seq"'::regclass);
 K   ALTER TABLE public."SISGDDO_estado_proyecto" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    18006    SISGDDO_formacion_personal id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_formacion_personal" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_formacion_personal_id_seq"'::regclass);
 N   ALTER TABLE public."SISGDDO_formacion_personal" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    235            �           2604    18007 4   SISGDDO_formacion_personal_capacitacion_adquirida id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_formacion_personal_capacitacion_adquirida" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_formacion_personal_capacitacion_adquirida_id_seq"'::regclass);
 e   ALTER TABLE public."SISGDDO_formacion_personal_capacitacion_adquirida" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    24649    SISGDDO_formato id    DEFAULT     |   ALTER TABLE ONLY public."SISGDDO_formato" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_formato_id_seq"'::regclass);
 C   ALTER TABLE public."SISGDDO_formato" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    309    310    310            �           2604    24659     SISGDDO_fuente_financiamiento id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_fuente_financiamiento" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_fuente_financiamiento_id_seq"'::regclass);
 Q   ALTER TABLE public."SISGDDO_fuente_financiamiento" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    312    311    312            �           2604    18009 %   SISGDDO_historico_dictamen_tecnico id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_historico_dictamen_tecnico" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_historico_dictamen_tecnico_id_seq"'::regclass);
 V   ALTER TABLE public."SISGDDO_historico_dictamen_tecnico" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            �           2604    18010 '   SISGDDO_historico_entradas_proyectos id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_historico_entradas_proyectos" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_historico_entradas_proyectos_id_seq"'::regclass);
 X   ALTER TABLE public."SISGDDO_historico_entradas_proyectos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            �           2604    18011    SISGDDO_idioma id    DEFAULT     z   ALTER TABLE ONLY public."SISGDDO_idioma" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_idioma_id_seq"'::regclass);
 B   ALTER TABLE public."SISGDDO_idioma" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            �           2604    24667    SISGDDO_incidencia id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_incidencia" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_incidencia_id_seq"'::regclass);
 F   ALTER TABLE public."SISGDDO_incidencia" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    314    313    314            �           2604    24678    SISGDDO_indicador id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_indicador" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_indicador_id_seq"'::regclass);
 E   ALTER TABLE public."SISGDDO_indicador" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    316    315    316                       2604    25535    SISGDDO_indicador_objetivos id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_indicador_objetivos" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_indicador_objetivos_id_seq"'::regclass);
 O   ALTER TABLE public."SISGDDO_indicador_objetivos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    373    372    373            �           2604    24688    SISGDDO_licencia id    DEFAULT     ~   ALTER TABLE ONLY public."SISGDDO_licencia" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_licencia_id_seq"'::regclass);
 D   ALTER TABLE public."SISGDDO_licencia" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    318    317    318            �           2604    24909    SISGDDO_licencia_responsable id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_licencia_responsable" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_licencia_responsable_id_seq"'::regclass);
 P   ALTER TABLE public."SISGDDO_licencia_responsable" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    341    340    341            �           2604    24703    SISGDDO_linea_tematica id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_linea_tematica" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_linea_tematica_id_seq"'::regclass);
 J   ALTER TABLE public."SISGDDO_linea_tematica" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    320    319    320            �           2604    18014    SISGDDO_metodosprueba id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_metodosprueba" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_metodosprueba_id_seq"'::regclass);
 I   ALTER TABLE public."SISGDDO_metodosprueba" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245                       2604    25545    SISGDDO_modalidad id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_modalidad" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_modalidad_id_seq"'::regclass);
 E   ALTER TABLE public."SISGDDO_modalidad" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    375    374    375            �           2604    24713    SISGDDO_notificacion id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_notificacion" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_notificacion_id_seq"'::regclass);
 H   ALTER TABLE public."SISGDDO_notificacion" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    322    321    322            	           2604    25555    SISGDDO_objetivo id    DEFAULT     ~   ALTER TABLE ONLY public."SISGDDO_objetivo" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_objetivo_id_seq"'::regclass);
 D   ALTER TABLE public."SISGDDO_objetivo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    376    377    377            �           2604    18016    SISGDDO_organismo id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_organismo" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_organismo_id_seq"'::regclass);
 E   ALTER TABLE public."SISGDDO_organismo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247            
           2604    25565    SISGDDO_pais id    DEFAULT     v   ALTER TABLE ONLY public."SISGDDO_pais" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_pais_id_seq"'::regclass);
 @   ALTER TABLE public."SISGDDO_pais" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    378    379    379            �           2604    18835 "   SISGDDO_permisos_personalizados id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_permisos_personalizados" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_permisos_personalizados_id_seq"'::regclass);
 S   ALTER TABLE public."SISGDDO_permisos_personalizados" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    295    296    296            �           2604    18017    SISGDDO_plan_medidas id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_plan_medidas" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_plan_medidas_id_seq"'::regclass);
 H   ALTER TABLE public."SISGDDO_plan_medidas" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    249            �           2604    18018     SISGDDO_plan_medidas_acciones id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_plan_medidas_acciones" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_plan_medidas_acciones_id_seq"'::regclass);
 Q   ALTER TABLE public."SISGDDO_plan_medidas_acciones" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250            �           2604    24721    SISGDDO_premio id    DEFAULT     z   ALTER TABLE ONLY public."SISGDDO_premio" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_premio_id_seq"'::regclass);
 B   ALTER TABLE public."SISGDDO_premio" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    324    323    324            �           2604    25381    SISGDDO_procedimiento id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_procedimiento" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_procedimiento_id_seq"'::regclass);
 I   ALTER TABLE public."SISGDDO_procedimiento" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    352    353    353            �           2604    18019    SISGDDO_proceso id    DEFAULT     |   ALTER TABLE ONLY public."SISGDDO_proceso" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_proceso_id_seq"'::regclass);
 C   ALTER TABLE public."SISGDDO_proceso" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253            �           2604    24787    SISGDDO_proceso_responsable id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_proceso_responsable" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_proceso_responsable_id_seq"'::regclass);
 O   ALTER TABLE public."SISGDDO_proceso_responsable" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    334    333    334                       2604    25573    SISGDDO_propiedad_industrial id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_propiedad_industrial_id_seq"'::regclass);
 P   ALTER TABLE public."SISGDDO_propiedad_industrial" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    380    381    381            �           2604    24731     SISGDDO_propiedad_intelectual id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_propiedad_intelectual" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_propiedad_intelectual_id_seq"'::regclass);
 Q   ALTER TABLE public."SISGDDO_propiedad_intelectual" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    325    326    326            �           2604    18020    SISGDDO_provincia id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_provincia" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_provincia_id_seq"'::regclass);
 E   ALTER TABLE public."SISGDDO_provincia" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255            �           2604    24795    SISGDDO_proyecto_calidad id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_calidad" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_proyecto_calidad_id_seq"'::regclass);
 L   ALTER TABLE public."SISGDDO_proyecto_calidad" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    336    335    336            �           2604    24808    SISGDDO_proyecto_disennador id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_disennador" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_proyecto_disennador_id_seq"'::regclass);
 O   ALTER TABLE public."SISGDDO_proyecto_disennador" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    337    338    338            �           2604    24933    SISGDDO_proyecto_formato id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_formato" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_proyecto_formato_id_seq"'::regclass);
 L   ALTER TABLE public."SISGDDO_proyecto_formato" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    347    346    347            �           2604    18021 !   SISGDDO_proyecto_jefe_proyecto id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_jefe_proyecto" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_proyecto_jefe_proyecto_id_seq"'::regclass);
 R   ALTER TABLE public."SISGDDO_proyecto_jefe_proyecto" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258            �           2604    24744    SISGDDO_queja id    DEFAULT     x   ALTER TABLE ONLY public."SISGDDO_queja" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_queja_id_seq"'::regclass);
 A   ALTER TABLE public."SISGDDO_queja" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    327    328    328            �           2604    18023    SISGDDO_sosi id    DEFAULT     v   ALTER TABLE ONLY public."SISGDDO_sosi" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_sosi_id_seq"'::regclass);
 @   ALTER TABLE public."SISGDDO_sosi" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    260            �           2604    18025    SISGDDO_sosi_formatos id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_sosi_formatos" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_sosi_formatos_id_seq"'::regclass);
 I   ALTER TABLE public."SISGDDO_sosi_formatos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261            �           2604    18026    SISGDDO_sosi_idioma id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_sosi_idioma" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_sosi_idioma_id_seq"'::regclass);
 G   ALTER TABLE public."SISGDDO_sosi_idioma" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    264            �           2604    24941    SISGDDO_sosi_linea_tematica id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_sosi_linea_tematica" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_sosi_linea_tematica_id_seq"'::regclass);
 O   ALTER TABLE public."SISGDDO_sosi_linea_tematica" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    348    349    349            �           2604    24757    SISGDDO_tipo_proyecto id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_tipo_proyecto" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_tipo_proyecto_id_seq"'::regclass);
 I   ALTER TABLE public."SISGDDO_tipo_proyecto" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    330    329    330            �           2604    18028    SISGDDO_trabajador id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_trabajador" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_trabajador_id_seq"'::regclass);
 F   ALTER TABLE public."SISGDDO_trabajador" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    266            �           2604    18030    SISGDDO_valoracion_encuesta id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_valoracion_encuesta_id_seq"'::regclass);
 O   ALTER TABLE public."SISGDDO_valoracion_encuesta" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    268            �           2604    18031 )   SISGDDO_valoracion_encuesta_organismos id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta_organismos" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_valoracion_encuesta_organismos_id_seq"'::regclass);
 Z   ALTER TABLE public."SISGDDO_valoracion_encuesta_organismos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    270            �           2604    24765    SISGDDO_via_recepcion id    DEFAULT     �   ALTER TABLE ONLY public."SISGDDO_via_recepcion" ALTER COLUMN id SET DEFAULT nextval('public."SISGDDO_via_recepcion_id_seq"'::regclass);
 I   ALTER TABLE public."SISGDDO_via_recepcion" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    332    331    332            �           2604    18032    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272            �           2604    18033    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    274            �           2604    18034    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    276            �           2604    18035    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    281    278            �           2604    18036    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    279            �           2604    18037    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    282            �           2604    18038    captcha_captchastore id    DEFAULT     �   ALTER TABLE ONLY public.captcha_captchastore ALTER COLUMN id SET DEFAULT nextval('public.captcha_captchastore_id_seq'::regclass);
 F   ALTER TABLE public.captcha_captchastore ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    285    284            �           2604    18039    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    286            �           2604    18040    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    289    288            �           2604    18041    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    291    290            �           2604    18042    notifications_notification id    DEFAULT     �   ALTER TABLE ONLY public.notifications_notification ALTER COLUMN id SET DEFAULT nextval('public.notifications_notification_id_seq'::regclass);
 L   ALTER TABLE public.notifications_notification ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    293            �          0    17607    ProyectoBaseApp_userapp 
   TABLE DATA           ^   COPY public."ProyectoBaseApp_userapp" (user_ptr_id, uui, image, "referUser", fa2) FROM stdin;
    public          postgres    false    202   �x      Z          0    25439 "   SISGDDO_accion_indicador_objetivos 
   TABLE DATA           w   COPY public."SISGDDO_accion_indicador_objetivos" (id, nombre, evaluacion, area_id, indicador_objetivos_id) FROM stdin;
    public          postgres    false    355   Sz      !          0    24586    SISGDDO_accion_realizada 
   TABLE DATA           N   COPY public."SISGDDO_accion_realizada" (id, fecha, nombre_accion) FROM stdin;
    public          postgres    false    298   pz      �          0    17610    SISGDDO_acciones 
   TABLE DATA           Y   COPY public."SISGDDO_acciones" (id, fecha_cumplir, seguimiento, tratamiento) FROM stdin;
    public          postgres    false    203   �z      �          0    17613    SISGDDO_acciones_correctivas 
   TABLE DATA           W   COPY public."SISGDDO_acciones_correctivas" (acciones_ptr_id, accion_tomar) FROM stdin;
    public          postgres    false    204   �z      �          0    17618    SISGDDO_acciones_preventivas 
   TABLE DATA           W   COPY public."SISGDDO_acciones_preventivas" (acciones_ptr_id, accion_tomar) FROM stdin;
    public          postgres    false    206   �z      �          0    17621    SISGDDO_acciones_responsable 
   TABLE DATA           X   COPY public."SISGDDO_acciones_responsable" (id, acciones_id, trabajador_id) FROM stdin;
    public          postgres    false    207   �z      \          0    25449    SISGDDO_acuerdo 
   TABLE DATA           z   COPY public."SISGDDO_acuerdo" (id, numero, fecha, fecha_limite, fecha_cumplimiento, observaciones, estado_id) FROM stdin;
    public          postgres    false    357   {      v          0    25595    SISGDDO_acuerdo_responsable 
   TABLE DATA           V   COPY public."SISGDDO_acuerdo_responsable" (id, acuerdo_id, trabajador_id) FROM stdin;
    public          postgres    false    383   {      �          0    17634    SISGDDO_area 
   TABLE DATA           4   COPY public."SISGDDO_area" (id, nombre) FROM stdin;
    public          postgres    false    209   ;{      �          0    17650    SISGDDO_auditoria_externa 
   TABLE DATA           �   COPY public."SISGDDO_auditoria_externa" (id, no_registro, fecha_emision, titulo_inf, resultados, entidad_id, plan_medidas, informe, observaciones) FROM stdin;
    public          postgres    false    211   �{      V          0    25360 !   SISGDDO_auditoria_externa_proceso 
   TABLE DATA           c   COPY public."SISGDDO_auditoria_externa_proceso" (id, auditoria_externa_id, proceso_id) FROM stdin;
    public          postgres    false    351   �{      �          0    17660    SISGDDO_auditoria_interna 
   TABLE DATA           u   COPY public."SISGDDO_auditoria_interna" (id, titulo_inf, fecha_aud, informe, proceso_id, responsable_id) FROM stdin;
    public          postgres    false    213   �{      �          0    17670    SISGDDO_cambiarlogotipo 
   TABLE DATA           K   COPY public."SISGDDO_cambiarlogotipo" (id, fecha_cambio, logo) FROM stdin;
    public          postgres    false    215   �{      ^          0    25462 .   SISGDDO_clasificacion_dibujo_modelo_industrial 
   TABLE DATA           V   COPY public."SISGDDO_clasificacion_dibujo_modelo_industrial" (id, nombre) FROM stdin;
    public          postgres    false    359   �|      `          0    25472 )   SISGDDO_clasificacion_elemento_figurativo 
   TABLE DATA           Q   COPY public."SISGDDO_clasificacion_elemento_figurativo" (id, nombre) FROM stdin;
    public          postgres    false    361   �|      b          0    25482    SISGDDO_clasificacion_patente 
   TABLE DATA           E   COPY public."SISGDDO_clasificacion_patente" (id, nombre) FROM stdin;
    public          postgres    false    363   �|      d          0    25492 )   SISGDDO_clasificacion_productos_servicios 
   TABLE DATA           c   COPY public."SISGDDO_clasificacion_productos_servicios" (id, nombre, producto, premio) FROM stdin;
    public          postgres    false    365    }      f          0    25502    SISGDDO_clasificacion_viena 
   TABLE DATA           C   COPY public."SISGDDO_clasificacion_viena" (id, nombre) FROM stdin;
    public          postgres    false    367   }      #          0    24594    SISGDDO_cliente 
   TABLE DATA           7   COPY public."SISGDDO_cliente" (id, nombre) FROM stdin;
    public          postgres    false    300   :}      $          0    24600    SISGDDO_conclusion_adicional 
   TABLE DATA           ]   COPY public."SISGDDO_conclusion_adicional" (proyecto_ptr_id, fecha, descripcion) FROM stdin;
    public          postgres    false    301   W}      �          0    17695    SISGDDO_curso 
   TABLE DATA           D   COPY public."SISGDDO_curso" (id, "nombre_Curso", fecha) FROM stdin;
    public          postgres    false    217   t}      %          0    24608    SISGDDO_dato_adicional 
   TABLE DATA           W   COPY public."SISGDDO_dato_adicional" (proyecto_ptr_id, fecha, descripcion) FROM stdin;
    public          postgres    false    302   �}      �          0    17700    SISGDDO_dictamen_tecnico 
   TABLE DATA           �   COPY public."SISGDDO_dictamen_tecnico" (id, no_dictamen, fecha, nombre_capitulos, documento, disennador_id, entradas_proyectos_id, estado_dictamen_id, eval_por_id, idioma_subtitulado_id, nuevo_idioma_id) FROM stdin;
    public          postgres    false    219   ~      �          0    17705    SISGDDO_eficacia 
   TABLE DATA           �   COPY public."SISGDDO_eficacia" (id, eficaz, anno, evaluado_por_id, responsable_id, semestre, proceso_asociado_id, proceso_ef_id) FROM stdin;
    public          postgres    false    221    ~      N          0    24914    SISGDDO_eficacia_indicador 
   TABLE DATA           U   COPY public."SISGDDO_eficacia_indicador" (id, eficacia_id, indicador_id) FROM stdin;
    public          postgres    false    343   =~      �          0    17710    SISGDDO_entidad 
   TABLE DATA           I   COPY public."SISGDDO_entidad" (id, "nombre_Entidad", activo) FROM stdin;
    public          postgres    false    223   Z~      �          0    17715    SISGDDO_entradas_proyecto 
   TABLE DATA           s   COPY public."SISGDDO_entradas_proyecto" (id, entregado_por_id, estado_id, fecha_entrada, fecha_salida) FROM stdin;
    public          postgres    false    225   �~      P          0    24922 !   SISGDDO_entradas_proyecto_formato 
   TABLE DATA           c   COPY public."SISGDDO_entradas_proyecto_formato" (id, entradas_proyecto_id, formato_id) FROM stdin;
    public          postgres    false    345   �~      �          0    17725    SISGDDO_estado_acuerdo 
   TABLE DATA           >   COPY public."SISGDDO_estado_acuerdo" (id, nombre) FROM stdin;
    public          postgres    false    227   �~      �          0    17730    SISGDDO_estado_dictamen 
   TABLE DATA           H   COPY public."SISGDDO_estado_dictamen" (id, "nombre_Estado") FROM stdin;
    public          postgres    false    229   �~      �          0    17735     SISGDDO_estado_entradas_proyecto 
   TABLE DATA           Q   COPY public."SISGDDO_estado_entradas_proyecto" (id, "nombre_Estado") FROM stdin;
    public          postgres    false    231         '          0    24618    SISGDDO_estado_incidencia 
   TABLE DATA           A   COPY public."SISGDDO_estado_incidencia" (id, estado) FROM stdin;
    public          postgres    false    304   F      h          0    25512 "   SISGDDO_estado_indicador_objetivos 
   TABLE DATA           J   COPY public."SISGDDO_estado_indicador_objetivos" (id, nombre) FROM stdin;
    public          postgres    false    369   c      )          0    24626    SISGDDO_estado_licencia 
   TABLE DATA           ?   COPY public."SISGDDO_estado_licencia" (id, nombre) FROM stdin;
    public          postgres    false    306   �      j          0    25522 #   SISGDDO_estado_propiedad_industrial 
   TABLE DATA           K   COPY public."SISGDDO_estado_propiedad_industrial" (id, nombre) FROM stdin;
    public          postgres    false    371   �      +          0    24636 $   SISGDDO_estado_propiedad_intelectual 
   TABLE DATA           L   COPY public."SISGDDO_estado_propiedad_intelectual" (id, nombre) FROM stdin;
    public          postgres    false    308   �      �          0    17745    SISGDDO_estado_proyecto 
   TABLE DATA           H   COPY public."SISGDDO_estado_proyecto" (id, "nombre_Estado") FROM stdin;
    public          postgres    false    233   �      �          0    17750    SISGDDO_formacion_personal 
   TABLE DATA           Y   COPY public."SISGDDO_formacion_personal" (id, titulo, capacitacion_necesita) FROM stdin;
    public          postgres    false    235   J�      �          0    17756 1   SISGDDO_formacion_personal_capacitacion_adquirida 
   TABLE DATA           r   COPY public."SISGDDO_formacion_personal_capacitacion_adquirida" (id, formacion_personal_id, curso_id) FROM stdin;
    public          postgres    false    236   ǀ      -          0    24646    SISGDDO_formato 
   TABLE DATA           ?   COPY public."SISGDDO_formato" (id, nombre, activo) FROM stdin;
    public          postgres    false    310   ��      /          0    24656    SISGDDO_fuente_financiamiento 
   TABLE DATA           E   COPY public."SISGDDO_fuente_financiamiento" (id, nombre) FROM stdin;
    public          postgres    false    312   �      �          0    17768 "   SISGDDO_historico_dictamen_tecnico 
   TABLE DATA           }   COPY public."SISGDDO_historico_dictamen_tecnico" (id, fecha_entreda, fecha_envio_resultado, dictamen_tecnico_id) FROM stdin;
    public          postgres    false    239   1�      �          0    17773 $   SISGDDO_historico_entradas_proyectos 
   TABLE DATA           �   COPY public."SISGDDO_historico_entradas_proyectos" (id, comentarios, fecha, entradas_proyectos_id, entregado_por_id, recibida_por_id) FROM stdin;
    public          postgres    false    241   N�      �          0    17778    SISGDDO_idioma 
   TABLE DATA           6   COPY public."SISGDDO_idioma" (id, nombre) FROM stdin;
    public          postgres    false    243   k�      1          0    24664    SISGDDO_incidencia 
   TABLE DATA           �   COPY public."SISGDDO_incidencia" (id, fecha_recepcion, fecha_cierre, descripcion, respuesta, estado_id, trabajador_id) FROM stdin;
    public          postgres    false    314   ��      3          0    24675    SISGDDO_indicador 
   TABLE DATA           Q   COPY public."SISGDDO_indicador" (id, nombre, evaluacion, proceso_id) FROM stdin;
    public          postgres    false    316   ��      l          0    25532    SISGDDO_indicador_objetivos 
   TABLE DATA           g   COPY public."SISGDDO_indicador_objetivos" (id, nombre, evaluacion, estado_id, objetivo_id) FROM stdin;
    public          postgres    false    373   ԁ      5          0    24685    SISGDDO_licencia 
   TABLE DATA           �   COPY public."SISGDDO_licencia" (id, no, nombre, fecha_otorgamiento, fecha_vencimiento, entidad_id, estado_id, proceso_id) FROM stdin;
    public          postgres    false    318   �      L          0    24906    SISGDDO_licencia_responsable 
   TABLE DATA           X   COPY public."SISGDDO_licencia_responsable" (id, licencia_id, trabajador_id) FROM stdin;
    public          postgres    false    341   �      7          0    24700    SISGDDO_linea_tematica 
   TABLE DATA           D   COPY public."SISGDDO_linea_tematica" (id, nombre, anno) FROM stdin;
    public          postgres    false    320   +�      �          0    17802    SISGDDO_metodosprueba 
   TABLE DATA           =   COPY public."SISGDDO_metodosprueba" (id, metodo) FROM stdin;
    public          postgres    false    245   H�      n          0    25542    SISGDDO_modalidad 
   TABLE DATA           9   COPY public."SISGDDO_modalidad" (id, nombre) FROM stdin;
    public          postgres    false    375   ��      9          0    24710    SISGDDO_notificacion 
   TABLE DATA           x   COPY public."SISGDDO_notificacion" (id, cantidad, titulo, licencia_id, premio_id, propiedad_intelectual_id) FROM stdin;
    public          postgres    false    322   ��      p          0    25552    SISGDDO_objetivo 
   TABLE DATA           S   COPY public."SISGDDO_objetivo" (id, nombre, fecha_definicion, area_id) FROM stdin;
    public          postgres    false    377   ł      �          0    17815    SISGDDO_organismo 
   TABLE DATA           M   COPY public."SISGDDO_organismo" (id, "nombre_Organismo", activo) FROM stdin;
    public          postgres    false    247   �      r          0    25562    SISGDDO_pais 
   TABLE DATA           4   COPY public."SISGDDO_pais" (id, nombre) FROM stdin;
    public          postgres    false    379   �                0    18832    SISGDDO_permisos_personalizados 
   TABLE DATA           ?   COPY public."SISGDDO_permisos_personalizados" (id) FROM stdin;
    public          postgres    false    296   /�      �          0    17820    SISGDDO_plan_medidas 
   TABLE DATA           ^   COPY public."SISGDDO_plan_medidas" (id, actividad, titulo_doc, fecha, proceso_id) FROM stdin;
    public          postgres    false    249   L�      �          0    17823    SISGDDO_plan_medidas_acciones 
   TABLE DATA           [   COPY public."SISGDDO_plan_medidas_acciones" (id, plan_medidas_id, acciones_id) FROM stdin;
    public          postgres    false    250   i�      ;          0    24718    SISGDDO_premio 
   TABLE DATA           Q   COPY public."SISGDDO_premio" (id, nombre, fecha, premio, entidad_id) FROM stdin;
    public          postgres    false    324   ��      X          0    25378    SISGDDO_procedimiento 
   TABLE DATA           Q   COPY public."SISGDDO_procedimiento" (id, codigo, nombre, proceso_id) FROM stdin;
    public          postgres    false    353   ��      �          0    17830    SISGDDO_proceso 
   TABLE DATA           D   COPY public."SISGDDO_proceso" (id, abreviatura, nombre) FROM stdin;
    public          postgres    false    253   ��      E          0    24784    SISGDDO_proceso_responsable 
   TABLE DATA           V   COPY public."SISGDDO_proceso_responsable" (id, proceso_id, trabajador_id) FROM stdin;
    public          postgres    false    334   	�      t          0    25570    SISGDDO_propiedad_industrial 
   TABLE DATA           {  COPY public."SISGDDO_propiedad_industrial" (id, nombre, fecha_solicitud, no_solicitud, no_certificado, concedido_por, tipo_documento, vigente_hasta, observaciones, clasificacion_dibujo_modelo_industrial_id, clasificacion_elemento_figurativo_id, clasificacion_patente_id, clasificacion_productos_servicios_id, clasificacion_viena_id, estado_id, modalidad_id, pais_id) FROM stdin;
    public          postgres    false    381   &�      =          0    24728    SISGDDO_propiedad_intelectual 
   TABLE DATA           �   COPY public."SISGDDO_propiedad_intelectual" (id, no, fecha_solicitud, fecha_otorgamiento, marca, certificado, observaciones, estado_id) FROM stdin;
    public          postgres    false    326   C�      �          0    17835    SISGDDO_provincia 
   TABLE DATA           E   COPY public."SISGDDO_provincia" (id, "nombre_Provincia") FROM stdin;
    public          postgres    false    255   `�      �          0    17840    SISGDDO_proyecto 
   TABLE DATA           �   COPY public."SISGDDO_proyecto" (id, nombre_proyecto, fecha_inicio, fecha_terminacion, area_id, estado_id, codigo, consecutivo, costo, fecha_cierre, fecha_entrada, fecha_extension, observacion, fuente_financiamiento_id, tipo_id) FROM stdin;
    public          postgres    false    257   7�      G          0    24792    SISGDDO_proyecto_calidad 
   TABLE DATA           T   COPY public."SISGDDO_proyecto_calidad" (id, proyecto_id, trabajador_id) FROM stdin;
    public          postgres    false    336   T�      I          0    24805    SISGDDO_proyecto_disennador 
   TABLE DATA           W   COPY public."SISGDDO_proyecto_disennador" (id, proyecto_id, trabajador_id) FROM stdin;
    public          postgres    false    338   q�      R          0    24930    SISGDDO_proyecto_formato 
   TABLE DATA           Q   COPY public."SISGDDO_proyecto_formato" (id, proyecto_id, formato_id) FROM stdin;
    public          postgres    false    347   ��      �          0    17843    SISGDDO_proyecto_jefe_proyecto 
   TABLE DATA           Z   COPY public."SISGDDO_proyecto_jefe_proyecto" (id, proyecto_id, trabajador_id) FROM stdin;
    public          postgres    false    258   ��      ?          0    24741    SISGDDO_queja 
   TABLE DATA           �   COPY public."SISGDDO_queja" (id, no, fecha_receppcion, fecha_cierre, motivo, cliente_id, proceso_id, via_recepcion_id) FROM stdin;
    public          postgres    false    328   ȅ      �          0    17853    SISGDDO_sosi 
   TABLE DATA           �   COPY public."SISGDDO_sosi" (id, numero_salva, anno, autor, area_id, persona_entrega_id, codigo, fecha_entrega, observaciones, proyecto, ubicacion_salva) FROM stdin;
    public          postgres    false    260   �      �          0    17864    SISGDDO_sosi_formatos 
   TABLE DATA           J   COPY public."SISGDDO_sosi_formatos" (id, sosi_id, formato_id) FROM stdin;
    public          postgres    false    261   �      �          0    17871    SISGDDO_sosi_idioma 
   TABLE DATA           G   COPY public."SISGDDO_sosi_idioma" (id, sosi_id, idioma_id) FROM stdin;
    public          postgres    false    264   �      T          0    24938    SISGDDO_sosi_linea_tematica 
   TABLE DATA           W   COPY public."SISGDDO_sosi_linea_tematica" (id, sosi_id, linea_tematica_id) FROM stdin;
    public          postgres    false    349   <�      A          0    24754    SISGDDO_tipo_proyecto 
   TABLE DATA           =   COPY public."SISGDDO_tipo_proyecto" (id, nombre) FROM stdin;
    public          postgres    false    330   Y�                0    17884    SISGDDO_trabajador 
   TABLE DATA           �  COPY public."SISGDDO_trabajador" (id, nombre_trabajador, primer_apellido, segundo_apellido, ci, cargo, activo, formacion_personal_id, es_cuadro, es_reserva, fotocuadro, fotoreserva, planillacuadro, planillareserva, fecha_inicio_cuadro, fecha_inicio_reserva, fecha_terminacion_cuadro, fecha_terminacion_reserva, disennador, especialista_calidad, jefe_proyecto, responsable) FROM stdin;
    public          postgres    false    266   v�                0    17897    SISGDDO_valoracion_encuesta 
   TABLE DATA           l   COPY public."SISGDDO_valoracion_encuesta" (id, fecha, documento, "ISG_total", elaborado_por_id) FROM stdin;
    public          postgres    false    268   ��                0    17902 &   SISGDDO_valoracion_encuesta_organismos 
   TABLE DATA           l   COPY public."SISGDDO_valoracion_encuesta_organismos" (id, valoracion_encuesta_id, organismo_id) FROM stdin;
    public          postgres    false    270   ��      C          0    24762    SISGDDO_via_recepcion 
   TABLE DATA           =   COPY public."SISGDDO_via_recepcion" (id, nombre) FROM stdin;
    public          postgres    false    332   ͆                0    17907 
   auth_group 
   TABLE DATA           6   COPY public.auth_group (id, name, activo) FROM stdin;
    public          postgres    false    272   �      	          0    17912    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    274   ��                0    17917    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    276   ��                0    17922 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    278   ��                0    17928    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    279   ��                0    17935    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    282   ��                0    17940    captcha_captchastore 
   TABLE DATA           \   COPY public.captcha_captchastore (id, challenge, response, hashkey, expiration) FROM stdin;
    public          postgres    false    284   "�                0    17945    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    286   -�                0    17954    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    288   <�                0    17959    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    290   ��                0    17967    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    292                   0    17973    notifications_notification 
   TABLE DATA             COPY public.notifications_notification (id, level, unread, actor_object_id, verb, description, target_object_id, action_object_object_id, "timestamp", public, action_object_content_type_id, actor_content_type_id, recipient_id, target_content_type_id, deleted, emailed, data) FROM stdin;
    public          postgres    false    293   �      �           0    0 )   SISGDDO_accion_indicador_objetivos_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."SISGDDO_accion_indicador_objetivos_id_seq"', 1, false);
          public          postgres    false    354            �           0    0    SISGDDO_accion_realizada_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."SISGDDO_accion_realizada_id_seq"', 1, false);
          public          postgres    false    297            �           0    0    SISGDDO_acciones_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."SISGDDO_acciones_id_seq"', 1, false);
          public          postgres    false    205            �           0    0 #   SISGDDO_acciones_responsable_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."SISGDDO_acciones_responsable_id_seq"', 1, false);
          public          postgres    false    208            �           0    0    SISGDDO_acuerdo_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."SISGDDO_acuerdo_id_seq"', 1, false);
          public          postgres    false    356            �           0    0 "   SISGDDO_acuerdo_responsable_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."SISGDDO_acuerdo_responsable_id_seq"', 1, false);
          public          postgres    false    382            �           0    0    SISGDDO_area_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."SISGDDO_area_id_seq"', 20, true);
          public          postgres    false    210            �           0    0     SISGDDO_auditoria_externa_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."SISGDDO_auditoria_externa_id_seq"', 1, false);
          public          postgres    false    212            �           0    0 (   SISGDDO_auditoria_externa_proceso_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."SISGDDO_auditoria_externa_proceso_id_seq"', 1, false);
          public          postgres    false    350            �           0    0     SISGDDO_auditoria_interna_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."SISGDDO_auditoria_interna_id_seq"', 1, false);
          public          postgres    false    214            �           0    0    SISGDDO_cambiarlogotipo_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."SISGDDO_cambiarlogotipo_id_seq"', 21, true);
          public          postgres    false    216            �           0    0 5   SISGDDO_clasificacion_dibujo_modelo_industrial_id_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('public."SISGDDO_clasificacion_dibujo_modelo_industrial_id_seq"', 1, false);
          public          postgres    false    358            �           0    0 0   SISGDDO_clasificacion_elemento_figurativo_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."SISGDDO_clasificacion_elemento_figurativo_id_seq"', 1, false);
          public          postgres    false    360            �           0    0 $   SISGDDO_clasificacion_patente_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."SISGDDO_clasificacion_patente_id_seq"', 1, false);
          public          postgres    false    362            �           0    0 0   SISGDDO_clasificacion_productos_servicios_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."SISGDDO_clasificacion_productos_servicios_id_seq"', 1, false);
          public          postgres    false    364            �           0    0 "   SISGDDO_clasificacion_viena_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."SISGDDO_clasificacion_viena_id_seq"', 1, false);
          public          postgres    false    366            �           0    0    SISGDDO_cliente_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."SISGDDO_cliente_id_seq"', 1, false);
          public          postgres    false    299            �           0    0    SISGDDO_curso_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."SISGDDO_curso_id_seq"', 4, true);
          public          postgres    false    218            �           0    0    SISGDDO_dictamen_tecnico_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."SISGDDO_dictamen_tecnico_id_seq"', 1, false);
          public          postgres    false    220            �           0    0    SISGDDO_eficacia_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."SISGDDO_eficacia_id_seq"', 4, true);
          public          postgres    false    222            �           0    0 !   SISGDDO_eficacia_indicador_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."SISGDDO_eficacia_indicador_id_seq"', 1, false);
          public          postgres    false    342            �           0    0    SISGDDO_entidad_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."SISGDDO_entidad_id_seq"', 1, true);
          public          postgres    false    224            �           0    0 (   SISGDDO_entradas_proyecto_formato_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."SISGDDO_entradas_proyecto_formato_id_seq"', 1, false);
          public          postgres    false    344            �           0    0     SISGDDO_entradas_proyecto_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."SISGDDO_entradas_proyecto_id_seq"', 1, false);
          public          postgres    false    226            �           0    0    SISGDDO_estado_acuerdo_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."SISGDDO_estado_acuerdo_id_seq"', 4, true);
          public          postgres    false    228            �           0    0    SISGDDO_estado_dictamen_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."SISGDDO_estado_dictamen_id_seq"', 2, true);
          public          postgres    false    230            �           0    0 '   SISGDDO_estado_entradas_proyecto_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."SISGDDO_estado_entradas_proyecto_id_seq"', 2, true);
          public          postgres    false    232            �           0    0     SISGDDO_estado_incidencia_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."SISGDDO_estado_incidencia_id_seq"', 1, false);
          public          postgres    false    303            �           0    0 )   SISGDDO_estado_indicador_objetivos_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."SISGDDO_estado_indicador_objetivos_id_seq"', 1, false);
          public          postgres    false    368            �           0    0    SISGDDO_estado_licencia_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."SISGDDO_estado_licencia_id_seq"', 1, false);
          public          postgres    false    305            �           0    0 *   SISGDDO_estado_propiedad_industrial_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."SISGDDO_estado_propiedad_industrial_id_seq"', 1, false);
          public          postgres    false    370            �           0    0 +   SISGDDO_estado_propiedad_intelectual_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."SISGDDO_estado_propiedad_intelectual_id_seq"', 1, false);
          public          postgres    false    307            �           0    0    SISGDDO_estado_proyecto_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."SISGDDO_estado_proyecto_id_seq"', 9, true);
          public          postgres    false    234            �           0    0 8   SISGDDO_formacion_personal_capacitacion_adquirida_id_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public."SISGDDO_formacion_personal_capacitacion_adquirida_id_seq"', 4, true);
          public          postgres    false    237            �           0    0 !   SISGDDO_formacion_personal_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."SISGDDO_formacion_personal_id_seq"', 4, true);
          public          postgres    false    238            �           0    0    SISGDDO_formato_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."SISGDDO_formato_id_seq"', 1, false);
          public          postgres    false    309            �           0    0 $   SISGDDO_fuente_financiamiento_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."SISGDDO_fuente_financiamiento_id_seq"', 1, false);
          public          postgres    false    311            �           0    0 )   SISGDDO_historico_dictamen_tecnico_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."SISGDDO_historico_dictamen_tecnico_id_seq"', 1, false);
          public          postgres    false    240            �           0    0 +   SISGDDO_historico_entradas_proyectos_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."SISGDDO_historico_entradas_proyectos_id_seq"', 1, false);
          public          postgres    false    242            �           0    0    SISGDDO_idioma_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."SISGDDO_idioma_id_seq"', 6, true);
          public          postgres    false    244            �           0    0    SISGDDO_incidencia_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."SISGDDO_incidencia_id_seq"', 1, false);
          public          postgres    false    313            �           0    0    SISGDDO_indicador_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."SISGDDO_indicador_id_seq"', 1, false);
          public          postgres    false    315            �           0    0 "   SISGDDO_indicador_objetivos_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."SISGDDO_indicador_objetivos_id_seq"', 1, false);
          public          postgres    false    372            �           0    0    SISGDDO_licencia_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."SISGDDO_licencia_id_seq"', 1, false);
          public          postgres    false    317                        0    0 #   SISGDDO_licencia_responsable_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."SISGDDO_licencia_responsable_id_seq"', 1, false);
          public          postgres    false    340                       0    0    SISGDDO_linea_tematica_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."SISGDDO_linea_tematica_id_seq"', 1, false);
          public          postgres    false    319                       0    0    SISGDDO_metodosprueba_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."SISGDDO_metodosprueba_id_seq"', 3, true);
          public          postgres    false    246                       0    0    SISGDDO_modalidad_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."SISGDDO_modalidad_id_seq"', 1, false);
          public          postgres    false    374                       0    0    SISGDDO_notificacion_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."SISGDDO_notificacion_id_seq"', 1, false);
          public          postgres    false    321                       0    0    SISGDDO_objetivo_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."SISGDDO_objetivo_id_seq"', 1, false);
          public          postgres    false    376                       0    0    SISGDDO_organismo_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."SISGDDO_organismo_id_seq"', 2, true);
          public          postgres    false    248                       0    0    SISGDDO_pais_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."SISGDDO_pais_id_seq"', 1, false);
          public          postgres    false    378                       0    0 &   SISGDDO_permisos_personalizados_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."SISGDDO_permisos_personalizados_id_seq"', 1, false);
          public          postgres    false    295            	           0    0 $   SISGDDO_plan_medidas_acciones_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."SISGDDO_plan_medidas_acciones_id_seq"', 1, false);
          public          postgres    false    251            
           0    0    SISGDDO_plan_medidas_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."SISGDDO_plan_medidas_id_seq"', 1, false);
          public          postgres    false    252                       0    0    SISGDDO_premio_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."SISGDDO_premio_id_seq"', 1, false);
          public          postgres    false    323                       0    0    SISGDDO_procedimiento_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."SISGDDO_procedimiento_id_seq"', 1, false);
          public          postgres    false    352                       0    0    SISGDDO_proceso_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."SISGDDO_proceso_id_seq"', 16, true);
          public          postgres    false    254                       0    0 "   SISGDDO_proceso_responsable_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."SISGDDO_proceso_responsable_id_seq"', 1, false);
          public          postgres    false    333                       0    0 #   SISGDDO_propiedad_industrial_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."SISGDDO_propiedad_industrial_id_seq"', 1, false);
          public          postgres    false    380                       0    0 $   SISGDDO_propiedad_intelectual_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."SISGDDO_propiedad_intelectual_id_seq"', 1, false);
          public          postgres    false    325                       0    0    SISGDDO_provincia_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."SISGDDO_provincia_id_seq"', 1, false);
          public          postgres    false    256                       0    0    SISGDDO_proyecto_calidad_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."SISGDDO_proyecto_calidad_id_seq"', 1, false);
          public          postgres    false    335                       0    0 "   SISGDDO_proyecto_disennador_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."SISGDDO_proyecto_disennador_id_seq"', 1, false);
          public          postgres    false    337                       0    0    SISGDDO_proyecto_formato_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."SISGDDO_proyecto_formato_id_seq"', 1, false);
          public          postgres    false    346                       0    0    SISGDDO_proyecto_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."SISGDDO_proyecto_id_seq"', 1, false);
          public          postgres    false    339                       0    0 %   SISGDDO_proyecto_jefe_proyecto_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."SISGDDO_proyecto_jefe_proyecto_id_seq"', 2, true);
          public          postgres    false    259                       0    0    SISGDDO_queja_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."SISGDDO_queja_id_seq"', 1, false);
          public          postgres    false    327                       0    0    SISGDDO_sosi_formatos_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."SISGDDO_sosi_formatos_id_seq"', 2419, true);
          public          postgres    false    262                       0    0    SISGDDO_sosi_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."SISGDDO_sosi_id_seq"', 2889, true);
          public          postgres    false    263                       0    0    SISGDDO_sosi_idioma_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."SISGDDO_sosi_idioma_id_seq"', 6127, true);
          public          postgres    false    265                       0    0 "   SISGDDO_sosi_linea_tematica_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."SISGDDO_sosi_linea_tematica_id_seq"', 1, false);
          public          postgres    false    348                       0    0    SISGDDO_tipo_proyecto_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."SISGDDO_tipo_proyecto_id_seq"', 1, false);
          public          postgres    false    329                       0    0    SISGDDO_trabajador_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."SISGDDO_trabajador_id_seq"', 120, true);
          public          postgres    false    267                       0    0 "   SISGDDO_valoracion_encuesta_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."SISGDDO_valoracion_encuesta_id_seq"', 27, true);
          public          postgres    false    269                       0    0 -   SISGDDO_valoracion_encuesta_organismos_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."SISGDDO_valoracion_encuesta_organismos_id_seq"', 1, false);
          public          postgres    false    271                        0    0    SISGDDO_via_recepcion_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."SISGDDO_via_recepcion_id_seq"', 1, false);
          public          postgres    false    331            !           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 9, true);
          public          postgres    false    273            "           0    0    auth_group_permissions_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 502, true);
          public          postgres    false    275            #           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 374, true);
          public          postgres    false    277            $           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 6, true);
          public          postgres    false    280            %           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 14, true);
          public          postgres    false    281            &           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 212, true);
          public          postgres    false    283            '           0    0    captcha_captchastore_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.captcha_captchastore_id_seq', 69, true);
          public          postgres    false    285            (           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 988, true);
          public          postgres    false    287            )           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 90, true);
          public          postgres    false    289            *           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 150, true);
          public          postgres    false    291            +           0    0 !   notifications_notification_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.notifications_notification_id_seq', 86, true);
          public          postgres    false    294                       2606    18044 4   ProyectoBaseApp_userapp ProyectoBaseApp_userapp_pkey 
   CONSTRAINT        ALTER TABLE ONLY public."ProyectoBaseApp_userapp"
    ADD CONSTRAINT "ProyectoBaseApp_userapp_pkey" PRIMARY KEY (user_ptr_id);
 b   ALTER TABLE ONLY public."ProyectoBaseApp_userapp" DROP CONSTRAINT "ProyectoBaseApp_userapp_pkey";
       public            postgres    false    202            �           2606    25446 P   SISGDDO_accion_indicador_objetivos SISGDDO_accion_indicador_objetivos_nombre_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_accion_indicador_objetivos"
    ADD CONSTRAINT "SISGDDO_accion_indicador_objetivos_nombre_key" UNIQUE (nombre);
 ~   ALTER TABLE ONLY public."SISGDDO_accion_indicador_objetivos" DROP CONSTRAINT "SISGDDO_accion_indicador_objetivos_nombre_key";
       public            postgres    false    355            �           2606    25444 J   SISGDDO_accion_indicador_objetivos SISGDDO_accion_indicador_objetivos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_accion_indicador_objetivos"
    ADD CONSTRAINT "SISGDDO_accion_indicador_objetivos_pkey" PRIMARY KEY (id);
 x   ALTER TABLE ONLY public."SISGDDO_accion_indicador_objetivos" DROP CONSTRAINT "SISGDDO_accion_indicador_objetivos_pkey";
       public            postgres    false    355            �           2606    24591 6   SISGDDO_accion_realizada SISGDDO_accion_realizada_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."SISGDDO_accion_realizada"
    ADD CONSTRAINT "SISGDDO_accion_realizada_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."SISGDDO_accion_realizada" DROP CONSTRAINT "SISGDDO_accion_realizada_pkey";
       public            postgres    false    298                       2606    18046 >   SISGDDO_acciones_correctivas SISGDDO_acciones_correptivas_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_acciones_correctivas"
    ADD CONSTRAINT "SISGDDO_acciones_correptivas_pkey" PRIMARY KEY (acciones_ptr_id);
 l   ALTER TABLE ONLY public."SISGDDO_acciones_correctivas" DROP CONSTRAINT "SISGDDO_acciones_correptivas_pkey";
       public            postgres    false    204                       2606    18048 &   SISGDDO_acciones SISGDDO_acciones_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."SISGDDO_acciones"
    ADD CONSTRAINT "SISGDDO_acciones_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."SISGDDO_acciones" DROP CONSTRAINT "SISGDDO_acciones_pkey";
       public            postgres    false    203                       2606    18050 ?   SISGDDO_acciones_preventivas SISGDDO_acciones_prevenntivas_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_acciones_preventivas"
    ADD CONSTRAINT "SISGDDO_acciones_prevenntivas_pkey" PRIMARY KEY (acciones_ptr_id);
 m   ALTER TABLE ONLY public."SISGDDO_acciones_preventivas" DROP CONSTRAINT "SISGDDO_acciones_prevenntivas_pkey";
       public            postgres    false    206                       2606    18052 \   SISGDDO_acciones_responsable SISGDDO_acciones_respons_acciones_id_trabajador_i_c4078b69_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_acciones_responsable"
    ADD CONSTRAINT "SISGDDO_acciones_respons_acciones_id_trabajador_i_c4078b69_uniq" UNIQUE (acciones_id, trabajador_id);
 �   ALTER TABLE ONLY public."SISGDDO_acciones_responsable" DROP CONSTRAINT "SISGDDO_acciones_respons_acciones_id_trabajador_i_c4078b69_uniq";
       public            postgres    false    207    207                       2606    18054 >   SISGDDO_acciones_responsable SISGDDO_acciones_responsable_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_acciones_responsable"
    ADD CONSTRAINT "SISGDDO_acciones_responsable_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."SISGDDO_acciones_responsable" DROP CONSTRAINT "SISGDDO_acciones_responsable_pkey";
       public            postgres    false    207            �           2606    25459 *   SISGDDO_acuerdo SISGDDO_acuerdo_numero_key 
   CONSTRAINT     k   ALTER TABLE ONLY public."SISGDDO_acuerdo"
    ADD CONSTRAINT "SISGDDO_acuerdo_numero_key" UNIQUE (numero);
 X   ALTER TABLE ONLY public."SISGDDO_acuerdo" DROP CONSTRAINT "SISGDDO_acuerdo_numero_key";
       public            postgres    false    357            �           2606    25457 $   SISGDDO_acuerdo SISGDDO_acuerdo_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."SISGDDO_acuerdo"
    ADD CONSTRAINT "SISGDDO_acuerdo_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."SISGDDO_acuerdo" DROP CONSTRAINT "SISGDDO_acuerdo_pkey";
       public            postgres    false    357            �           2606    25697 [   SISGDDO_acuerdo_responsable SISGDDO_acuerdo_responsa_acuerdo_id_trabajador_id_b0b7ee1d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_acuerdo_responsable"
    ADD CONSTRAINT "SISGDDO_acuerdo_responsa_acuerdo_id_trabajador_id_b0b7ee1d_uniq" UNIQUE (acuerdo_id, trabajador_id);
 �   ALTER TABLE ONLY public."SISGDDO_acuerdo_responsable" DROP CONSTRAINT "SISGDDO_acuerdo_responsa_acuerdo_id_trabajador_id_b0b7ee1d_uniq";
       public            postgres    false    383    383            �           2606    25600 <   SISGDDO_acuerdo_responsable SISGDDO_acuerdo_responsable_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."SISGDDO_acuerdo_responsable"
    ADD CONSTRAINT "SISGDDO_acuerdo_responsable_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."SISGDDO_acuerdo_responsable" DROP CONSTRAINT "SISGDDO_acuerdo_responsable_pkey";
       public            postgres    false    383                       2606    18064    SISGDDO_area SISGDDO_area_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."SISGDDO_area"
    ADD CONSTRAINT "SISGDDO_area_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."SISGDDO_area" DROP CONSTRAINT "SISGDDO_area_pkey";
       public            postgres    false    209            r           2606    25397 a   SISGDDO_auditoria_externa_proceso SISGDDO_auditoria_extern_auditoria_externa_id_pro_bc4e7dfe_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_auditoria_externa_proceso"
    ADD CONSTRAINT "SISGDDO_auditoria_extern_auditoria_externa_id_pro_bc4e7dfe_uniq" UNIQUE (auditoria_externa_id, proceso_id);
 �   ALTER TABLE ONLY public."SISGDDO_auditoria_externa_proceso" DROP CONSTRAINT "SISGDDO_auditoria_extern_auditoria_externa_id_pro_bc4e7dfe_uniq";
       public            postgres    false    351    351                       2606    18074 C   SISGDDO_auditoria_externa SISGDDO_auditoria_externa_no_registro_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_auditoria_externa"
    ADD CONSTRAINT "SISGDDO_auditoria_externa_no_registro_key" UNIQUE (no_registro);
 q   ALTER TABLE ONLY public."SISGDDO_auditoria_externa" DROP CONSTRAINT "SISGDDO_auditoria_externa_no_registro_key";
       public            postgres    false    211            !           2606    18076 8   SISGDDO_auditoria_externa SISGDDO_auditoria_externa_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."SISGDDO_auditoria_externa"
    ADD CONSTRAINT "SISGDDO_auditoria_externa_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."SISGDDO_auditoria_externa" DROP CONSTRAINT "SISGDDO_auditoria_externa_pkey";
       public            postgres    false    211            u           2606    25365 H   SISGDDO_auditoria_externa_proceso SISGDDO_auditoria_externa_proceso_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_auditoria_externa_proceso"
    ADD CONSTRAINT "SISGDDO_auditoria_externa_proceso_pkey" PRIMARY KEY (id);
 v   ALTER TABLE ONLY public."SISGDDO_auditoria_externa_proceso" DROP CONSTRAINT "SISGDDO_auditoria_externa_proceso_pkey";
       public            postgres    false    351            #           2606    18080 8   SISGDDO_auditoria_interna SISGDDO_auditoria_interna_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."SISGDDO_auditoria_interna"
    ADD CONSTRAINT "SISGDDO_auditoria_interna_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."SISGDDO_auditoria_interna" DROP CONSTRAINT "SISGDDO_auditoria_interna_pkey";
       public            postgres    false    213            '           2606    18084 4   SISGDDO_cambiarlogotipo SISGDDO_cambiarlogotipo_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."SISGDDO_cambiarlogotipo"
    ADD CONSTRAINT "SISGDDO_cambiarlogotipo_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."SISGDDO_cambiarlogotipo" DROP CONSTRAINT "SISGDDO_cambiarlogotipo_pkey";
       public            postgres    false    215            �           2606    25469 h   SISGDDO_clasificacion_dibujo_modelo_industrial SISGDDO_clasificacion_dibujo_modelo_industrial_nombre_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_dibujo_modelo_industrial"
    ADD CONSTRAINT "SISGDDO_clasificacion_dibujo_modelo_industrial_nombre_key" UNIQUE (nombre);
 �   ALTER TABLE ONLY public."SISGDDO_clasificacion_dibujo_modelo_industrial" DROP CONSTRAINT "SISGDDO_clasificacion_dibujo_modelo_industrial_nombre_key";
       public            postgres    false    359            �           2606    25467 b   SISGDDO_clasificacion_dibujo_modelo_industrial SISGDDO_clasificacion_dibujo_modelo_industrial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_dibujo_modelo_industrial"
    ADD CONSTRAINT "SISGDDO_clasificacion_dibujo_modelo_industrial_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."SISGDDO_clasificacion_dibujo_modelo_industrial" DROP CONSTRAINT "SISGDDO_clasificacion_dibujo_modelo_industrial_pkey";
       public            postgres    false    359            �           2606    25479 ^   SISGDDO_clasificacion_elemento_figurativo SISGDDO_clasificacion_elemento_figurativo_nombre_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_elemento_figurativo"
    ADD CONSTRAINT "SISGDDO_clasificacion_elemento_figurativo_nombre_key" UNIQUE (nombre);
 �   ALTER TABLE ONLY public."SISGDDO_clasificacion_elemento_figurativo" DROP CONSTRAINT "SISGDDO_clasificacion_elemento_figurativo_nombre_key";
       public            postgres    false    361            �           2606    25477 X   SISGDDO_clasificacion_elemento_figurativo SISGDDO_clasificacion_elemento_figurativo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_elemento_figurativo"
    ADD CONSTRAINT "SISGDDO_clasificacion_elemento_figurativo_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."SISGDDO_clasificacion_elemento_figurativo" DROP CONSTRAINT "SISGDDO_clasificacion_elemento_figurativo_pkey";
       public            postgres    false    361            �           2606    25489 F   SISGDDO_clasificacion_patente SISGDDO_clasificacion_patente_nombre_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_patente"
    ADD CONSTRAINT "SISGDDO_clasificacion_patente_nombre_key" UNIQUE (nombre);
 t   ALTER TABLE ONLY public."SISGDDO_clasificacion_patente" DROP CONSTRAINT "SISGDDO_clasificacion_patente_nombre_key";
       public            postgres    false    363            �           2606    25487 @   SISGDDO_clasificacion_patente SISGDDO_clasificacion_patente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_patente"
    ADD CONSTRAINT "SISGDDO_clasificacion_patente_pkey" PRIMARY KEY (id);
 n   ALTER TABLE ONLY public."SISGDDO_clasificacion_patente" DROP CONSTRAINT "SISGDDO_clasificacion_patente_pkey";
       public            postgres    false    363            �           2606    25499 ^   SISGDDO_clasificacion_productos_servicios SISGDDO_clasificacion_productos_servicios_nombre_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_productos_servicios"
    ADD CONSTRAINT "SISGDDO_clasificacion_productos_servicios_nombre_key" UNIQUE (nombre);
 �   ALTER TABLE ONLY public."SISGDDO_clasificacion_productos_servicios" DROP CONSTRAINT "SISGDDO_clasificacion_productos_servicios_nombre_key";
       public            postgres    false    365            �           2606    25497 X   SISGDDO_clasificacion_productos_servicios SISGDDO_clasificacion_productos_servicios_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_productos_servicios"
    ADD CONSTRAINT "SISGDDO_clasificacion_productos_servicios_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."SISGDDO_clasificacion_productos_servicios" DROP CONSTRAINT "SISGDDO_clasificacion_productos_servicios_pkey";
       public            postgres    false    365            �           2606    25509 B   SISGDDO_clasificacion_viena SISGDDO_clasificacion_viena_nombre_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_clasificacion_viena"
    ADD CONSTRAINT "SISGDDO_clasificacion_viena_nombre_key" UNIQUE (nombre);
 p   ALTER TABLE ONLY public."SISGDDO_clasificacion_viena" DROP CONSTRAINT "SISGDDO_clasificacion_viena_nombre_key";
       public            postgres    false    367            �           2606    25507 <   SISGDDO_clasificacion_viena SISGDDO_clasificacion_viena_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."SISGDDO_clasificacion_viena"
    ADD CONSTRAINT "SISGDDO_clasificacion_viena_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."SISGDDO_clasificacion_viena" DROP CONSTRAINT "SISGDDO_clasificacion_viena_pkey";
       public            postgres    false    367            �           2606    24599 $   SISGDDO_cliente SISGDDO_cliente_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."SISGDDO_cliente"
    ADD CONSTRAINT "SISGDDO_cliente_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."SISGDDO_cliente" DROP CONSTRAINT "SISGDDO_cliente_pkey";
       public            postgres    false    300            �           2606    24607 >   SISGDDO_conclusion_adicional SISGDDO_conclusion_adicional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_conclusion_adicional"
    ADD CONSTRAINT "SISGDDO_conclusion_adicional_pkey" PRIMARY KEY (proyecto_ptr_id);
 l   ALTER TABLE ONLY public."SISGDDO_conclusion_adicional" DROP CONSTRAINT "SISGDDO_conclusion_adicional_pkey";
       public            postgres    false    301            *           2606    18096 ,   SISGDDO_curso SISGDDO_curso_nombre_Curso_key 
   CONSTRAINT     u   ALTER TABLE ONLY public."SISGDDO_curso"
    ADD CONSTRAINT "SISGDDO_curso_nombre_Curso_key" UNIQUE ("nombre_Curso");
 Z   ALTER TABLE ONLY public."SISGDDO_curso" DROP CONSTRAINT "SISGDDO_curso_nombre_Curso_key";
       public            postgres    false    217            ,           2606    18098     SISGDDO_curso SISGDDO_curso_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."SISGDDO_curso"
    ADD CONSTRAINT "SISGDDO_curso_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."SISGDDO_curso" DROP CONSTRAINT "SISGDDO_curso_pkey";
       public            postgres    false    217            �           2606    24615 2   SISGDDO_dato_adicional SISGDDO_dato_adicional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_dato_adicional"
    ADD CONSTRAINT "SISGDDO_dato_adicional_pkey" PRIMARY KEY (proyecto_ptr_id);
 `   ALTER TABLE ONLY public."SISGDDO_dato_adicional" DROP CONSTRAINT "SISGDDO_dato_adicional_pkey";
       public            postgres    false    302            4           2606    18100 6   SISGDDO_dictamen_tecnico SISGDDO_dictamen_tecnico_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico"
    ADD CONSTRAINT "SISGDDO_dictamen_tecnico_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico" DROP CONSTRAINT "SISGDDO_dictamen_tecnico_pkey";
       public            postgres    false    219            Z           2606    25150 Z   SISGDDO_eficacia_indicador SISGDDO_eficacia_indicad_eficacia_id_indicador_id_3efd93bb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_eficacia_indicador"
    ADD CONSTRAINT "SISGDDO_eficacia_indicad_eficacia_id_indicador_id_3efd93bb_uniq" UNIQUE (eficacia_id, indicador_id);
 �   ALTER TABLE ONLY public."SISGDDO_eficacia_indicador" DROP CONSTRAINT "SISGDDO_eficacia_indicad_eficacia_id_indicador_id_3efd93bb_uniq";
       public            postgres    false    343    343            ^           2606    24919 :   SISGDDO_eficacia_indicador SISGDDO_eficacia_indicador_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."SISGDDO_eficacia_indicador"
    ADD CONSTRAINT "SISGDDO_eficacia_indicador_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."SISGDDO_eficacia_indicador" DROP CONSTRAINT "SISGDDO_eficacia_indicador_pkey";
       public            postgres    false    343            7           2606    18102 &   SISGDDO_eficacia SISGDDO_eficacia_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."SISGDDO_eficacia"
    ADD CONSTRAINT "SISGDDO_eficacia_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."SISGDDO_eficacia" DROP CONSTRAINT "SISGDDO_eficacia_pkey";
       public            postgres    false    221            =           2606    18104 2   SISGDDO_entidad SISGDDO_entidad_nombre_Entidad_key 
   CONSTRAINT     }   ALTER TABLE ONLY public."SISGDDO_entidad"
    ADD CONSTRAINT "SISGDDO_entidad_nombre_Entidad_key" UNIQUE ("nombre_Entidad");
 `   ALTER TABLE ONLY public."SISGDDO_entidad" DROP CONSTRAINT "SISGDDO_entidad_nombre_Entidad_key";
       public            postgres    false    223            ?           2606    18106 $   SISGDDO_entidad SISGDDO_entidad_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."SISGDDO_entidad"
    ADD CONSTRAINT "SISGDDO_entidad_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."SISGDDO_entidad" DROP CONSTRAINT "SISGDDO_entidad_pkey";
       public            postgres    false    223            `           2606    25164 a   SISGDDO_entradas_proyecto_formato SISGDDO_entradas_proyect_entradas_proyecto_id_for_db105a7e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto_formato"
    ADD CONSTRAINT "SISGDDO_entradas_proyect_entradas_proyecto_id_for_db105a7e_uniq" UNIQUE (entradas_proyecto_id, formato_id);
 �   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto_formato" DROP CONSTRAINT "SISGDDO_entradas_proyect_entradas_proyecto_id_for_db105a7e_uniq";
       public            postgres    false    345    345            d           2606    24927 H   SISGDDO_entradas_proyecto_formato SISGDDO_entradas_proyecto_formato_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto_formato"
    ADD CONSTRAINT "SISGDDO_entradas_proyecto_formato_pkey" PRIMARY KEY (id);
 v   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto_formato" DROP CONSTRAINT "SISGDDO_entradas_proyecto_formato_pkey";
       public            postgres    false    345            C           2606    18112 8   SISGDDO_entradas_proyecto SISGDDO_entradas_proyecto_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto"
    ADD CONSTRAINT "SISGDDO_entradas_proyecto_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto" DROP CONSTRAINT "SISGDDO_entradas_proyecto_pkey";
       public            postgres    false    225            E           2606    18114 2   SISGDDO_estado_acuerdo SISGDDO_estado_acuerdo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."SISGDDO_estado_acuerdo"
    ADD CONSTRAINT "SISGDDO_estado_acuerdo_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."SISGDDO_estado_acuerdo" DROP CONSTRAINT "SISGDDO_estado_acuerdo_pkey";
       public            postgres    false    227            G           2606    18116 4   SISGDDO_estado_dictamen SISGDDO_estado_dictamen_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."SISGDDO_estado_dictamen"
    ADD CONSTRAINT "SISGDDO_estado_dictamen_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."SISGDDO_estado_dictamen" DROP CONSTRAINT "SISGDDO_estado_dictamen_pkey";
       public            postgres    false    229            I           2606    18118 F   SISGDDO_estado_entradas_proyecto SISGDDO_estado_entradas_proyecto_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_estado_entradas_proyecto"
    ADD CONSTRAINT "SISGDDO_estado_entradas_proyecto_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."SISGDDO_estado_entradas_proyecto" DROP CONSTRAINT "SISGDDO_estado_entradas_proyecto_pkey";
       public            postgres    false    231            �           2606    24623 8   SISGDDO_estado_incidencia SISGDDO_estado_incidencia_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."SISGDDO_estado_incidencia"
    ADD CONSTRAINT "SISGDDO_estado_incidencia_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."SISGDDO_estado_incidencia" DROP CONSTRAINT "SISGDDO_estado_incidencia_pkey";
       public            postgres    false    304            �           2606    25519 P   SISGDDO_estado_indicador_objetivos SISGDDO_estado_indicador_objetivos_nombre_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_estado_indicador_objetivos"
    ADD CONSTRAINT "SISGDDO_estado_indicador_objetivos_nombre_key" UNIQUE (nombre);
 ~   ALTER TABLE ONLY public."SISGDDO_estado_indicador_objetivos" DROP CONSTRAINT "SISGDDO_estado_indicador_objetivos_nombre_key";
       public            postgres    false    369            �           2606    25517 J   SISGDDO_estado_indicador_objetivos SISGDDO_estado_indicador_objetivos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_estado_indicador_objetivos"
    ADD CONSTRAINT "SISGDDO_estado_indicador_objetivos_pkey" PRIMARY KEY (id);
 x   ALTER TABLE ONLY public."SISGDDO_estado_indicador_objetivos" DROP CONSTRAINT "SISGDDO_estado_indicador_objetivos_pkey";
       public            postgres    false    369            �           2606    24633 :   SISGDDO_estado_licencia SISGDDO_estado_licencia_nombre_key 
   CONSTRAINT     {   ALTER TABLE ONLY public."SISGDDO_estado_licencia"
    ADD CONSTRAINT "SISGDDO_estado_licencia_nombre_key" UNIQUE (nombre);
 h   ALTER TABLE ONLY public."SISGDDO_estado_licencia" DROP CONSTRAINT "SISGDDO_estado_licencia_nombre_key";
       public            postgres    false    306            �           2606    24631 4   SISGDDO_estado_licencia SISGDDO_estado_licencia_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."SISGDDO_estado_licencia"
    ADD CONSTRAINT "SISGDDO_estado_licencia_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."SISGDDO_estado_licencia" DROP CONSTRAINT "SISGDDO_estado_licencia_pkey";
       public            postgres    false    306            �           2606    25529 R   SISGDDO_estado_propiedad_industrial SISGDDO_estado_propiedad_industrial_nombre_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_estado_propiedad_industrial"
    ADD CONSTRAINT "SISGDDO_estado_propiedad_industrial_nombre_key" UNIQUE (nombre);
 �   ALTER TABLE ONLY public."SISGDDO_estado_propiedad_industrial" DROP CONSTRAINT "SISGDDO_estado_propiedad_industrial_nombre_key";
       public            postgres    false    371            �           2606    25527 L   SISGDDO_estado_propiedad_industrial SISGDDO_estado_propiedad_industrial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_estado_propiedad_industrial"
    ADD CONSTRAINT "SISGDDO_estado_propiedad_industrial_pkey" PRIMARY KEY (id);
 z   ALTER TABLE ONLY public."SISGDDO_estado_propiedad_industrial" DROP CONSTRAINT "SISGDDO_estado_propiedad_industrial_pkey";
       public            postgres    false    371            �           2606    24643 T   SISGDDO_estado_propiedad_intelectual SISGDDO_estado_propiedad_intelectual_nombre_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_estado_propiedad_intelectual"
    ADD CONSTRAINT "SISGDDO_estado_propiedad_intelectual_nombre_key" UNIQUE (nombre);
 �   ALTER TABLE ONLY public."SISGDDO_estado_propiedad_intelectual" DROP CONSTRAINT "SISGDDO_estado_propiedad_intelectual_nombre_key";
       public            postgres    false    308                        2606    24641 N   SISGDDO_estado_propiedad_intelectual SISGDDO_estado_propiedad_intelectual_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_estado_propiedad_intelectual"
    ADD CONSTRAINT "SISGDDO_estado_propiedad_intelectual_pkey" PRIMARY KEY (id);
 |   ALTER TABLE ONLY public."SISGDDO_estado_propiedad_intelectual" DROP CONSTRAINT "SISGDDO_estado_propiedad_intelectual_pkey";
       public            postgres    false    308            K           2606    18122 4   SISGDDO_estado_proyecto SISGDDO_estado_proyecto_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."SISGDDO_estado_proyecto"
    ADD CONSTRAINT "SISGDDO_estado_proyecto_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."SISGDDO_estado_proyecto" DROP CONSTRAINT "SISGDDO_estado_proyecto_pkey";
       public            postgres    false    233            O           2606    18124 q   SISGDDO_formacion_personal_capacitacion_adquirida SISGDDO_formacion_person_formacion_personal_id_cu_fd76a6c6_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_formacion_personal_capacitacion_adquirida"
    ADD CONSTRAINT "SISGDDO_formacion_person_formacion_personal_id_cu_fd76a6c6_uniq" UNIQUE (formacion_personal_id, curso_id);
 �   ALTER TABLE ONLY public."SISGDDO_formacion_personal_capacitacion_adquirida" DROP CONSTRAINT "SISGDDO_formacion_person_formacion_personal_id_cu_fd76a6c6_uniq";
       public            postgres    false    236    236            Q           2606    18126 h   SISGDDO_formacion_personal_capacitacion_adquirida SISGDDO_formacion_personal_capacitacion_adquirida_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_formacion_personal_capacitacion_adquirida"
    ADD CONSTRAINT "SISGDDO_formacion_personal_capacitacion_adquirida_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."SISGDDO_formacion_personal_capacitacion_adquirida" DROP CONSTRAINT "SISGDDO_formacion_personal_capacitacion_adquirida_pkey";
       public            postgres    false    236            M           2606    18128 :   SISGDDO_formacion_personal SISGDDO_formacion_personal_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."SISGDDO_formacion_personal"
    ADD CONSTRAINT "SISGDDO_formacion_personal_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."SISGDDO_formacion_personal" DROP CONSTRAINT "SISGDDO_formacion_personal_pkey";
       public            postgres    false    235                       2606    24653 *   SISGDDO_formato SISGDDO_formato_nombre_key 
   CONSTRAINT     k   ALTER TABLE ONLY public."SISGDDO_formato"
    ADD CONSTRAINT "SISGDDO_formato_nombre_key" UNIQUE (nombre);
 X   ALTER TABLE ONLY public."SISGDDO_formato" DROP CONSTRAINT "SISGDDO_formato_nombre_key";
       public            postgres    false    310                       2606    24651 $   SISGDDO_formato SISGDDO_formato_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."SISGDDO_formato"
    ADD CONSTRAINT "SISGDDO_formato_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."SISGDDO_formato" DROP CONSTRAINT "SISGDDO_formato_pkey";
       public            postgres    false    310                       2606    24661 @   SISGDDO_fuente_financiamiento SISGDDO_fuente_financiamiento_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_fuente_financiamiento"
    ADD CONSTRAINT "SISGDDO_fuente_financiamiento_pkey" PRIMARY KEY (id);
 n   ALTER TABLE ONLY public."SISGDDO_fuente_financiamiento" DROP CONSTRAINT "SISGDDO_fuente_financiamiento_pkey";
       public            postgres    false    312            V           2606    18134 J   SISGDDO_historico_dictamen_tecnico SISGDDO_historico_dictamen_tecnico_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_historico_dictamen_tecnico"
    ADD CONSTRAINT "SISGDDO_historico_dictamen_tecnico_pkey" PRIMARY KEY (id);
 x   ALTER TABLE ONLY public."SISGDDO_historico_dictamen_tecnico" DROP CONSTRAINT "SISGDDO_historico_dictamen_tecnico_pkey";
       public            postgres    false    239            Z           2606    18136 N   SISGDDO_historico_entradas_proyectos SISGDDO_historico_entradas_proyectos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_historico_entradas_proyectos"
    ADD CONSTRAINT "SISGDDO_historico_entradas_proyectos_pkey" PRIMARY KEY (id);
 |   ALTER TABLE ONLY public."SISGDDO_historico_entradas_proyectos" DROP CONSTRAINT "SISGDDO_historico_entradas_proyectos_pkey";
       public            postgres    false    241            ^           2606    24779 (   SISGDDO_idioma SISGDDO_idioma_nombre_key 
   CONSTRAINT     i   ALTER TABLE ONLY public."SISGDDO_idioma"
    ADD CONSTRAINT "SISGDDO_idioma_nombre_key" UNIQUE (nombre);
 V   ALTER TABLE ONLY public."SISGDDO_idioma" DROP CONSTRAINT "SISGDDO_idioma_nombre_key";
       public            postgres    false    243            `           2606    18140 "   SISGDDO_idioma SISGDDO_idioma_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SISGDDO_idioma"
    ADD CONSTRAINT "SISGDDO_idioma_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."SISGDDO_idioma" DROP CONSTRAINT "SISGDDO_idioma_pkey";
       public            postgres    false    243            
           2606    24672 *   SISGDDO_incidencia SISGDDO_incidencia_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."SISGDDO_incidencia"
    ADD CONSTRAINT "SISGDDO_incidencia_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."SISGDDO_incidencia" DROP CONSTRAINT "SISGDDO_incidencia_pkey";
       public            postgres    false    314                       2606    24682 .   SISGDDO_indicador SISGDDO_indicador_nombre_key 
   CONSTRAINT     o   ALTER TABLE ONLY public."SISGDDO_indicador"
    ADD CONSTRAINT "SISGDDO_indicador_nombre_key" UNIQUE (nombre);
 \   ALTER TABLE ONLY public."SISGDDO_indicador" DROP CONSTRAINT "SISGDDO_indicador_nombre_key";
       public            postgres    false    316            �           2606    25539 B   SISGDDO_indicador_objetivos SISGDDO_indicador_objetivos_nombre_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_indicador_objetivos"
    ADD CONSTRAINT "SISGDDO_indicador_objetivos_nombre_key" UNIQUE (nombre);
 p   ALTER TABLE ONLY public."SISGDDO_indicador_objetivos" DROP CONSTRAINT "SISGDDO_indicador_objetivos_nombre_key";
       public            postgres    false    373            �           2606    25537 <   SISGDDO_indicador_objetivos SISGDDO_indicador_objetivos_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."SISGDDO_indicador_objetivos"
    ADD CONSTRAINT "SISGDDO_indicador_objetivos_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."SISGDDO_indicador_objetivos" DROP CONSTRAINT "SISGDDO_indicador_objetivos_pkey";
       public            postgres    false    373                       2606    24680 (   SISGDDO_indicador SISGDDO_indicador_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."SISGDDO_indicador"
    ADD CONSTRAINT "SISGDDO_indicador_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."SISGDDO_indicador" DROP CONSTRAINT "SISGDDO_indicador_pkey";
       public            postgres    false    316                       2606    24695 (   SISGDDO_licencia SISGDDO_licencia_no_key 
   CONSTRAINT     e   ALTER TABLE ONLY public."SISGDDO_licencia"
    ADD CONSTRAINT "SISGDDO_licencia_no_key" UNIQUE (no);
 V   ALTER TABLE ONLY public."SISGDDO_licencia" DROP CONSTRAINT "SISGDDO_licencia_no_key";
       public            postgres    false    318                       2606    24697 ,   SISGDDO_licencia SISGDDO_licencia_nombre_key 
   CONSTRAINT     m   ALTER TABLE ONLY public."SISGDDO_licencia"
    ADD CONSTRAINT "SISGDDO_licencia_nombre_key" UNIQUE (nombre);
 Z   ALTER TABLE ONLY public."SISGDDO_licencia" DROP CONSTRAINT "SISGDDO_licencia_nombre_key";
       public            postgres    false    318                       2606    24693 &   SISGDDO_licencia SISGDDO_licencia_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."SISGDDO_licencia"
    ADD CONSTRAINT "SISGDDO_licencia_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."SISGDDO_licencia" DROP CONSTRAINT "SISGDDO_licencia_pkey";
       public            postgres    false    318            T           2606    25130 \   SISGDDO_licencia_responsable SISGDDO_licencia_respons_licencia_id_trabajador_i_2d33ab5b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_licencia_responsable"
    ADD CONSTRAINT "SISGDDO_licencia_respons_licencia_id_trabajador_i_2d33ab5b_uniq" UNIQUE (licencia_id, trabajador_id);
 �   ALTER TABLE ONLY public."SISGDDO_licencia_responsable" DROP CONSTRAINT "SISGDDO_licencia_respons_licencia_id_trabajador_i_2d33ab5b_uniq";
       public            postgres    false    341    341            W           2606    24911 >   SISGDDO_licencia_responsable SISGDDO_licencia_responsable_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_licencia_responsable"
    ADD CONSTRAINT "SISGDDO_licencia_responsable_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."SISGDDO_licencia_responsable" DROP CONSTRAINT "SISGDDO_licencia_responsable_pkey";
       public            postgres    false    341                       2606    24707 8   SISGDDO_linea_tematica SISGDDO_linea_tematica_nombre_key 
   CONSTRAINT     y   ALTER TABLE ONLY public."SISGDDO_linea_tematica"
    ADD CONSTRAINT "SISGDDO_linea_tematica_nombre_key" UNIQUE (nombre);
 f   ALTER TABLE ONLY public."SISGDDO_linea_tematica" DROP CONSTRAINT "SISGDDO_linea_tematica_nombre_key";
       public            postgres    false    320            !           2606    24705 2   SISGDDO_linea_tematica SISGDDO_linea_tematica_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."SISGDDO_linea_tematica"
    ADD CONSTRAINT "SISGDDO_linea_tematica_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."SISGDDO_linea_tematica" DROP CONSTRAINT "SISGDDO_linea_tematica_pkey";
       public            postgres    false    320            b           2606    18150 0   SISGDDO_metodosprueba SISGDDO_metodosprueba_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."SISGDDO_metodosprueba"
    ADD CONSTRAINT "SISGDDO_metodosprueba_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."SISGDDO_metodosprueba" DROP CONSTRAINT "SISGDDO_metodosprueba_pkey";
       public            postgres    false    245            �           2606    25549 .   SISGDDO_modalidad SISGDDO_modalidad_nombre_key 
   CONSTRAINT     o   ALTER TABLE ONLY public."SISGDDO_modalidad"
    ADD CONSTRAINT "SISGDDO_modalidad_nombre_key" UNIQUE (nombre);
 \   ALTER TABLE ONLY public."SISGDDO_modalidad" DROP CONSTRAINT "SISGDDO_modalidad_nombre_key";
       public            postgres    false    375            �           2606    25547 (   SISGDDO_modalidad SISGDDO_modalidad_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."SISGDDO_modalidad"
    ADD CONSTRAINT "SISGDDO_modalidad_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."SISGDDO_modalidad" DROP CONSTRAINT "SISGDDO_modalidad_pkey";
       public            postgres    false    375            $           2606    24715 .   SISGDDO_notificacion SISGDDO_notificacion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."SISGDDO_notificacion"
    ADD CONSTRAINT "SISGDDO_notificacion_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."SISGDDO_notificacion" DROP CONSTRAINT "SISGDDO_notificacion_pkey";
       public            postgres    false    322            �           2606    25559 ,   SISGDDO_objetivo SISGDDO_objetivo_nombre_key 
   CONSTRAINT     m   ALTER TABLE ONLY public."SISGDDO_objetivo"
    ADD CONSTRAINT "SISGDDO_objetivo_nombre_key" UNIQUE (nombre);
 Z   ALTER TABLE ONLY public."SISGDDO_objetivo" DROP CONSTRAINT "SISGDDO_objetivo_nombre_key";
       public            postgres    false    377            �           2606    25557 &   SISGDDO_objetivo SISGDDO_objetivo_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."SISGDDO_objetivo"
    ADD CONSTRAINT "SISGDDO_objetivo_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."SISGDDO_objetivo" DROP CONSTRAINT "SISGDDO_objetivo_pkey";
       public            postgres    false    377            d           2606    18154 (   SISGDDO_organismo SISGDDO_organismo_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."SISGDDO_organismo"
    ADD CONSTRAINT "SISGDDO_organismo_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."SISGDDO_organismo" DROP CONSTRAINT "SISGDDO_organismo_pkey";
       public            postgres    false    247            �           2606    25567    SISGDDO_pais SISGDDO_pais_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."SISGDDO_pais"
    ADD CONSTRAINT "SISGDDO_pais_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."SISGDDO_pais" DROP CONSTRAINT "SISGDDO_pais_pkey";
       public            postgres    false    379            �           2606    18837 D   SISGDDO_permisos_personalizados SISGDDO_permisos_personalizados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_permisos_personalizados"
    ADD CONSTRAINT "SISGDDO_permisos_personalizados_pkey" PRIMARY KEY (id);
 r   ALTER TABLE ONLY public."SISGDDO_permisos_personalizados" DROP CONSTRAINT "SISGDDO_permisos_personalizados_pkey";
       public            postgres    false    296            i           2606    18156 ]   SISGDDO_plan_medidas_acciones SISGDDO_plan_medidas_acc_plan_medidas_id_acciones_a1f12890_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_plan_medidas_acciones"
    ADD CONSTRAINT "SISGDDO_plan_medidas_acc_plan_medidas_id_acciones_a1f12890_uniq" UNIQUE (plan_medidas_id, acciones_id);
 �   ALTER TABLE ONLY public."SISGDDO_plan_medidas_acciones" DROP CONSTRAINT "SISGDDO_plan_medidas_acc_plan_medidas_id_acciones_a1f12890_uniq";
       public            postgres    false    250    250            l           2606    18158 @   SISGDDO_plan_medidas_acciones SISGDDO_plan_medidas_acciones_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_plan_medidas_acciones"
    ADD CONSTRAINT "SISGDDO_plan_medidas_acciones_pkey" PRIMARY KEY (id);
 n   ALTER TABLE ONLY public."SISGDDO_plan_medidas_acciones" DROP CONSTRAINT "SISGDDO_plan_medidas_acciones_pkey";
       public            postgres    false    250            f           2606    18160 .   SISGDDO_plan_medidas SISGDDO_plan_medidas_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."SISGDDO_plan_medidas"
    ADD CONSTRAINT "SISGDDO_plan_medidas_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."SISGDDO_plan_medidas" DROP CONSTRAINT "SISGDDO_plan_medidas_pkey";
       public            postgres    false    249            *           2606    24725 (   SISGDDO_premio SISGDDO_premio_nombre_key 
   CONSTRAINT     i   ALTER TABLE ONLY public."SISGDDO_premio"
    ADD CONSTRAINT "SISGDDO_premio_nombre_key" UNIQUE (nombre);
 V   ALTER TABLE ONLY public."SISGDDO_premio" DROP CONSTRAINT "SISGDDO_premio_nombre_key";
       public            postgres    false    324            ,           2606    24723 "   SISGDDO_premio SISGDDO_premio_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SISGDDO_premio"
    ADD CONSTRAINT "SISGDDO_premio_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."SISGDDO_premio" DROP CONSTRAINT "SISGDDO_premio_pkey";
       public            postgres    false    324            y           2606    25385 6   SISGDDO_procedimiento SISGDDO_procedimiento_codigo_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."SISGDDO_procedimiento"
    ADD CONSTRAINT "SISGDDO_procedimiento_codigo_key" UNIQUE (codigo);
 d   ALTER TABLE ONLY public."SISGDDO_procedimiento" DROP CONSTRAINT "SISGDDO_procedimiento_codigo_key";
       public            postgres    false    353            {           2606    25383 0   SISGDDO_procedimiento SISGDDO_procedimiento_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."SISGDDO_procedimiento"
    ADD CONSTRAINT "SISGDDO_procedimiento_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."SISGDDO_procedimiento" DROP CONSTRAINT "SISGDDO_procedimiento_pkey";
       public            postgres    false    353            p           2606    24781 *   SISGDDO_proceso SISGDDO_proceso_nombre_key 
   CONSTRAINT     k   ALTER TABLE ONLY public."SISGDDO_proceso"
    ADD CONSTRAINT "SISGDDO_proceso_nombre_key" UNIQUE (nombre);
 X   ALTER TABLE ONLY public."SISGDDO_proceso" DROP CONSTRAINT "SISGDDO_proceso_nombre_key";
       public            postgres    false    253            r           2606    18164 $   SISGDDO_proceso SISGDDO_proceso_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."SISGDDO_proceso"
    ADD CONSTRAINT "SISGDDO_proceso_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."SISGDDO_proceso" DROP CONSTRAINT "SISGDDO_proceso_pkey";
       public            postgres    false    253            B           2606    25057 [   SISGDDO_proceso_responsable SISGDDO_proceso_responsa_proceso_id_trabajador_id_08fcddfd_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proceso_responsable"
    ADD CONSTRAINT "SISGDDO_proceso_responsa_proceso_id_trabajador_id_08fcddfd_uniq" UNIQUE (proceso_id, trabajador_id);
 �   ALTER TABLE ONLY public."SISGDDO_proceso_responsable" DROP CONSTRAINT "SISGDDO_proceso_responsa_proceso_id_trabajador_id_08fcddfd_uniq";
       public            postgres    false    334    334            D           2606    24789 <   SISGDDO_proceso_responsable SISGDDO_proceso_responsable_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."SISGDDO_proceso_responsable"
    ADD CONSTRAINT "SISGDDO_proceso_responsable_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."SISGDDO_proceso_responsable" DROP CONSTRAINT "SISGDDO_proceso_responsable_pkey";
       public            postgres    false    334            �           2606    25582 L   SISGDDO_propiedad_industrial SISGDDO_propiedad_industrial_no_certificado_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial"
    ADD CONSTRAINT "SISGDDO_propiedad_industrial_no_certificado_key" UNIQUE (no_certificado);
 z   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial" DROP CONSTRAINT "SISGDDO_propiedad_industrial_no_certificado_key";
       public            postgres    false    381            �           2606    25580 J   SISGDDO_propiedad_industrial SISGDDO_propiedad_industrial_no_solicitud_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial"
    ADD CONSTRAINT "SISGDDO_propiedad_industrial_no_solicitud_key" UNIQUE (no_solicitud);
 x   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial" DROP CONSTRAINT "SISGDDO_propiedad_industrial_no_solicitud_key";
       public            postgres    false    381            �           2606    25578 >   SISGDDO_propiedad_industrial SISGDDO_propiedad_industrial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial"
    ADD CONSTRAINT "SISGDDO_propiedad_industrial_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial" DROP CONSTRAINT "SISGDDO_propiedad_industrial_pkey";
       public            postgres    false    381            0           2606    24738 B   SISGDDO_propiedad_intelectual SISGDDO_propiedad_intelectual_no_key 
   CONSTRAINT        ALTER TABLE ONLY public."SISGDDO_propiedad_intelectual"
    ADD CONSTRAINT "SISGDDO_propiedad_intelectual_no_key" UNIQUE (no);
 p   ALTER TABLE ONLY public."SISGDDO_propiedad_intelectual" DROP CONSTRAINT "SISGDDO_propiedad_intelectual_no_key";
       public            postgres    false    326            2           2606    24736 @   SISGDDO_propiedad_intelectual SISGDDO_propiedad_intelectual_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_propiedad_intelectual"
    ADD CONSTRAINT "SISGDDO_propiedad_intelectual_pkey" PRIMARY KEY (id);
 n   ALTER TABLE ONLY public."SISGDDO_propiedad_intelectual" DROP CONSTRAINT "SISGDDO_propiedad_intelectual_pkey";
       public            postgres    false    326            u           2606    18166 8   SISGDDO_provincia SISGDDO_provincia_nombre_Provincia_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_provincia"
    ADD CONSTRAINT "SISGDDO_provincia_nombre_Provincia_key" UNIQUE ("nombre_Provincia");
 f   ALTER TABLE ONLY public."SISGDDO_provincia" DROP CONSTRAINT "SISGDDO_provincia_nombre_Provincia_key";
       public            postgres    false    255            w           2606    18168 (   SISGDDO_provincia SISGDDO_provincia_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."SISGDDO_provincia"
    ADD CONSTRAINT "SISGDDO_provincia_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."SISGDDO_provincia" DROP CONSTRAINT "SISGDDO_provincia_pkey";
       public            postgres    false    255            H           2606    24797 6   SISGDDO_proyecto_calidad SISGDDO_proyecto_calidad_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."SISGDDO_proyecto_calidad"
    ADD CONSTRAINT "SISGDDO_proyecto_calidad_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."SISGDDO_proyecto_calidad" DROP CONSTRAINT "SISGDDO_proyecto_calidad_pkey";
       public            postgres    false    336            K           2606    25071 X   SISGDDO_proyecto_calidad SISGDDO_proyecto_calidad_proyecto_id_trabajador_i_a2e62361_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_calidad"
    ADD CONSTRAINT "SISGDDO_proyecto_calidad_proyecto_id_trabajador_i_a2e62361_uniq" UNIQUE (proyecto_id, trabajador_id);
 �   ALTER TABLE ONLY public."SISGDDO_proyecto_calidad" DROP CONSTRAINT "SISGDDO_proyecto_calidad_proyecto_id_trabajador_i_a2e62361_uniq";
       public            postgres    false    336    336            {           2606    24799 ,   SISGDDO_proyecto SISGDDO_proyecto_codigo_key 
   CONSTRAINT     m   ALTER TABLE ONLY public."SISGDDO_proyecto"
    ADD CONSTRAINT "SISGDDO_proyecto_codigo_key" UNIQUE (codigo);
 Z   ALTER TABLE ONLY public."SISGDDO_proyecto" DROP CONSTRAINT "SISGDDO_proyecto_codigo_key";
       public            postgres    false    257            }           2606    24801 1   SISGDDO_proyecto SISGDDO_proyecto_consecutivo_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."SISGDDO_proyecto"
    ADD CONSTRAINT "SISGDDO_proyecto_consecutivo_key" UNIQUE (consecutivo);
 _   ALTER TABLE ONLY public."SISGDDO_proyecto" DROP CONSTRAINT "SISGDDO_proyecto_consecutivo_key";
       public            postgres    false    257            N           2606    25086 [   SISGDDO_proyecto_disennador SISGDDO_proyecto_disenna_proyecto_id_trabajador_i_60705297_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_disennador"
    ADD CONSTRAINT "SISGDDO_proyecto_disenna_proyecto_id_trabajador_i_60705297_uniq" UNIQUE (proyecto_id, trabajador_id);
 �   ALTER TABLE ONLY public."SISGDDO_proyecto_disennador" DROP CONSTRAINT "SISGDDO_proyecto_disenna_proyecto_id_trabajador_i_60705297_uniq";
       public            postgres    false    338    338            P           2606    24810 <   SISGDDO_proyecto_disennador SISGDDO_proyecto_disennador_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."SISGDDO_proyecto_disennador"
    ADD CONSTRAINT "SISGDDO_proyecto_disennador_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."SISGDDO_proyecto_disennador" DROP CONSTRAINT "SISGDDO_proyecto_disennador_pkey";
       public            postgres    false    338            g           2606    24935 6   SISGDDO_proyecto_formato SISGDDO_proyecto_formato_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."SISGDDO_proyecto_formato"
    ADD CONSTRAINT "SISGDDO_proyecto_formato_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."SISGDDO_proyecto_formato" DROP CONSTRAINT "SISGDDO_proyecto_formato_pkey";
       public            postgres    false    347            j           2606    25184 V   SISGDDO_proyecto_formato SISGDDO_proyecto_formato_proyecto_id_formato_id_6f56d224_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_formato"
    ADD CONSTRAINT "SISGDDO_proyecto_formato_proyecto_id_formato_id_6f56d224_uniq" UNIQUE (proyecto_id, formato_id);
 �   ALTER TABLE ONLY public."SISGDDO_proyecto_formato" DROP CONSTRAINT "SISGDDO_proyecto_formato_proyecto_id_formato_id_6f56d224_uniq";
       public            postgres    false    347    347            �           2606    18170 ^   SISGDDO_proyecto_jefe_proyecto SISGDDO_proyecto_jefe_pr_proyecto_id_trabajador_i_c4be0452_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_jefe_proyecto"
    ADD CONSTRAINT "SISGDDO_proyecto_jefe_pr_proyecto_id_trabajador_i_c4be0452_uniq" UNIQUE (proyecto_id, trabajador_id);
 �   ALTER TABLE ONLY public."SISGDDO_proyecto_jefe_proyecto" DROP CONSTRAINT "SISGDDO_proyecto_jefe_pr_proyecto_id_trabajador_i_c4be0452_uniq";
       public            postgres    false    258    258            �           2606    18172 B   SISGDDO_proyecto_jefe_proyecto SISGDDO_proyecto_jefe_proyecto_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_jefe_proyecto"
    ADD CONSTRAINT "SISGDDO_proyecto_jefe_proyecto_pkey" PRIMARY KEY (id);
 p   ALTER TABLE ONLY public."SISGDDO_proyecto_jefe_proyecto" DROP CONSTRAINT "SISGDDO_proyecto_jefe_proyecto_pkey";
       public            postgres    false    258            �           2606    24873 ?   SISGDDO_proyecto SISGDDO_proyecto_nombre_proyecto_f4676558_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto"
    ADD CONSTRAINT "SISGDDO_proyecto_nombre_proyecto_f4676558_uniq" UNIQUE (nombre_proyecto);
 m   ALTER TABLE ONLY public."SISGDDO_proyecto" DROP CONSTRAINT "SISGDDO_proyecto_nombre_proyecto_f4676558_uniq";
       public            postgres    false    257            �           2606    24850 &   SISGDDO_proyecto SISGDDO_proyecto_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."SISGDDO_proyecto"
    ADD CONSTRAINT "SISGDDO_proyecto_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."SISGDDO_proyecto" DROP CONSTRAINT "SISGDDO_proyecto_pkey";
       public            postgres    false    257            5           2606    25436 "   SISGDDO_queja SISGDDO_queja_no_key 
   CONSTRAINT     _   ALTER TABLE ONLY public."SISGDDO_queja"
    ADD CONSTRAINT "SISGDDO_queja_no_key" UNIQUE (no);
 P   ALTER TABLE ONLY public."SISGDDO_queja" DROP CONSTRAINT "SISGDDO_queja_no_key";
       public            postgres    false    328            7           2606    24749     SISGDDO_queja SISGDDO_queja_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."SISGDDO_queja"
    ADD CONSTRAINT "SISGDDO_queja_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."SISGDDO_queja" DROP CONSTRAINT "SISGDDO_queja_pkey";
       public            postgres    false    328            �           2606    18184 0   SISGDDO_sosi_formatos SISGDDO_sosi_formatos_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."SISGDDO_sosi_formatos"
    ADD CONSTRAINT "SISGDDO_sosi_formatos_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."SISGDDO_sosi_formatos" DROP CONSTRAINT "SISGDDO_sosi_formatos_pkey";
       public            postgres    false    261            �           2606    18186 M   SISGDDO_sosi_formatos SISGDDO_sosi_formatos_sosi_id_formatos_id_11b72753_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_sosi_formatos"
    ADD CONSTRAINT "SISGDDO_sosi_formatos_sosi_id_formatos_id_11b72753_uniq" UNIQUE (sosi_id, formato_id);
 {   ALTER TABLE ONLY public."SISGDDO_sosi_formatos" DROP CONSTRAINT "SISGDDO_sosi_formatos_sosi_id_formatos_id_11b72753_uniq";
       public            postgres    false    261    261            �           2606    18188 ,   SISGDDO_sosi_idioma SISGDDO_sosi_idioma_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."SISGDDO_sosi_idioma"
    ADD CONSTRAINT "SISGDDO_sosi_idioma_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."SISGDDO_sosi_idioma" DROP CONSTRAINT "SISGDDO_sosi_idioma_pkey";
       public            postgres    false    264            �           2606    18190 G   SISGDDO_sosi_idioma SISGDDO_sosi_idioma_sosi_id_idioma_id_4d79adb9_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_sosi_idioma"
    ADD CONSTRAINT "SISGDDO_sosi_idioma_sosi_id_idioma_id_4d79adb9_uniq" UNIQUE (sosi_id, idioma_id);
 u   ALTER TABLE ONLY public."SISGDDO_sosi_idioma" DROP CONSTRAINT "SISGDDO_sosi_idioma_sosi_id_idioma_id_4d79adb9_uniq";
       public            postgres    false    264    264            l           2606    25210 [   SISGDDO_sosi_linea_tematica SISGDDO_sosi_linea_temat_sosi_id_linea_tematica_i_f8e5a488_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_sosi_linea_tematica"
    ADD CONSTRAINT "SISGDDO_sosi_linea_temat_sosi_id_linea_tematica_i_f8e5a488_uniq" UNIQUE (sosi_id, linea_tematica_id);
 �   ALTER TABLE ONLY public."SISGDDO_sosi_linea_tematica" DROP CONSTRAINT "SISGDDO_sosi_linea_temat_sosi_id_linea_tematica_i_f8e5a488_uniq";
       public            postgres    false    349    349            o           2606    24943 <   SISGDDO_sosi_linea_tematica SISGDDO_sosi_linea_tematica_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."SISGDDO_sosi_linea_tematica"
    ADD CONSTRAINT "SISGDDO_sosi_linea_tematica_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."SISGDDO_sosi_linea_tematica" DROP CONSTRAINT "SISGDDO_sosi_linea_tematica_pkey";
       public            postgres    false    349            �           2606    18192    SISGDDO_sosi SISGDDO_sosi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."SISGDDO_sosi"
    ADD CONSTRAINT "SISGDDO_sosi_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."SISGDDO_sosi" DROP CONSTRAINT "SISGDDO_sosi_pkey";
       public            postgres    false    260            ;           2606    24759 0   SISGDDO_tipo_proyecto SISGDDO_tipo_proyecto_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."SISGDDO_tipo_proyecto"
    ADD CONSTRAINT "SISGDDO_tipo_proyecto_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."SISGDDO_tipo_proyecto" DROP CONSTRAINT "SISGDDO_tipo_proyecto_pkey";
       public            postgres    false    330            �           2606    18198 *   SISGDDO_trabajador SISGDDO_trabajador_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."SISGDDO_trabajador"
    ADD CONSTRAINT "SISGDDO_trabajador_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."SISGDDO_trabajador" DROP CONSTRAINT "SISGDDO_trabajador_pkey";
       public            postgres    false    266            �           2606    18202 f   SISGDDO_valoracion_encuesta_organismos SISGDDO_valoracion_encue_valoracion_encuesta_id_o_372b4c52_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta_organismos"
    ADD CONSTRAINT "SISGDDO_valoracion_encue_valoracion_encuesta_id_o_372b4c52_uniq" UNIQUE (valoracion_encuesta_id, organismo_id);
 �   ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta_organismos" DROP CONSTRAINT "SISGDDO_valoracion_encue_valoracion_encuesta_id_o_372b4c52_uniq";
       public            postgres    false    270    270            �           2606    18204 R   SISGDDO_valoracion_encuesta_organismos SISGDDO_valoracion_encuesta_organismos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta_organismos"
    ADD CONSTRAINT "SISGDDO_valoracion_encuesta_organismos_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta_organismos" DROP CONSTRAINT "SISGDDO_valoracion_encuesta_organismos_pkey";
       public            postgres    false    270            �           2606    18206 <   SISGDDO_valoracion_encuesta SISGDDO_valoracion_encuesta_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta"
    ADD CONSTRAINT "SISGDDO_valoracion_encuesta_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta" DROP CONSTRAINT "SISGDDO_valoracion_encuesta_pkey";
       public            postgres    false    268            >           2606    24769 6   SISGDDO_via_recepcion SISGDDO_via_recepcion_nombre_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."SISGDDO_via_recepcion"
    ADD CONSTRAINT "SISGDDO_via_recepcion_nombre_key" UNIQUE (nombre);
 d   ALTER TABLE ONLY public."SISGDDO_via_recepcion" DROP CONSTRAINT "SISGDDO_via_recepcion_nombre_key";
       public            postgres    false    332            @           2606    24767 0   SISGDDO_via_recepcion SISGDDO_via_recepcion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."SISGDDO_via_recepcion"
    ADD CONSTRAINT "SISGDDO_via_recepcion_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."SISGDDO_via_recepcion" DROP CONSTRAINT "SISGDDO_via_recepcion_pkey";
       public            postgres    false    332            �           2606    18208    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    272            �           2606    18210 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    274    274            �           2606    18212 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    274            �           2606    18214    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    272            �           2606    18216 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    276    276            �           2606    18218 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    276            �           2606    18220 '   auth_user auth_user_email_1c89df09_uniq 
   CONSTRAINT     c   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_email_1c89df09_uniq UNIQUE (email);
 Q   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_email_1c89df09_uniq;
       public            postgres    false    278            �           2606    18222    auth_user auth_user_email_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_email_key UNIQUE (email);
 G   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_email_key;
       public            postgres    false    278            �           2606    18224 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    279            �           2606    18226 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    279    279            �           2606    18228    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    278            �           2606    18230 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    282            �           2606    18232 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    282    282            �           2606    25296     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    278            �           2606    18236 5   captcha_captchastore captcha_captchastore_hashkey_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.captcha_captchastore
    ADD CONSTRAINT captcha_captchastore_hashkey_key UNIQUE (hashkey);
 _   ALTER TABLE ONLY public.captcha_captchastore DROP CONSTRAINT captcha_captchastore_hashkey_key;
       public            postgres    false    284            �           2606    18238 .   captcha_captchastore captcha_captchastore_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.captcha_captchastore
    ADD CONSTRAINT captcha_captchastore_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.captcha_captchastore DROP CONSTRAINT captcha_captchastore_pkey;
       public            postgres    false    284            �           2606    18240 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    286            �           2606    18242 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    288    288            �           2606    18244 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    288            �           2606    18246 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    290            �           2606    18248 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    292            �           2606    18250 :   notifications_notification notifications_notification_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.notifications_notification
    ADD CONSTRAINT notifications_notification_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.notifications_notification DROP CONSTRAINT notifications_notification_pkey;
       public            postgres    false    293            }           1259    25706 :   SISGDDO_accion_indicador_o_indicador_objetivos_id_003ac8cc    INDEX     �   CREATE INDEX "SISGDDO_accion_indicador_o_indicador_objetivos_id_003ac8cc" ON public."SISGDDO_accion_indicador_objetivos" USING btree (indicador_objetivos_id);
 P   DROP INDEX public."SISGDDO_accion_indicador_o_indicador_objetivos_id_003ac8cc";
       public            postgres    false    355            ~           1259    25700 3   SISGDDO_accion_indicador_objetivos_area_id_ec08b976    INDEX     �   CREATE INDEX "SISGDDO_accion_indicador_objetivos_area_id_ec08b976" ON public."SISGDDO_accion_indicador_objetivos" USING btree (area_id);
 I   DROP INDEX public."SISGDDO_accion_indicador_objetivos_area_id_ec08b976";
       public            postgres    false    355                       1259    25601 7   SISGDDO_accion_indicador_objetivos_nombre_782a52a2_like    INDEX     �   CREATE INDEX "SISGDDO_accion_indicador_objetivos_nombre_782a52a2_like" ON public."SISGDDO_accion_indicador_objetivos" USING btree (nombre varchar_pattern_ops);
 M   DROP INDEX public."SISGDDO_accion_indicador_objetivos_nombre_782a52a2_like";
       public            postgres    false    355                       1259    18251 1   SISGDDO_acciones_responsable_acciones_id_63c54b4e    INDEX     �   CREATE INDEX "SISGDDO_acciones_responsable_acciones_id_63c54b4e" ON public."SISGDDO_acciones_responsable" USING btree (acciones_id);
 G   DROP INDEX public."SISGDDO_acciones_responsable_acciones_id_63c54b4e";
       public            postgres    false    207                       1259    18252 3   SISGDDO_acciones_responsable_trabajador_id_98c4cbd4    INDEX     �   CREATE INDEX "SISGDDO_acciones_responsable_trabajador_id_98c4cbd4" ON public."SISGDDO_acciones_responsable" USING btree (trabajador_id);
 I   DROP INDEX public."SISGDDO_acciones_responsable_trabajador_id_98c4cbd4";
       public            postgres    false    207            �           1259    25680 "   SISGDDO_acuerdo_estado_id_1c8e022e    INDEX     g   CREATE INDEX "SISGDDO_acuerdo_estado_id_1c8e022e" ON public."SISGDDO_acuerdo" USING btree (estado_id);
 8   DROP INDEX public."SISGDDO_acuerdo_estado_id_1c8e022e";
       public            postgres    false    357            �           1259    25698 /   SISGDDO_acuerdo_responsable_acuerdo_id_2b8721c5    INDEX     �   CREATE INDEX "SISGDDO_acuerdo_responsable_acuerdo_id_2b8721c5" ON public."SISGDDO_acuerdo_responsable" USING btree (acuerdo_id);
 E   DROP INDEX public."SISGDDO_acuerdo_responsable_acuerdo_id_2b8721c5";
       public            postgres    false    383            �           1259    25699 2   SISGDDO_acuerdo_responsable_trabajador_id_1f211065    INDEX     �   CREATE INDEX "SISGDDO_acuerdo_responsable_trabajador_id_1f211065" ON public."SISGDDO_acuerdo_responsable" USING btree (trabajador_id);
 H   DROP INDEX public."SISGDDO_acuerdo_responsable_trabajador_id_1f211065";
       public            postgres    false    383                       1259    18262 -   SISGDDO_auditoria_externa_entidad_id_c6530628    INDEX     }   CREATE INDEX "SISGDDO_auditoria_externa_entidad_id_c6530628" ON public."SISGDDO_auditoria_externa" USING btree (entidad_id);
 C   DROP INDEX public."SISGDDO_auditoria_externa_entidad_id_c6530628";
       public            postgres    false    211            s           1259    25398 ?   SISGDDO_auditoria_externa_proceso_auditoria_externa_id_eb98e133    INDEX     �   CREATE INDEX "SISGDDO_auditoria_externa_proceso_auditoria_externa_id_eb98e133" ON public."SISGDDO_auditoria_externa_proceso" USING btree (auditoria_externa_id);
 U   DROP INDEX public."SISGDDO_auditoria_externa_proceso_auditoria_externa_id_eb98e133";
       public            postgres    false    351            v           1259    25399 5   SISGDDO_auditoria_externa_proceso_proceso_id_25bd93e3    INDEX     �   CREATE INDEX "SISGDDO_auditoria_externa_proceso_proceso_id_25bd93e3" ON public."SISGDDO_auditoria_externa_proceso" USING btree (proceso_id);
 K   DROP INDEX public."SISGDDO_auditoria_externa_proceso_proceso_id_25bd93e3";
       public            postgres    false    351            $           1259    25008 -   SISGDDO_auditoria_interna_proceso_id_17b71d4d    INDEX     }   CREATE INDEX "SISGDDO_auditoria_interna_proceso_id_17b71d4d" ON public."SISGDDO_auditoria_interna" USING btree (proceso_id);
 C   DROP INDEX public."SISGDDO_auditoria_interna_proceso_id_17b71d4d";
       public            postgres    false    213            %           1259    25014 1   SISGDDO_auditoria_interna_responsable_id_84e7e919    INDEX     �   CREATE INDEX "SISGDDO_auditoria_interna_responsable_id_84e7e919" ON public."SISGDDO_auditoria_interna" USING btree (responsable_id);
 G   DROP INDEX public."SISGDDO_auditoria_interna_responsable_id_84e7e919";
       public            postgres    false    213            �           1259    25602 -   SISGDDO_clasificacion_di_nombre_6f4fea30_like    INDEX     �   CREATE INDEX "SISGDDO_clasificacion_di_nombre_6f4fea30_like" ON public."SISGDDO_clasificacion_dibujo_modelo_industrial" USING btree (nombre varchar_pattern_ops);
 C   DROP INDEX public."SISGDDO_clasificacion_di_nombre_6f4fea30_like";
       public            postgres    false    359            �           1259    25603 >   SISGDDO_clasificacion_elemento_figurativo_nombre_802bab26_like    INDEX     �   CREATE INDEX "SISGDDO_clasificacion_elemento_figurativo_nombre_802bab26_like" ON public."SISGDDO_clasificacion_elemento_figurativo" USING btree (nombre varchar_pattern_ops);
 T   DROP INDEX public."SISGDDO_clasificacion_elemento_figurativo_nombre_802bab26_like";
       public            postgres    false    361            �           1259    25604 2   SISGDDO_clasificacion_patente_nombre_27c60266_like    INDEX     �   CREATE INDEX "SISGDDO_clasificacion_patente_nombre_27c60266_like" ON public."SISGDDO_clasificacion_patente" USING btree (nombre varchar_pattern_ops);
 H   DROP INDEX public."SISGDDO_clasificacion_patente_nombre_27c60266_like";
       public            postgres    false    363            �           1259    25605 >   SISGDDO_clasificacion_productos_servicios_nombre_b57838d7_like    INDEX     �   CREATE INDEX "SISGDDO_clasificacion_productos_servicios_nombre_b57838d7_like" ON public."SISGDDO_clasificacion_productos_servicios" USING btree (nombre varchar_pattern_ops);
 T   DROP INDEX public."SISGDDO_clasificacion_productos_servicios_nombre_b57838d7_like";
       public            postgres    false    365            �           1259    25606 0   SISGDDO_clasificacion_viena_nombre_c1fb5cd5_like    INDEX     �   CREATE INDEX "SISGDDO_clasificacion_viena_nombre_c1fb5cd5_like" ON public."SISGDDO_clasificacion_viena" USING btree (nombre varchar_pattern_ops);
 F   DROP INDEX public."SISGDDO_clasificacion_viena_nombre_c1fb5cd5_like";
       public            postgres    false    367            (           1259    18272 (   SISGDDO_curso_nombre_Curso_3a1e73ed_like    INDEX     �   CREATE INDEX "SISGDDO_curso_nombre_Curso_3a1e73ed_like" ON public."SISGDDO_curso" USING btree ("nombre_Curso" varchar_pattern_ops);
 >   DROP INDEX public."SISGDDO_curso_nombre_Curso_3a1e73ed_like";
       public            postgres    false    217            -           1259    18274 /   SISGDDO_dictamen_tecnico_disennador_id_fafc4868    INDEX     �   CREATE INDEX "SISGDDO_dictamen_tecnico_disennador_id_fafc4868" ON public."SISGDDO_dictamen_tecnico" USING btree (disennador_id);
 E   DROP INDEX public."SISGDDO_dictamen_tecnico_disennador_id_fafc4868";
       public            postgres    false    219            .           1259    18275 7   SISGDDO_dictamen_tecnico_entradas_proyectos_id_876a6a8b    INDEX     �   CREATE INDEX "SISGDDO_dictamen_tecnico_entradas_proyectos_id_876a6a8b" ON public."SISGDDO_dictamen_tecnico" USING btree (entradas_proyectos_id);
 M   DROP INDEX public."SISGDDO_dictamen_tecnico_entradas_proyectos_id_876a6a8b";
       public            postgres    false    219            /           1259    18277 4   SISGDDO_dictamen_tecnico_estado_dictamen_id_7f0c5e1a    INDEX     �   CREATE INDEX "SISGDDO_dictamen_tecnico_estado_dictamen_id_7f0c5e1a" ON public."SISGDDO_dictamen_tecnico" USING btree (estado_dictamen_id);
 J   DROP INDEX public."SISGDDO_dictamen_tecnico_estado_dictamen_id_7f0c5e1a";
       public            postgres    false    219            0           1259    18278 -   SISGDDO_dictamen_tecnico_eval_por_id_d9862d85    INDEX     }   CREATE INDEX "SISGDDO_dictamen_tecnico_eval_por_id_d9862d85" ON public."SISGDDO_dictamen_tecnico" USING btree (eval_por_id);
 C   DROP INDEX public."SISGDDO_dictamen_tecnico_eval_por_id_d9862d85";
       public            postgres    false    219            1           1259    18279 7   SISGDDO_dictamen_tecnico_idioma_subtitulado_id_c7dc0352    INDEX     �   CREATE INDEX "SISGDDO_dictamen_tecnico_idioma_subtitulado_id_c7dc0352" ON public."SISGDDO_dictamen_tecnico" USING btree (idioma_subtitulado_id);
 M   DROP INDEX public."SISGDDO_dictamen_tecnico_idioma_subtitulado_id_c7dc0352";
       public            postgres    false    219            2           1259    18280 1   SISGDDO_dictamen_tecnico_nuevo_idioma_id_be75064b    INDEX     �   CREATE INDEX "SISGDDO_dictamen_tecnico_nuevo_idioma_id_be75064b" ON public."SISGDDO_dictamen_tecnico" USING btree (nuevo_idioma_id);
 G   DROP INDEX public."SISGDDO_dictamen_tecnico_nuevo_idioma_id_be75064b";
       public            postgres    false    219            5           1259    25020 )   SISGDDO_eficacia_evaluado_por_id_40812ffa    INDEX     u   CREATE INDEX "SISGDDO_eficacia_evaluado_por_id_40812ffa" ON public."SISGDDO_eficacia" USING btree (evaluado_por_id);
 ?   DROP INDEX public."SISGDDO_eficacia_evaluado_por_id_40812ffa";
       public            postgres    false    221            [           1259    25151 /   SISGDDO_eficacia_indicador_eficacia_id_91dc9ba7    INDEX     �   CREATE INDEX "SISGDDO_eficacia_indicador_eficacia_id_91dc9ba7" ON public."SISGDDO_eficacia_indicador" USING btree (eficacia_id);
 E   DROP INDEX public."SISGDDO_eficacia_indicador_eficacia_id_91dc9ba7";
       public            postgres    false    343            \           1259    25152 0   SISGDDO_eficacia_indicador_indicador_id_6a5a0e3d    INDEX     �   CREATE INDEX "SISGDDO_eficacia_indicador_indicador_id_6a5a0e3d" ON public."SISGDDO_eficacia_indicador" USING btree (indicador_id);
 F   DROP INDEX public."SISGDDO_eficacia_indicador_indicador_id_6a5a0e3d";
       public            postgres    false    343            8           1259    25400 -   SISGDDO_eficacia_proceso_asociado_id_da9dcd91    INDEX     }   CREATE INDEX "SISGDDO_eficacia_proceso_asociado_id_da9dcd91" ON public."SISGDDO_eficacia" USING btree (proceso_asociado_id);
 C   DROP INDEX public."SISGDDO_eficacia_proceso_asociado_id_da9dcd91";
       public            postgres    false    221            9           1259    25406 '   SISGDDO_eficacia_proceso_ef_id_0e826e65    INDEX     q   CREATE INDEX "SISGDDO_eficacia_proceso_ef_id_0e826e65" ON public."SISGDDO_eficacia" USING btree (proceso_ef_id);
 =   DROP INDEX public."SISGDDO_eficacia_proceso_ef_id_0e826e65";
       public            postgres    false    221            :           1259    25026 (   SISGDDO_eficacia_responsable_id_1d669692    INDEX     s   CREATE INDEX "SISGDDO_eficacia_responsable_id_1d669692" ON public."SISGDDO_eficacia" USING btree (responsable_id);
 >   DROP INDEX public."SISGDDO_eficacia_responsable_id_1d669692";
       public            postgres    false    221            ;           1259    18284 ,   SISGDDO_entidad_nombre_Entidad_a5e395fc_like    INDEX     �   CREATE INDEX "SISGDDO_entidad_nombre_Entidad_a5e395fc_like" ON public."SISGDDO_entidad" USING btree ("nombre_Entidad" varchar_pattern_ops);
 B   DROP INDEX public."SISGDDO_entidad_nombre_Entidad_a5e395fc_like";
       public            postgres    false    223            @           1259    25032 3   SISGDDO_entradas_proyecto_entregado_por_id_33ccd8c9    INDEX     �   CREATE INDEX "SISGDDO_entradas_proyecto_entregado_por_id_33ccd8c9" ON public."SISGDDO_entradas_proyecto" USING btree (entregado_por_id);
 I   DROP INDEX public."SISGDDO_entradas_proyecto_entregado_por_id_33ccd8c9";
       public            postgres    false    225            A           1259    25038 ,   SISGDDO_entradas_proyecto_estado_id_c0e4c38e    INDEX     {   CREATE INDEX "SISGDDO_entradas_proyecto_estado_id_c0e4c38e" ON public."SISGDDO_entradas_proyecto" USING btree (estado_id);
 B   DROP INDEX public."SISGDDO_entradas_proyecto_estado_id_c0e4c38e";
       public            postgres    false    225            a           1259    25165 ?   SISGDDO_entradas_proyecto_formato_entradas_proyecto_id_81c653aa    INDEX     �   CREATE INDEX "SISGDDO_entradas_proyecto_formato_entradas_proyecto_id_81c653aa" ON public."SISGDDO_entradas_proyecto_formato" USING btree (entradas_proyecto_id);
 U   DROP INDEX public."SISGDDO_entradas_proyecto_formato_entradas_proyecto_id_81c653aa";
       public            postgres    false    345            b           1259    25166 5   SISGDDO_entradas_proyecto_formato_formato_id_b1a17976    INDEX     �   CREATE INDEX "SISGDDO_entradas_proyecto_formato_formato_id_b1a17976" ON public."SISGDDO_entradas_proyecto_formato" USING btree (formato_id);
 K   DROP INDEX public."SISGDDO_entradas_proyecto_formato_formato_id_b1a17976";
       public            postgres    false    345            �           1259    25607 7   SISGDDO_estado_indicador_objetivos_nombre_fba308f5_like    INDEX     �   CREATE INDEX "SISGDDO_estado_indicador_objetivos_nombre_fba308f5_like" ON public."SISGDDO_estado_indicador_objetivos" USING btree (nombre varchar_pattern_ops);
 M   DROP INDEX public."SISGDDO_estado_indicador_objetivos_nombre_fba308f5_like";
       public            postgres    false    369            �           1259    24954 ,   SISGDDO_estado_licencia_nombre_89fb7104_like    INDEX     �   CREATE INDEX "SISGDDO_estado_licencia_nombre_89fb7104_like" ON public."SISGDDO_estado_licencia" USING btree (nombre varchar_pattern_ops);
 B   DROP INDEX public."SISGDDO_estado_licencia_nombre_89fb7104_like";
       public            postgres    false    306            �           1259    25608 8   SISGDDO_estado_propiedad_industrial_nombre_0b94cbff_like    INDEX     �   CREATE INDEX "SISGDDO_estado_propiedad_industrial_nombre_0b94cbff_like" ON public."SISGDDO_estado_propiedad_industrial" USING btree (nombre varchar_pattern_ops);
 N   DROP INDEX public."SISGDDO_estado_propiedad_industrial_nombre_0b94cbff_like";
       public            postgres    false    371            �           1259    24955 9   SISGDDO_estado_propiedad_intelectual_nombre_b32ca728_like    INDEX     �   CREATE INDEX "SISGDDO_estado_propiedad_intelectual_nombre_b32ca728_like" ON public."SISGDDO_estado_propiedad_intelectual" USING btree (nombre varchar_pattern_ops);
 O   DROP INDEX public."SISGDDO_estado_propiedad_intelectual_nombre_b32ca728_like";
       public            postgres    false    308            R           1259    18293 ,   SISGDDO_formacion_personal_curso_id_fa1a50f4    INDEX     �   CREATE INDEX "SISGDDO_formacion_personal_curso_id_fa1a50f4" ON public."SISGDDO_formacion_personal_capacitacion_adquirida" USING btree (curso_id);
 B   DROP INDEX public."SISGDDO_formacion_personal_curso_id_fa1a50f4";
       public            postgres    false    236            S           1259    18294 9   SISGDDO_formacion_personal_formacion_personal_id_b575b3d9    INDEX     �   CREATE INDEX "SISGDDO_formacion_personal_formacion_personal_id_b575b3d9" ON public."SISGDDO_formacion_personal_capacitacion_adquirida" USING btree (formacion_personal_id);
 O   DROP INDEX public."SISGDDO_formacion_personal_formacion_personal_id_b575b3d9";
       public            postgres    false    236                       1259    24956 $   SISGDDO_formato_nombre_15f8a22b_like    INDEX     z   CREATE INDEX "SISGDDO_formato_nombre_15f8a22b_like" ON public."SISGDDO_formato" USING btree (nombre varchar_pattern_ops);
 :   DROP INDEX public."SISGDDO_formato_nombre_15f8a22b_like";
       public            postgres    false    310            T           1259    18296 ?   SISGDDO_historico_dictamen_tecnico_dictamen_tecnico_id_1682bbe4    INDEX     �   CREATE INDEX "SISGDDO_historico_dictamen_tecnico_dictamen_tecnico_id_1682bbe4" ON public."SISGDDO_historico_dictamen_tecnico" USING btree (dictamen_tecnico_id);
 U   DROP INDEX public."SISGDDO_historico_dictamen_tecnico_dictamen_tecnico_id_1682bbe4";
       public            postgres    false    239            W           1259    18297 9   SISGDDO_historico_entradas_entradas_proyectos_id_cfc93f01    INDEX     �   CREATE INDEX "SISGDDO_historico_entradas_entradas_proyectos_id_cfc93f01" ON public."SISGDDO_historico_entradas_proyectos" USING btree (entradas_proyectos_id);
 O   DROP INDEX public."SISGDDO_historico_entradas_entradas_proyectos_id_cfc93f01";
       public            postgres    false    241            X           1259    18298 >   SISGDDO_historico_entradas_proyectos_entregado_por_id_f4801336    INDEX     �   CREATE INDEX "SISGDDO_historico_entradas_proyectos_entregado_por_id_f4801336" ON public."SISGDDO_historico_entradas_proyectos" USING btree (entregado_por_id);
 T   DROP INDEX public."SISGDDO_historico_entradas_proyectos_entregado_por_id_f4801336";
       public            postgres    false    241            [           1259    18299 =   SISGDDO_historico_entradas_proyectos_recibida_por_id_ca7c8b8f    INDEX     �   CREATE INDEX "SISGDDO_historico_entradas_proyectos_recibida_por_id_ca7c8b8f" ON public."SISGDDO_historico_entradas_proyectos" USING btree (recibida_por_id);
 S   DROP INDEX public."SISGDDO_historico_entradas_proyectos_recibida_por_id_ca7c8b8f";
       public            postgres    false    241            \           1259    25044 #   SISGDDO_idioma_nombre_6115bb7f_like    INDEX     x   CREATE INDEX "SISGDDO_idioma_nombre_6115bb7f_like" ON public."SISGDDO_idioma" USING btree (nombre varchar_pattern_ops);
 9   DROP INDEX public."SISGDDO_idioma_nombre_6115bb7f_like";
       public            postgres    false    243                       1259    24962 %   SISGDDO_incidencia_estado_id_9ead9fe8    INDEX     m   CREATE INDEX "SISGDDO_incidencia_estado_id_9ead9fe8" ON public."SISGDDO_incidencia" USING btree (estado_id);
 ;   DROP INDEX public."SISGDDO_incidencia_estado_id_9ead9fe8";
       public            postgres    false    314                       1259    25133 )   SISGDDO_incidencia_trabajador_id_88ef29b2    INDEX     u   CREATE INDEX "SISGDDO_incidencia_trabajador_id_88ef29b2" ON public."SISGDDO_incidencia" USING btree (trabajador_id);
 ?   DROP INDEX public."SISGDDO_incidencia_trabajador_id_88ef29b2";
       public            postgres    false    314                       1259    24963 &   SISGDDO_indicador_nombre_9ef1fb24_like    INDEX     ~   CREATE INDEX "SISGDDO_indicador_nombre_9ef1fb24_like" ON public."SISGDDO_indicador" USING btree (nombre varchar_pattern_ops);
 <   DROP INDEX public."SISGDDO_indicador_nombre_9ef1fb24_like";
       public            postgres    false    316            �           1259    25615 .   SISGDDO_indicador_objetivos_estado_id_27da2258    INDEX        CREATE INDEX "SISGDDO_indicador_objetivos_estado_id_27da2258" ON public."SISGDDO_indicador_objetivos" USING btree (estado_id);
 D   DROP INDEX public."SISGDDO_indicador_objetivos_estado_id_27da2258";
       public            postgres    false    373            �           1259    25614 0   SISGDDO_indicador_objetivos_nombre_0a1844bf_like    INDEX     �   CREATE INDEX "SISGDDO_indicador_objetivos_nombre_0a1844bf_like" ON public."SISGDDO_indicador_objetivos" USING btree (nombre varchar_pattern_ops);
 F   DROP INDEX public."SISGDDO_indicador_objetivos_nombre_0a1844bf_like";
       public            postgres    false    373            �           1259    25674 0   SISGDDO_indicador_objetivos_objetivo_id_c1883a69    INDEX     �   CREATE INDEX "SISGDDO_indicador_objetivos_objetivo_id_c1883a69" ON public."SISGDDO_indicador_objetivos" USING btree (objetivo_id);
 F   DROP INDEX public."SISGDDO_indicador_objetivos_objetivo_id_c1883a69";
       public            postgres    false    373                       1259    25412 %   SISGDDO_indicador_proceso_id_c16ded43    INDEX     m   CREATE INDEX "SISGDDO_indicador_proceso_id_c16ded43" ON public."SISGDDO_indicador" USING btree (proceso_id);
 ;   DROP INDEX public."SISGDDO_indicador_proceso_id_c16ded43";
       public            postgres    false    316                       1259    24976 $   SISGDDO_licencia_entidad_id_3e7b73b5    INDEX     k   CREATE INDEX "SISGDDO_licencia_entidad_id_3e7b73b5" ON public."SISGDDO_licencia" USING btree (entidad_id);
 :   DROP INDEX public."SISGDDO_licencia_entidad_id_3e7b73b5";
       public            postgres    false    318                       1259    24977 #   SISGDDO_licencia_estado_id_1665ad6b    INDEX     i   CREATE INDEX "SISGDDO_licencia_estado_id_1665ad6b" ON public."SISGDDO_licencia" USING btree (estado_id);
 9   DROP INDEX public."SISGDDO_licencia_estado_id_1665ad6b";
       public            postgres    false    318                       1259    24974 !   SISGDDO_licencia_no_d55413c6_like    INDEX     t   CREATE INDEX "SISGDDO_licencia_no_d55413c6_like" ON public."SISGDDO_licencia" USING btree (no varchar_pattern_ops);
 7   DROP INDEX public."SISGDDO_licencia_no_d55413c6_like";
       public            postgres    false    318                       1259    24975 %   SISGDDO_licencia_nombre_12d892c2_like    INDEX     |   CREATE INDEX "SISGDDO_licencia_nombre_12d892c2_like" ON public."SISGDDO_licencia" USING btree (nombre varchar_pattern_ops);
 ;   DROP INDEX public."SISGDDO_licencia_nombre_12d892c2_like";
       public            postgres    false    318                       1259    25113 $   SISGDDO_licencia_proceso_id_5a7f2b5d    INDEX     k   CREATE INDEX "SISGDDO_licencia_proceso_id_5a7f2b5d" ON public."SISGDDO_licencia" USING btree (proceso_id);
 :   DROP INDEX public."SISGDDO_licencia_proceso_id_5a7f2b5d";
       public            postgres    false    318            U           1259    25131 1   SISGDDO_licencia_responsable_licencia_id_7b519d44    INDEX     �   CREATE INDEX "SISGDDO_licencia_responsable_licencia_id_7b519d44" ON public."SISGDDO_licencia_responsable" USING btree (licencia_id);
 G   DROP INDEX public."SISGDDO_licencia_responsable_licencia_id_7b519d44";
       public            postgres    false    341            X           1259    25132 3   SISGDDO_licencia_responsable_trabajador_id_7a43bf7d    INDEX     �   CREATE INDEX "SISGDDO_licencia_responsable_trabajador_id_7a43bf7d" ON public."SISGDDO_licencia_responsable" USING btree (trabajador_id);
 I   DROP INDEX public."SISGDDO_licencia_responsable_trabajador_id_7a43bf7d";
       public            postgres    false    341                       1259    24978 +   SISGDDO_linea_tematica_nombre_9f7df45b_like    INDEX     �   CREATE INDEX "SISGDDO_linea_tematica_nombre_9f7df45b_like" ON public."SISGDDO_linea_tematica" USING btree (nombre varchar_pattern_ops);
 A   DROP INDEX public."SISGDDO_linea_tematica_nombre_9f7df45b_like";
       public            postgres    false    320            �           1259    25616 &   SISGDDO_modalidad_nombre_818480fe_like    INDEX     ~   CREATE INDEX "SISGDDO_modalidad_nombre_818480fe_like" ON public."SISGDDO_modalidad" USING btree (nombre varchar_pattern_ops);
 <   DROP INDEX public."SISGDDO_modalidad_nombre_818480fe_like";
       public            postgres    false    375            "           1259    24984 )   SISGDDO_notificacion_licencia_id_271fdf1e    INDEX     u   CREATE INDEX "SISGDDO_notificacion_licencia_id_271fdf1e" ON public."SISGDDO_notificacion" USING btree (licencia_id);
 ?   DROP INDEX public."SISGDDO_notificacion_licencia_id_271fdf1e";
       public            postgres    false    322            %           1259    25101 '   SISGDDO_notificacion_premio_id_88e89408    INDEX     q   CREATE INDEX "SISGDDO_notificacion_premio_id_88e89408" ON public."SISGDDO_notificacion" USING btree (premio_id);
 =   DROP INDEX public."SISGDDO_notificacion_premio_id_88e89408";
       public            postgres    false    322            &           1259    25107 6   SISGDDO_notificacion_propiedad_intelectual_id_996e48f5    INDEX     �   CREATE INDEX "SISGDDO_notificacion_propiedad_intelectual_id_996e48f5" ON public."SISGDDO_notificacion" USING btree (propiedad_intelectual_id);
 L   DROP INDEX public."SISGDDO_notificacion_propiedad_intelectual_id_996e48f5";
       public            postgres    false    322            �           1259    25668 !   SISGDDO_objetivo_area_id_ffdedd2e    INDEX     e   CREATE INDEX "SISGDDO_objetivo_area_id_ffdedd2e" ON public."SISGDDO_objetivo" USING btree (area_id);
 7   DROP INDEX public."SISGDDO_objetivo_area_id_ffdedd2e";
       public            postgres    false    377            �           1259    25617 %   SISGDDO_objetivo_nombre_c516ba0d_like    INDEX     |   CREATE INDEX "SISGDDO_objetivo_nombre_c516ba0d_like" ON public."SISGDDO_objetivo" USING btree (nombre varchar_pattern_ops);
 ;   DROP INDEX public."SISGDDO_objetivo_nombre_c516ba0d_like";
       public            postgres    false    377            j           1259    18307 2   SISGDDO_plan_medidas_acciones_acciones_id_a042ab82    INDEX     �   CREATE INDEX "SISGDDO_plan_medidas_acciones_acciones_id_a042ab82" ON public."SISGDDO_plan_medidas_acciones" USING btree (acciones_id);
 H   DROP INDEX public."SISGDDO_plan_medidas_acciones_acciones_id_a042ab82";
       public            postgres    false    250            m           1259    18308 6   SISGDDO_plan_medidas_acciones_plan_medidas_id_561ff079    INDEX     �   CREATE INDEX "SISGDDO_plan_medidas_acciones_plan_medidas_id_561ff079" ON public."SISGDDO_plan_medidas_acciones" USING btree (plan_medidas_id);
 L   DROP INDEX public."SISGDDO_plan_medidas_acciones_plan_medidas_id_561ff079";
       public            postgres    false    250            g           1259    18309 (   SISGDDO_plan_medidas_proceso_id_7f2c812c    INDEX     s   CREATE INDEX "SISGDDO_plan_medidas_proceso_id_7f2c812c" ON public."SISGDDO_plan_medidas" USING btree (proceso_id);
 >   DROP INDEX public."SISGDDO_plan_medidas_proceso_id_7f2c812c";
       public            postgres    false    249            '           1259    24991 "   SISGDDO_premio_entidad_id_32643785    INDEX     g   CREATE INDEX "SISGDDO_premio_entidad_id_32643785" ON public."SISGDDO_premio" USING btree (entidad_id);
 8   DROP INDEX public."SISGDDO_premio_entidad_id_32643785";
       public            postgres    false    324            (           1259    24990 #   SISGDDO_premio_nombre_b0593919_like    INDEX     x   CREATE INDEX "SISGDDO_premio_nombre_b0593919_like" ON public."SISGDDO_premio" USING btree (nombre varchar_pattern_ops);
 9   DROP INDEX public."SISGDDO_premio_nombre_b0593919_like";
       public            postgres    false    324            w           1259    25423 *   SISGDDO_procedimiento_codigo_a2f111d6_like    INDEX     �   CREATE INDEX "SISGDDO_procedimiento_codigo_a2f111d6_like" ON public."SISGDDO_procedimiento" USING btree (codigo varchar_pattern_ops);
 @   DROP INDEX public."SISGDDO_procedimiento_codigo_a2f111d6_like";
       public            postgres    false    353            |           1259    25424 )   SISGDDO_procedimiento_proceso_id_81682824    INDEX     u   CREATE INDEX "SISGDDO_procedimiento_proceso_id_81682824" ON public."SISGDDO_procedimiento" USING btree (proceso_id);
 ?   DROP INDEX public."SISGDDO_procedimiento_proceso_id_81682824";
       public            postgres    false    353            n           1259    25045 $   SISGDDO_proceso_nombre_0ff16e9b_like    INDEX     z   CREATE INDEX "SISGDDO_proceso_nombre_0ff16e9b_like" ON public."SISGDDO_proceso" USING btree (nombre varchar_pattern_ops);
 :   DROP INDEX public."SISGDDO_proceso_nombre_0ff16e9b_like";
       public            postgres    false    253            E           1259    25058 /   SISGDDO_proceso_responsable_proceso_id_3e49efc4    INDEX     �   CREATE INDEX "SISGDDO_proceso_responsable_proceso_id_3e49efc4" ON public."SISGDDO_proceso_responsable" USING btree (proceso_id);
 E   DROP INDEX public."SISGDDO_proceso_responsable_proceso_id_3e49efc4";
       public            postgres    false    334            F           1259    25059 2   SISGDDO_proceso_responsable_trabajador_id_02cfd681    INDEX     �   CREATE INDEX "SISGDDO_proceso_responsable_trabajador_id_02cfd681" ON public."SISGDDO_proceso_responsable" USING btree (trabajador_id);
 H   DROP INDEX public."SISGDDO_proceso_responsable_trabajador_id_02cfd681";
       public            postgres    false    334            �           1259    25660 >   SISGDDO_propiedad_industri_clasificacion_dibujo_model_135e7401    INDEX     �   CREATE INDEX "SISGDDO_propiedad_industri_clasificacion_dibujo_model_135e7401" ON public."SISGDDO_propiedad_industrial" USING btree (clasificacion_dibujo_modelo_industrial_id);
 T   DROP INDEX public."SISGDDO_propiedad_industri_clasificacion_dibujo_model_135e7401";
       public            postgres    false    381            �           1259    25661 >   SISGDDO_propiedad_industri_clasificacion_elemento_fig_686926c5    INDEX     �   CREATE INDEX "SISGDDO_propiedad_industri_clasificacion_elemento_fig_686926c5" ON public."SISGDDO_propiedad_industrial" USING btree (clasificacion_elemento_figurativo_id);
 T   DROP INDEX public."SISGDDO_propiedad_industri_clasificacion_elemento_fig_686926c5";
       public            postgres    false    381            �           1259    25663 >   SISGDDO_propiedad_industri_clasificacion_productos_se_1af8cf7b    INDEX     �   CREATE INDEX "SISGDDO_propiedad_industri_clasificacion_productos_se_1af8cf7b" ON public."SISGDDO_propiedad_industrial" USING btree (clasificacion_productos_servicios_id);
 T   DROP INDEX public."SISGDDO_propiedad_industri_clasificacion_productos_se_1af8cf7b";
       public            postgres    false    381            �           1259    25662 >   SISGDDO_propiedad_industrial_clasificacion_patente_id_46557b4e    INDEX     �   CREATE INDEX "SISGDDO_propiedad_industrial_clasificacion_patente_id_46557b4e" ON public."SISGDDO_propiedad_industrial" USING btree (clasificacion_patente_id);
 T   DROP INDEX public."SISGDDO_propiedad_industrial_clasificacion_patente_id_46557b4e";
       public            postgres    false    381            �           1259    25664 <   SISGDDO_propiedad_industrial_clasificacion_viena_id_2442a410    INDEX     �   CREATE INDEX "SISGDDO_propiedad_industrial_clasificacion_viena_id_2442a410" ON public."SISGDDO_propiedad_industrial" USING btree (clasificacion_viena_id);
 R   DROP INDEX public."SISGDDO_propiedad_industrial_clasificacion_viena_id_2442a410";
       public            postgres    false    381            �           1259    25665 /   SISGDDO_propiedad_industrial_estado_id_20cdba19    INDEX     �   CREATE INDEX "SISGDDO_propiedad_industrial_estado_id_20cdba19" ON public."SISGDDO_propiedad_industrial" USING btree (estado_id);
 E   DROP INDEX public."SISGDDO_propiedad_industrial_estado_id_20cdba19";
       public            postgres    false    381            �           1259    25666 2   SISGDDO_propiedad_industrial_modalidad_id_34c51843    INDEX     �   CREATE INDEX "SISGDDO_propiedad_industrial_modalidad_id_34c51843" ON public."SISGDDO_propiedad_industrial" USING btree (modalidad_id);
 H   DROP INDEX public."SISGDDO_propiedad_industrial_modalidad_id_34c51843";
       public            postgres    false    381            �           1259    25659 9   SISGDDO_propiedad_industrial_no_certificado_165d2d27_like    INDEX     �   CREATE INDEX "SISGDDO_propiedad_industrial_no_certificado_165d2d27_like" ON public."SISGDDO_propiedad_industrial" USING btree (no_certificado varchar_pattern_ops);
 O   DROP INDEX public."SISGDDO_propiedad_industrial_no_certificado_165d2d27_like";
       public            postgres    false    381            �           1259    25658 7   SISGDDO_propiedad_industrial_no_solicitud_34db992a_like    INDEX     �   CREATE INDEX "SISGDDO_propiedad_industrial_no_solicitud_34db992a_like" ON public."SISGDDO_propiedad_industrial" USING btree (no_solicitud varchar_pattern_ops);
 M   DROP INDEX public."SISGDDO_propiedad_industrial_no_solicitud_34db992a_like";
       public            postgres    false    381            �           1259    25667 -   SISGDDO_propiedad_industrial_pais_id_a929ee0a    INDEX     }   CREATE INDEX "SISGDDO_propiedad_industrial_pais_id_a929ee0a" ON public."SISGDDO_propiedad_industrial" USING btree (pais_id);
 C   DROP INDEX public."SISGDDO_propiedad_industrial_pais_id_a929ee0a";
       public            postgres    false    381            -           1259    24998 0   SISGDDO_propiedad_intelectual_estado_id_65563e02    INDEX     �   CREATE INDEX "SISGDDO_propiedad_intelectual_estado_id_65563e02" ON public."SISGDDO_propiedad_intelectual" USING btree (estado_id);
 F   DROP INDEX public."SISGDDO_propiedad_intelectual_estado_id_65563e02";
       public            postgres    false    326            .           1259    24997 .   SISGDDO_propiedad_intelectual_no_ddf65b88_like    INDEX     �   CREATE INDEX "SISGDDO_propiedad_intelectual_no_ddf65b88_like" ON public."SISGDDO_propiedad_intelectual" USING btree (no varchar_pattern_ops);
 D   DROP INDEX public."SISGDDO_propiedad_intelectual_no_ddf65b88_like";
       public            postgres    false    326            s           1259    18311 0   SISGDDO_provincia_nombre_Provincia_a41e8d5d_like    INDEX     �   CREATE INDEX "SISGDDO_provincia_nombre_Provincia_a41e8d5d_like" ON public."SISGDDO_provincia" USING btree ("nombre_Provincia" varchar_pattern_ops);
 F   DROP INDEX public."SISGDDO_provincia_nombre_Provincia_a41e8d5d_like";
       public            postgres    false    255            x           1259    18312 !   SISGDDO_proyecto_area_id_735950ad    INDEX     e   CREATE INDEX "SISGDDO_proyecto_area_id_735950ad" ON public."SISGDDO_proyecto" USING btree (area_id);
 7   DROP INDEX public."SISGDDO_proyecto_area_id_735950ad";
       public            postgres    false    257            I           1259    25072 -   SISGDDO_proyecto_calidad_proyecto_id_a15f5dc8    INDEX     }   CREATE INDEX "SISGDDO_proyecto_calidad_proyecto_id_a15f5dc8" ON public."SISGDDO_proyecto_calidad" USING btree (proyecto_id);
 C   DROP INDEX public."SISGDDO_proyecto_calidad_proyecto_id_a15f5dc8";
       public            postgres    false    336            L           1259    25073 /   SISGDDO_proyecto_calidad_trabajador_id_612b0083    INDEX     �   CREATE INDEX "SISGDDO_proyecto_calidad_trabajador_id_612b0083" ON public."SISGDDO_proyecto_calidad" USING btree (trabajador_id);
 E   DROP INDEX public."SISGDDO_proyecto_calidad_trabajador_id_612b0083";
       public            postgres    false    336            y           1259    25074 %   SISGDDO_proyecto_codigo_02279a4d_like    INDEX     |   CREATE INDEX "SISGDDO_proyecto_codigo_02279a4d_like" ON public."SISGDDO_proyecto" USING btree (codigo varchar_pattern_ops);
 ;   DROP INDEX public."SISGDDO_proyecto_codigo_02279a4d_like";
       public            postgres    false    257            Q           1259    25087 0   SISGDDO_proyecto_disennador_proyecto_id_004a975b    INDEX     �   CREATE INDEX "SISGDDO_proyecto_disennador_proyecto_id_004a975b" ON public."SISGDDO_proyecto_disennador" USING btree (proyecto_id);
 F   DROP INDEX public."SISGDDO_proyecto_disennador_proyecto_id_004a975b";
       public            postgres    false    338            R           1259    25088 2   SISGDDO_proyecto_disennador_trabajador_id_a5533c7d    INDEX     �   CREATE INDEX "SISGDDO_proyecto_disennador_trabajador_id_a5533c7d" ON public."SISGDDO_proyecto_disennador" USING btree (trabajador_id);
 H   DROP INDEX public."SISGDDO_proyecto_disennador_trabajador_id_a5533c7d";
       public            postgres    false    338            ~           1259    18314 #   SISGDDO_proyecto_estado_id_8f4b6d8d    INDEX     i   CREATE INDEX "SISGDDO_proyecto_estado_id_8f4b6d8d" ON public."SISGDDO_proyecto" USING btree (estado_id);
 9   DROP INDEX public."SISGDDO_proyecto_estado_id_8f4b6d8d";
       public            postgres    false    257            e           1259    25186 ,   SISGDDO_proyecto_formato_formato_id_d4c1b27a    INDEX     {   CREATE INDEX "SISGDDO_proyecto_formato_formato_id_d4c1b27a" ON public."SISGDDO_proyecto_formato" USING btree (formato_id);
 B   DROP INDEX public."SISGDDO_proyecto_formato_formato_id_d4c1b27a";
       public            postgres    false    347            h           1259    25185 -   SISGDDO_proyecto_formato_proyecto_id_36235f96    INDEX     }   CREATE INDEX "SISGDDO_proyecto_formato_proyecto_id_36235f96" ON public."SISGDDO_proyecto_formato" USING btree (proyecto_id);
 C   DROP INDEX public."SISGDDO_proyecto_formato_proyecto_id_36235f96";
       public            postgres    false    347                       1259    25187 2   SISGDDO_proyecto_fuente_financiamiento_id_b3aa398a    INDEX     �   CREATE INDEX "SISGDDO_proyecto_fuente_financiamiento_id_b3aa398a" ON public."SISGDDO_proyecto" USING btree (fuente_financiamiento_id);
 H   DROP INDEX public."SISGDDO_proyecto_fuente_financiamiento_id_b3aa398a";
       public            postgres    false    257            �           1259    18315 3   SISGDDO_proyecto_jefe_proyecto_proyecto_id_9a3affe7    INDEX     �   CREATE INDEX "SISGDDO_proyecto_jefe_proyecto_proyecto_id_9a3affe7" ON public."SISGDDO_proyecto_jefe_proyecto" USING btree (proyecto_id);
 I   DROP INDEX public."SISGDDO_proyecto_jefe_proyecto_proyecto_id_9a3affe7";
       public            postgres    false    258            �           1259    18316 5   SISGDDO_proyecto_jefe_proyecto_trabajador_id_e25e2cd5    INDEX     �   CREATE INDEX "SISGDDO_proyecto_jefe_proyecto_trabajador_id_e25e2cd5" ON public."SISGDDO_proyecto_jefe_proyecto" USING btree (trabajador_id);
 K   DROP INDEX public."SISGDDO_proyecto_jefe_proyecto_trabajador_id_e25e2cd5";
       public            postgres    false    258            �           1259    24874 .   SISGDDO_proyecto_nombre_proyecto_f4676558_like    INDEX     �   CREATE INDEX "SISGDDO_proyecto_nombre_proyecto_f4676558_like" ON public."SISGDDO_proyecto" USING btree (nombre_proyecto varchar_pattern_ops);
 D   DROP INDEX public."SISGDDO_proyecto_nombre_proyecto_f4676558_like";
       public            postgres    false    257            �           1259    25193 !   SISGDDO_proyecto_tipo_id_c88e10ea    INDEX     e   CREATE INDEX "SISGDDO_proyecto_tipo_id_c88e10ea" ON public."SISGDDO_proyecto" USING btree (tipo_id);
 7   DROP INDEX public."SISGDDO_proyecto_tipo_id_c88e10ea";
       public            postgres    false    257            3           1259    25005 !   SISGDDO_queja_cliente_id_f3e9e699    INDEX     e   CREATE INDEX "SISGDDO_queja_cliente_id_f3e9e699" ON public."SISGDDO_queja" USING btree (cliente_id);
 7   DROP INDEX public."SISGDDO_queja_cliente_id_f3e9e699";
       public            postgres    false    328            8           1259    25089 !   SISGDDO_queja_proceso_id_c82dd693    INDEX     e   CREATE INDEX "SISGDDO_queja_proceso_id_c82dd693" ON public."SISGDDO_queja" USING btree (proceso_id);
 7   DROP INDEX public."SISGDDO_queja_proceso_id_c82dd693";
       public            postgres    false    328            9           1259    25095 '   SISGDDO_queja_via_recepcion_id_6223710c    INDEX     q   CREATE INDEX "SISGDDO_queja_via_recepcion_id_6223710c" ON public."SISGDDO_queja" USING btree (via_recepcion_id);
 =   DROP INDEX public."SISGDDO_queja_via_recepcion_id_6223710c";
       public            postgres    false    328            �           1259    18319    SISGDDO_sosi_area_id_05a48fcb    INDEX     ]   CREATE INDEX "SISGDDO_sosi_area_id_05a48fcb" ON public."SISGDDO_sosi" USING btree (area_id);
 3   DROP INDEX public."SISGDDO_sosi_area_id_05a48fcb";
       public            postgres    false    260            �           1259    18322 *   SISGDDO_sosi_formatos_formatos_id_748484c9    INDEX     v   CREATE INDEX "SISGDDO_sosi_formatos_formatos_id_748484c9" ON public."SISGDDO_sosi_formatos" USING btree (formato_id);
 @   DROP INDEX public."SISGDDO_sosi_formatos_formatos_id_748484c9";
       public            postgres    false    261            �           1259    18323 &   SISGDDO_sosi_formatos_sosi_id_eafc4744    INDEX     o   CREATE INDEX "SISGDDO_sosi_formatos_sosi_id_eafc4744" ON public."SISGDDO_sosi_formatos" USING btree (sosi_id);
 <   DROP INDEX public."SISGDDO_sosi_formatos_sosi_id_eafc4744";
       public            postgres    false    261            �           1259    18324 &   SISGDDO_sosi_idioma_idioma_id_1ae932f7    INDEX     o   CREATE INDEX "SISGDDO_sosi_idioma_idioma_id_1ae932f7" ON public."SISGDDO_sosi_idioma" USING btree (idioma_id);
 <   DROP INDEX public."SISGDDO_sosi_idioma_idioma_id_1ae932f7";
       public            postgres    false    264            �           1259    18325 $   SISGDDO_sosi_idioma_sosi_id_24f8706e    INDEX     k   CREATE INDEX "SISGDDO_sosi_idioma_sosi_id_24f8706e" ON public."SISGDDO_sosi_idioma" USING btree (sosi_id);
 :   DROP INDEX public."SISGDDO_sosi_idioma_sosi_id_24f8706e";
       public            postgres    false    264            m           1259    25212 6   SISGDDO_sosi_linea_tematica_linea_tematica_id_ead20eac    INDEX     �   CREATE INDEX "SISGDDO_sosi_linea_tematica_linea_tematica_id_ead20eac" ON public."SISGDDO_sosi_linea_tematica" USING btree (linea_tematica_id);
 L   DROP INDEX public."SISGDDO_sosi_linea_tematica_linea_tematica_id_ead20eac";
       public            postgres    false    349            p           1259    25211 ,   SISGDDO_sosi_linea_tematica_sosi_id_719ebe06    INDEX     {   CREATE INDEX "SISGDDO_sosi_linea_tematica_sosi_id_719ebe06" ON public."SISGDDO_sosi_linea_tematica" USING btree (sosi_id);
 B   DROP INDEX public."SISGDDO_sosi_linea_tematica_sosi_id_719ebe06";
       public            postgres    false    349            �           1259    24898 (   SISGDDO_sosi_persona_entrega_id_041d4b5c    INDEX     s   CREATE INDEX "SISGDDO_sosi_persona_entrega_id_041d4b5c" ON public."SISGDDO_sosi" USING btree (persona_entrega_id);
 >   DROP INDEX public."SISGDDO_sosi_persona_entrega_id_041d4b5c";
       public            postgres    false    260            �           1259    18330 (   SISGDDO_trabajador_formacion_id_fa1b53dd    INDEX     |   CREATE INDEX "SISGDDO_trabajador_formacion_id_fa1b53dd" ON public."SISGDDO_trabajador" USING btree (formacion_personal_id);
 >   DROP INDEX public."SISGDDO_trabajador_formacion_id_fa1b53dd";
       public            postgres    false    266            �           1259    18331 :   SISGDDO_valoracion_encuest_valoracion_encuesta_id_be4685f9    INDEX     �   CREATE INDEX "SISGDDO_valoracion_encuest_valoracion_encuesta_id_be4685f9" ON public."SISGDDO_valoracion_encuesta_organismos" USING btree (valoracion_encuesta_id);
 P   DROP INDEX public."SISGDDO_valoracion_encuest_valoracion_encuesta_id_be4685f9";
       public            postgres    false    270            �           1259    18332 5   SISGDDO_valoracion_encuesta_elaborado_por_id_7818d5c9    INDEX     �   CREATE INDEX "SISGDDO_valoracion_encuesta_elaborado_por_id_7818d5c9" ON public."SISGDDO_valoracion_encuesta" USING btree (elaborado_por_id);
 K   DROP INDEX public."SISGDDO_valoracion_encuesta_elaborado_por_id_7818d5c9";
       public            postgres    false    268            �           1259    18333 <   SISGDDO_valoracion_encuesta_organismos_organismo_id_f367ac92    INDEX     �   CREATE INDEX "SISGDDO_valoracion_encuesta_organismos_organismo_id_f367ac92" ON public."SISGDDO_valoracion_encuesta_organismos" USING btree (organismo_id);
 R   DROP INDEX public."SISGDDO_valoracion_encuesta_organismos_organismo_id_f367ac92";
       public            postgres    false    270            <           1259    25006 *   SISGDDO_via_recepcion_nombre_748ffca8_like    INDEX     �   CREATE INDEX "SISGDDO_via_recepcion_nombre_748ffca8_like" ON public."SISGDDO_via_recepcion" USING btree (nombre varchar_pattern_ops);
 @   DROP INDEX public."SISGDDO_via_recepcion_nombre_748ffca8_like";
       public            postgres    false    332            �           1259    18334    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    272            �           1259    18335 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    274            �           1259    18336 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    274            �           1259    18337 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    276            �           1259    18338    auth_user_email_1c89df09_like    INDEX     h   CREATE INDEX auth_user_email_1c89df09_like ON public.auth_user USING btree (email varchar_pattern_ops);
 1   DROP INDEX public.auth_user_email_1c89df09_like;
       public            postgres    false    278            �           1259    18339 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    279            �           1259    18340 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    279            �           1259    18341 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    282            �           1259    18342 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    282            �           1259    25297     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    278            �           1259    18344 *   captcha_captchastore_hashkey_cbe8d15a_like    INDEX     �   CREATE INDEX captcha_captchastore_hashkey_cbe8d15a_like ON public.captcha_captchastore USING btree (hashkey varchar_pattern_ops);
 >   DROP INDEX public.captcha_captchastore_hashkey_cbe8d15a_like;
       public            postgres    false    284            �           1259    18345 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    286            �           1259    18346 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    286            �           1259    18347 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    292            �           1259    18348 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    292            �           1259    18349 >   notifications_notification_action_object_content_type_7d2b8ee9    INDEX     �   CREATE INDEX notifications_notification_action_object_content_type_7d2b8ee9 ON public.notifications_notification USING btree (action_object_content_type_id);
 R   DROP INDEX public.notifications_notification_action_object_content_type_7d2b8ee9;
       public            postgres    false    293            �           1259    18350 9   notifications_notification_actor_content_type_id_0c69d7b7    INDEX     �   CREATE INDEX notifications_notification_actor_content_type_id_0c69d7b7 ON public.notifications_notification USING btree (actor_content_type_id);
 M   DROP INDEX public.notifications_notification_actor_content_type_id_0c69d7b7;
       public            postgres    false    293            �           1259    18351 +   notifications_notification_deleted_b32b69e6    INDEX     u   CREATE INDEX notifications_notification_deleted_b32b69e6 ON public.notifications_notification USING btree (deleted);
 ?   DROP INDEX public.notifications_notification_deleted_b32b69e6;
       public            postgres    false    293            �           1259    18352 +   notifications_notification_emailed_23a5ad81    INDEX     u   CREATE INDEX notifications_notification_emailed_23a5ad81 ON public.notifications_notification USING btree (emailed);
 ?   DROP INDEX public.notifications_notification_emailed_23a5ad81;
       public            postgres    false    293            �           1259    18353 *   notifications_notification_public_1bc30b1c    INDEX     s   CREATE INDEX notifications_notification_public_1bc30b1c ON public.notifications_notification USING btree (public);
 >   DROP INDEX public.notifications_notification_public_1bc30b1c;
       public            postgres    false    293            �           1259    18354 0   notifications_notification_recipient_id_d055f3f0    INDEX        CREATE INDEX notifications_notification_recipient_id_d055f3f0 ON public.notifications_notification USING btree (recipient_id);
 D   DROP INDEX public.notifications_notification_recipient_id_d055f3f0;
       public            postgres    false    293            �           1259    18355 :   notifications_notification_target_content_type_id_ccb24d88    INDEX     �   CREATE INDEX notifications_notification_target_content_type_id_ccb24d88 ON public.notifications_notification USING btree (target_content_type_id);
 N   DROP INDEX public.notifications_notification_target_content_type_id_ccb24d88;
       public            postgres    false    293            �           1259    18356 *   notifications_notification_unread_cce4be30    INDEX     s   CREATE INDEX notifications_notification_unread_cce4be30 ON public.notifications_notification USING btree (unread);
 >   DROP INDEX public.notifications_notification_unread_cce4be30;
       public            postgres    false    293            �           2606    18357 T   ProyectoBaseApp_userapp ProyectoBaseApp_userapp_user_ptr_id_2c744a7c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProyectoBaseApp_userapp"
    ADD CONSTRAINT "ProyectoBaseApp_userapp_user_ptr_id_2c744a7c_fk_auth_user_id" FOREIGN KEY (user_ptr_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."ProyectoBaseApp_userapp" DROP CONSTRAINT "ProyectoBaseApp_userapp_user_ptr_id_2c744a7c_fk_auth_user_id";
       public          postgres    false    3518    278    202            3           2606    25701 U   SISGDDO_accion_indicador_objetivos SISGDDO_accion_indic_area_id_ec08b976_fk_SISGDDO_a    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_accion_indicador_objetivos"
    ADD CONSTRAINT "SISGDDO_accion_indic_area_id_ec08b976_fk_SISGDDO_a" FOREIGN KEY (area_id) REFERENCES public."SISGDDO_area"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_accion_indicador_objetivos" DROP CONSTRAINT "SISGDDO_accion_indic_area_id_ec08b976_fk_SISGDDO_a";
       public          postgres    false    3356    355    209            4           2606    25707 b   SISGDDO_accion_indicador_objetivos SISGDDO_accion_indic_indicador_objetivos__003ac8cc_fk_SISGDDO_i    FK CONSTRAINT     
  ALTER TABLE ONLY public."SISGDDO_accion_indicador_objetivos"
    ADD CONSTRAINT "SISGDDO_accion_indic_indicador_objetivos__003ac8cc_fk_SISGDDO_i" FOREIGN KEY (indicador_objetivos_id) REFERENCES public."SISGDDO_indicador_objetivos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_accion_indicador_objetivos" DROP CONSTRAINT "SISGDDO_accion_indic_indicador_objetivos__003ac8cc_fk_SISGDDO_i";
       public          postgres    false    355    3762    373            �           2606    18362 W   SISGDDO_acciones_correctivas SISGDDO_acciones_cor_acciones_ptr_id_16280263_fk_SISGDDO_a    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_acciones_correctivas"
    ADD CONSTRAINT "SISGDDO_acciones_cor_acciones_ptr_id_16280263_fk_SISGDDO_a" FOREIGN KEY (acciones_ptr_id) REFERENCES public."SISGDDO_acciones"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_acciones_correctivas" DROP CONSTRAINT "SISGDDO_acciones_cor_acciones_ptr_id_16280263_fk_SISGDDO_a";
       public          postgres    false    204    203    3344            �           2606    18367 W   SISGDDO_acciones_preventivas SISGDDO_acciones_pre_acciones_ptr_id_655ecb08_fk_SISGDDO_a    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_acciones_preventivas"
    ADD CONSTRAINT "SISGDDO_acciones_pre_acciones_ptr_id_655ecb08_fk_SISGDDO_a" FOREIGN KEY (acciones_ptr_id) REFERENCES public."SISGDDO_acciones"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_acciones_preventivas" DROP CONSTRAINT "SISGDDO_acciones_pre_acciones_ptr_id_655ecb08_fk_SISGDDO_a";
       public          postgres    false    203    3344    206            �           2606    18372 S   SISGDDO_acciones_responsable SISGDDO_acciones_res_acciones_id_63c54b4e_fk_SISGDDO_a    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_acciones_responsable"
    ADD CONSTRAINT "SISGDDO_acciones_res_acciones_id_63c54b4e_fk_SISGDDO_a" FOREIGN KEY (acciones_id) REFERENCES public."SISGDDO_acciones"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_acciones_responsable" DROP CONSTRAINT "SISGDDO_acciones_res_acciones_id_63c54b4e_fk_SISGDDO_a";
       public          postgres    false    3344    203    207            �           2606    18377 U   SISGDDO_acciones_responsable SISGDDO_acciones_res_trabajador_id_98c4cbd4_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_acciones_responsable"
    ADD CONSTRAINT "SISGDDO_acciones_res_trabajador_id_98c4cbd4_fk_SISGDDO_t" FOREIGN KEY (trabajador_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_acciones_responsable" DROP CONSTRAINT "SISGDDO_acciones_res_trabajador_id_98c4cbd4_fk_SISGDDO_t";
       public          postgres    false    266    3486    207            5           2606    25681 O   SISGDDO_acuerdo SISGDDO_acuerdo_estado_id_1c8e022e_fk_SISGDDO_estado_acuerdo_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_acuerdo"
    ADD CONSTRAINT "SISGDDO_acuerdo_estado_id_1c8e022e_fk_SISGDDO_estado_acuerdo_id" FOREIGN KEY (estado_id) REFERENCES public."SISGDDO_estado_acuerdo"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."SISGDDO_acuerdo" DROP CONSTRAINT "SISGDDO_acuerdo_estado_id_1c8e022e_fk_SISGDDO_estado_acuerdo_id";
       public          postgres    false    227    3397    357            A           2606    25686 Q   SISGDDO_acuerdo_responsable SISGDDO_acuerdo_resp_acuerdo_id_2b8721c5_fk_SISGDDO_a    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_acuerdo_responsable"
    ADD CONSTRAINT "SISGDDO_acuerdo_resp_acuerdo_id_2b8721c5_fk_SISGDDO_a" FOREIGN KEY (acuerdo_id) REFERENCES public."SISGDDO_acuerdo"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."SISGDDO_acuerdo_responsable" DROP CONSTRAINT "SISGDDO_acuerdo_resp_acuerdo_id_2b8721c5_fk_SISGDDO_a";
       public          postgres    false    383    357    3720            B           2606    25691 T   SISGDDO_acuerdo_responsable SISGDDO_acuerdo_resp_trabajador_id_1f211065_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_acuerdo_responsable"
    ADD CONSTRAINT "SISGDDO_acuerdo_resp_trabajador_id_1f211065_fk_SISGDDO_t" FOREIGN KEY (trabajador_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_acuerdo_responsable" DROP CONSTRAINT "SISGDDO_acuerdo_resp_trabajador_id_1f211065_fk_SISGDDO_t";
       public          postgres    false    383    3486    266            0           2606    25386 a   SISGDDO_auditoria_externa_proceso SISGDDO_auditoria_ex_auditoria_externa_id_eb98e133_fk_SISGDDO_a    FK CONSTRAINT       ALTER TABLE ONLY public."SISGDDO_auditoria_externa_proceso"
    ADD CONSTRAINT "SISGDDO_auditoria_ex_auditoria_externa_id_eb98e133_fk_SISGDDO_a" FOREIGN KEY (auditoria_externa_id) REFERENCES public."SISGDDO_auditoria_externa"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_auditoria_externa_proceso" DROP CONSTRAINT "SISGDDO_auditoria_ex_auditoria_externa_id_eb98e133_fk_SISGDDO_a";
       public          postgres    false    351    3361    211            �           2606    18427 O   SISGDDO_auditoria_externa SISGDDO_auditoria_ex_entidad_id_c6530628_fk_SISGDDO_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_auditoria_externa"
    ADD CONSTRAINT "SISGDDO_auditoria_ex_entidad_id_c6530628_fk_SISGDDO_e" FOREIGN KEY (entidad_id) REFERENCES public."SISGDDO_entidad"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."SISGDDO_auditoria_externa" DROP CONSTRAINT "SISGDDO_auditoria_ex_entidad_id_c6530628_fk_SISGDDO_e";
       public          postgres    false    211    3391    223            1           2606    25391 W   SISGDDO_auditoria_externa_proceso SISGDDO_auditoria_ex_proceso_id_25bd93e3_fk_SISGDDO_p    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_auditoria_externa_proceso"
    ADD CONSTRAINT "SISGDDO_auditoria_ex_proceso_id_25bd93e3_fk_SISGDDO_p" FOREIGN KEY (proceso_id) REFERENCES public."SISGDDO_proceso"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_auditoria_externa_proceso" DROP CONSTRAINT "SISGDDO_auditoria_ex_proceso_id_25bd93e3_fk_SISGDDO_p";
       public          postgres    false    351    253    3442            �           2606    25009 O   SISGDDO_auditoria_interna SISGDDO_auditoria_in_proceso_id_17b71d4d_fk_SISGDDO_p    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_auditoria_interna"
    ADD CONSTRAINT "SISGDDO_auditoria_in_proceso_id_17b71d4d_fk_SISGDDO_p" FOREIGN KEY (proceso_id) REFERENCES public."SISGDDO_proceso"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."SISGDDO_auditoria_interna" DROP CONSTRAINT "SISGDDO_auditoria_in_proceso_id_17b71d4d_fk_SISGDDO_p";
       public          postgres    false    213    253    3442            �           2606    25015 S   SISGDDO_auditoria_interna SISGDDO_auditoria_in_responsable_id_84e7e919_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_auditoria_interna"
    ADD CONSTRAINT "SISGDDO_auditoria_in_responsable_id_84e7e919_fk_SISGDDO_t" FOREIGN KEY (responsable_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_auditoria_interna" DROP CONSTRAINT "SISGDDO_auditoria_in_responsable_id_84e7e919_fk_SISGDDO_t";
       public          postgres    false    213    3486    266                       2606    24944 W   SISGDDO_conclusion_adicional SISGDDO_conclusion_a_proyecto_ptr_id_fd573ea0_fk_SISGDDO_p    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_conclusion_adicional"
    ADD CONSTRAINT "SISGDDO_conclusion_a_proyecto_ptr_id_fd573ea0_fk_SISGDDO_p" FOREIGN KEY (proyecto_ptr_id) REFERENCES public."SISGDDO_proyecto"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_conclusion_adicional" DROP CONSTRAINT "SISGDDO_conclusion_a_proyecto_ptr_id_fd573ea0_fk_SISGDDO_p";
       public          postgres    false    3460    257    301                       2606    24949 Q   SISGDDO_dato_adicional SISGDDO_dato_adicion_proyecto_ptr_id_7113cfc3_fk_SISGDDO_p    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_dato_adicional"
    ADD CONSTRAINT "SISGDDO_dato_adicion_proyecto_ptr_id_7113cfc3_fk_SISGDDO_p" FOREIGN KEY (proyecto_ptr_id) REFERENCES public."SISGDDO_proyecto"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."SISGDDO_dato_adicional" DROP CONSTRAINT "SISGDDO_dato_adicion_proyecto_ptr_id_7113cfc3_fk_SISGDDO_p";
       public          postgres    false    257    3460    302            �           2606    24834 Q   SISGDDO_dictamen_tecnico SISGDDO_dictamen_tec_disennador_id_fafc4868_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico"
    ADD CONSTRAINT "SISGDDO_dictamen_tec_disennador_id_fafc4868_fk_SISGDDO_t" FOREIGN KEY (disennador_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico" DROP CONSTRAINT "SISGDDO_dictamen_tec_disennador_id_fafc4868_fk_SISGDDO_t";
       public          postgres    false    3486    266    219            �           2606    25583 X   SISGDDO_dictamen_tecnico SISGDDO_dictamen_tec_entradas_proyectos_i_876a6a8b_fk_SISGDDO_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico"
    ADD CONSTRAINT "SISGDDO_dictamen_tec_entradas_proyectos_i_876a6a8b_fk_SISGDDO_e" FOREIGN KEY (entradas_proyectos_id) REFERENCES public."SISGDDO_entradas_proyecto"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico" DROP CONSTRAINT "SISGDDO_dictamen_tec_entradas_proyectos_i_876a6a8b_fk_SISGDDO_e";
       public          postgres    false    3395    225    219            �           2606    18487 V   SISGDDO_dictamen_tecnico SISGDDO_dictamen_tec_estado_dictamen_id_7f0c5e1a_fk_SISGDDO_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico"
    ADD CONSTRAINT "SISGDDO_dictamen_tec_estado_dictamen_id_7f0c5e1a_fk_SISGDDO_e" FOREIGN KEY (estado_dictamen_id) REFERENCES public."SISGDDO_estado_dictamen"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico" DROP CONSTRAINT "SISGDDO_dictamen_tec_estado_dictamen_id_7f0c5e1a_fk_SISGDDO_e";
       public          postgres    false    3399    229    219            �           2606    18863 O   SISGDDO_dictamen_tecnico SISGDDO_dictamen_tec_eval_por_id_d9862d85_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico"
    ADD CONSTRAINT "SISGDDO_dictamen_tec_eval_por_id_d9862d85_fk_SISGDDO_t" FOREIGN KEY (eval_por_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico" DROP CONSTRAINT "SISGDDO_dictamen_tec_eval_por_id_d9862d85_fk_SISGDDO_t";
       public          postgres    false    3486    266    219            �           2606    19064 X   SISGDDO_dictamen_tecnico SISGDDO_dictamen_tec_idioma_subtitulado_i_c7dc0352_fk_SISGDDO_i    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico"
    ADD CONSTRAINT "SISGDDO_dictamen_tec_idioma_subtitulado_i_c7dc0352_fk_SISGDDO_i" FOREIGN KEY (idioma_subtitulado_id) REFERENCES public."SISGDDO_idioma"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico" DROP CONSTRAINT "SISGDDO_dictamen_tec_idioma_subtitulado_i_c7dc0352_fk_SISGDDO_i";
       public          postgres    false    219    3424    243            �           2606    19069 S   SISGDDO_dictamen_tecnico SISGDDO_dictamen_tec_nuevo_idioma_id_be75064b_fk_SISGDDO_i    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico"
    ADD CONSTRAINT "SISGDDO_dictamen_tec_nuevo_idioma_id_be75064b_fk_SISGDDO_i" FOREIGN KEY (nuevo_idioma_id) REFERENCES public."SISGDDO_idioma"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_dictamen_tecnico" DROP CONSTRAINT "SISGDDO_dictamen_tec_nuevo_idioma_id_be75064b_fk_SISGDDO_i";
       public          postgres    false    243    3424    219            �           2606    25021 G   SISGDDO_eficacia SISGDDO_eficacia_evaluado_por_id_40812ffa_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_eficacia"
    ADD CONSTRAINT "SISGDDO_eficacia_evaluado_por_id_40812ffa_fk_SISGDDO_t" FOREIGN KEY (evaluado_por_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public."SISGDDO_eficacia" DROP CONSTRAINT "SISGDDO_eficacia_evaluado_por_id_40812ffa_fk_SISGDDO_t";
       public          postgres    false    221    3486    266            (           2606    25139 Q   SISGDDO_eficacia_indicador SISGDDO_eficacia_ind_eficacia_id_91dc9ba7_fk_SISGDDO_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_eficacia_indicador"
    ADD CONSTRAINT "SISGDDO_eficacia_ind_eficacia_id_91dc9ba7_fk_SISGDDO_e" FOREIGN KEY (eficacia_id) REFERENCES public."SISGDDO_eficacia"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."SISGDDO_eficacia_indicador" DROP CONSTRAINT "SISGDDO_eficacia_ind_eficacia_id_91dc9ba7_fk_SISGDDO_e";
       public          postgres    false    221    3383    343            )           2606    25144 R   SISGDDO_eficacia_indicador SISGDDO_eficacia_ind_indicador_id_6a5a0e3d_fk_SISGDDO_i    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_eficacia_indicador"
    ADD CONSTRAINT "SISGDDO_eficacia_ind_indicador_id_6a5a0e3d_fk_SISGDDO_i" FOREIGN KEY (indicador_id) REFERENCES public."SISGDDO_indicador"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_eficacia_indicador" DROP CONSTRAINT "SISGDDO_eficacia_ind_indicador_id_6a5a0e3d_fk_SISGDDO_i";
       public          postgres    false    316    343    3600            �           2606    25401 K   SISGDDO_eficacia SISGDDO_eficacia_proceso_asociado_id_da9dcd91_fk_SISGDDO_p    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_eficacia"
    ADD CONSTRAINT "SISGDDO_eficacia_proceso_asociado_id_da9dcd91_fk_SISGDDO_p" FOREIGN KEY (proceso_asociado_id) REFERENCES public."SISGDDO_proceso"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."SISGDDO_eficacia" DROP CONSTRAINT "SISGDDO_eficacia_proceso_asociado_id_da9dcd91_fk_SISGDDO_p";
       public          postgres    false    221    253    3442            �           2606    25407 N   SISGDDO_eficacia SISGDDO_eficacia_proceso_ef_id_0e826e65_fk_SISGDDO_proceso_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_eficacia"
    ADD CONSTRAINT "SISGDDO_eficacia_proceso_ef_id_0e826e65_fk_SISGDDO_proceso_id" FOREIGN KEY (proceso_ef_id) REFERENCES public."SISGDDO_proceso"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."SISGDDO_eficacia" DROP CONSTRAINT "SISGDDO_eficacia_proceso_ef_id_0e826e65_fk_SISGDDO_proceso_id";
       public          postgres    false    221    253    3442            �           2606    25027 F   SISGDDO_eficacia SISGDDO_eficacia_responsable_id_1d669692_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_eficacia"
    ADD CONSTRAINT "SISGDDO_eficacia_responsable_id_1d669692_fk_SISGDDO_t" FOREIGN KEY (responsable_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."SISGDDO_eficacia" DROP CONSTRAINT "SISGDDO_eficacia_responsable_id_1d669692_fk_SISGDDO_t";
       public          postgres    false    3486    266    221            *           2606    25153 a   SISGDDO_entradas_proyecto_formato SISGDDO_entradas_pro_entradas_proyecto_id_81c653aa_fk_SISGDDO_e    FK CONSTRAINT       ALTER TABLE ONLY public."SISGDDO_entradas_proyecto_formato"
    ADD CONSTRAINT "SISGDDO_entradas_pro_entradas_proyecto_id_81c653aa_fk_SISGDDO_e" FOREIGN KEY (entradas_proyecto_id) REFERENCES public."SISGDDO_entradas_proyecto"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto_formato" DROP CONSTRAINT "SISGDDO_entradas_pro_entradas_proyecto_id_81c653aa_fk_SISGDDO_e";
       public          postgres    false    345    225    3395            �           2606    25033 U   SISGDDO_entradas_proyecto SISGDDO_entradas_pro_entregado_por_id_33ccd8c9_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto"
    ADD CONSTRAINT "SISGDDO_entradas_pro_entregado_por_id_33ccd8c9_fk_SISGDDO_t" FOREIGN KEY (entregado_por_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto" DROP CONSTRAINT "SISGDDO_entradas_pro_entregado_por_id_33ccd8c9_fk_SISGDDO_t";
       public          postgres    false    3486    266    225            �           2606    25039 N   SISGDDO_entradas_proyecto SISGDDO_entradas_pro_estado_id_c0e4c38e_fk_SISGDDO_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto"
    ADD CONSTRAINT "SISGDDO_entradas_pro_estado_id_c0e4c38e_fk_SISGDDO_e" FOREIGN KEY (estado_id) REFERENCES public."SISGDDO_estado_entradas_proyecto"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto" DROP CONSTRAINT "SISGDDO_entradas_pro_estado_id_c0e4c38e_fk_SISGDDO_e";
       public          postgres    false    231    225    3401            +           2606    25158 W   SISGDDO_entradas_proyecto_formato SISGDDO_entradas_pro_formato_id_b1a17976_fk_SISGDDO_f    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto_formato"
    ADD CONSTRAINT "SISGDDO_entradas_pro_formato_id_b1a17976_fk_SISGDDO_f" FOREIGN KEY (formato_id) REFERENCES public."SISGDDO_formato"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_entradas_proyecto_formato" DROP CONSTRAINT "SISGDDO_entradas_pro_formato_id_b1a17976_fk_SISGDDO_f";
       public          postgres    false    345    310    3589            �           2606    18567 e   SISGDDO_formacion_personal_capacitacion_adquirida SISGDDO_formacion_pe_curso_id_fa1a50f4_fk_SISGDDO_c    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_formacion_personal_capacitacion_adquirida"
    ADD CONSTRAINT "SISGDDO_formacion_pe_curso_id_fa1a50f4_fk_SISGDDO_c" FOREIGN KEY (curso_id) REFERENCES public."SISGDDO_curso"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_formacion_personal_capacitacion_adquirida" DROP CONSTRAINT "SISGDDO_formacion_pe_curso_id_fa1a50f4_fk_SISGDDO_c";
       public          postgres    false    3372    236    217            �           2606    18572 q   SISGDDO_formacion_personal_capacitacion_adquirida SISGDDO_formacion_pe_formacion_personal_i_b575b3d9_fk_SISGDDO_f    FK CONSTRAINT       ALTER TABLE ONLY public."SISGDDO_formacion_personal_capacitacion_adquirida"
    ADD CONSTRAINT "SISGDDO_formacion_pe_formacion_personal_i_b575b3d9_fk_SISGDDO_f" FOREIGN KEY (formacion_personal_id) REFERENCES public."SISGDDO_formacion_personal"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_formacion_personal_capacitacion_adquirida" DROP CONSTRAINT "SISGDDO_formacion_pe_formacion_personal_i_b575b3d9_fk_SISGDDO_f";
       public          postgres    false    3405    235    236            �           2606    18577 a   SISGDDO_historico_dictamen_tecnico SISGDDO_historico_di_dictamen_tecnico_id_1682bbe4_fk_SISGDDO_d    FK CONSTRAINT       ALTER TABLE ONLY public."SISGDDO_historico_dictamen_tecnico"
    ADD CONSTRAINT "SISGDDO_historico_di_dictamen_tecnico_id_1682bbe4_fk_SISGDDO_d" FOREIGN KEY (dictamen_tecnico_id) REFERENCES public."SISGDDO_dictamen_tecnico"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_historico_dictamen_tecnico" DROP CONSTRAINT "SISGDDO_historico_di_dictamen_tecnico_id_1682bbe4_fk_SISGDDO_d";
       public          postgres    false    219    239    3380            �           2606    25588 d   SISGDDO_historico_entradas_proyectos SISGDDO_historico_en_entradas_proyectos_i_cfc93f01_fk_SISGDDO_e    FK CONSTRAINT     	  ALTER TABLE ONLY public."SISGDDO_historico_entradas_proyectos"
    ADD CONSTRAINT "SISGDDO_historico_en_entradas_proyectos_i_cfc93f01_fk_SISGDDO_e" FOREIGN KEY (entradas_proyectos_id) REFERENCES public."SISGDDO_entradas_proyecto"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_historico_entradas_proyectos" DROP CONSTRAINT "SISGDDO_historico_en_entradas_proyectos_i_cfc93f01_fk_SISGDDO_e";
       public          postgres    false    3395    225    241            �           2606    18587 `   SISGDDO_historico_entradas_proyectos SISGDDO_historico_en_entregado_por_id_f4801336_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_historico_entradas_proyectos"
    ADD CONSTRAINT "SISGDDO_historico_en_entregado_por_id_f4801336_fk_SISGDDO_t" FOREIGN KEY (entregado_por_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_historico_entradas_proyectos" DROP CONSTRAINT "SISGDDO_historico_en_entregado_por_id_f4801336_fk_SISGDDO_t";
       public          postgres    false    266    241    3486            �           2606    18592 _   SISGDDO_historico_entradas_proyectos SISGDDO_historico_en_recibida_por_id_ca7c8b8f_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_historico_entradas_proyectos"
    ADD CONSTRAINT "SISGDDO_historico_en_recibida_por_id_ca7c8b8f_fk_SISGDDO_t" FOREIGN KEY (recibida_por_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_historico_entradas_proyectos" DROP CONSTRAINT "SISGDDO_historico_en_recibida_por_id_ca7c8b8f_fk_SISGDDO_t";
       public          postgres    false    266    3486    241                       2606    24957 E   SISGDDO_incidencia SISGDDO_incidencia_estado_id_9ead9fe8_fk_SISGDDO_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_incidencia"
    ADD CONSTRAINT "SISGDDO_incidencia_estado_id_9ead9fe8_fk_SISGDDO_e" FOREIGN KEY (estado_id) REFERENCES public."SISGDDO_estado_incidencia"(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."SISGDDO_incidencia" DROP CONSTRAINT "SISGDDO_incidencia_estado_id_9ead9fe8_fk_SISGDDO_e";
       public          postgres    false    314    3574    304                       2606    25134 I   SISGDDO_incidencia SISGDDO_incidencia_trabajador_id_88ef29b2_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_incidencia"
    ADD CONSTRAINT "SISGDDO_incidencia_trabajador_id_88ef29b2_fk_SISGDDO_t" FOREIGN KEY (trabajador_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public."SISGDDO_incidencia" DROP CONSTRAINT "SISGDDO_incidencia_trabajador_id_88ef29b2_fk_SISGDDO_t";
       public          postgres    false    314    266    3486            6           2606    25609 P   SISGDDO_indicador_objetivos SISGDDO_indicador_ob_estado_id_27da2258_fk_SISGDDO_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_indicador_objetivos"
    ADD CONSTRAINT "SISGDDO_indicador_ob_estado_id_27da2258_fk_SISGDDO_e" FOREIGN KEY (estado_id) REFERENCES public."SISGDDO_estado_indicador_objetivos"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."SISGDDO_indicador_objetivos" DROP CONSTRAINT "SISGDDO_indicador_ob_estado_id_27da2258_fk_SISGDDO_e";
       public          postgres    false    3750    373    369            7           2606    25675 R   SISGDDO_indicador_objetivos SISGDDO_indicador_ob_objetivo_id_c1883a69_fk_SISGDDO_o    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_indicador_objetivos"
    ADD CONSTRAINT "SISGDDO_indicador_ob_objetivo_id_c1883a69_fk_SISGDDO_o" FOREIGN KEY (objetivo_id) REFERENCES public."SISGDDO_objetivo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_indicador_objetivos" DROP CONSTRAINT "SISGDDO_indicador_ob_objetivo_id_c1883a69_fk_SISGDDO_o";
       public          postgres    false    373    377    3773                       2606    25413 M   SISGDDO_indicador SISGDDO_indicador_proceso_id_c16ded43_fk_SISGDDO_proceso_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_indicador"
    ADD CONSTRAINT "SISGDDO_indicador_proceso_id_c16ded43_fk_SISGDDO_proceso_id" FOREIGN KEY (proceso_id) REFERENCES public."SISGDDO_proceso"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."SISGDDO_indicador" DROP CONSTRAINT "SISGDDO_indicador_proceso_id_c16ded43_fk_SISGDDO_proceso_id";
       public          postgres    false    3442    253    316                       2606    24964 K   SISGDDO_licencia SISGDDO_licencia_entidad_id_3e7b73b5_fk_SISGDDO_entidad_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_licencia"
    ADD CONSTRAINT "SISGDDO_licencia_entidad_id_3e7b73b5_fk_SISGDDO_entidad_id" FOREIGN KEY (entidad_id) REFERENCES public."SISGDDO_entidad"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."SISGDDO_licencia" DROP CONSTRAINT "SISGDDO_licencia_entidad_id_3e7b73b5_fk_SISGDDO_entidad_id";
       public          postgres    false    3391    223    318                       2606    24969 A   SISGDDO_licencia SISGDDO_licencia_estado_id_1665ad6b_fk_SISGDDO_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_licencia"
    ADD CONSTRAINT "SISGDDO_licencia_estado_id_1665ad6b_fk_SISGDDO_e" FOREIGN KEY (estado_id) REFERENCES public."SISGDDO_estado_licencia"(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public."SISGDDO_licencia" DROP CONSTRAINT "SISGDDO_licencia_estado_id_1665ad6b_fk_SISGDDO_e";
       public          postgres    false    3579    306    318                       2606    25114 K   SISGDDO_licencia SISGDDO_licencia_proceso_id_5a7f2b5d_fk_SISGDDO_proceso_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_licencia"
    ADD CONSTRAINT "SISGDDO_licencia_proceso_id_5a7f2b5d_fk_SISGDDO_proceso_id" FOREIGN KEY (proceso_id) REFERENCES public."SISGDDO_proceso"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."SISGDDO_licencia" DROP CONSTRAINT "SISGDDO_licencia_proceso_id_5a7f2b5d_fk_SISGDDO_proceso_id";
       public          postgres    false    3442    318    253            &           2606    25119 S   SISGDDO_licencia_responsable SISGDDO_licencia_res_licencia_id_7b519d44_fk_SISGDDO_l    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_licencia_responsable"
    ADD CONSTRAINT "SISGDDO_licencia_res_licencia_id_7b519d44_fk_SISGDDO_l" FOREIGN KEY (licencia_id) REFERENCES public."SISGDDO_licencia"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_licencia_responsable" DROP CONSTRAINT "SISGDDO_licencia_res_licencia_id_7b519d44_fk_SISGDDO_l";
       public          postgres    false    3611    318    341            '           2606    25124 U   SISGDDO_licencia_responsable SISGDDO_licencia_res_trabajador_id_7a43bf7d_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_licencia_responsable"
    ADD CONSTRAINT "SISGDDO_licencia_res_trabajador_id_7a43bf7d_fk_SISGDDO_t" FOREIGN KEY (trabajador_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_licencia_responsable" DROP CONSTRAINT "SISGDDO_licencia_res_trabajador_id_7a43bf7d_fk_SISGDDO_t";
       public          postgres    false    3486    266    341                       2606    24979 K   SISGDDO_notificacion SISGDDO_notificacion_licencia_id_271fdf1e_fk_SISGDDO_l    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_notificacion"
    ADD CONSTRAINT "SISGDDO_notificacion_licencia_id_271fdf1e_fk_SISGDDO_l" FOREIGN KEY (licencia_id) REFERENCES public."SISGDDO_licencia"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."SISGDDO_notificacion" DROP CONSTRAINT "SISGDDO_notificacion_licencia_id_271fdf1e_fk_SISGDDO_l";
       public          postgres    false    3611    322    318                       2606    25102 Q   SISGDDO_notificacion SISGDDO_notificacion_premio_id_88e89408_fk_SISGDDO_premio_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_notificacion"
    ADD CONSTRAINT "SISGDDO_notificacion_premio_id_88e89408_fk_SISGDDO_premio_id" FOREIGN KEY (premio_id) REFERENCES public."SISGDDO_premio"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."SISGDDO_notificacion" DROP CONSTRAINT "SISGDDO_notificacion_premio_id_88e89408_fk_SISGDDO_premio_id";
       public          postgres    false    3628    324    322                       2606    25108 T   SISGDDO_notificacion SISGDDO_notificacion_propiedad_intelectua_996e48f5_fk_SISGDDO_p    FK CONSTRAINT        ALTER TABLE ONLY public."SISGDDO_notificacion"
    ADD CONSTRAINT "SISGDDO_notificacion_propiedad_intelectua_996e48f5_fk_SISGDDO_p" FOREIGN KEY (propiedad_intelectual_id) REFERENCES public."SISGDDO_propiedad_intelectual"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_notificacion" DROP CONSTRAINT "SISGDDO_notificacion_propiedad_intelectua_996e48f5_fk_SISGDDO_p";
       public          postgres    false    322    3634    326            8           2606    25669 E   SISGDDO_objetivo SISGDDO_objetivo_area_id_ffdedd2e_fk_SISGDDO_area_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_objetivo"
    ADD CONSTRAINT "SISGDDO_objetivo_area_id_ffdedd2e_fk_SISGDDO_area_id" FOREIGN KEY (area_id) REFERENCES public."SISGDDO_area"(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."SISGDDO_objetivo" DROP CONSTRAINT "SISGDDO_objetivo_area_id_ffdedd2e_fk_SISGDDO_area_id";
       public          postgres    false    377    209    3356            �           2606    25343 T   SISGDDO_plan_medidas_acciones SISGDDO_plan_medidas_acciones_id_a042ab82_fk_SISGDDO_a    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_plan_medidas_acciones"
    ADD CONSTRAINT "SISGDDO_plan_medidas_acciones_id_a042ab82_fk_SISGDDO_a" FOREIGN KEY (acciones_id) REFERENCES public."SISGDDO_acciones"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_plan_medidas_acciones" DROP CONSTRAINT "SISGDDO_plan_medidas_acciones_id_a042ab82_fk_SISGDDO_a";
       public          postgres    false    3344    203    250            �           2606    25348 X   SISGDDO_plan_medidas_acciones SISGDDO_plan_medidas_plan_medidas_id_561ff079_fk_SISGDDO_p    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_plan_medidas_acciones"
    ADD CONSTRAINT "SISGDDO_plan_medidas_plan_medidas_id_561ff079_fk_SISGDDO_p" FOREIGN KEY (plan_medidas_id) REFERENCES public."SISGDDO_plan_medidas"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_plan_medidas_acciones" DROP CONSTRAINT "SISGDDO_plan_medidas_plan_medidas_id_561ff079_fk_SISGDDO_p";
       public          postgres    false    3430    249    250            �           2606    18637 S   SISGDDO_plan_medidas SISGDDO_plan_medidas_proceso_id_7f2c812c_fk_SISGDDO_proceso_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_plan_medidas"
    ADD CONSTRAINT "SISGDDO_plan_medidas_proceso_id_7f2c812c_fk_SISGDDO_proceso_id" FOREIGN KEY (proceso_id) REFERENCES public."SISGDDO_proceso"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_plan_medidas" DROP CONSTRAINT "SISGDDO_plan_medidas_proceso_id_7f2c812c_fk_SISGDDO_proceso_id";
       public          postgres    false    3442    249    253                       2606    24985 G   SISGDDO_premio SISGDDO_premio_entidad_id_32643785_fk_SISGDDO_entidad_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_premio"
    ADD CONSTRAINT "SISGDDO_premio_entidad_id_32643785_fk_SISGDDO_entidad_id" FOREIGN KEY (entidad_id) REFERENCES public."SISGDDO_entidad"(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public."SISGDDO_premio" DROP CONSTRAINT "SISGDDO_premio_entidad_id_32643785_fk_SISGDDO_entidad_id";
       public          postgres    false    223    3391    324            2           2606    25418 U   SISGDDO_procedimiento SISGDDO_procedimiento_proceso_id_81682824_fk_SISGDDO_proceso_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_procedimiento"
    ADD CONSTRAINT "SISGDDO_procedimiento_proceso_id_81682824_fk_SISGDDO_proceso_id" FOREIGN KEY (proceso_id) REFERENCES public."SISGDDO_proceso"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_procedimiento" DROP CONSTRAINT "SISGDDO_procedimiento_proceso_id_81682824_fk_SISGDDO_proceso_id";
       public          postgres    false    353    3442    253                        2606    25046 Q   SISGDDO_proceso_responsable SISGDDO_proceso_resp_proceso_id_3e49efc4_fk_SISGDDO_p    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proceso_responsable"
    ADD CONSTRAINT "SISGDDO_proceso_resp_proceso_id_3e49efc4_fk_SISGDDO_p" FOREIGN KEY (proceso_id) REFERENCES public."SISGDDO_proceso"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."SISGDDO_proceso_responsable" DROP CONSTRAINT "SISGDDO_proceso_resp_proceso_id_3e49efc4_fk_SISGDDO_p";
       public          postgres    false    253    3442    334            !           2606    25051 T   SISGDDO_proceso_responsable SISGDDO_proceso_resp_trabajador_id_02cfd681_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proceso_responsable"
    ADD CONSTRAINT "SISGDDO_proceso_resp_trabajador_id_02cfd681_fk_SISGDDO_t" FOREIGN KEY (trabajador_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_proceso_responsable" DROP CONSTRAINT "SISGDDO_proceso_resp_trabajador_id_02cfd681_fk_SISGDDO_t";
       public          postgres    false    266    3486    334            9           2606    25618 \   SISGDDO_propiedad_industrial SISGDDO_propiedad_in_clasificacion_dibujo_135e7401_fk_SISGDDO_c    FK CONSTRAINT     *  ALTER TABLE ONLY public."SISGDDO_propiedad_industrial"
    ADD CONSTRAINT "SISGDDO_propiedad_in_clasificacion_dibujo_135e7401_fk_SISGDDO_c" FOREIGN KEY (clasificacion_dibujo_modelo_industrial_id) REFERENCES public."SISGDDO_clasificacion_dibujo_modelo_industrial"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial" DROP CONSTRAINT "SISGDDO_propiedad_in_clasificacion_dibujo_135e7401_fk_SISGDDO_c";
       public          postgres    false    381    359    3725            :           2606    25623 \   SISGDDO_propiedad_industrial SISGDDO_propiedad_in_clasificacion_elemen_686926c5_fk_SISGDDO_c    FK CONSTRAINT        ALTER TABLE ONLY public."SISGDDO_propiedad_industrial"
    ADD CONSTRAINT "SISGDDO_propiedad_in_clasificacion_elemen_686926c5_fk_SISGDDO_c" FOREIGN KEY (clasificacion_elemento_figurativo_id) REFERENCES public."SISGDDO_clasificacion_elemento_figurativo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial" DROP CONSTRAINT "SISGDDO_propiedad_in_clasificacion_elemen_686926c5_fk_SISGDDO_c";
       public          postgres    false    3730    361    381            ;           2606    25628 \   SISGDDO_propiedad_industrial SISGDDO_propiedad_in_clasificacion_patent_46557b4e_fk_SISGDDO_c    FK CONSTRAINT       ALTER TABLE ONLY public."SISGDDO_propiedad_industrial"
    ADD CONSTRAINT "SISGDDO_propiedad_in_clasificacion_patent_46557b4e_fk_SISGDDO_c" FOREIGN KEY (clasificacion_patente_id) REFERENCES public."SISGDDO_clasificacion_patente"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial" DROP CONSTRAINT "SISGDDO_propiedad_in_clasificacion_patent_46557b4e_fk_SISGDDO_c";
       public          postgres    false    3735    381    363            <           2606    25633 \   SISGDDO_propiedad_industrial SISGDDO_propiedad_in_clasificacion_produc_1af8cf7b_fk_SISGDDO_c    FK CONSTRAINT        ALTER TABLE ONLY public."SISGDDO_propiedad_industrial"
    ADD CONSTRAINT "SISGDDO_propiedad_in_clasificacion_produc_1af8cf7b_fk_SISGDDO_c" FOREIGN KEY (clasificacion_productos_servicios_id) REFERENCES public."SISGDDO_clasificacion_productos_servicios"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial" DROP CONSTRAINT "SISGDDO_propiedad_in_clasificacion_produc_1af8cf7b_fk_SISGDDO_c";
       public          postgres    false    365    381    3740            =           2606    25638 \   SISGDDO_propiedad_industrial SISGDDO_propiedad_in_clasificacion_viena__2442a410_fk_SISGDDO_c    FK CONSTRAINT       ALTER TABLE ONLY public."SISGDDO_propiedad_industrial"
    ADD CONSTRAINT "SISGDDO_propiedad_in_clasificacion_viena__2442a410_fk_SISGDDO_c" FOREIGN KEY (clasificacion_viena_id) REFERENCES public."SISGDDO_clasificacion_viena"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial" DROP CONSTRAINT "SISGDDO_propiedad_in_clasificacion_viena__2442a410_fk_SISGDDO_c";
       public          postgres    false    3745    381    367            >           2606    25643 Q   SISGDDO_propiedad_industrial SISGDDO_propiedad_in_estado_id_20cdba19_fk_SISGDDO_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial"
    ADD CONSTRAINT "SISGDDO_propiedad_in_estado_id_20cdba19_fk_SISGDDO_e" FOREIGN KEY (estado_id) REFERENCES public."SISGDDO_estado_propiedad_industrial"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."SISGDDO_propiedad_industrial" DROP CONSTRAINT "SISGDDO_propiedad_in_estado_id_20cdba19_fk_SISGDDO_e";
       public          postgres    false    371    381    3755                       2606    24992 R   SISGDDO_propiedad_intelectual SISGDDO_propiedad_in_estado_id_65563e02_fk_SISGDDO_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_propiedad_intelectual"
    ADD CONSTRAINT "SISGDDO_propiedad_in_estado_id_65563e02_fk_SISGDDO_e" FOREIGN KEY (estado_id) REFERENCES public."SISGDDO_estado_propiedad_intelectual"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_propiedad_intelectual" DROP CONSTRAINT "SISGDDO_propiedad_in_estado_id_65563e02_fk_SISGDDO_e";
       public          postgres    false    326    3584    308            ?           2606    25648 T   SISGDDO_propiedad_industrial SISGDDO_propiedad_in_modalidad_id_34c51843_fk_SISGDDO_m    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial"
    ADD CONSTRAINT "SISGDDO_propiedad_in_modalidad_id_34c51843_fk_SISGDDO_m" FOREIGN KEY (modalidad_id) REFERENCES public."SISGDDO_modalidad"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial" DROP CONSTRAINT "SISGDDO_propiedad_in_modalidad_id_34c51843_fk_SISGDDO_m";
       public          postgres    false    3767    381    375            @           2606    25653 O   SISGDDO_propiedad_industrial SISGDDO_propiedad_in_pais_id_a929ee0a_fk_SISGDDO_p    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial"
    ADD CONSTRAINT "SISGDDO_propiedad_in_pais_id_a929ee0a_fk_SISGDDO_p" FOREIGN KEY (pais_id) REFERENCES public."SISGDDO_pais"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."SISGDDO_propiedad_industrial" DROP CONSTRAINT "SISGDDO_propiedad_in_pais_id_a929ee0a_fk_SISGDDO_p";
       public          postgres    false    3775    381    379            �           2606    18642 E   SISGDDO_proyecto SISGDDO_proyecto_area_id_735950ad_fk_SISGDDO_area_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto"
    ADD CONSTRAINT "SISGDDO_proyecto_area_id_735950ad_fk_SISGDDO_area_id" FOREIGN KEY (area_id) REFERENCES public."SISGDDO_area"(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."SISGDDO_proyecto" DROP CONSTRAINT "SISGDDO_proyecto_area_id_735950ad_fk_SISGDDO_area_id";
       public          postgres    false    3356    257    209            "           2606    25060 O   SISGDDO_proyecto_calidad SISGDDO_proyecto_cal_proyecto_id_a15f5dc8_fk_SISGDDO_p    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_calidad"
    ADD CONSTRAINT "SISGDDO_proyecto_cal_proyecto_id_a15f5dc8_fk_SISGDDO_p" FOREIGN KEY (proyecto_id) REFERENCES public."SISGDDO_proyecto"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."SISGDDO_proyecto_calidad" DROP CONSTRAINT "SISGDDO_proyecto_cal_proyecto_id_a15f5dc8_fk_SISGDDO_p";
       public          postgres    false    3460    336    257            #           2606    25065 Q   SISGDDO_proyecto_calidad SISGDDO_proyecto_cal_trabajador_id_612b0083_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_calidad"
    ADD CONSTRAINT "SISGDDO_proyecto_cal_trabajador_id_612b0083_fk_SISGDDO_t" FOREIGN KEY (trabajador_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."SISGDDO_proyecto_calidad" DROP CONSTRAINT "SISGDDO_proyecto_cal_trabajador_id_612b0083_fk_SISGDDO_t";
       public          postgres    false    3486    336    266            $           2606    25075 R   SISGDDO_proyecto_disennador SISGDDO_proyecto_dis_proyecto_id_004a975b_fk_SISGDDO_p    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_disennador"
    ADD CONSTRAINT "SISGDDO_proyecto_dis_proyecto_id_004a975b_fk_SISGDDO_p" FOREIGN KEY (proyecto_id) REFERENCES public."SISGDDO_proyecto"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_proyecto_disennador" DROP CONSTRAINT "SISGDDO_proyecto_dis_proyecto_id_004a975b_fk_SISGDDO_p";
       public          postgres    false    3460    257    338            %           2606    25080 T   SISGDDO_proyecto_disennador SISGDDO_proyecto_dis_trabajador_id_a5533c7d_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_disennador"
    ADD CONSTRAINT "SISGDDO_proyecto_dis_trabajador_id_a5533c7d_fk_SISGDDO_t" FOREIGN KEY (trabajador_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_proyecto_disennador" DROP CONSTRAINT "SISGDDO_proyecto_dis_trabajador_id_a5533c7d_fk_SISGDDO_t";
       public          postgres    false    338    3486    266            �           2606    18652 A   SISGDDO_proyecto SISGDDO_proyecto_estado_id_8f4b6d8d_fk_SISGDDO_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto"
    ADD CONSTRAINT "SISGDDO_proyecto_estado_id_8f4b6d8d_fk_SISGDDO_e" FOREIGN KEY (estado_id) REFERENCES public."SISGDDO_estado_proyecto"(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public."SISGDDO_proyecto" DROP CONSTRAINT "SISGDDO_proyecto_estado_id_8f4b6d8d_fk_SISGDDO_e";
       public          postgres    false    233    257    3403            -           2606    25178 N   SISGDDO_proyecto_formato SISGDDO_proyecto_for_formato_id_d4c1b27a_fk_SISGDDO_f    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_formato"
    ADD CONSTRAINT "SISGDDO_proyecto_for_formato_id_d4c1b27a_fk_SISGDDO_f" FOREIGN KEY (formato_id) REFERENCES public."SISGDDO_formato"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."SISGDDO_proyecto_formato" DROP CONSTRAINT "SISGDDO_proyecto_for_formato_id_d4c1b27a_fk_SISGDDO_f";
       public          postgres    false    3589    310    347            ,           2606    25173 O   SISGDDO_proyecto_formato SISGDDO_proyecto_for_proyecto_id_36235f96_fk_SISGDDO_p    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_formato"
    ADD CONSTRAINT "SISGDDO_proyecto_for_proyecto_id_36235f96_fk_SISGDDO_p" FOREIGN KEY (proyecto_id) REFERENCES public."SISGDDO_proyecto"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."SISGDDO_proyecto_formato" DROP CONSTRAINT "SISGDDO_proyecto_for_proyecto_id_36235f96_fk_SISGDDO_p";
       public          postgres    false    257    347    3460            �           2606    25188 L   SISGDDO_proyecto SISGDDO_proyecto_fuente_financiamient_b3aa398a_fk_SISGDDO_f    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto"
    ADD CONSTRAINT "SISGDDO_proyecto_fuente_financiamient_b3aa398a_fk_SISGDDO_f" FOREIGN KEY (fuente_financiamiento_id) REFERENCES public."SISGDDO_fuente_financiamiento"(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."SISGDDO_proyecto" DROP CONSTRAINT "SISGDDO_proyecto_fuente_financiamient_b3aa398a_fk_SISGDDO_f";
       public          postgres    false    312    257    3591            �           2606    24864 U   SISGDDO_proyecto_jefe_proyecto SISGDDO_proyecto_jef_proyecto_id_9a3affe7_fk_SISGDDO_p    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_jefe_proyecto"
    ADD CONSTRAINT "SISGDDO_proyecto_jef_proyecto_id_9a3affe7_fk_SISGDDO_p" FOREIGN KEY (proyecto_id) REFERENCES public."SISGDDO_proyecto"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_proyecto_jefe_proyecto" DROP CONSTRAINT "SISGDDO_proyecto_jef_proyecto_id_9a3affe7_fk_SISGDDO_p";
       public          postgres    false    257    3460    258            �           2606    24859 W   SISGDDO_proyecto_jefe_proyecto SISGDDO_proyecto_jef_trabajador_id_e25e2cd5_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto_jefe_proyecto"
    ADD CONSTRAINT "SISGDDO_proyecto_jef_trabajador_id_e25e2cd5_fk_SISGDDO_t" FOREIGN KEY (trabajador_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_proyecto_jefe_proyecto" DROP CONSTRAINT "SISGDDO_proyecto_jef_trabajador_id_e25e2cd5_fk_SISGDDO_t";
       public          postgres    false    266    3486    258            �           2606    25194 N   SISGDDO_proyecto SISGDDO_proyecto_tipo_id_c88e10ea_fk_SISGDDO_tipo_proyecto_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_proyecto"
    ADD CONSTRAINT "SISGDDO_proyecto_tipo_id_c88e10ea_fk_SISGDDO_tipo_proyecto_id" FOREIGN KEY (tipo_id) REFERENCES public."SISGDDO_tipo_proyecto"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."SISGDDO_proyecto" DROP CONSTRAINT "SISGDDO_proyecto_tipo_id_c88e10ea_fk_SISGDDO_tipo_proyecto_id";
       public          postgres    false    3643    257    330                       2606    24999 E   SISGDDO_queja SISGDDO_queja_cliente_id_f3e9e699_fk_SISGDDO_cliente_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_queja"
    ADD CONSTRAINT "SISGDDO_queja_cliente_id_f3e9e699_fk_SISGDDO_cliente_id" FOREIGN KEY (cliente_id) REFERENCES public."SISGDDO_cliente"(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."SISGDDO_queja" DROP CONSTRAINT "SISGDDO_queja_cliente_id_f3e9e699_fk_SISGDDO_cliente_id";
       public          postgres    false    3568    300    328                       2606    25090 E   SISGDDO_queja SISGDDO_queja_proceso_id_c82dd693_fk_SISGDDO_proceso_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_queja"
    ADD CONSTRAINT "SISGDDO_queja_proceso_id_c82dd693_fk_SISGDDO_proceso_id" FOREIGN KEY (proceso_id) REFERENCES public."SISGDDO_proceso"(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."SISGDDO_queja" DROP CONSTRAINT "SISGDDO_queja_proceso_id_c82dd693_fk_SISGDDO_proceso_id";
       public          postgres    false    3442    253    328                       2606    25096 B   SISGDDO_queja SISGDDO_queja_via_recepcion_id_6223710c_fk_SISGDDO_v    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_queja"
    ADD CONSTRAINT "SISGDDO_queja_via_recepcion_id_6223710c_fk_SISGDDO_v" FOREIGN KEY (via_recepcion_id) REFERENCES public."SISGDDO_via_recepcion"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."SISGDDO_queja" DROP CONSTRAINT "SISGDDO_queja_via_recepcion_id_6223710c_fk_SISGDDO_v";
       public          postgres    false    328    332    3648            �           2606    24875 =   SISGDDO_sosi SISGDDO_sosi_area_id_05a48fcb_fk_SISGDDO_area_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_sosi"
    ADD CONSTRAINT "SISGDDO_sosi_area_id_05a48fcb_fk_SISGDDO_area_id" FOREIGN KEY (area_id) REFERENCES public."SISGDDO_area"(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public."SISGDDO_sosi" DROP CONSTRAINT "SISGDDO_sosi_area_id_05a48fcb_fk_SISGDDO_area_id";
       public          postgres    false    3356    209    260            �           2606    24880 U   SISGDDO_sosi_formatos SISGDDO_sosi_formatos_formato_id_f459eed7_fk_SISGDDO_formato_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_sosi_formatos"
    ADD CONSTRAINT "SISGDDO_sosi_formatos_formato_id_f459eed7_fk_SISGDDO_formato_id" FOREIGN KEY (formato_id) REFERENCES public."SISGDDO_formato"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_sosi_formatos" DROP CONSTRAINT "SISGDDO_sosi_formatos_formato_id_f459eed7_fk_SISGDDO_formato_id";
       public          postgres    false    261    310    3589            �           2606    24885 O   SISGDDO_sosi_formatos SISGDDO_sosi_formatos_sosi_id_eafc4744_fk_SISGDDO_sosi_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_sosi_formatos"
    ADD CONSTRAINT "SISGDDO_sosi_formatos_sosi_id_eafc4744_fk_SISGDDO_sosi_id" FOREIGN KEY (sosi_id) REFERENCES public."SISGDDO_sosi"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."SISGDDO_sosi_formatos" DROP CONSTRAINT "SISGDDO_sosi_formatos_sosi_id_eafc4744_fk_SISGDDO_sosi_id";
       public          postgres    false    260    261    3471            �           2606    18697 O   SISGDDO_sosi_idioma SISGDDO_sosi_idioma_idioma_id_1ae932f7_fk_SISGDDO_idioma_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_sosi_idioma"
    ADD CONSTRAINT "SISGDDO_sosi_idioma_idioma_id_1ae932f7_fk_SISGDDO_idioma_id" FOREIGN KEY (idioma_id) REFERENCES public."SISGDDO_idioma"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."SISGDDO_sosi_idioma" DROP CONSTRAINT "SISGDDO_sosi_idioma_idioma_id_1ae932f7_fk_SISGDDO_idioma_id";
       public          postgres    false    264    3424    243            �           2606    18702 K   SISGDDO_sosi_idioma SISGDDO_sosi_idioma_sosi_id_24f8706e_fk_SISGDDO_sosi_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_sosi_idioma"
    ADD CONSTRAINT "SISGDDO_sosi_idioma_sosi_id_24f8706e_fk_SISGDDO_sosi_id" FOREIGN KEY (sosi_id) REFERENCES public."SISGDDO_sosi"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."SISGDDO_sosi_idioma" DROP CONSTRAINT "SISGDDO_sosi_idioma_sosi_id_24f8706e_fk_SISGDDO_sosi_id";
       public          postgres    false    264    260    3471            /           2606    25204 X   SISGDDO_sosi_linea_tematica SISGDDO_sosi_linea_t_linea_tematica_id_ead20eac_fk_SISGDDO_l    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_sosi_linea_tematica"
    ADD CONSTRAINT "SISGDDO_sosi_linea_t_linea_tematica_id_ead20eac_fk_SISGDDO_l" FOREIGN KEY (linea_tematica_id) REFERENCES public."SISGDDO_linea_tematica"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_sosi_linea_tematica" DROP CONSTRAINT "SISGDDO_sosi_linea_t_linea_tematica_id_ead20eac_fk_SISGDDO_l";
       public          postgres    false    3617    349    320            .           2606    25199 [   SISGDDO_sosi_linea_tematica SISGDDO_sosi_linea_tematica_sosi_id_719ebe06_fk_SISGDDO_sosi_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_sosi_linea_tematica"
    ADD CONSTRAINT "SISGDDO_sosi_linea_tematica_sosi_id_719ebe06_fk_SISGDDO_sosi_id" FOREIGN KEY (sosi_id) REFERENCES public."SISGDDO_sosi"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_sosi_linea_tematica" DROP CONSTRAINT "SISGDDO_sosi_linea_tematica_sosi_id_719ebe06_fk_SISGDDO_sosi_id";
       public          postgres    false    349    260    3471            �           2606    24899 B   SISGDDO_sosi SISGDDO_sosi_persona_entrega_id_041d4b5c_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_sosi"
    ADD CONSTRAINT "SISGDDO_sosi_persona_entrega_id_041d4b5c_fk_SISGDDO_t" FOREIGN KEY (persona_entrega_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."SISGDDO_sosi" DROP CONSTRAINT "SISGDDO_sosi_persona_entrega_id_041d4b5c_fk_SISGDDO_t";
       public          postgres    false    3486    260    266            �           2606    25353 P   SISGDDO_trabajador SISGDDO_trabajador_formacion_personal_i_d925782b_fk_SISGDDO_f    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_trabajador"
    ADD CONSTRAINT "SISGDDO_trabajador_formacion_personal_i_d925782b_fk_SISGDDO_f" FOREIGN KEY (formacion_personal_id) REFERENCES public."SISGDDO_formacion_personal"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."SISGDDO_trabajador" DROP CONSTRAINT "SISGDDO_trabajador_formacion_personal_i_d925782b_fk_SISGDDO_f";
       public          postgres    false    235    266    3405                        2606    18727 W   SISGDDO_valoracion_encuesta SISGDDO_valoracion_e_elaborado_por_id_7818d5c9_fk_SISGDDO_t    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta"
    ADD CONSTRAINT "SISGDDO_valoracion_e_elaborado_por_id_7818d5c9_fk_SISGDDO_t" FOREIGN KEY (elaborado_por_id) REFERENCES public."SISGDDO_trabajador"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta" DROP CONSTRAINT "SISGDDO_valoracion_e_elaborado_por_id_7818d5c9_fk_SISGDDO_t";
       public          postgres    false    266    3486    268                       2606    18732 ^   SISGDDO_valoracion_encuesta_organismos SISGDDO_valoracion_e_organismo_id_f367ac92_fk_SISGDDO_o    FK CONSTRAINT     �   ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta_organismos"
    ADD CONSTRAINT "SISGDDO_valoracion_e_organismo_id_f367ac92_fk_SISGDDO_o" FOREIGN KEY (organismo_id) REFERENCES public."SISGDDO_organismo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta_organismos" DROP CONSTRAINT "SISGDDO_valoracion_e_organismo_id_f367ac92_fk_SISGDDO_o";
       public          postgres    false    270    247    3428                       2606    18737 f   SISGDDO_valoracion_encuesta_organismos SISGDDO_valoracion_e_valoracion_encuesta__be4685f9_fk_SISGDDO_v    FK CONSTRAINT       ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta_organismos"
    ADD CONSTRAINT "SISGDDO_valoracion_e_valoracion_encuesta__be4685f9_fk_SISGDDO_v" FOREIGN KEY (valoracion_encuesta_id) REFERENCES public."SISGDDO_valoracion_encuesta"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."SISGDDO_valoracion_encuesta_organismos" DROP CONSTRAINT "SISGDDO_valoracion_e_valoracion_encuesta__be4685f9_fk_SISGDDO_v";
       public          postgres    false    270    268    3489                       2606    18742 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    276    3511    274                       2606    18747 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    272    274    3500                       2606    18752 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    288    276    3546                       2606    18757 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    272    279    3500                       2606    18762 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    279    278    3518                       2606    18767 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    282    276    3511            	           2606    18772 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    282    278    3518            
           2606    18777 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    286    288    3546                       2606    18782 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    278    286    3518                       2606    18787 Z   notifications_notification notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.notifications_notification
    ADD CONSTRAINT notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co FOREIGN KEY (action_object_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.notifications_notification DROP CONSTRAINT notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co;
       public          postgres    false    3546    293    288                       2606    18792 Z   notifications_notification notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.notifications_notification
    ADD CONSTRAINT notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co FOREIGN KEY (actor_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.notifications_notification DROP CONSTRAINT notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co;
       public          postgres    false    288    3546    293                       2606    18797 R   notifications_notification notifications_notifi_recipient_id_d055f3f0_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.notifications_notification
    ADD CONSTRAINT notifications_notifi_recipient_id_d055f3f0_fk_auth_user FOREIGN KEY (recipient_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.notifications_notification DROP CONSTRAINT notifications_notifi_recipient_id_d055f3f0_fk_auth_user;
       public          postgres    false    3518    278    293                       2606    18802 Z   notifications_notification notifications_notifi_target_content_type__ccb24d88_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.notifications_notification
    ADD CONSTRAINT notifications_notifi_target_content_type__ccb24d88_fk_django_co FOREIGN KEY (target_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.notifications_notification DROP CONSTRAINT notifications_notifi_target_content_type__ccb24d88_fk_django_co;
       public          postgres    false    3546    293    288            �   G  x���An�1��u�..��$�
��T�q\U�v�����_e�������8�eC뜐3�k)}B R��l�8o�Oo���e����r������RF^&�Tp�d��z��j�1�{X\+��L!.Ƥ�J�8a��ʋ�ѼV��M�Z[��W�C.\���O�����>J%��K���Y���QѫZ�Z�aJ1��he�i� �	��I
��'���x:?���~��ŏ�Z�f�R����j"��B}p�����8�9��jZ���* � ž��"����ˉ��$�ݰ�,�4�����38��؇�h�ts8~��w      Z      x������ � �      !      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      \      x������ � �      v      x������ � �      �   =   x�˹� A��Ҁ�$����P�8�5m�a�3\�Ox�85�#N�x�w�����      �      x������ � �      V      x������ � �      �      x������ � �      �   �   x���A�0���.������NA^"�"s��l�>~8���]�?�G<�@|L|��Nr�"�c�LI��Tʦ����"6����Z�B��wx�t#�Q���@��z�Z%k%zƛr`�]�6�����N�3���C�Q�3�t�Y��V���<5�12]�bJ��V%N*uR��l=�5������      ^      x������ � �      `      x������ � �      b      x������ � �      d      x������ � �      f      x������ � �      #      x������ � �      $      x������ � �      �   b   x�3���K�IL�/�4202�54�52�2�,�,���C�Yps&��f�e�%&g��t���L8�s2SS*KS2K�2A
u�u͸b���� 0
E      %      x������ � �      �      x������ � �      �      x������ � �      N      x������ � �      �      x�3���
�����,����� (��      �      x������ � �      P      x������ � �      �      x�3���2� �D��qqq <�g      �      x�3�t��K�/�M�2���WH��b���� ���      �      x�3�t��K�/�M�2���WH��b���� ���      '      x������ � �      h      x������ � �      )      x������ � �      j      x������ � �      +      x������ � �      �   c   x��A�0��W���P�/\��U-��L�?qo3;�v��ˇs�\���βi�2@���c��B�o�Uq��C�Nh��E��ؒl�87����$���%�      �   m   x����0 ��=�'�e��� |��PW!��yt{�=� ��Yq��U�a�=XG��qp� ��;>�g�>a�A�4[��o��8��Մ�������>S�"�t�'�      �       x�3�4�4�2�B.cNc ۄ�b���� 4mu      -      x������ � �      /      x������ � �      �      x������ � �      �      x������ � �      �      x�3���2F �D��3���� v|L      1      x������ � �      3      x������ � �      l      x������ � �      5      x������ � �      L      x������ � �      7      x������ � �      �   3   x�3���+.HMN�<�9�ˈ�?�8��,�5�t�+)J-�,.I����� �F1      n      x������ � �      9      x������ � �      p      x������ � �      �       x�3�tq�,�2���
����rb���� L�r      r      x������ � �            x������ � �      �      x������ � �      �      x������ � �      ;      x������ � �      X      x������ � �      �   9   x�-̩  @})�!�4AA�
��u�xq����.��b�-�-�#z�+���� |��      E      x������ � �      t      x������ � �      =      x������ � �      �   �   x�%�=N1��S��(�	$D�[�de�k��:�S�Ř(��{z����=xAo!��A�{�ϙ��z�Q�=�&S�����ꂤ�ʘ+��g���(�{�#���ߡ����-u�0���{�V���F���i�=U[��}֣��?\,c�������q���د�&\���oh���)��3�QI�      �      x������ � �      G      x������ � �      I      x������ � �      R      x������ � �      �      x������ � �      ?      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      T      x������ � �      A      x������ � �            x������ � �            x������ � �            x������ � �      C      x������ � �         �   x�u�9�0Ek�s$v(#@,��fd;h�Ď�v�D�r1�)t���/S�%6*8��PԽ-�������Y�D�3q2�m�jTd�<b���$��®�a�;�EX���
����-��w%t9�7�֨��"jJ��&`����Bה3���#2�)��&��a�}$�� ��[�      	   �  x�%�۱�8��ٲH��r��Ǳh̏��-�ak���[��f���k��u��:qt=qu��t}�>¾X���`e,�bY�ڱ ��j�X�֍n�Hx�E�K������	/;^�Hx9���D��	/_����Պ�W��)V��(x�������O�hQ�ǉN�]/zK�d�������؆���ѓ������	=�rW�AU���$�bb���l����̱X16��c�:6��c��i�g[��{�T�uPB���9���,�ԃi+�p���r��2K�hRK�ݮ`��Rsd�]����b�����X��ԗ�����.+�%uy��m��6�p���5lk�����-�oYi~^Z)��6j��+��.j�}V�3o��)�d}e����S7�rA$����)n��)l�zZ����λp��[o��1��#Š�B1�RWJo���i[�t�T�ҫ#!3	M�2⠖��,Î`bD�;#!�jx�@-2,;#Ų3rl`K-�Ɨ:Rj���
ІQ�6�l;���(���Զ1m�m�� �cc�46(�<\���5u5X����!'��Zt�����+�i�qq���W��,b�"���V�<}�J�|��4�_+5���J�3�u�Jd�3JdM��5ZS|�~����Fk������g�
���F�g�J��F�H�A���g?jt��F�g���F`G��J���T�^c�R�����x|m�G��5��݉5�ڰy$vH#A�E�Q����]������������N��n;Q+����,��ۙ%�'Y���x�6OTk�u��j��>����ѡ�e�ӽ���4ʬ�D˾��q����� <)��=��\e��[�)+E|,xv�x��x�>�g�uy�c�g�c�G�c��H��8vY7<[_�����<&��?���1q��&<n.x����X<;?׆�>�l�����.�ށ?��#��>ǈg�_�_gu������/"�|�f�         C  x��[���6=K_�/H�$۲�S�!�m尧�ril��)���v��~�B"A����om��$E� Uů�u՝N����ꯏ�gQ��@���e�@�w��P� �x����� ��c������6�g�~���0^�z�<(��s ��S�V����
��.r���C/ߧ�y+�����e��;���_R�>1�w�Cj�
�^��&��y�b�t`�������V��`����� [�߾y�׮���8^��V�����,=���'e�����C���~Ex�?��ߤ�z�.`���{���v��Uְ���`���`j�h�U�l���ۭh�[�_e��_�������}z�z�n��գ«]0����c�k8v���g�Q��:�о�H�U|_��l �/�F�Xı�=���c��b��{�<*0��K`31�'0��x�<���<Ъ���t�'� �q٠u�$F�C+Ky<����֖�ܐb�X�m?��q��m4�A�� {s������`��ys��%�{Pw��s��������'i(�`�&�����Ś\?����d.�3xb��y��#Y�����iq[��Tn��3d?V�v����|�2�e�&Wy����֢Z���?(7�40�S��@c���h�ߟN��[����r*�.7`��(H�p��ȭ�i�[�'(��c�e�e���؂$��p��2Nl���r�v�0b����au����_��x�'E��T�Ĉr�����+9��O���_�)s�Dl��WR��9|�~t�q**��˓�{G��F�u#�O��-#v�F6�+��TT{���ϲ]G�A�wny[Ɖ�u�-xVF�?u����n�N�˵h��),�b�!$̝�l��*e���s`5ۮ�w�[�0���k�H���T��qn�J,��_ߟݏ�c��ۣ�a��N|�E�n��-r��&w�E�X�C��P������r�h�x�cX�����,�RbN�*�$�Z�*�#��1*M�Q	oc�J�pT��&��,=*ᨨ���hM�S����c� ��m�p��`�7Z3ą v�n4��j#���ۋ�����L����$�{7�ʠM���q���8������V�&l$��XT�.�D�5VX*��,�%�-�Ћ.H�DG1�t�պ�S���Ue�	��A�����Z�$IL(�#h�'�1	�� ��C��D�+D	CA��Α���״�o�y�|{��2H!A��_��'A�΅,�.�8�U��i����0\�{W4n�O�^�d�� �W1�|H1�ʫ�Twn1��U�齻��X4.j��~D^�~��@�k`b����0!=�W��	L�	���L)��T�1L!�;,�"�R��h\���	�C���<���)����X�T�������a�A�60��¸�A78����P~���wX]��0VÕb���%w�	F:`��0��|�ׄ�#|����K��0>����K�Ο|����:n9A�-�5Nr$�+�4	C���r��a�U����_��x�i�>����0�g2�z� ��0�|ib���0��*� �w�q�}������|&��'Ւ&���ȰC�� O�)8K@���g�,�x��F�ٹX�0%m!"�#��m��S�t?h��S�6y�I�6���Bh��_ G%����{�0�>�z����1�+�M��;]�	>!a�n�$�	�w:&)?�P�!���sw]�������YYa�0ƳC
x���~)�'���.��>އb�b��oj[�vvf��vY���1�f�H��MB�&�Q�R3�T0IT��`��j&�jKSg?U�R֦��a����R�oj�Pķ��v�(<�ݰ������u����;�`��_�������h$����Bt�����dD��Xd���������pw�k���>^�s��I-e�)L��#��¦�h=�+�a�%���*��Jw�M�d��}�0����Y�GX��,dCX��,����i�onil�p��6"���1?^�(a�Z�����q���F�x�����GG��4�������}R�oB������R)iWBQ��1�Ximǵ���I��~�y)�b/��=祴/{!��w^F<�\r��M����1��C��	�"B�5A���`V���>��x��:d�I^�j���E��
FY)]6�B��eeT��|�i�;�[�b�S2�9?&&gZ�����1��J,bB����b1KUe,��t�}k��h���n6i&	,�ȫ@Q�%�uy!����t�G^F��Z"����z�:Z#�j�矿�>���ß�j�~������MP���o��F�]�m�|����F�}��cI�k�eݼŰo�� b�BVѾM��������T��N�k��^�&ݧ�
{4P����D�7m�<�⿋�N�Dd�~,����-z� ĪG�
0]�H �=���x~Ε���4�C��r��褭�װ���R'mI�����iKB�99������Ǩx[_O� ;N��R���KJ�:���v���`b���B6�b[�i l&/[�{�I��Mި�ä� V�H�"���z���(�1J��1*bc�Pq|��NF�izl��Tܦ�6���\
����9��I31$f�d���SҪ0�J&-�dZo��j]L����-\���6=�;^�0=�; ^�0>�;��^#���{.��_õ�߻��ߺ��l$:��x�3̉��2"�61'�ƞ�1�mtt!`������B�(���ɱ��[��kpth!���sB�ضx5A0��kd|A`��kp|�@`���P�d ��5���fZ,1T8�.(V*(
T*��%�^���w��*�A�/�{�O���wo�ۘ��*�yL��h�EL�c�(b��e�@�\b#�v�CuP�jcJ���(�	�	���Eަ�2�E��̿ �(�p�a`����W�' ��!P�olm���6���m��6E�[D.�M�$���koS@,����GW�n�_~P3�r@��1�8�|���7@��1@������]K%g��oް?f�
NEª���+7I����T�؏��3۱�9�p{0<$8�l��O�"XmB��"��ۄ�>�����E�۵�E���:�$^d�����,Qe���W��@������%��|Bʷ��X��+��K$��T���b:������V}��	W� C��Hqm��wP��U>H���a�KU?1~��ϵ2���쐁(��-}�9-��rU��sr�E����}��tfɖJꆊv�k�b��(�	"�U4����i���5>�_�T��4|���d���yLü�ӬM� �����úx�o��o�ۂ���ϔ��Oқ�W��ʼ��e6@:��?}����x�d��{�(���o�7'�_��<#mL�-����m��{�Ů2f�7}��Q�`΢����S"�l��.7CJ��fbOϹR�0_��Y�{���YI�e堿�lϖ)^��9[ܞES��Ψ-mͮ)��W����vŮ1�vi"j�6U����@�U�9b��ͩЍy`���Nw��S��f�Ʌ�ZqRܒ���\�&7��|�)��sK*ɠ��g�`v�\�Y63��S�'����q�	�S�J0����r	f%&�ݜ�-�a���g�I�� ��HJ�����zT�����)����'Z;��e��u@r]���0�+�� uu�
(���_�\P̿	>O���)��w�P�`J�ʏi��\J`*��4�.���F̵�v>�9��<�aDg���\��ίcؿ%�51�6�]�|#��$��5-a�֔D&����Z��뗲,���},         �  x����r�8���)Xx�2�ĝ�Sb�K|�`�>u���1#,.�y�Y�bV�y��v�ŌOUX������~�ȥ�[���6�Jʠ~��n�s:������b�Fr�=Y�X\����t�m�L�ݤ?'ǝ�d?8l�D���5AB��&��5�|�8�2v?�ّ��b�}���� x��|�sa���^��Â&�@�2dِ�:ރt�-_׽�ʃ7�h�>RY�z���O�T�:��ʇ�1p"�qI:�t���D���5DM �P1@�	�.CM��)<ʍ�O2Ρ�{�%&>�n~_�Mt	~.B<������m=�V�7��M���E�,Ws�MK<�i�u��1:�=)�qt�W�����:Ru^���8$y��׋�MÄ��wc8�_��9>���9hH�!�3�~>�>��>�v�1�Rx\����M��إ��q+w��}f���|�P��	���
�a-��|J���8����M�"�5�!J��I�ϸ�}�n�`d����8v��g���[�v�Ms��A4}W3:_��\��nLN%�,��̧���ŷ(����N�2�*����<��9G^˖���tU�K�H��}�U��	`}�O{�Lw	
�����YUK��əP�NXN��͘���)?F�&|�X1�*�$��r���t{�|�{܈Pe�:�H��O/~C`m/�@OO�Jcv��XY݈w��:]�N�N/�x�&����J�(
�Tp�n�'���T[�q��(e�J���K����!��\;{}�Ӄ;b�EN?I�u�I}����B⏿~�m(�rG�� ��4 �W�����F�傑�1^t�~"���0� 	��%�<��d%��C��B�־�9�Mx���ʊ~IW㤌��W��%Y�q��;2]k���9��0<����Xw}I��]�	�:�         +   x�3�4�4�2��\Ɯ&@�H�s�rsZp�IK�=... i�           x�%��UE1רN�z��:�n�7�x<O\?���ɮAMrj�K��:��%��TͿ�T埥2��ʈ*Cj����2��ʨ:*�ꪌ��n^o��u���A]ݼ>���Sݼ����[ݼ~���Wݼ�4�MüQ�>a>��0oL���0ol���0o\���4o6M�fi�7��y��Y�iSӼ�4͛[Ӽy4͛WӼ���[M˼UZ歮e�Z�-��|K˼���[G˼u��[Oۼݴ�ۥm������mޞ��m��|�[ۼ}���Wۼ�t�;MǼS:杮c�:杩c�Y:�6%�rt�;WǼ�tͻM׼[��ݮk���ݩk�]��ݭk�e��|W׼���{MϼWz潮g�z潩g�[z潭g�;z�=�9��}���nY��N�,uc�[ֺ��-�����n�v�r7��e��ݲ��oY�F�'M�������|�؝O���c>�lЧ��$�E�FxT�dJG����tD'�)UQ�dJVU�"�ҁY�HOvU�"��1�|O ��dJ�UD#�ҁk�H�t�[E8�)8W��dJ��;�=4tD=�)�WяdJV$y�ҁ�I�t`bEE�)˯����!I�t�dEJ�)xY�dJnV�$�ҁ�AI�tl��ߣIG4%�ҁ�UI��t`kEW�)[Q�dJ�V�%��q�2O3��dJ�V&�ҁ��I�t�qEd�)�\��dJ���� :�4�-HVW�&�ҁ��I�t`wEo�)^Q�dJ���Ό��wh�4�dʱ���I�<��d�����I�<��䆥�|;sFG<'��+���         �  x�m�]KUA��9��?p6��g�;K��JA������JA����9Z�y7l�g�5��O>���WA;Xƚ�0u�|p7��=S�D:4`DXG\c�� o����(+�p|y~��F���S�4(�ɡ�B#IO^{阪�A��a�$��Ӕ�~v����J9�(�d�J�FƩ��,��I?����2���B��|gjx���<|�y}<C��9�ޭ�k5�+PaQ�ɟL^#�Aܠl(-*2o�L����=������b�Jݓ���@�k7�������sN���wf
oN_��/7% �Vj��`�#4�^Y�AkU��̧n�L��)!=f���x��W�4��d��3��4�{�TQ�l�.���Ź�4���x��8��o�\�4���X�(M"X�ң�2���<��������p�n� �o�����6_�ʹ�u�-�<�洩zz��q��)>�.^���hE��7-0���f��u3df���U^0q�����yY�V�qȢ            x�ͽˎcɑ ���
B@݀��n�N�MuV��SR^�Z�6���bMMFT+՘���-f1-��6��~�53�C�c���`d�B������ޮ/@��T�R�	�7ƽ�~ꃅ/������T��4����S�!i�!��05�i�BhӰª7� 苻���r~�� �$�~��4:-��t���_]�k�/�UX\&���K�׋��4�m��{���ڨ�r�Ab7o �VE��#ˎԿQ~��/g,I��QS�O��p�=�m��![Z	H��(=u�*g�¢ub�j�\KX�-%��7ZM�R�DD�$��i�և�I-eґpM��(���|��]�{`P�$:35�ļ"cB����z�.�B-/gW)].���-B4
��/��	�iP"���ҡ�v�B�F�H �����#TR$N�Y�P%A<��t
-�Q���D�V1���M&�� ����Ɨ0}$��3΀��蝛�����Ğh;�q���{�6��xۜ}���H9g���GȺ�S�U�ގ�Z:�؉FAC�A_+)g� FI ���D��E-����P:�����ɘ�ڇspoz�޸��4��+���D���w�N�woT@ͣ�9��_�ǽ����e��ޘDjӁ?�(���R��p�f�9��KW��{c�E��&%��`rZyf��9<T�\r/D/�,�b�*�J���gie@�s�<�F��t�z̵��A4�h�9t���*� �������S��!l� ����4j�Ϡ�<�����L���ɓ��-��=zy�{�q���38YN�DDo�T���'���L!&��p{:y=jAo�3����9����$�{�q�^U����P���x��'�:"*�/ݙ�R��/�<6��4%&�pɢsu}�������Mz��t���>����pՈW�ЬE�K!ٗ���8��%b���s��u�q/�b�A��lB����f��HĿ��/f��r�7����]����Fa��:mr�K_�/���|3ɨ��Y�I�ek\VOm�0�?�2�7��n�Շ��&_}xX��Z�iF�$JKL��{�#-���v6�-��6�m�[̡�BL^b�M�3�簩|���6=	���� ��QM�U�����I��9�|:�vJ����JicΠ��<3�A@O�G��tD�R:U�
�u��I�h��)�ў#��D�f��x���N�'��Sea��sxb�>�+gabpȫ@�šL@2#�08@�=��iƺ�x{H$߬�G5~�=au�p�ʒ)��i_a�� �Y
�N��	VD��78"�83 1}$_I���]�K�D���ٱ� l��M���n���'��".g$�A�����(�`lǢ ��#~}��	"�4 ��ʒb0=������G�'Տ^L# Z�X�m
&��G���=	���`,����仄� Z� d)�L�za�H&'@ǈ��b��*�+�7'0
/Qh���F����w7�z��m����"�Q��]x��K�K_|��oZ�
�kh\��F�n%������av�2(K�X,���N�i���}��M�՜�Q5
�+<�1%�7����b5ۍ�VZ�q�ފhy���w������T铿��B��JP���P#�b���p�Z޷��c��EK��
ܭv�Q,��/j(���������Z9	c9a�(ɴ��v��z �=N<���!j�}���$����&H�놋����b��sWj(���Q˙%��@�N]X6�8�/�J�D�E���J����c��k&�����\�p��E�F;?���
�"`�\�i,�]C���%��5x�[�Q���y)�P�FYB�{u^�O�a\�&�|�>�"��?�Q��1��ID��G�b@���8&� �'ݽ)���/����V�C��6.�Lny����ʠɷH��7���e\�0s�\�Z�WR�C=.%�ퟗa�"KW��R &_)��`P��H��L:��������8����F�T���1�C4��h=M	���j���5Eem���$a�R=I��/������jmT���J�ٲ1߭�W��������8ڰd�$@�w�U?&��ɢW�������H$�����H�D��@��IHz�&*ҕ��c��/`\���ʦ��f�^������F���O�!xzCT��ԝ�/>������d;�]��ϯS�cB���*EMU,��z���|���Z�$��r�tYJ@�R�_-w��O]O��}���2�竟�ʸ(=�Z��p���.��[�.]��0MJy���<,���~�*�G�bI[����b����~w���{�o���5����?<�����X�_�?���013 �9���P�����7�Ї��~:�a]$��tI�(I��W��J��Z'x�~�r�+2�B��|G�\�"�=�pA7O���$)��(�-q�K!����ق��_������v;[W�3�$Qq�)iԳ���f��v���a�Y�?����{�����$.�J1z��Q���3G펅h{������H5 Ѥ�;�e��0F3�[7fX��:.�@ď2�Ŝ0xL����ϟb+�o�j@�Yg��p��/_W�H�r��U�.HpGf��;�;�����"W�ur�d��%�K`�W�ϥt0�!��D��>__ڳ��O�d����(�c�e��0l� ^.ʡ�7t�8�-c"��kt0�!���4
c0����N�:���D	��Ƣ�	���K���w��ı �ާ:�jtY](%�u�6ְ�2�u�u�5`����_4���*��k���s¿�������z�'��7kq�1ڠ$�H��C�������r�XN~��?l�n����-��]���^ë���	z�G�����H`�Ľ1�jT/z�#a�j���x��[����ϐ���Wۇ�q�M��x��X�9���χ9�T����䫇�
�ç���@h��6&��gF�멈�D��XF���t�O���v��� `���qE����!JH�I��C����w�$��XQp�g��%��Q���'nE���a�;�6���ʋ\�( %��,�S��(G��%��R*w���㮁|xV<y��)}���`��aL�zM5߭��k�~�t��	������A�Xà�>A�=�`RHl��ka�j�$t���ct��a(B�PM6�a@��<mW<�l]ܓ��/��������U��5�����_~������/~9��?�?�[�����nG�������j�ûg����r���Ԍ��"O��9I�lq`Z+�X�-U�eI�R��7#��Tɖ%C/��NO�p�J�\v������v9��a�9y_�>�=#�0:js���Ts��F�acB��)��P�0:RΠVn�a�����9 m��4�4�sVO���r�x5��%�'�l�1d��+}�%����08N JJ ���LQ ���2��,\�OJ'�3f�nzQc�Y��>��eS�����&2)�����K�!����;D������rM6�r��&����AQԲ	�#����og�D�W��Lm�L���n��ɶ��)���RݳE[�d;�
���5^«�P�"E�P�	t�_B,�,��́��.ͅk)�h{�)֥���ޫ4y���z�_?�e�l��@�C���0��[��תMm&�np�[dP_
>y�J��9�?�^��VzA%���|�:����k�_��r;",Z���/�hsb	�6}�?����f9���z�b���*���.�I��%��!ػ�f�0;�Z�
a��Q.��E��)�����������- �mqVA�op�
����*� :I1����e��8h9�m���m�m�%�%���@���@�kt�Tx�͉� Ht����s�O_3�Uf8SÙ��B���ˬEAc%�ƕ�L����YT	]��k�W6��ʗ\�O��{�    o!�$ICf'��J�ʉ�oж��h�v�� B_#ċ�gCqa�[��vKnf}=�R�5�C�f/�И>v�l� P&L�J��%]|}��JV���?n77-��TpTc��VHE��W�}����gF�
vR'Z�p�tT�\�0P(���I���B�%4ϣ�A_�CTN�����K$h�{��g��w��l�(�PW'����I�d��;��v�������m���
�����Py�@)hW�Fw�ۢ ��M�ft�ʥ��H9�F����&���2��9��:�����D�
���D.Ꮶ�x5QO'��|������y���D%.ץҮ��i����XAU��D�9��P򞪏��	DV�%Pt�h�`Jh_�5�4C��C�(��?}*��o�*��a�� �P�mw����,����"չ��5�j��Lh)�TS�6.l7�,�*%�4gs���vX
/��G�l*��>�ޡj���R@)�Os��|4�V�p��acK���%ZS�:����An���e��{�����*Q�?C�E�ss���2�.�J�(Ҏ6P2�$wRm��8p��Q�jJn�.̣�p�D/�]�[��w�d�gַK�[xZ��+���x���/K |E��w�ڼ���H��(S:3��=u�#T��pN�ܞ��ތ@W����S.���l��뱽�/�3��������W�Ç��YwR���EC����v�R˙J�R�צ�1�>F��0�����,�ަ�/�C ��д�x$����Q�LSk�3�Уe{�l�V��=�%�ڣ�.���ڡ��p�
){��%���8ޡѷ��#-���QZ��lO�#�P��"��L
�8��rx��s�!Tj�z���CM=���J�X�����c)]��
��]ޥ���2n{�yI����k��[�ITy�f�jV1� �� ��ю��C/[V`x��M�ōT�B/V`�fQ!��O�K�i�{��;?�6��/bb�r�j��B� $S�z[�T@T5�3x.�k3��%��1:*�-�����Hf���pc��b�0Vq(��G 2�L�B�5J+k�[��M������q���NZ/=�S����^<Ə}�^z(ø\���4�	ox��TѰ�1�^z(�P�(sɍ�v���5�S��l���-%���b%�s��3�;�g7{����������_�TAR�t�N����no&h�}I���M�y�Ը_����@k.Q\m���*t��Px05h��`cI�x��M��u�9p?�e!C�/'3��_�?��ss3��Znp�7l��ZX�A"3BE��A���qC��
)�?@r�}WF�F�h��`3�P	��v�h��j��t1�3�.>�O����ɇ��.����]����*���m�����҉���"�Q�F�{���m�5~d��%}k^)Uȡ.�I�gLA"ds0m��4C������(�9�3c�.��K�0+�U�����A��p�Z�ޕ#��|آl�9pQ���b�rg)J�����y;@����d�_���/6��t���8��ݐ��mPƉ���i͟Q����X_��(�&G�k�,�U%�U�C����L/-HS���R<�u�^Z�@�(�ʲ`���cz����j��c͠_҅�HO�ŷ���#@'��}�cZ���zC-���+�*	�bP/f:��hM�m���cb���Ԛh��Mh�ЩMQ��;0F>#���
j�@u�T���<LL��<����Q�0����H�P�"�k��=)�lO�����.V ; �Jg�WS���2d�B%�'2֯mz0����"U�(�0�I(��QHg����4�ߔ�	�Xg����s��&]�4`r�j���*��eꀼ�L�m����B�>�����j�S����
�N�Ss�g<��$�*�N�[�@s!c*��/7uD�$��|�Yڽ�-Օ�{=.��z�]�绫�CM�QU>�>�#�Y[��4)z��c��|�nl ��5Ln�Cp�G�ﾞ�u��1=ub9iM�4Ruz���-a��T�%�,:�L�G��
m�4����j���kc����n��0���0�{�`j��q���x�%,n��70�0=I�ϓz�h&`,��M�.#��W7>�'������f;���w(F��V���*��@��o��N&��d�G�C(��r5@ٰcM��9�m|���� �l{k��֪ZW��(<��c���h�t��'t܁f\ q%�LX4J�p�.��C��$(ci��!+�F���خ�N�P��F��c�A���Q+*��r�C��Ħ&^�ԥ:�S�؇�>�@,��bGד$<��u)�N��G�Z-�4�[q���S1y��9�Ǻ[�G�8-�P�oB�ۖ�t'!��r	9n�麯�HJ�����n#���� d裰�?M���yqV�X�� ��Qܹ>p[,���Goƾ���X��x��jn��G��\�0<j��F��K&r?����]��2˖㕀�<WEڻ���|�� �% _�����*\����Ƀ��q9�L�zv	3}�����ťɸ���P��C]��'uS�%z3@O�Z�cY-�-����j�Z��B�_�����RI��z+���M̬���v����o��K.6?��̌�	l9���c]w��D3p:��ip�Ǝ���(e�:sT��(`,�ɵ~l��i �e�df)G틠�"��F�@���^��W=jc0���4��ܜ���nFe#�1���L�����j�V�� !��G�����*����F�_��K$�"��z�J����{5� P����s���a���'[�3�'6�Ո�D��p�#��k����$�e'�%(#��m5��t�u�N�BGqLJzd�(���X4&QE��xM6q��0O{оI� � ��ס:�v�(���j�X=�fbO�b�3�� �R��ڂ���9>�'R��L�$�eC�;h�)��$���^��%�#j�)�>"*X �M�\7��E�  <m$�>@�mt�I����Qa`�0N�`,�Q�JTh���� �u��MS�ф�s�<���]@Oe,]kR�0<�)E_�2��x����D���WuA8	AOl�% 4�̌��V)	�yZ�u^��P������	���Y
0��M-�����NOB�&>�e:�|m�� �q	#��F�a��dwժ��D�9�ou{Ң���)Ӊ���cU�̪ �˩�9���|@��&�o���jM���͏K�fww����Ԫ�֨T�����9��H3Zk(V��/u����L��|�q��l������lפ�jh��eŘ�M�~��h�H/2O=n�ɧ��Tj^�l���O6ר��O�*4�B1l�&�A��jx��ڱ���~�X�����.R�dF���0�.�����~oO�;!���a=���M��l2�.��˸�
�9#3(E')}�b�Ԍ 7:�2vž���8�Ӣo%}�
 ,�$�v��� w�E8�5̟�yXr�gD�ˡV�C�l�����Z�����dH����aSK��Jq�x�(t6/u�|����b�Ҟ4`���PC� |�ݫ�j �ͣ8�"^֫��rzBl�Ύ-�W�x��B�u��<�՜'΁z�{�v��FW��T�7�^N���/a�L=G?�I�R���r�2�ΰ~�*������Q:���!�\5�?u9�9�H.�!������S���U�*�3�LM�@����1xH.ɬ�v\$D��t�ت�3���|<[:y�bV���Z{�����D;�ݬK:��&��u�I�Ք(�aѢ��\�����:�����}�-k����#4��ix�'~�25)�Vp���ηjF!�{�G&�pt��dh��a��<�7����T�#�n�'ϕޚ�Q� �iE����	~sF���H��9]��Bq�8�2��1\C��/�o��ߜ�3��7!;
����~svi5R�'^9m��~����HeE��4UZ���[�dmߠT�(\G&O*7*�.'�]�dM��,ǘ4�X������Y�eM����LE��3$�.'    g�9���[�S�J�Ai���k�\Y[i4��u�mB���hv[�O-��VJ��#kcb^Z��5a����W�N�]�HI@�U���}�Բ#�t&2���9h�M�ٲR;��]��^��`(�Q��Q�j�r�|��"1���&����?Otϡ֩��
U��I�6'/a(Lzj�b�Ҋ=�Eu���
�/��`x��+�ؠ��N��\{�^����ѻ�ލ�7�m7���'Fc�&��~v����`c�.�}Q�Veh��H�:��4!)�4\���Ӂ����{;�}=Ȟ2%��DRe(�Q#����Ṕ���J����������#t��;��5�+I2 d&�xx|��&Q#�R��Dt��Z�kH�M�&U[S���b�y���I��3hJu���egcM�Ѿ4=���7H��ɣ�9n�?� 
Q��� *�I��4{h����s	Jm|�h�BdX�}��|����I[ݭ�h4�����]��Y�������_��T.n!GC�%����CKyF���e?޺{8�|o1�J�G9 {�+�Фy���ʣT~�n��eM�w-1��LJM	&W �k����V���7�P��;�~o�?ѫ��N���$���7t��J+�㥖~Nӛu�$�̀`�G���+������G6�o�i�֣Q3_)�H�S�ۥ�Y���U�]�N��	����J���9�ӆ�[�q�=Z;;25Q�,��@�n��_m�2���ڻ	��vd!�"�^��;K�
����sJxU�#�d�	�&�����&�ɊT�F��I�ׁl�ʆ�;��)�R�~�ƃ/����
�u��n�{��P�<%���>[;J^G)=ÑR/���
�D}�(�B0��8JAjY���4�#=�G���&ե���	��I�O���7II�G��Jm�t���)6)I�F��ѝF>{��@<&%�	H�E�Α^�M���ǥ�8�SgCUJ9��G^i��"]�~ozw�A���h����J�AQ���i�����H=<����x�����@*0�cw=�.�+p�����3�QjD��y�
:?\�~�~���g��԰T�m��`�So�$���gŸT�T��ȶ-yFt�^n\��I[jo*��;?j�k�݉��c��?��J���F,�MQ�t�ij1%�e�@�<�̟��:S�LA�)y9 S�S�ҕ�g�����3e�� 5���P,�ΘF��l����ۥ-��±��+@7rQ���C�'�2;�괬�(�	z�'P�[��E��;rp��fv��t[_���w�EY%�z$�Q�I���OM圥tiOψ�=-��	&�����ì.S�t8����?��+ѽ��0�����#5CO����-���f����7Y�J���{�}Y柑�IR:�@� �g���`�Tp��1���|�L���Y�����)����$�R��j�ު����$�o?B�M|�}�?���|Y�ӹ��C�T6iJ5�4e#�ر����v�s<u�i��\�0�;�J�.��4��i�é�!^F٩J�U�nz~�.�cm�D�K�V���F*�����
i	�*���M��r�t8^©�N�y�@�ƹ�_<��K�}5[�-��֥����F��)[/���2!�?�ᔓ4#Ϩ���f�p�d�S�&�4uh�LCx\�.�]���QwW���p�'H~9�λP�V8��xM�b���w��x,�q&�Zl%��a�QӌQV-�X���K��1��N㽓KY���GK~�;�P���ȯC��2��D�/D5?�&nX�N��ɽҖ^<0�x|O.�/S�'���*%m{�<�:W7��C������vGV�r��qޓ�m�ݍ���Ҩ}�T�k�©���I>w��:p���w�eX�?r����I%k,��(�Yu�3����j��xx��ٗ���wZ�Wzˉ��ӓ�L������Q��)�&���/��;-U�����!��e�_V����������5�&�l��F�?�>�����a���6>b�U���OV�,TJ,Gk�J>����W*�m)E�*sA�:Po��W�+P�����I�� �N�E�RB\�d��屩w{��lx�f��"M*
J�b��PE��R�����Zο�캙m��e5Ȯd���Qi�DR���0#���U��tw�;<y~rG��%��ة4m2�����s�����{Cl���Дֳ����!��F/��6-zf��qޡ��p?����n�pY��(�Kđ�4��f�(���9�$?<I�k�s����?���%o�	^�ȕn�cW�O{��ׇ���p'���o���4Y҂%b���9�����w��g7]b`��v�d���#�F��[Sll-�x_�w�M��$oCu��`l���?��K��R4@�?~�)����p���R$��|;CӌƘ�߮n�UD��g(�:<�I�37�[V{�,���@�o�0�c�m�2���{4ǻ*��2�%u���_:8���}�l�2�y��������Jn"?�����R߈(��%��A*a�t<�x��j\��@��ΦZ�r�e>����^�N;��`��Lшu�`�jr�Ҵ��*H��!M4�b��Mkr�
W�U��5W&!W���`��A�����i�{�����D�4���G�z�E�\�R5��R���r���;o[q�C�R�#��<�_ؒ�x!2]A�;�-!�/bKj{�ٰ�ݸ"F�T�����+���k梶�<^��cl���.�H�@�	+������j�z��ay?��Q��^�\��[|H��|���\f�i�jK�7,�p#55𳶎��0����Oe������a�����q���{�O%U3X:�!U���%3�ٕJ1[��}��_Z�Ž�ޜ�+�95�Z�\�t-%]2��	��g��
�pvsK�h~m�4+qvˑ��d�r��ze�w����_���*�9���e�XA�����[³��Һ�$��Q5�w�p���}�J��X�]��CK������7<��%�qa�Ҳ<},Y��5��v�V���z���]Wx��`�n�<$�<�k+OR׽��UZ��&4A�uDo~�m�4{����3����b"��{+lH�n)y?Ձ޿)���_dE�x���":��-[b����z~�D`0w��_�?l��S����6��CZ�:���͕� h����4o�0�G<y� N������Mп�����y�Q��-?!����BNF-��vw��"�u�5��n��P�[�a�9���t���r�ʣ-}r���;2%#7�=��N�������P�[~�JȾ���~��nȈ���]�L|���9���3i��6G��
Y'�R:	U�ݏ��;�]�9YS�uy��xN�u��}B<��v�ҧ����]?F�O��2#�IO�1�$rN(e�J3�=oj��ٓ)i9�`i]xY����ӑ������������=ݐO*1�CW\N����Z�8����MM�&짨��i<ID�L�J���^R��kԢ��ϋ軚��� �<����H
Ӌ�뫐����F���$O2E#�LAm�H�oXI���ɜ��r��]�R�$%��{�ڌ��ʨԃ��tS��1jOK�2�Q�O��������Ɲ�8|eN�ֵ�ܖQ>�h��ǎ�_�?���{����W|�]����R�z\�էM?}��q; �g���ď���٬�=fU6� ���t��h˳ڌ����J�E�4O�Ɣ��M#(�<?�J��xja���؆+�>�?�R���G�ijI^�~���^���$���6Z�A�uAܨ��w�g�>��8M�^�(��d/J�|�R�7���Uc�\L�,O=3����]9r)��IJr�hxڕ��;r#6.uͥK��@	��c��gc���tI�� iK�F�~��à�t��֢+���eL�����Ψ��fs?[/8y��\�����l���9���@s���!ʹ=�.}!#N2D#�M�|�S��2�kFhܛv>��;�&{!#R���sK�v��C/$/�4���	E#�i��
'�Sgx:nآ������_ڣ�\�jx����E~��2Y��:DQK�E7ߓn�a���vsu���!��Ҿ+��6����ӟ�V�l��+��!��    ����w�^�#�|�*G���w����?�YЛ��{����=G�~�@g��)e&������O8��5_P{�s�+���'�oݕQm�{߫+�+�ϭ�8bD}Y�Ĉa3�>�a���3�?�>�w�*Eœ%�����'�d�Cr�z��T�kf�.�ϊʱ��v����~92����t~����T^9;�o򽮶ã���u��3�'W�H�%Ln��n��y�E=oI��l�K��uin|�� S_���F��.:=�����#�ة��j��{̓�mꍢ�x�yejl#p����^|Eo�+=˻�ڝ7�{}�{��V�O:���*qp����Vl���ʽf���} ���w%��U���$�g �w����?����R�d��,���_�7o��E}��%{ϻ	�)���}���J��M��n:�?v���컚}��R
��1/�'g�K��̞ڨ�l���b��_�\�e@�����b���Ce?�J����h�`�*��
 ���G������v���8�����GB/X�g\#T7`�L�2�-~,h����%V�,����7Ju8i��%�⚪{��e�A�gvuh��?Cc��?ш�H��9ZB�u�+��]ː{����a�a���n�F�
��������f��Y�F�C�"gFf��c31�A�IM޼ԙH}�Ng���5zth���?��G������(?(4�-�;z(�p6��9�7�z��M��J�mvj(H�ZϤ���jR� �P*�K�ni�ϬYu`�]�js�y�%i���R��Vls�V�&���#�|�=P��<M��ҁ�z�u+��g�:U��ˎ��=<�~]�
;ǫ3�̎���L���۝�٘l�������s
Pk].�з�k�!U0�[b�+�Աz����K�M���� �3�GnrQi�D�$ j��q​�-�/��҉���@�nZ���r#U2p����GHuT#ܴZP_ʍԼ`��ES�5Q�Y����>R�R��Z���Da�v����r-����o���%Ky��z�-�����ؕ/=��&��rFZ��R?[ ���������}���A���g�,+� �F��@��R��x6��,y� G �6&?������>v
N˒Wx�"�N*Z�&8�Z�?���[-�a�$+����u������V^l�kuS�����ζ�#o6d��&g;�=��&L��sS�l�������ұ���,'��&a'�����ʫ�z���X�r��N���iz+o)�;��}-)�dƥ��"��ʀ&Eo���U�k�N^o�@E�����|*;~�>�s��n�{�'7uj9=����;y�X�X�3l��L��[<����������ޫ�E����<Ք��'�z,"�c��mOZ�.�
y�u;����-�@�ΐ�k4���]�u�|_����n��?�SǨ�n�� ��z��8h4�ʻI�@�*�(敿_��7�A�R8TKf�~��#U��dB[w��;\O6�?lwGD�\���3Fi:[��R(ҝgU����U���M�耕�Fu�����|�/U�S��uЩ��4N�9t�IF*(hV�2A��c��Ȕ7�O�#��Q�и���C:��`����n��}��T$T��t����5�0�>�)9�8�e�$6T��5h�_4��[P�(p(9���	6�y�!��f%e�t�+����YI/b�KV�B�<Y�=&S}^�Kx	�Á-�S�����I^[0:z-rQ�K�|k�z��p�S�tW�����m��e�;L�&a_�د�\^�K�0˅�w�ݤ������_�7��J5����q9�*>�����J0�a���1�r����r��d8��=�zi�F:=���A{�]ɶ�J���MԠ9�kP�N:�1��IQ蚚.n�ӽ�A�]���M�q�/�/5��<����=@�q�~"��E��ʞ�BP�+�-��uzvk_B\�w�Oc&�T7j֍W���%ԥB''�)xSf��B��x<�R��:�)zE�g��M��Ђ��4dCQ�����9��Ջ�����<G+���[УFj�^3���˸�Th��M�RPٲ7��]�M�R�Q����Uy&�_��y��:����RR���i�x����1ﵼ�[&[�IY�@�h��*l<6/s*��8T�4��ޚ��	U';xQ*8�����~�8+��^��h��4��Yt84|��A>���^����e-�~�S��(����g2�|�;���ʡI�/^U���� g�\O"I����C�5�^@�R1�B�`b��	0���z��*��iƨZ��	�� ĳ�J�B�;U� 3��i�c�[���#Ns^]����3f�Z�{&IeC�cکS|�;j������K5D3$�nM�?j�r��ļ���O4�]�����=j��|x}������S&��o�<b���j��Ȕ�T6i�Ff��%�!��9�g�ڄ�>�9����E)OZ7mP �Z�{Z_�S�diln97�L�	��fs{!gjr�5x����������ʮ�でI9k��1��g%A�w�BJy̜�A[���
���@�Lf�W����ǉH���;�I��G��
�^G��Ac9i-�?y�^���vC��f+Ą����)��s�;�PX�g���<O�G6�duQ'V_|����=Aby�,eQ��Z����p�O������dyp��s_����j��yA�4�,x��Tkk�_m�&=y\h����e���}By��d�I�����:����Y�棜,N� �S�ɃA3�4U��g����X�ŧғg�R��9W��8��'��O�%{���KM�2��
�U8Nb��Y2p��-��RD~��e-ߕ[��Eu�{������!D�M��ӄ\��ךM5���{\F�
��K�qu;�TmsѲ4��8r6��k�̏��k�b�j���7��}d�P�E���?�����#�]]|}��Z}<Ƿ?u����Q( ����/�E�y��f��@�2��4y��?��y�*�+��XO�U��A��n6��.O1`>�1�ϦU��P]4��t�Qnp�i=��'�z��$����vF�>c�J���GkyL��q���{t�Ōm���,��`� ��j=u42�?�E��]O�\���r���.og(�ɤGamJ��_��,��^e�z��4��w���ն�E�t^��H��ݖ�Abt��9��
������.���.�8�x��+q�V�-G!৞�T,.q�)�j�v�KO�*_ƋT<��u����b��	&��x�ڇf�Ћ%��*��	���x�$O�Vt��|n�'��/�#�|8�[��Bᣡ�N�q�\�GI��PN��kz�|Q}�z���c�چ</|��:M8�.�J<��x�5ly�|�;M��k��+9o}���<|�2Ԕ�Y��.�p�5��E,F1gcqD7�F
��K0�����uz1][ӥ'��)�N!���t�����.�Ry{���+�f)o���<��~w���*���,y�}Gy[�(n�г��r\��������nfW�m�#?����(�+��~�����'XF���RY�dY���KLcŽ��2=mn&+<��f�sp���o����_Q��@Ѷ�x�^���S�槿ގ����R�\~�\�����k�o&��<{����v�J����(��\v�<����wG�*�צT�H��t�=���<�ѯn����d�9%L:�J�|���⁛ֶ����Y��D���4
o���	��\�I�ˮ�m�ڑo�7o��/_����%_�����e�I�RE���JպwʇG�֫�7e��ѭ��ͣ��ua�&R/�L�i#�����N��a�Î��gs<ȳ��&�6����ki�"�2����P���b�����]��$�Rw������r�/5^*4zp-o�g^M|HM��9"4>u���!(q���J�q{6�e��{zγy��Ԁ�flO�-E�>���w��O��-E���ڒu���/&� �G�2'�6��kt[\H�\� �J0�@�	s��b��O�B��F�U�͍��������:�gĉ��m.P\���Uˇ���TX�����Ra�́ �  "/���T��bJ���p,P��R+QWm�.�A�^'
R�Pk���h�.�+R��r?2�����7#����j�o����Z��0�&Y�l�,)=�b�V��$�K��e�7���IV���P	�{�)=���/D�E�^��h��I�v_���15�g@݁��n�٭*2���VdO��-�,���ޅ[�b��Df���K��N�0�'���$�f@/ ��@&���(��5h3 Z�Y|���;�܂5��A�H�|
w��|y�Z�� J�J�����2���z-���͇O�)v��-�Foi��7�x+���2-Ģ�;���.�fΡ����r��v9�]*4�����n�Eb���S)Vؓ���|ɱ�:�+n����3W�'�U�Iu�VF6�L�:��Z��-%m��m�	O�U�L녗k�c@2yH�nv�(�݇\lNV/y��m�z���3?�G��������М�bu�c�e�$H���C*s�L���ck��l�d��Q�*���zյM%wn�L�Ϝ�_���D�qB�ϟ�ߓ�N6��`��W��La0�� �<�c�E+Ie�]pcMP��㑠�a0Igy���B�Jy�2"d��v�x����:�R)ss�����(��G�??�R���Q�Z]���u��WgZ�	\J0\�e�jǷ�WJnq�w9�f�3��$�6��
�p�,�|g�_E��[�*M�ٲh�q�K�3L$w?U��j�ؽ�h=�PFju�J��/p�$w��!�e��X����L��jT�<ϱ,��~Xn��/G�x��$��E���.;����,Џ�=�&�c,�.���w�7ʹ�+����R_�Ϲ=�h�';*Q��,�]o�h}�
Tq\��~����R�����8��<̺�YJ�����m�q[�8��d�$jdb�qƛ�z�*��K9i� N}�XaTRZ�O�x<������U^��@����GO�G�QK�&O��.�Mn���5=ɧS���:*T2>��<���+�����T�T���*���s��ѾI��
�S�VZ��s%\j��}����#�*���C9m{;�Э�)i�B�R��l|��*B�.�V4�T|�i:9�YWz0�)�xae+����	�2���+�����v� �ctC):�JA%znʧXFM�>�k����qc��|�$\�%~�L��2+E����h'�IAj"ǎ���<�n��Q8���6iH��T�NY�9C{�QEf�	�J�q]�:w����蝇&	�Q�v
�ꐛ�������]*��=��ۣékg�,�L�U�2�1їC��Z�ؚ�{&���q<e(��5�?��^����R�с�Zs��)9>������M~1������~�7��� +�qZ�Tm�g�kp�����x�n����g�v��!���h�1p��s��R�!M�ڤLل�ϸ=�ۛ�ի�V�I�҂�6H��>��0��5��l�+i�Q0�X跆��s�7��t��׾�/���w�Vg[��t����B2���P����dO�]Ԕc���~$����pX��b�]��7W��
@�gC�yj5\����i�ݬHW���;"�%�/����M�4;�t�0�	��pLl���8O޷���/ng�����/A�<���p��l����M6JX�p���*�����-�I@6+t�y�H��G�4[7@����;p(�eĺ���MZ/,�k�34���ؘ찢��B�t9�9{igs}yu�ӥ	fv��L���5~��bʆ�bq^�t9�ayi�K�׋K����(��Ep����D���:_�nyff>ǟ ui3u���_^X=��]��Qj�V"w�Bs�4}���Jsm.��/�^&��1�K���<�����A\j���O�qm}�y�E{�I_��ŽqZ]F��y�r&.����"�5���ҨA����ձWy` G�tУ0Q� 7�ނ�����7�}�_M���IBssa0��1���b��T��Q���%L��5�T�>n�����@S_;W�
�4`�4 :�n���p]������qF3Lҥ�X�1�%�!qι��C0���4�Ł]O0$٨AQ�'=��T�P/�N0#��J��������㵄���f�,k|!: `h�T�*�%c��McPv�Y5�웗r��T��V���b��K疨��P'=[\�kt}�l���h,<���??��r2���������	�v�J���W�	>
��)����1{ݠ�jhK�|)�CW��P4)����sB���P�ZB[�QW���kڝ���bXYz=+�4���5g�^���BR.�����r8�&�P�xQ�{9C;	ͣ��r�����~�}75+N��i�}-W�\ʆ?�/��\���ۡq ޒ�N+�G����:�쮑I�a���mЌ+ո����]Oĵ����⨬R`�+i�	�� ��I@+	M�<����x?N�zX�����f9F�@�h��i��B'DF"���c�����j=����js����9�tFtS'4U�;����n��$OMZ�Pa�K�DZ�P7*�� �t��+��7;�7�(`��7�X�Cg-�4��S�==7�GoѤjބW�S	I`,� W���@�� O��:�q3�qc��{�ؾ�����\v��
��¸>L~�H�L%[nxs���㇏�s����8@ r4co �è����q�:ƍ7�R��PW
PQ6~Z5�}I���pm�%)UÐ�H�#�IJ`�G��iT�Fl�` b����
ѥ(�c0�����_�ȉH� ��d�v�MzL�>	�8u�Є�
��N�}6�㛊orK}Ɍ/'�\fN/���ρ�8*	5�l�nbD�	�.�s�{h~��ގcj���`�\��M)p4p��m��3N ��4(0%v�i�F�-�L��*�rK�ي/�}�p�ӓ�A������8]��8��W^$���8���KQY�.ǒ��M�^�rJ=�RBL�p�&� qZ:�N��9�tgj�'e���p�\lࣙ�Ě$V�P~���(R�B
J"u��Jv]?J�y�@K���4�S��a���ï�c���uRy��8֦LA�Xy
*!�X��nJD��Pю��\���X�\A�Xi�Џp#��d�����d4e��qY��,-��\��)�(�#4��Ȍ\d����#��)��H����J�2<��4BS�Pg�
�(�u�W�����I��u
�J�	SǱ6���C�:z�&���@c2A�P��4P�f^��K����}�yb>j�H��e��q��3l�,ۻ!�����YՇ�Ju>��4xLV�TZaލ�z$p�F�u$���i�Xz8j�J��)����`4��(��!e����G�~��jܵ��Y����jj�>4����ĩ2��P�K�'��
�g��$�l~z�b:��q��t*<�T�;��jJ�N=�8#`,���G7�='g%�������t��pt���z��4�F��xN!*4��w����jw���nn(���z��r7�Q%�rS%���%u�b�SǾ��jPK��m�i c�*�#�!������+^�b�Z��nj����v
75*(3f��S�M4�LW�q��o����yB��8\~0[��NAb%��-u:'n�ĖX��qa�s�%v˝�J����$�lᏙ�W8(��Q`�̀�{�f&ܿF!�ɪ�	J� ?���x�ci�hc��4�`T>`��n,h?J�'[�Xt=S�p�NO������I�F9�����'���jCÃO�T�?@d���i�z4�z�Y��RϘJ�0�����e�J���w�PL�g'ԇ|��Y����ܭ���i`�j��g�X3Mکl�������Ç�v�fp-�#m�F��8�hB�iq�0Й<�9�M/��
���/��Y�~��ѿ?ȓVE�/��`˛����yҚ��P�6ڍ�St}��X�$�|Yc�M���ټ�H?��"�x������IӒȜ{��A^�4?���cǎC�=0mS�G*�� �dF����/���S�         r  x�}UMo�8=�?fQ��G��(0���� #��[�Jr0�_���X;�SQ"�ߣ��t1�3��>�*p�%7)��P�N�����'M!��,|Z��hO�k����3�$��=�i�����&�w%0,/�_p,� >����ʗ���o���1*.K�
䴁�\C֙��B!��zq�D?�{?P�k���q(��@Z���=�Zf$�P6�!.'�l�ʂ<��֣[W�R���!��| e����NxAi�Ǽg%QB�`�T	7E�"�*�I�g�P�}�*A�ej
��6�U%Ђ���	qP���0*qmU�M���*y7��M���L��\��}���M�:��Y�H4JGE ԉ�Ψ��8׎��0�DE���x�3f�#��m|7L$����i��:���r��H��p0�>V����Le5>��tQ�h���X�k�C�DIe&>IDLg�n�vD� `&����+84O���e�8����D.c��h�p|2������o�+bF�4	��9ι]M�1$��K��,=�W7ʌ��N6h�N
/IeMf�eQ�XhԿ<~�e�[Zc� C��K��$
x�b����g�����,�<Rnu�@@[m�{B��?��*b7-��E��h3��B�����}ڶOX��۫��Ej혝i�!�"���ֱA��|�����N����f�p�t�e�C����t$�.U��͌)���6ot�V=B׸�c��|/�����ē�mN�����٭����u���4_x1IcT��}`��п|񂉚b3<��|_G}��e�2.8#��h�]}���+����C�H���q��gI�3E���M�����'�-*Ǘ�2[��� �v�         3  x����n#���=O���ă�,�*�6@�!kgؒ#Ƀ�<}�d�Uݤ�;0<�%~"��:����v8�n�^������v��С���K��v�vD��u���8^/��q~a̯�����G%�XP�0�ݾ��>!C�+xY���|;\�����x�ϧ����s|>���ZT�Q�Q��hF�]���e:>JN�l�/����l��z���)+�!�<]o����Q���3�B(�X��Wo���xY�Q�4f������H#��1=����r����p��/���z��>8���"��-��5�'6fR_�},��X�/�XQ���nF}���^�F�q*�E� �۫��0�^�?9����;)n~����밿��>]{}�,� ���U�>�O�����_�YZ*�˯���������\	w�!Y��������۸�~>�?�H`5[�A|�O������sD���N����~�C�6Q��x]���с8D�;�4�S�C��ը����@Q�8����LD?���I�+�Z�,՛BA��]L�y��x5���gϑ��P����0��Ͻ�� z���?�������o�������C"1��*�U�=�r�l���Q�x?5�Og��O���*ה�c�o����q;����8���NԪ�u���A�~n�i@�䤀RD-� �	�7�T��[�߂��Ѡ�&'聤�vGH;B����7I���f25��z��+�v�kzS9U�����~D����8�;�;X�6��Tw <fWǝ%b��,[��n�윜VT�Jپ�� �S4�S.E�������Z]R��>4��u�2�ل~S38� 5��h����4i�RH[@ʞD��� �5 � a'��Q�q2Z l��
�ݘ�̠��ĨV [@�R�1UX1� 9,��%,�'Q���Tw`�V��0G �P���E�!TX1�4 �@�8���[
��|��`ءIC����!� >�� |V�����j+DX	���>���%N�d_�B��h��v՚uKn+Dt ��b&?PX, V�ﭖ�T-�O�Kr���4���#����X{�Xj�Xa�2yM�ל@�7:^��5���eR߼��dH� 5�U/���ѭϭ�w;�A�>P��En H��cP�����Ӫ��- �d�{.�@�z��l����%������)�D���DdU�wk��"�K[@�1N�e(�(�\���N�S���`ms�u@�T?�/���ϟ/G$�˗�I�ǟ��"8pr�N	~�ٸ=/�ĳ p�$�I.՞ǯ$�V��\�"V<���T��[��k �V ,�A���V M<\�S�x8�'go������ ��ch�r��$�����>����2o�Gl������.'�bk�_ 6������;� �u�6��߬GXo !o@C��Jl�� �m ڍk!}��!XE�J���t���!��>W2��&./E��*���;3��rC���*XE�k~����`�� j16��2�i]�G��dl�# �`�ze�"�Z@�rV׶���/ +D�@���:���0��y.1�y%DM3*7�Ƙ�2'�|QFȥ*E�D�@`�,�!2�v Z!����x���[#A5@�=���vD�~{d��y>�Ef��\��hEȱ��%��k�PJa>�J�i�f�X2�n �]m�hE(�� y,�D�`E(���I��Z[����6;�%�xHI�ZYo5(�Y�΅����rN��1ԫ�h5(��b��<�d��wh���&�A�- �K�sOJ��u��Cf�"�舧Y�(#b�������fCY�8�s06���e��d�I��
QVBTY礛j�Tnm�>C�����9;Y�J��g#��:f��V�~%C�M5��z�������|�z�������i��v)A��"�d��}�G��UJ���� 7JԷCR@��LV��@��� ���PZGiK�A3�f�.z7���R���C��V�>� )�#} �i��m��z�qKH];�A�|�"�U�ϓ��]�k����;!�A�;����G��_� +�,OK�f��=XA�� uxmF�ɟP	V�a��<4���Z�G�3�J2pC�^l��_B�&XIi	};hPI���XI��������#�%�� }���9��J2�- Q/�r��g��dXI!��q&�B�1[V��5�����8��J2�$Y5w̐'W����`%qC@��3���ˮ�+�H-�w
%����%�$�J��q׳����94�J2ʖ���PkS=[�$�J�咛�K�z
����}�ש�6�N���?���/r�Z®�:">MO}vP6T�Uk����a����6��I��$ &��tү��V��5�^*���.��P��lA��4��6�{Y,�A�8���6QK�9��4���V��[B��)��|�q��m���m	A	�de���E�^�\�fݓUmZ%RԢ�9�#�L��L�%�� �Wg�����G��׆��"�eZ���� %����
o	�! |`ȠmU�}��[Q77o!Z�]��1�ԗ�6�k�7�:?W@� n����p��}����;aӸW����}�� ] �Z��������w	"��e�';`�n-��%������R��nx&XA��[3�\oTn��_1�4��D�Ҧ��/�|w;{r��#h�#���$���_�X-��k��<��o ���i6���������w��u+�b���f�����v V��mv����)��0q�=��/_���q.�            x��}�n�ƒ���)�&r��]�a�%�e�U�g��$�3���W�����N@��(���qb:A/���<^"����Ua׬&~����_�s������??o/�G�|F��E��y�l�o���?�B�C�^?�޾��W�����~ � �G�	�'� �@���|X��	lg��c�ꮘ�IH3�.��CM^>?����矏Ba��K{�}�������w�G���Q_?�_�/�˧��beS��{��3|���*��/���e�E��/�,~n���[�^��_�P���ן�&k��ڗ%s���_�׿������;}���6����M6k����?����I������&G��3�˧���W���w������4_�U������~>��~�c������ϯ����_�w��@O�&�ID����K����mL����N�ۚe�{mĿ�����9Gϟ�4�g�����>��^�����?��`֯�� /�^���~/�v��O?������zX�9��_t������ak/��پ~9��ˁ�?����o�A���#��e	�������<@��[f;_�T����E�d��]���|��	�A>�K'U�t%ڙ]֜��N�ʹo�����>~������}�/��}i��e���O���'���'�ۗ�w�G��������{��}�9��$F���F�à�l��j�@M��$Y�楟���ۛ��D��	 Xqb�z1�S��T߅��+2�M����ܰ8���"qx��o9ŬI%c�N�f4�)l���W�������!��	�;���kg]�
�y_;k��zLq�i������w�	�'w�l1��)ڮ˷~�.ރ���l�h�s{�7����*���k�@�R�u>Λ�U�34����5b�c^�^(��\\܆MF�U%�4�jԦ�n���j�]���{q`���뭕�3>���Dc�q̫�M?�u��x�{�]�M�"o�]�,m�̡m@ރ�XM�r��2�w�8%��J�]�b�pF֏N�u�BmZ�FdnQ�!�{ǎ=���;��]v�,�� ��J����y�9s�4ݑH�"b�g�+ O�AR0;�sT΄�4[Z�k���(�rZ�ik�1b��9sJB��Ď���B�j6�n`��K��Z}��=V�'
��L ]v74�,�q�����[�r���)b�-V�����3��bG�,�$�ۖn��m��9Ȗ��t��w��'�#"�r~a�ڵ-��Po~�k�3��y;"7���}���g)I0��,��	�d+��J6�اԶ�]��f
�?�,d���9��I�a<"����O~,f���n~��=b�j�29�W�ZcF��&���+�F��f��6�w�CO�=A� ���l�
� :j÷�7hq8]�:��x�ؽ�
v��D,���F�@�:�ճ�m\3�xa2�V�R�4b��z���wv�j5�*����{I�>��ҕU�
w$�.���r9�	�@�?�m%�<mR��=�gk��J6�@okMH��N� ��O&I
�0��+8���h��6T����p�D0��K8ڢX>!�)$�Z{CY 7�F��j;���Hkײ�u���]���!>C<��D���WSVo\�"�d����e �6Ĳ��Z���j	9���k2�硠]W9Z��EPV��ֱt���ً�g[2H�E�x�K]�Fb>3��~��sk��j�G�ޱ�Z%&�q��Y��Z���
o�R���f3b��>}
��fʨ�K- ^4��P���MXe!K3D�}ptbGp����(�ۮ�,�1U�j��=+lkkZ�ǲ��g��-�*$��$τ�5�-otՍk)���{�l���U��g�ӑB� �J��£G���S����s�����PE��
t�'��ݍEO6[���}�8�J�)���-<�>�;����`t�Y�o�#1N��~	2���҈�"���F��|���=aq�
,�5
�-;�W�N
�FhƉK�� &�vGϜ��rB�1ߡ9�p�|���W�06�B�Cl�<8�x���@�t�o2%x?N���8��a��x��%��vw��E'E�;dkYs=YG�f[��-W,��=mC��#!{�0ATһ���%�ުn@)�7�v6]޵}��b"v��O�?a�zGY��k��8���`�~ͼ�*C]�b��������"D	��Y23?9�.U�8����16顢$���mu䌲<!�0���c�I��8T��9��LwY�6+`�1=��3��'bt￙
ұ͔S.M�<�n%l'�C�S��;r>vD&�K$����UqRe�6!�����lfl]��>��gO��Bp��t������,����=�%&'#tVЮ>$�{5�U�v�lu>����⃝�=�p"�ߺ�v�x����T���x����*,ҩʊ��f�5_�������"�Sr=�.[��ҙ�/zX�	 �ZVt["v쎜6 ���tAlU�ڰ��O-��ICWW�x8������ �/v�x�Yr�#I��B���`I ��95i������f`�{��U7��{�(��娀V���}�X��a�.h�����n��5��N�e��{��P�ͺhH�m�S�������؈ݻݡ' κ!G���e�ʇ��Քe�Z���:���S�[��;����5Ӓ6U�3>�)���{լcIS��:Ɣ�`�Y$���(���{�pےeE����:5ig��&�����s�+%x�.�ʕ����E�yNh+�u*�ݿaGIB	��-��c�99I6崯��M`:
��S"b�g�)IBi�$�Gu�üY�-!�u0M��|�� :�v����av��\	@�+����󺨼�6c�����̚&��o��5��O��"y+g���i*SnL7�X-��CoFMq����=�(�3t7J�4S��v=1�?�L��}]���{��=Qv�,��ԸfX���s#$Yr1qSmYq�
L�;gM�m"	�B�0�Ձ����ɮ�X�u�:7U��S0�c#f�W� �F�RN*��V)�|�2`����,�H"��\&_�1G�lp.��l���wi�^����;vH$�T���Tx��*�#�oEU���Uz�X9�f�RN��	T�k�pn��]O�6a��T�M7��b�SV���G���W�����e9�j��w�H�eIE�z�%��#q��C�����z{jY��=�\�
C�b�=J`!X :�ݣ�O�&N �\\E�vo����ʦD������+&lY�I_vwꊞ��S#b�o=�q�r�L�	�˥��][ٱbe`����mw��G��49�W�DU��~�Ӫ���l�I��S����4qX�C�k���ܺ2o���(�2�z��[���U��J�6)A��ܙt8_��`*�+K��f,�����:b��1|q���`�� P����Q���H�@ �X���TOH�Mu���h�Ң�$���q`= l[&��q��0�g����I$��vW�� A�� �z,��7�t�!����N�3��% t/����r,�	����h:1д|&�F��G�W�%D�7�K�6�Qh�Yf>o�wZo���)����t�s�8�����ZkM�l��v�lT�!a�c_��V��s�5���"�U�
:3���+Dm��#.��y�f�ΔЄ!����-���N~brߴ.0���f�����s��D���r�n��W�BmV�ّ��CO$+#v�(
��A���uD���N�����}]Q�µ�n�i�G��'�ÒA~a�5�^'췺cC�Xn��8�<��9�m~+�����w���>��vP�$K����7#+}��W�>+�Y]  �K��>KU��4�&;	�> �`+GF��;G�g) ������n�-�ҭ�������JR�t��B�<%}	I`^�0m��ѐ������|��@;�-�9?�;�O�f&��NV����ҋ�m	���2�ӂ����}x��Ӆ"!�[�;�5�P����3,��Z�k̼�����!�=b�	ߺyI�̶{֦��n��f �  N)��J�-���σ�qVHo	s0�1�PR��b�|�&�[9��yc�v����,Aat���3���6n�W8n����	�"ڊr�c��.�����O�'�.�c��d�z�t�{�`c��(�VGݵ�������9A& G���8V�SiܢӖ���u���hjG�v�mw����(�Q���yNKo�e����e���U"7{3�Q����<��N���(\�'�zn�9�LP���9�����h�N�㽻����|�9]'xUpz��k��̬��u�3�+���g>�,��8��/�PԢ�I���S���b5��JEb>{�,��K�S&GBF�{��#K03k����]�Z��w�ޱ;k�������鋾�:��n�~� 4}?�X����F��ycw�M8r2J/ݵ�fd��<��Y`��2
e�2����o�ݥI|jt��V�����f�y�v>T�a`�[���Q�����\9%�K�[;R �:l=�Ȭ���]��^E~��+��ޝ#�����jC;��\C��Ć��;WRG*n��Ά�s"%�������j@���:�]̂�� !�8�y��Y��O����sf��Fܙ��('������a���#V��p�,����ʩ*�S}��a)��b��;#M}�~��iw�ex��k�ޠܧ��jp�ʎk�r�i��>�|�[>K���#��@ |�>9L��Z?k��%��e�ŲzQfkP��]r���>+0�w��+a_�Ԁ�<L��4�#CX(�b^�g>��Nʃ�\k=U;�v���	B�]�t ����m���
~�.��� #w�b�pj6�{:gpr�5)Qm��u�s�����=2 �䲻A�E�_C`��m_�Rx�״�z��^ϣp�M@<����S�x�;<��N�R�w+nl:��m��#vw��o'��<�Yq��${u$�s?9����C����b��X��\��i	`������T�0e��6�b�+\5�J��-��#��	�g���l�v:0+X60�I�j���iK8���۳7v�*�k������v�̍�(���$�ˊ��7d�d�|�
8/(�S��ةP���qX/�����vW>5}QD��G���sw�yy?�:�KXݴA�Ƕ�7�X�x�wD����!�Dx�~VM�+���<�v���_}�f7����\Wb8�u"LF6e��k��4�4�|ύϲ�l|��?(�Ō��A�&�p+r�q�J��2��~�'R���v?�\zF�qt�{�8h|V��40P�������Y��=ۇ��3TPp�w).��!�x�k�c���֙p��L��Q�f��`dwј�)�*�ӑ5������K��$S[F�*�q��c�p�]�C� xi�����tR�ٽ�%4q��QDy\DL�-�L+1-uC�k�%[��W���}T�����N�� ��XѰn��2�h|����7,�$.W���5�s���nz�6� �6�}�u���>��=-�X����yN�S�S���9�t�ٞe��z(��0]��z�eU`�(�+��^�Yq�T̖+&!�͋�Xj(M?��(�ݕV���Y zJ�]�X��T���;��\�{�{�5�d�e��U�so;�����R ���&����Fm�{��`)޺r����������ki\�ݤ�T �����v[OJ�R1+���"<8
'�^�2�����)XKJ@t�>#M���#�^�x6/~1���Sv`��si![�0��'G��{yv/'��un�������k��l��w�^�y������<���ҦA�؞�l܊&�L��F`�)�a���^�0$^qj[T}�P�<��
sa���f�BZ����"	C�Ng��+�UʶS(�@h({�g��}{r�ݻٝ7�O2��﮹E��f2\=閦�mC�2>w7v�Mψ�Dp�o��BF�}Q�% ��@����kc���-�.�=<Ĺ�*�`�Qe��z���ʂ�)C�+��1�+>Pcp��s�0�o@���M��|i��dM��M�W
1T<|�����6>�Q.��h�j�m�m�Wom>�K�(��ׁ�S���w��5}3f v<��y.3l���p4J?��q���Hf�ݼ�aadԻ�}�'�+�W�>�6j}�v��ir|%�C(o�J)ӥ[�z��/��X�F�Q"=�qw�G��j�I(�ۣ��2��T���b�V�6��1�>�#�Fa����㺐���ԙk�j��iW� �j;=��%�B)(�סZ�q�Z�aDk�1d�a�a�S��x�Yq�;&��C��� [��uՐ�m+�t��M�~�ջ����%#�T o�wL}U�&(�0U�^[ق�"*�e\�|�>��!I D��RP2Ȣ��\�\��ٶ)0ws�F��o�z�P�e"�����GʯT��
�j\�Z�;��9�>һ�W��� �6�>�Y����V��\]3��1�u���>{�lc|�(�T�OY:T��8���8"}��<�U�sv?�{e����b*n~7s�Y��y] m[�ͬ���#Ӎ݊>{�C�����2��CV��[�m���5%iy��2���;ަQN�T�>��ej���=R4�5F��xY��1bw��͍��
��/�eH��	 �t��,;�J�G�Dō|oW�%wxW>eu�#k�����	��E[�lS��{x7t�tY*��YLٝ��5K�.Cދj���7d�	��@쒽��90KN�
F z�ƭ���/�k��a{�(ng�k��:/Dp��[�Sv�3b2(/�����Z�z�;~���t���������P*彘�.rL�v� ڲ� ��-8(_
���э8��w�]Qw���2/�uBAk_L���'�B�z�BԾ}������K��]�Y7��U��k0}���h����g��e�%��2P^Nf�>M�\�1��XF�+�%F� @�}1eܧ�5����z(���,󺮥�{֗q��C:K���J)9��Q���*�&2�BO���diU�n��/�����o�2rX���������)�]W�e�B�#��O@��;�0�9J�N`B-�	��7��,�۾Vm�w���\���pط�c�V��|ʪ�SU��N��-ЌŜ�C���X��SI��8[�\�s��縞'C���*|�Ll1~,�]bP*�:�Ыz������db��4z��V� �q��p�u��G2��9Q8�w��`�ҡ`u�oz��;�]�o񽻰���%� @��(�������+YE         �   x���;n�0 �Y>�.`�_��!�d���I�!6��r�^�
ک�&"@� �@B!��|_�����b߲���e��f�w;m�q�����x�	��oQ@Bu^CJIˠ�"ᙯ卧n�p0�w""U������u��������ߊ�$�#���!���z�J*��p�"��!�A|U�V�1�����]�UQ~~2
"ZE|3R]��5et]�}[�\     