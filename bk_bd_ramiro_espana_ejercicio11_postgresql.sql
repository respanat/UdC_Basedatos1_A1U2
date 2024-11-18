--
-- PostgreSQL database dump
--

-- Dumped from database version 15.9 (Debian 15.9-0+deb12u1)
-- Dumped by pg_dump version 15.9 (Debian 15.9-0+deb12u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: articulo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articulo (
    id_articulo integer NOT NULL,
    nombre character varying(50),
    descripcion text,
    id_estado_articulo integer,
    precio_inicial numeric(10,2),
    fecha_limite date,
    id_usuario integer,
    id_categoria integer
);


ALTER TABLE public.articulo OWNER TO postgres;

--
-- Name: articulo_id_articulo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articulo_id_articulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articulo_id_articulo_seq OWNER TO postgres;

--
-- Name: articulo_id_articulo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articulo_id_articulo_seq OWNED BY public.articulo.id_articulo;


--
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    nombre character varying(50)
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_categoria_seq OWNER TO postgres;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;


--
-- Name: comentario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentario (
    id_comentario integer NOT NULL,
    id_usuario integer,
    id_articulo integer,
    texto_comentario text,
    fecha_comentario date,
    id_comentario_tipo integer
);


ALTER TABLE public.comentario OWNER TO postgres;

--
-- Name: comentario_id_comentario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comentario_id_comentario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comentario_id_comentario_seq OWNER TO postgres;

--
-- Name: comentario_id_comentario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentario_id_comentario_seq OWNED BY public.comentario.id_comentario;


--
-- Name: comentariotipo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentariotipo (
    id_comentario_tipo integer NOT NULL,
    comentario_tipo character varying(50)
);


ALTER TABLE public.comentariotipo OWNER TO postgres;

--
-- Name: comentariotipo_id_comentario_tipo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comentariotipo_id_comentario_tipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comentariotipo_id_comentario_tipo_seq OWNER TO postgres;

--
-- Name: comentariotipo_id_comentario_tipo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentariotipo_id_comentario_tipo_seq OWNED BY public.comentariotipo.id_comentario_tipo;


--
-- Name: estadoarticulo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estadoarticulo (
    id_estado_articulo integer NOT NULL,
    estado_articulo character varying(50)
);


ALTER TABLE public.estadoarticulo OWNER TO postgres;

--
-- Name: estadoarticulo_id_estado_articulo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estadoarticulo_id_estado_articulo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estadoarticulo_id_estado_articulo_seq OWNER TO postgres;

--
-- Name: estadoarticulo_id_estado_articulo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estadoarticulo_id_estado_articulo_seq OWNED BY public.estadoarticulo.id_estado_articulo;


--
-- Name: estadocaso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estadocaso (
    id_estado_caso integer NOT NULL,
    estado_caso character varying(50)
);


ALTER TABLE public.estadocaso OWNER TO postgres;

--
-- Name: estadocaso_id_estado_caso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estadocaso_id_estado_caso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estadocaso_id_estado_caso_seq OWNER TO postgres;

--
-- Name: estadocaso_id_estado_caso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estadocaso_id_estado_caso_seq OWNED BY public.estadocaso.id_estado_caso;


--
-- Name: estadosubasta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estadosubasta (
    id_estado_subasta integer NOT NULL,
    estado_subasta character varying(50)
);


ALTER TABLE public.estadosubasta OWNER TO postgres;

--
-- Name: estadosubasta_id_estado_subasta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estadosubasta_id_estado_subasta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estadosubasta_id_estado_subasta_seq OWNER TO postgres;

--
-- Name: estadosubasta_id_estado_subasta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estadosubasta_id_estado_subasta_seq OWNED BY public.estadosubasta.id_estado_subasta;


--
-- Name: estadousuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estadousuario (
    id_estado_usuario integer NOT NULL,
    estado_usuario character varying(50)
);


ALTER TABLE public.estadousuario OWNER TO postgres;

--
-- Name: estadousuario_id_estado_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estadousuario_id_estado_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estadousuario_id_estado_usuario_seq OWNER TO postgres;

--
-- Name: estadousuario_id_estado_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estadousuario_id_estado_usuario_seq OWNED BY public.estadousuario.id_estado_usuario;


--
-- Name: oferta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oferta (
    id_oferta integer NOT NULL,
    id_subasta integer,
    id_usuario integer,
    precio_ofertado numeric(10,2),
    fecha_oferta date
);


ALTER TABLE public.oferta OWNER TO postgres;

--
-- Name: oferta_id_oferta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.oferta_id_oferta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oferta_id_oferta_seq OWNER TO postgres;

--
-- Name: oferta_id_oferta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.oferta_id_oferta_seq OWNED BY public.oferta.id_oferta;


--
-- Name: operacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.operacion (
    id_operacion integer NOT NULL,
    id_subasta integer,
    id_usuario integer,
    fecha_operacion date,
    precio_final numeric(10,2)
);


ALTER TABLE public.operacion OWNER TO postgres;

--
-- Name: operacion_id_operacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.operacion_id_operacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.operacion_id_operacion_seq OWNER TO postgres;

--
-- Name: operacion_id_operacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.operacion_id_operacion_seq OWNED BY public.operacion.id_operacion;


--
-- Name: satisfaccion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.satisfaccion (
    id_satisfaccion integer NOT NULL,
    id_usuario integer,
    puntuacion integer,
    comentario text,
    fecha_satisfaccion date
);


ALTER TABLE public.satisfaccion OWNER TO postgres;

--
-- Name: satisfaccion_id_satisfaccion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.satisfaccion_id_satisfaccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satisfaccion_id_satisfaccion_seq OWNER TO postgres;

--
-- Name: satisfaccion_id_satisfaccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.satisfaccion_id_satisfaccion_seq OWNED BY public.satisfaccion.id_satisfaccion;


--
-- Name: soporte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soporte (
    id_caso integer NOT NULL,
    id_usuario integer,
    asunto character varying(100),
    descripcion text,
    fecha_solicitud date,
    id_estado_caso integer
);


ALTER TABLE public.soporte OWNER TO postgres;

--
-- Name: soporte_id_caso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.soporte_id_caso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.soporte_id_caso_seq OWNER TO postgres;

--
-- Name: soporte_id_caso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.soporte_id_caso_seq OWNED BY public.soporte.id_caso;


--
-- Name: subasta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subasta (
    id_subasta integer NOT NULL,
    id_articulo integer,
    fecha_inicio date,
    fecha_limite date,
    id_estado_subasta integer,
    id_usuario integer
);


ALTER TABLE public.subasta OWNER TO postgres;

--
-- Name: subasta_id_subasta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subasta_id_subasta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subasta_id_subasta_seq OWNER TO postgres;

--
-- Name: subasta_id_subasta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subasta_id_subasta_seq OWNED BY public.subasta.id_subasta;


--
-- Name: tablay; Type: TABLE; Schema: public; Owner: user_ramiro_espana
--

CREATE TABLE public.tablay (
    id integer NOT NULL,
    fecha timestamp without time zone NOT NULL,
    nombre character varying(50),
    apellidos character varying(50),
    asignatura character varying(50),
    nota1 numeric(5,2),
    nota2 numeric(5,2),
    nota3 numeric(5,2),
    nota_definitiva numeric(5,2),
    promedio numeric(5,2),
    mensaje character varying(255)
);


ALTER TABLE public.tablay OWNER TO user_ramiro_espana;

--
-- Name: tablay_id_seq; Type: SEQUENCE; Schema: public; Owner: user_ramiro_espana
--

CREATE SEQUENCE public.tablay_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tablay_id_seq OWNER TO user_ramiro_espana;

--
-- Name: tablay_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_ramiro_espana
--

ALTER SEQUENCE public.tablay_id_seq OWNED BY public.tablay.id;


--
-- Name: tipousuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipousuario (
    id_tipo_usuario integer NOT NULL,
    tipo_usuario character varying(50)
);


ALTER TABLE public.tipousuario OWNER TO postgres;

--
-- Name: tipousuario_id_tipo_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipousuario_id_tipo_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipousuario_id_tipo_usuario_seq OWNER TO postgres;

--
-- Name: tipousuario_id_tipo_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipousuario_id_tipo_usuario_seq OWNED BY public.tipousuario.id_tipo_usuario;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre character varying(50),
    apellidos character varying(50),
    direccion character varying(100),
    correo_electronico character varying(100),
    fecha_registro date,
    id_estado_usuario integer,
    id_tipo_usuario integer,
    contrasena character varying(100),
    preferencias text
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- Name: articulo id_articulo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulo ALTER COLUMN id_articulo SET DEFAULT nextval('public.articulo_id_articulo_seq'::regclass);


--
-- Name: categoria id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);


--
-- Name: comentario id_comentario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario ALTER COLUMN id_comentario SET DEFAULT nextval('public.comentario_id_comentario_seq'::regclass);


--
-- Name: comentariotipo id_comentario_tipo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentariotipo ALTER COLUMN id_comentario_tipo SET DEFAULT nextval('public.comentariotipo_id_comentario_tipo_seq'::regclass);


--
-- Name: estadoarticulo id_estado_articulo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estadoarticulo ALTER COLUMN id_estado_articulo SET DEFAULT nextval('public.estadoarticulo_id_estado_articulo_seq'::regclass);


--
-- Name: estadocaso id_estado_caso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estadocaso ALTER COLUMN id_estado_caso SET DEFAULT nextval('public.estadocaso_id_estado_caso_seq'::regclass);


--
-- Name: estadosubasta id_estado_subasta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estadosubasta ALTER COLUMN id_estado_subasta SET DEFAULT nextval('public.estadosubasta_id_estado_subasta_seq'::regclass);


--
-- Name: estadousuario id_estado_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estadousuario ALTER COLUMN id_estado_usuario SET DEFAULT nextval('public.estadousuario_id_estado_usuario_seq'::regclass);


--
-- Name: oferta id_oferta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oferta ALTER COLUMN id_oferta SET DEFAULT nextval('public.oferta_id_oferta_seq'::regclass);


--
-- Name: operacion id_operacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operacion ALTER COLUMN id_operacion SET DEFAULT nextval('public.operacion_id_operacion_seq'::regclass);


--
-- Name: satisfaccion id_satisfaccion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.satisfaccion ALTER COLUMN id_satisfaccion SET DEFAULT nextval('public.satisfaccion_id_satisfaccion_seq'::regclass);


--
-- Name: soporte id_caso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soporte ALTER COLUMN id_caso SET DEFAULT nextval('public.soporte_id_caso_seq'::regclass);


--
-- Name: subasta id_subasta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subasta ALTER COLUMN id_subasta SET DEFAULT nextval('public.subasta_id_subasta_seq'::regclass);


--
-- Name: tablay id; Type: DEFAULT; Schema: public; Owner: user_ramiro_espana
--

ALTER TABLE ONLY public.tablay ALTER COLUMN id SET DEFAULT nextval('public.tablay_id_seq'::regclass);


--
-- Name: tipousuario id_tipo_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipousuario ALTER COLUMN id_tipo_usuario SET DEFAULT nextval('public.tipousuario_id_tipo_usuario_seq'::regclass);


--
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- Data for Name: articulo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articulo (id_articulo, nombre, descripcion, id_estado_articulo, precio_inicial, fecha_limite, id_usuario, id_categoria) FROM stdin;
1	Laptop Dell XPS 15	Laptop de alto rendimiento con pantalla 15.6", Intel i7, 16GB RAM, 512GB SSD	1	1200.00	2024-12-31	1	1
2	Bicicleta de montana	\N	1	\N	\N	2	1
3	Laptop Dell Inspiron	\N	1	\N	\N	2	2
4	Telefono Samsung Galaxy	\N	1	\N	\N	2	2
5	Libro de Fisica	\N	1	\N	\N	2	3
6	Silla ergonomica	\N	1	\N	\N	2	4
\.


--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (id_categoria, nombre) FROM stdin;
1	Electronica
2	Tecnologia
3	Deportes
4	Lectura
\.


--
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comentario (id_comentario, id_usuario, id_articulo, texto_comentario, fecha_comentario, id_comentario_tipo) FROM stdin;
\.


--
-- Data for Name: comentariotipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comentariotipo (id_comentario_tipo, comentario_tipo) FROM stdin;
\.


--
-- Data for Name: estadoarticulo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estadoarticulo (id_estado_articulo, estado_articulo) FROM stdin;
1	Activo
2	Inactivo
\.


--
-- Data for Name: estadocaso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estadocaso (id_estado_caso, estado_caso) FROM stdin;
\.


--
-- Data for Name: estadosubasta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estadosubasta (id_estado_subasta, estado_subasta) FROM stdin;
\.


--
-- Data for Name: estadousuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estadousuario (id_estado_usuario, estado_usuario) FROM stdin;
1	Activo
2	Inactivo
\.


--
-- Data for Name: oferta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oferta (id_oferta, id_subasta, id_usuario, precio_ofertado, fecha_oferta) FROM stdin;
\.


--
-- Data for Name: operacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.operacion (id_operacion, id_subasta, id_usuario, fecha_operacion, precio_final) FROM stdin;
\.


--
-- Data for Name: satisfaccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.satisfaccion (id_satisfaccion, id_usuario, puntuacion, comentario, fecha_satisfaccion) FROM stdin;
\.


--
-- Data for Name: soporte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.soporte (id_caso, id_usuario, asunto, descripcion, fecha_solicitud, id_estado_caso) FROM stdin;
\.


--
-- Data for Name: subasta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subasta (id_subasta, id_articulo, fecha_inicio, fecha_limite, id_estado_subasta, id_usuario) FROM stdin;
\.


--
-- Data for Name: tablay; Type: TABLE DATA; Schema: public; Owner: user_ramiro_espana
--

COPY public.tablay (id, fecha, nombre, apellidos, asignatura, nota1, nota2, nota3, nota_definitiva, promedio, mensaje) FROM stdin;
1	2023-05-20 00:00:00	PERSONA 1	DE TAL	ESTRUCTURAS DE DATOS	1.00	\N	\N	0.20	0.33	PR�CTICAMENTE NO HIZO NADA
2	2023-06-20 00:00:00	PERSONA 1	DE TAL	ESTRUCTURAS DE DATOS	1.00	1.00	\N	0.40	0.67	LA ACTIVIDAD ES UNA COPIA DE FRAGMENTOS DISPONIBLES EN INTERNET
3	2023-07-20 00:00:00	PERSONA 1	DE TAL	ESTRUCTURAS DE DATOS	1.00	1.00	1.00	1.00	1.00	LA ACTIVIDAD EST� COMPLETA PERO NO PUDO SUSTENTAR, EXPLICARLA Y NO DOMINA EL DESARROLLO DE NINGUNO DE LOS EJERCICIOS
4	2023-05-20 00:00:00	PERSONA 3	DE TAL	ESTRUCTURAS DE DATOS	4.00	\N	\N	0.80	1.33	ACTIVIDAD AL 80%, PERO FUE DESARROLLADA PROGRESIVAMENTE Y SOCIALIZADA AL DOCENTE EN CADA TUTOR�A
5	2023-06-20 00:00:00	PERSONA 3	DE TAL	ESTRUCTURAS DE DATOS	4.00	4.50	\N	1.70	2.83	ACTIVIDAD COMPLETA Y ENTREGADA UNA SEMANA ANTES DEL CIERRE, CON VIDEO Y SIN DOCUMENTO
6	2023-07-20 00:00:00	PERSONA 3	DE TAL	ESTRUCTURAS DE DATOS	4.00	4.50	5.00	4.70	4.50	ACTIVIDAD ENTREGADA MUCHO ANTES DEL CIERRE, 100% COMPLETA, CON DOCUMENTO, VIDEO Y SUSTENTACI�N
\.


--
-- Data for Name: tipousuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipousuario (id_tipo_usuario, tipo_usuario) FROM stdin;
1	Administrador
2	Cliente
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_usuario, nombre, apellidos, direccion, correo_electronico, fecha_registro, id_estado_usuario, id_tipo_usuario, contrasena, preferencias) FROM stdin;
22	Punto54	IgualNulo	\N	paula.romero@udc.com	2024-01-17	1	2	claveghi	Estilo de vida
16	Punto56	NoesNulo	Calle 15	laura.castillo@udc.com	2024-01-16	1	2	clavedef	Arquitectura
2	Punto56	NoesNulo	Calle 123, Bogot�	ana.gomez@udc.com	2024-01-15	1	2	password123	Preferencia1
1	Punto56	NoesNulo	Calle 123	juan.perez@udc.com	2024-11-15	1	1	password123	Electr�nica
3	Punto56	NoesNulo	Carrera 45, Medell�n	carlos.lopez@udc.com	2024-02-20	1	2	password456	Preferencia2
23	Punto56	NoesNulo	Calle 16	ricardo.sanchez@udc.com	2024-01-18	\N	2	clavejkl	Ciencia
5	Punto56	NoesNulo	Zona 5, Barranquilla	pedro.ruiz@udc.com	2024-04-05	1	2	passwordabc	Preferencia4
11	Punto56	NoesNulo	Calle 10	diego.silva@udc.com	2024-01-11	1	2	clave666	Jardiner�a
12	Punto56	NoesNulo	Calle 11	claudia.ortiz@udc.com	2024-01-12	1	2	clave777	Carpinter�a
13	Punto56	NoesNulo	Calle 12	manuel.ramos@udc.com	2024-01-13	1	2	clave888	Decoraci�n
14	Punto56	NoesNulo	Calle 13	sara.vargas@udc.com	2024-01-14	1	2	clave999	Idiomas
15	Punto56	NoesNulo	Calle 14	jorge.garcia@udc.com	2024-01-15	1	2	claveabc	Historia
10	Punto56	NoesNulo	Calle 9	gabriela.jimenez@udc.com	2024-01-10	1	2	clave555	Cocina
8	Punto56	NoesNulo	Calle 7	elena.morales@udc.com	2024-01-08	2	2	clave333	Viajes
9	Punto56	NoesNulo	Calle 8	pedro.ramirez@udc.com	2024-01-09	2	2	clave444	Fotograf�a
6	Punto56	NoesNulo	Calle 89, Bucaramanga	laura.martinez@udc.com	2024-05-25	2	1	passworddef	Preferencia5
7	Punto56	NoesNulo	Calle 6	andres.ruiz@udc.com	2024-01-07	2	2	clave222	M�sica
17	Punto56	NoesNulo	Calle 1	ana.gomez@udc.com	2024-01-02	2	2	clave123	Deportes
18	Punto56	NoesNulo	Calle 2	luis.martinez@udc.com	2024-01-03	2	2	clave456	Tecnolog�a
19	Punto56	NoesNulo	Calle 3	carlos.hernandez@udc.com	2024-01-04	2	2	clave789	Literatura
20	Punto56	NoesNulo	Calle 4	sofia.perez@udc.com	2024-01-05	2	2	clave000	Arte
21	Punto56	NoesNulo	Calle 5	marta.lopez@udc.com	2024-01-06	2	2	clave111	Cine
\.


--
-- Name: articulo_id_articulo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articulo_id_articulo_seq', 1, false);


--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 1, false);


--
-- Name: comentario_id_comentario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentario_id_comentario_seq', 1, false);


--
-- Name: comentariotipo_id_comentario_tipo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentariotipo_id_comentario_tipo_seq', 1, false);


--
-- Name: estadoarticulo_id_estado_articulo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estadoarticulo_id_estado_articulo_seq', 1, false);


--
-- Name: estadocaso_id_estado_caso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estadocaso_id_estado_caso_seq', 1, false);


--
-- Name: estadosubasta_id_estado_subasta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estadosubasta_id_estado_subasta_seq', 1, false);


--
-- Name: estadousuario_id_estado_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estadousuario_id_estado_usuario_seq', 1, false);


--
-- Name: oferta_id_oferta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.oferta_id_oferta_seq', 1, false);


--
-- Name: operacion_id_operacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.operacion_id_operacion_seq', 1, false);


--
-- Name: satisfaccion_id_satisfaccion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.satisfaccion_id_satisfaccion_seq', 1, false);


--
-- Name: soporte_id_caso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.soporte_id_caso_seq', 1, false);


--
-- Name: subasta_id_subasta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subasta_id_subasta_seq', 1, false);


--
-- Name: tablay_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_ramiro_espana
--

SELECT pg_catalog.setval('public.tablay_id_seq', 6, true);


--
-- Name: tipousuario_id_tipo_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipousuario_id_tipo_usuario_seq', 1, false);


--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 3, true);


--
-- Name: articulo articulo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT articulo_pkey PRIMARY KEY (id_articulo);


--
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);


--
-- Name: comentario comentario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_pkey PRIMARY KEY (id_comentario);


--
-- Name: comentariotipo comentariotipo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentariotipo
    ADD CONSTRAINT comentariotipo_pkey PRIMARY KEY (id_comentario_tipo);


--
-- Name: estadoarticulo estadoarticulo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estadoarticulo
    ADD CONSTRAINT estadoarticulo_pkey PRIMARY KEY (id_estado_articulo);


--
-- Name: estadocaso estadocaso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estadocaso
    ADD CONSTRAINT estadocaso_pkey PRIMARY KEY (id_estado_caso);


--
-- Name: estadosubasta estadosubasta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estadosubasta
    ADD CONSTRAINT estadosubasta_pkey PRIMARY KEY (id_estado_subasta);


--
-- Name: estadousuario estadousuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estadousuario
    ADD CONSTRAINT estadousuario_pkey PRIMARY KEY (id_estado_usuario);


--
-- Name: oferta oferta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oferta
    ADD CONSTRAINT oferta_pkey PRIMARY KEY (id_oferta);


--
-- Name: operacion operacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operacion
    ADD CONSTRAINT operacion_pkey PRIMARY KEY (id_operacion);


--
-- Name: satisfaccion satisfaccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.satisfaccion
    ADD CONSTRAINT satisfaccion_pkey PRIMARY KEY (id_satisfaccion);


--
-- Name: soporte soporte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soporte
    ADD CONSTRAINT soporte_pkey PRIMARY KEY (id_caso);


--
-- Name: subasta subasta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subasta
    ADD CONSTRAINT subasta_pkey PRIMARY KEY (id_subasta);


--
-- Name: tablay tablay_pkey; Type: CONSTRAINT; Schema: public; Owner: user_ramiro_espana
--

ALTER TABLE ONLY public.tablay
    ADD CONSTRAINT tablay_pkey PRIMARY KEY (id);


--
-- Name: tipousuario tipousuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipousuario
    ADD CONSTRAINT tipousuario_pkey PRIMARY KEY (id_tipo_usuario);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: idx_articulo_comentario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_articulo_comentario ON public.comentario USING btree (id_articulo);


--
-- Name: idx_articulo_subasta; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_articulo_subasta ON public.subasta USING btree (id_articulo);


--
-- Name: idx_categoria_articulo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_categoria_articulo ON public.articulo USING btree (id_categoria);


--
-- Name: idx_comentario_tipo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_comentario_tipo ON public.comentario USING btree (id_comentario_tipo);


--
-- Name: idx_estado_articulo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_estado_articulo ON public.articulo USING btree (id_estado_articulo);


--
-- Name: idx_estado_caso; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_estado_caso ON public.soporte USING btree (id_estado_caso);


--
-- Name: idx_estado_subasta; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_estado_subasta ON public.subasta USING btree (id_estado_subasta);


--
-- Name: idx_estado_usuario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_estado_usuario ON public.usuario USING btree (id_estado_usuario);


--
-- Name: idx_subasta_oferta; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_subasta_oferta ON public.oferta USING btree (id_subasta);


--
-- Name: idx_subasta_operacion; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_subasta_operacion ON public.operacion USING btree (id_subasta);


--
-- Name: idx_tipo_usuario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tipo_usuario ON public.usuario USING btree (id_tipo_usuario);


--
-- Name: idx_usuario_articulo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_usuario_articulo ON public.articulo USING btree (id_usuario);


--
-- Name: idx_usuario_comentario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_usuario_comentario ON public.comentario USING btree (id_usuario);


--
-- Name: idx_usuario_oferta; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_usuario_oferta ON public.oferta USING btree (id_usuario);


--
-- Name: idx_usuario_operacion; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_usuario_operacion ON public.operacion USING btree (id_usuario);


--
-- Name: idx_usuario_satisfaccion; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_usuario_satisfaccion ON public.satisfaccion USING btree (id_usuario);


--
-- Name: idx_usuario_soporte; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_usuario_soporte ON public.soporte USING btree (id_usuario);


--
-- Name: idx_usuario_subasta; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_usuario_subasta ON public.subasta USING btree (id_usuario);


--
-- Name: comentario fk_articulo_comentario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT fk_articulo_comentario FOREIGN KEY (id_articulo) REFERENCES public.articulo(id_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: subasta fk_articulo_subasta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subasta
    ADD CONSTRAINT fk_articulo_subasta FOREIGN KEY (id_articulo) REFERENCES public.articulo(id_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: articulo fk_categoria_articulo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT fk_categoria_articulo FOREIGN KEY (id_categoria) REFERENCES public.categoria(id_categoria) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: comentario fk_comentario_tipo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT fk_comentario_tipo FOREIGN KEY (id_comentario_tipo) REFERENCES public.comentariotipo(id_comentario_tipo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: articulo fk_estado_articulo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT fk_estado_articulo FOREIGN KEY (id_estado_articulo) REFERENCES public.estadoarticulo(id_estado_articulo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: soporte fk_estado_caso; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soporte
    ADD CONSTRAINT fk_estado_caso FOREIGN KEY (id_estado_caso) REFERENCES public.estadocaso(id_estado_caso) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: subasta fk_estado_subasta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subasta
    ADD CONSTRAINT fk_estado_subasta FOREIGN KEY (id_estado_subasta) REFERENCES public.estadosubasta(id_estado_subasta) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: usuario fk_estado_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_estado_usuario FOREIGN KEY (id_estado_usuario) REFERENCES public.estadousuario(id_estado_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: oferta fk_subasta_oferta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oferta
    ADD CONSTRAINT fk_subasta_oferta FOREIGN KEY (id_subasta) REFERENCES public.subasta(id_subasta) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: operacion fk_subasta_operacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operacion
    ADD CONSTRAINT fk_subasta_operacion FOREIGN KEY (id_subasta) REFERENCES public.subasta(id_subasta) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: usuario fk_tipo_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_tipo_usuario FOREIGN KEY (id_tipo_usuario) REFERENCES public.tipousuario(id_tipo_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: articulo fk_usuario_articulo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT fk_usuario_articulo FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: comentario fk_usuario_comentario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT fk_usuario_comentario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: oferta fk_usuario_oferta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oferta
    ADD CONSTRAINT fk_usuario_oferta FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: operacion fk_usuario_operacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operacion
    ADD CONSTRAINT fk_usuario_operacion FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: satisfaccion fk_usuario_satisfaccion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.satisfaccion
    ADD CONSTRAINT fk_usuario_satisfaccion FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: soporte fk_usuario_soporte; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soporte
    ADD CONSTRAINT fk_usuario_soporte FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: subasta fk_usuario_subasta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subasta
    ADD CONSTRAINT fk_usuario_subasta FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

