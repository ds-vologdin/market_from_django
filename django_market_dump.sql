--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user (
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


ALTER TABLE public.auth_user OWNER TO django;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO django;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: catalog_categoryparameterproduct; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.catalog_categoryparameterproduct (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    priority integer NOT NULL
);


ALTER TABLE public.catalog_categoryparameterproduct OWNER TO django;

--
-- Name: catalog_categoryparameterproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.catalog_categoryparameterproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_categoryparameterproduct_id_seq OWNER TO django;

--
-- Name: catalog_categoryparameterproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.catalog_categoryparameterproduct_id_seq OWNED BY public.catalog_categoryparameterproduct.id;


--
-- Name: catalog_categoryproduct; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.catalog_categoryproduct (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    main_category_id integer NOT NULL
);


ALTER TABLE public.catalog_categoryproduct OWNER TO django;

--
-- Name: catalog_categoryproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.catalog_categoryproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_categoryproduct_id_seq OWNER TO django;

--
-- Name: catalog_categoryproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.catalog_categoryproduct_id_seq OWNED BY public.catalog_categoryproduct.id;


--
-- Name: catalog_imagesproduct; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.catalog_imagesproduct (
    id integer NOT NULL,
    image_file character varying(100) NOT NULL,
    priority integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.catalog_imagesproduct OWNER TO django;

--
-- Name: catalog_imagesproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.catalog_imagesproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_imagesproduct_id_seq OWNER TO django;

--
-- Name: catalog_imagesproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.catalog_imagesproduct_id_seq OWNED BY public.catalog_imagesproduct.id;


--
-- Name: catalog_maincategoryproduct; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.catalog_maincategoryproduct (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.catalog_maincategoryproduct OWNER TO django;

--
-- Name: catalog_maincategoryproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.catalog_maincategoryproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_maincategoryproduct_id_seq OWNER TO django;

--
-- Name: catalog_maincategoryproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.catalog_maincategoryproduct_id_seq OWNED BY public.catalog_maincategoryproduct.id;


--
-- Name: catalog_parameterproduct; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.catalog_parameterproduct (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    value character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    priority integer NOT NULL,
    category_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.catalog_parameterproduct OWNER TO django;

--
-- Name: catalog_parameterproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.catalog_parameterproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_parameterproduct_id_seq OWNER TO django;

--
-- Name: catalog_parameterproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.catalog_parameterproduct_id_seq OWNED BY public.catalog_parameterproduct.id;


--
-- Name: catalog_product; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.catalog_product (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    cost numeric(12,2) NOT NULL,
    rating integer NOT NULL,
    category_id integer NOT NULL,
    parameters jsonb NOT NULL
);


ALTER TABLE public.catalog_product OWNER TO django;

--
-- Name: catalog_product_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.catalog_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_product_id_seq OWNER TO django;

--
-- Name: catalog_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.catalog_product_id_seq OWNED BY public.catalog_product.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_categoryparameterproduct ALTER COLUMN id SET DEFAULT nextval('public.catalog_categoryparameterproduct_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_categoryproduct ALTER COLUMN id SET DEFAULT nextval('public.catalog_categoryproduct_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_imagesproduct ALTER COLUMN id SET DEFAULT nextval('public.catalog_imagesproduct_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_maincategoryproduct ALTER COLUMN id SET DEFAULT nextval('public.catalog_maincategoryproduct_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_parameterproduct ALTER COLUMN id SET DEFAULT nextval('public.catalog_parameterproduct_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_product ALTER COLUMN id SET DEFAULT nextval('public.catalog_product_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add main category product	1	add_maincategoryproduct
2	Can change main category product	1	change_maincategoryproduct
3	Can delete main category product	1	delete_maincategoryproduct
4	Can add product	2	add_product
5	Can change product	2	change_product
6	Can delete product	2	delete_product
7	Can add category product	3	add_categoryproduct
8	Can change category product	3	change_categoryproduct
9	Can delete category product	3	delete_categoryproduct
10	Can add images product	4	add_imagesproduct
11	Can change images product	4	change_imagesproduct
12	Can delete images product	4	delete_imagesproduct
13	Can add log entry	5	add_logentry
14	Can change log entry	5	change_logentry
15	Can delete log entry	5	delete_logentry
16	Can add user	6	add_user
17	Can change user	6	change_user
18	Can delete user	6	delete_user
19	Can add group	7	add_group
20	Can change group	7	change_group
21	Can delete group	7	delete_group
22	Can add permission	8	add_permission
23	Can change permission	8	change_permission
24	Can delete permission	8	delete_permission
25	Can add content type	9	add_contenttype
26	Can change content type	9	change_contenttype
27	Can delete content type	9	delete_contenttype
28	Can add session	10	add_session
29	Can change session	10	change_session
30	Can delete session	10	delete_session
31	Can add category parameter product	11	add_categoryparameterproduct
32	Can change category parameter product	11	change_categoryparameterproduct
33	Can delete category parameter product	11	delete_categoryparameterproduct
34	Can add parameter product	12	add_parameterproduct
35	Can change parameter product	12	change_parameterproduct
36	Can delete parameter product	12	delete_parameterproduct
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$La1qYsuoFAHy$PERk+bFSFAXfy2bAw6yfDU/QPt94lNatzpvO2DNPcT0=	2018-05-31 14:29:56.305966+00	t	bud			ds.vologdin@yandex.ru	t	t	2018-05-31 14:29:40.486761+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: catalog_categoryparameterproduct; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.catalog_categoryparameterproduct (id, name, priority) FROM stdin;
1	Общие характеристики	0
3	Мультимедийные возможности	10
5	Память и процессор	20
2	Экран	30
4	Связь	40
6	Питание	50
\.


--
-- Name: catalog_categoryparameterproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.catalog_categoryparameterproduct_id_seq', 6, true);


--
-- Data for Name: catalog_categoryproduct; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.catalog_categoryproduct (id, name, main_category_id) FROM stdin;
6	Планшеты	2
7	Ноутбуки	2
8	Настольные компьютеры	2
9	Серверы	2
10	Стиральные машины	3
11	Пылесосы	3
12	Утюги	3
14	Умные часы	4
15	Телевизоры	4
13	Телефоны	4
\.


--
-- Name: catalog_categoryproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.catalog_categoryproduct_id_seq', 15, true);


--
-- Data for Name: catalog_imagesproduct; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.catalog_imagesproduct (id, image_file, priority, product_id) FROM stdin;
7	product_3/i0.jpg	1	3
8	product_3/i1.jpg	2	3
9	product_3/i3.jpg	3	3
10	product_2/Galaxy-S8.jpg	1	2
11	product_2/Galaxy-S8-1.jpg	2	2
12	product_1/thumb_114131_default_big.jpeg	1	1
13	product_1/6cd00a8acda0263c3d0fe5fa38f09738.jpeg	2	1
\.


--
-- Name: catalog_imagesproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.catalog_imagesproduct_id_seq', 13, true);


--
-- Data for Name: catalog_maincategoryproduct; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.catalog_maincategoryproduct (id, name) FROM stdin;
2	Компьютерная техника
3	Бытовая техника
4	Электроника
\.


--
-- Name: catalog_maincategoryproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.catalog_maincategoryproduct_id_seq', 4, true);


--
-- Data for Name: catalog_parameterproduct; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.catalog_parameterproduct (id, name, value, type, priority, category_id, product_id) FROM stdin;
2	Количество SIM-карт	2	int	10	1	3
3	Вес	180 г.	str	20	1	3
4	Размеры (ШxВxТ)	75.45x158.5x8.05	str	30	1	3
5	Материал корпуса	металл	str	1010	1	3
6	Режим работы нескольких SIM-карт	Попеременный	str	1000	1	3
7	Тип экрана	('цветной', 'сенсорный')	list	1010	2	3
8	Тип сенсорного экрана	('мультитач', 'емкостный')	list	1020	2	3
9	Число пикселей на дюйм (PPI)	403	int	1030	2	3
10	Соотношение сторон	18:9	str	1040	2	3
11	Диагональ	5.99	float	10	2	3
12	Размер изображения	2160x1080	str	20	2	3
13	Фотовспышка	('тыльная', 'светодиодная')	list	1000	3	3
1	Операционная система	IOS	str	0	1	3
\.


--
-- Name: catalog_parameterproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.catalog_parameterproduct_id_seq', 13, true);


--
-- Data for Name: catalog_product; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.catalog_product (id, name, description, cost, rating, category_id, parameters) FROM stdin;
2	Смартфон Samsung Galaxy S8	хороший телефон	36990.00	4	13	{}
1	Xiaomi Redmi 5 Plus 4/64GB	отличный телефон!	11890.00	5	13	{"\\\\u0421\\\\u0432\\\\u044f\\\\u0437\\\\u044c": {"priority": 3, "parameters": {"C\\\\u0438\\\\u0441\\\\u0442\\\\u0435\\\\u043c\\\\u0430 A-GPS": true}, "main_parameters": {"\\\\u0421\\\\u0442\\\\u0430\\\\u043d\\\\u0434\\\\u0430\\\\u0440\\\\u0442": ["GSM 900/1800/1900", "3G", "4G LTE"], "\\\\u0418\\\\u043d\\\\u0442\\\\u0435\\\\u0440\\\\u0444\\\\u0435\\\\u0439\\\\u0441\\\\u044b": ["Wi-Fi 802.11n", "Wi-Fi Direct", "Bluetooth 4.2", "USB"], "\\\\u0421\\\\u043f\\\\u0443\\\\u0442\\\\u043d\\\\u0438\\\\u043a\\\\u043e\\\\u0432\\\\u0430\\\\u044f \\\\u043d\\\\u0430\\\\u0432\\\\u0438\\\\u0433\\\\u0430\\\\u0446\\\\u0438\\\\u044f": ["GPS", "\\\\u0413\\\\u041b\\\\u041e\\\\u041d\\\\u0410\\\\u0421\\\\u0421", "BeiDou"]}}, "\\\\u042d\\\\u043a\\\\u0440\\\\u0430\\\\u043d": {"priority": 1, "parameters": {"\\\\u0422\\\\u0438\\\\u043f \\\\u044d\\\\u043a\\\\u0440\\\\u0430\\\\u043d\\\\u0430": ["\\\\u0446\\\\u0432\\\\u0435\\\\u0442\\\\u043d\\\\u043e\\\\u0439", "\\\\u0441\\\\u0435\\\\u043d\\\\u0441\\\\u043e\\\\u0440\\\\u043d\\\\u044b\\\\u0439"], "\\\\u0421\\\\u043e\\\\u043e\\\\u0442\\\\u043d\\\\u043e\\\\u0448\\\\u0435\\\\u043d\\\\u0438\\\\u0435 \\\\u0441\\\\u0442\\\\u043e\\\\u0440\\\\u043e\\\\u043d": "18:9", "\\\\u0422\\\\u0438\\\\u043f \\\\u0441\\\\u0435\\\\u043d\\\\u0441\\\\u043e\\\\u0440\\\\u043d\\\\u043e\\\\u0433\\\\u043e \\\\u044d\\\\u043a\\\\u0440\\\\u0430\\\\u043d\\\\u0430": ["\\\\u043c\\\\u0443\\\\u043b\\\\u044c\\\\u0442\\\\u0438\\\\u0442\\\\u0430\\\\u0447", "\\\\u0435\\\\u043c\\\\u043a\\\\u043e\\\\u0441\\\\u0442\\\\u043d\\\\u044b\\\\u0439"], "\\\\u0427\\\\u0438\\\\u0441\\\\u043b\\\\u043e \\\\u043f\\\\u0438\\\\u043a\\\\u0441\\\\u0435\\\\u043b\\\\u0435\\\\u0439 \\\\u043d\\\\u0430 \\\\u0434\\\\u044e\\\\u0439\\\\u043c (PPI)": 403}, "main_parameters": {"\\\\u0414\\\\u0438\\\\u0430\\\\u0433\\\\u043e\\\\u043d\\\\u0430\\\\u043b\\\\u044c": "5.99", "\\\\u0420\\\\u0430\\\\u0437\\\\u043c\\\\u0435\\\\u0440 \\\\u0438\\\\u0437\\\\u043e\\\\u0431\\\\u0440\\\\u0430\\\\u0436\\\\u0435\\\\u043d\\\\u0438\\\\u044f": "2160x1080"}}, "\\\\u041f\\\\u0438\\\\u0442\\\\u0430\\\\u043d\\\\u0438\\\\u0435": {"priority": 5, "parameters": {}, "main_parameters": {"\\\\u0415\\\\u043c\\\\u043a\\\\u043e\\\\u0441\\\\u0442\\\\u044c \\\\u0430\\\\u043a\\\\u043a\\\\u0443\\\\u043c\\\\u0443\\\\u043b\\\\u044f\\\\u0442\\\\u043e\\\\u0440\\\\u0430": 4000}}, "\\\\u041f\\\\u0430\\\\u043c\\\\u044f\\\\u0442\\\\u044c \\\\u0438 \\\\u043f\\\\u0440\\\\u043e\\\\u0446\\\\u0435\\\\u0441\\\\u0441\\\\u043e\\\\u0440": {"priority": 4, "parameters": {"\\\\u0421\\\\u043b\\\\u043e\\\\u0442 \\\\u0434\\\\u043b\\\\u044f \\\\u043a\\\\u0430\\\\u0440\\\\u0442 \\\\u043f\\\\u0430\\\\u043c\\\\u044f\\\\u0442\\\\u0438": true}, "main_parameters": {"\\\\u041f\\\\u0440\\\\u043e\\\\u0446\\\\u0435\\\\u0441\\\\u0441\\\\u043e\\\\u0440": "Qualcomm Snapdragon 625 MSM8953, 2000 \\\\u041c\\\\u0413\\\\u0446", "\\\\u0412\\\\u0438\\\\u0434\\\\u0435\\\\u043e\\\\u043f\\\\u0440\\\\u043e\\\\u0446\\\\u0435\\\\u0441\\\\u0441\\\\u043e\\\\u0440": "Adreno 506 ", "\\\\u041e\\\\u0431\\\\u044a\\\\u0435\\\\u043c \\\\u0432\\\\u0441\\\\u0442\\\\u0440\\\\u043e\\\\u0435\\\\u043d\\\\u043d\\\\u043e\\\\u0439 \\\\u043f\\\\u0430\\\\u043c\\\\u044f\\\\u0442\\\\u0438": 64, "\\\\u041e\\\\u0431\\\\u044a\\\\u0435\\\\u043c \\\\u043e\\\\u043f\\\\u0435\\\\u0440\\\\u0430\\\\u0442\\\\u0438\\\\u0432\\\\u043d\\\\u043e\\\\u0439 \\\\u043f\\\\u0430\\\\u043c\\\\u044f\\\\u0442\\\\u0438": 4, "\\\\u041a\\\\u043e\\\\u043b\\\\u0438\\\\u0447\\\\u0435\\\\u0441\\\\u0442\\\\u0432\\\\u043e \\\\u044f\\\\u0434\\\\u0435\\\\u0440 \\\\u043f\\\\u0440\\\\u043e\\\\u0446\\\\u0435\\\\u0441\\\\u0441\\\\u043e\\\\u0440\\\\u0430": 8}}, "\\\\u041e\\\\u0431\\\\u0449\\\\u0438\\\\u0435 \\\\u0445\\\\u0430\\\\u0440\\\\u0430\\\\u043a\\\\u0442\\\\u0435\\\\u0440\\\\u0438\\\\u0441\\\\u0442\\\\u0438\\\\u043a\\\\u0438": {"priority": 0, "parameters": {"\\\\u041c\\\\u0430\\\\u0442\\\\u0435\\\\u0440\\\\u0438\\\\u0430\\\\u043b \\\\u043a\\\\u043e\\\\u0440\\\\u043f\\\\u0443\\\\u0441\\\\u0430": "\\\\u043c\\\\u0435\\\\u0442\\\\u0430\\\\u043b\\\\u043b", "\\\\u0420\\\\u0435\\\\u0436\\\\u0438\\\\u043c \\\\u0440\\\\u0430\\\\u0431\\\\u043e\\\\u0442\\\\u044b \\\\u043d\\\\u0435\\\\u0441\\\\u043a\\\\u043e\\\\u043b\\\\u044c\\\\u043a\\\\u0438\\\\u0445 SIM-\\\\u043a\\\\u0430\\\\u0440\\\\u0442": "\\\\u041f\\\\u043e\\\\u043f\\\\u0435\\\\u0440\\\\u0435\\\\u043c\\\\u0435\\\\u043d\\\\u043d\\\\u044b\\\\u0439"}, "main_parameters": {"\\\\u0412\\\\u0435\\\\u0441": 180, "\\\\u0420\\\\u0430\\\\u0437\\\\u043c\\\\u0435\\\\u0440\\\\u044b (\\\\u0428x\\\\u0412x\\\\u0422)": "75.45x158.5x8.05", "\\\\u041a\\\\u043e\\\\u043b\\\\u0438\\\\u0447\\\\u0435\\\\u0441\\\\u0442\\\\u0432\\\\u043e SIM-\\\\u043a\\\\u0430\\\\u0440\\\\u0442": 2, "\\\\u041e\\\\u043f\\\\u0435\\\\u0440\\\\u0430\\\\u0446\\\\u0438\\\\u043e\\\\u043d\\\\u043d\\\\u0430\\\\u044f \\\\u0441\\\\u0438\\\\u0441\\\\u0442\\\\u0435\\\\u043c\\\\u0430": "Android"}}, "\\\\u041c\\\\u0443\\\\u043b\\\\u044c\\\\u0442\\\\u0438\\\\u043c\\\\u0435\\\\u0434\\\\u0438\\\\u0439\\\\u043d\\\\u044b\\\\u0435 \\\\u0432\\\\u043e\\\\u0437\\\\u043c\\\\u043e\\\\u0436\\\\u043d\\\\u043e\\\\u0441\\\\u0442\\\\u0438": {"priority": 2, "parameters": {"\\\\u0424\\\\u043e\\\\u0442\\\\u043e\\\\u0432\\\\u0441\\\\u043f\\\\u044b\\\\u0448\\\\u043a\\\\u0430": ["\\\\u0442\\\\u044b\\\\u043b\\\\u044c\\\\u043d\\\\u0430\\\\u044f", "\\\\u0441\\\\u0432\\\\u0435\\\\u0442\\\\u043e\\\\u0434\\\\u0438\\\\u043e\\\\u0434\\\\u043d\\\\u0430\\\\u044f"], "\\\\u041c\\\\u0430\\\\u043a\\\\u0441. \\\\u0440\\\\u0430\\\\u0437\\\\u0440\\\\u0435\\\\u0448\\\\u0435\\\\u043d\\\\u0438\\\\u0435 \\\\u0432\\\\u0438\\\\u0434\\\\u0435\\\\u043e": "1920x1080", "\\\\u0424\\\\u0443\\\\u043d\\\\u043a\\\\u0446\\\\u0438\\\\u0438 \\\\u0442\\\\u044b\\\\u043b\\\\u043e\\\\u0432\\\\u043e\\\\u0439 \\\\u0444\\\\u043e\\\\u0442\\\\u043e\\\\u043a\\\\u0430\\\\u043c\\\\u0435\\\\u0440\\\\u044b": "\\\\u0430\\\\u0432\\\\u0442\\\\u043e\\\\u0444\\\\u043e\\\\u043a\\\\u0443\\\\u0441", "\\\\u0414\\\\u0438\\\\u0430\\\\u0444\\\\u0440\\\\u0430\\\\u0433\\\\u043c\\\\u0430 \\\\u0442\\\\u044b\\\\u043b\\\\u043e\\\\u0432\\\\u043e\\\\u0439 \\\\u0444\\\\u043e\\\\u0442\\\\u043e\\\\u043a\\\\u0430\\\\u043c\\\\u0435\\\\u0440\\\\u044b": "F/2.2"}, "main_parameters": {"\\\\u0422\\\\u044b\\\\u043b\\\\u043e\\\\u0432\\\\u0430\\\\u044f \\\\u0444\\\\u043e\\\\u0442\\\\u043e\\\\u043a\\\\u0430\\\\u043c\\\\u0435\\\\u0440\\\\u0430": 12.0, "\\\\u0424\\\\u0440\\\\u043e\\\\u043d\\\\u0442\\\\u0430\\\\u043b\\\\u044c\\\\u043d\\\\u0430\\\\u044f \\\\u043a\\\\u0430\\\\u043c\\\\u0435\\\\u0440\\\\u0430": 5}}}
3	Смартфон Apple iPhone 8 64GB	И это тоже не плохой телефон	47990.00	2	13	{}
\.


--
-- Name: catalog_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.catalog_product_id_seq', 3, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-05-31 14:31:59.279504+00	1	MainCategoryProduct object (1)	1	[{"added": {}}, {"added": {"object": "CategoryProduct object (1)", "name": "category product"}}, {"added": {"object": "CategoryProduct object (2)", "name": "category product"}}, {"added": {"object": "CategoryProduct object (3)", "name": "category product"}}, {"added": {"object": "CategoryProduct object (4)", "name": "category product"}}, {"added": {"object": "CategoryProduct object (5)", "name": "category product"}}]	1	1
2	2018-05-31 14:32:57.996548+00	2	MainCategoryProduct object (2)	1	[{"added": {}}, {"added": {"object": "CategoryProduct object (6)", "name": "category product"}}, {"added": {"object": "CategoryProduct object (7)", "name": "category product"}}, {"added": {"object": "CategoryProduct object (8)", "name": "category product"}}, {"added": {"object": "CategoryProduct object (9)", "name": "category product"}}]	1	1
3	2018-05-31 14:33:40.774889+00	3	MainCategoryProduct object (3)	1	[{"added": {}}, {"added": {"object": "CategoryProduct object (10)", "name": "category product"}}, {"added": {"object": "CategoryProduct object (11)", "name": "category product"}}, {"added": {"object": "CategoryProduct object (12)", "name": "category product"}}]	1	1
4	2018-05-31 14:35:10.266718+00	1	Электроника	3		1	1
5	2018-05-31 14:35:55.475149+00	4	Электроника	1	[{"added": {}}, {"added": {"object": "\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u044b", "name": "category product"}}, {"added": {"object": "\\u0423\\u043c\\u043d\\u044b\\u0435 \\u0447\\u0430\\u0441\\u044b", "name": "category product"}}, {"added": {"object": "\\u0422\\u0435\\u043b\\u0435\\u0432\\u0438\\u0437\\u043e\\u0440\\u044b", "name": "category product"}}]	1	1
6	2018-05-31 14:39:23.371538+00	13	Телефоны	2	[{"added": {"object": "Xiaomi Redmi 5 Plus 4/64GB", "name": "product"}}, {"added": {"object": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Samsung Galaxy S8", "name": "product"}}, {"added": {"object": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Apple iPhone 8 64GB", "name": "product"}}]	3	1
7	2018-05-31 14:40:08.458771+00	3	Смартфон Apple iPhone 8 64GB	2	[]	2	1
8	2018-06-01 06:31:18.525192+00	3	Смартфон Apple iPhone 8 64GB	2	[{"added": {"object": "ImagesProduct object (4)", "name": "images product"}}, {"added": {"object": "ImagesProduct object (5)", "name": "images product"}}, {"added": {"object": "ImagesProduct object (6)", "name": "images product"}}]	2	1
9	2018-06-01 06:33:13.350852+00	3	Смартфон Apple iPhone 8 64GB	2	[{"deleted": {"object": "ImagesProduct object (None)", "name": "images product"}}, {"deleted": {"object": "ImagesProduct object (None)", "name": "images product"}}, {"deleted": {"object": "ImagesProduct object (None)", "name": "images product"}}]	2	1
10	2018-06-01 06:49:29.016754+00	3	Смартфон Apple iPhone 8 64GB	2	[{"added": {"object": "ImagesProduct object (7)", "name": "images product"}}, {"added": {"object": "ImagesProduct object (8)", "name": "images product"}}, {"added": {"object": "ImagesProduct object (9)", "name": "images product"}}]	2	1
11	2018-06-01 06:50:53.837813+00	2	Смартфон Samsung Galaxy S8	2	[{"added": {"object": "ImagesProduct object (10)", "name": "images product"}}, {"added": {"object": "ImagesProduct object (11)", "name": "images product"}}]	2	1
12	2018-06-01 06:51:49.033468+00	1	Xiaomi Redmi 5 Plus 4/64GB	2	[{"added": {"object": "ImagesProduct object (12)", "name": "images product"}}, {"added": {"object": "ImagesProduct object (13)", "name": "images product"}}]	2	1
13	2018-06-01 12:36:20.775316+00	1	CategoryParameterProduct object (1)	1	[{"added": {}}]	11	1
14	2018-06-01 12:36:32.046365+00	2	CategoryParameterProduct object (2)	1	[{"added": {}}]	11	1
15	2018-06-01 12:36:43.226027+00	3	CategoryParameterProduct object (3)	1	[{"added": {}}]	11	1
16	2018-06-01 12:36:56.879667+00	4	CategoryParameterProduct object (4)	1	[{"added": {}}]	11	1
17	2018-06-01 12:37:06.842362+00	5	CategoryParameterProduct object (5)	1	[{"added": {}}]	11	1
18	2018-06-01 12:37:16.470896+00	6	CategoryParameterProduct object (6)	1	[{"added": {}}]	11	1
19	2018-06-01 12:40:31.880172+00	3	Мультимедийные возможности	2	[{"changed": {"fields": ["priority"]}}]	11	1
20	2018-06-01 12:42:01.533809+00	5	Память и процессор	2	[{"changed": {"fields": ["priority"]}}]	11	1
21	2018-06-01 12:42:14.708811+00	2	Экран	2	[{"changed": {"fields": ["priority"]}}]	11	1
22	2018-06-01 12:42:23.723733+00	4	Связь	2	[{"changed": {"fields": ["priority"]}}]	11	1
23	2018-06-01 12:42:30.338639+00	6	Питание	2	[{"changed": {"fields": ["priority"]}}]	11	1
24	2018-06-01 12:48:55.136748+00	3	Смартфон Apple iPhone 8 64GB	2	[{"added": {"object": "ParameterProduct object (1)", "name": "parameter product"}}, {"added": {"object": "ParameterProduct object (2)", "name": "parameter product"}}, {"added": {"object": "ParameterProduct object (3)", "name": "parameter product"}}, {"added": {"object": "ParameterProduct object (4)", "name": "parameter product"}}, {"added": {"object": "ParameterProduct object (5)", "name": "parameter product"}}, {"added": {"object": "ParameterProduct object (6)", "name": "parameter product"}}, {"added": {"object": "ParameterProduct object (7)", "name": "parameter product"}}, {"added": {"object": "ParameterProduct object (8)", "name": "parameter product"}}, {"added": {"object": "ParameterProduct object (9)", "name": "parameter product"}}, {"added": {"object": "ParameterProduct object (10)", "name": "parameter product"}}, {"added": {"object": "ParameterProduct object (11)", "name": "parameter product"}}, {"added": {"object": "ParameterProduct object (12)", "name": "parameter product"}}]	2	1
25	2018-06-01 12:53:50.522703+00	3	Смартфон Apple iPhone 8 64GB	2	[{"added": {"object": "ParameterProduct object (13)", "name": "parameter product"}}]	2	1
26	2018-06-01 12:55:48.333536+00	3	Смартфон Apple iPhone 8 64GB	2	[{"changed": {"fields": ["value"], "name": "parameter product", "object": "ParameterProduct object (1)"}}]	2	1
27	2018-06-01 12:56:35.893476+00	3	Смартфон Apple iPhone 8 64GB	2	[]	2	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 27, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	catalog	maincategoryproduct
2	catalog	product
3	catalog	categoryproduct
4	catalog	imagesproduct
5	admin	logentry
6	auth	user
7	auth	group
8	auth	permission
9	contenttypes	contenttype
10	sessions	session
11	catalog	categoryparameterproduct
12	catalog	parameterproduct
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-05-31 13:58:12.648257+00
2	auth	0001_initial	2018-05-31 13:58:13.766061+00
3	admin	0001_initial	2018-05-31 13:58:14.056924+00
4	admin	0002_logentry_remove_auto_add	2018-05-31 13:58:14.080038+00
5	contenttypes	0002_remove_content_type_name	2018-05-31 13:58:14.165048+00
6	auth	0002_alter_permission_name_max_length	2018-05-31 13:58:14.189671+00
7	auth	0003_alter_user_email_max_length	2018-05-31 13:58:14.222461+00
8	auth	0004_alter_user_username_opts	2018-05-31 13:58:14.245694+00
9	auth	0005_alter_user_last_login_null	2018-05-31 13:58:14.281269+00
10	auth	0006_require_contenttypes_0002	2018-05-31 13:58:14.289486+00
11	auth	0007_alter_validators_add_error_messages	2018-05-31 13:58:14.312778+00
12	auth	0008_alter_user_username_max_length	2018-05-31 13:58:14.389326+00
13	auth	0009_alter_user_last_name_max_length	2018-05-31 13:58:14.422326+00
14	catalog	0001_initial	2018-05-31 13:58:14.866326+00
15	sessions	0001_initial	2018-05-31 13:58:15.098692+00
16	catalog	0002_auto_20180601_1143	2018-06-01 11:44:17.568006+00
17	catalog	0003_categoryparameterproduct_parameterproduct	2018-06-01 12:31:57.328201+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 17, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
rjg65yj0sr4ukzmbk9yykeo2efbsomvd	NjhhNmJiMzkwNmM3ZTFhZTdmNzZmYWI5NjJhNzdiYjM5NjI4ZDhhZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2ZmNzUzMGRjYzUzMTM3NjgzNGFmYzk5YmI4ODdhOWQ5MjIyNDQzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-06-14 14:29:56.314697+00
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: catalog_categoryparameterproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_categoryparameterproduct
    ADD CONSTRAINT catalog_categoryparameterproduct_pkey PRIMARY KEY (id);


--
-- Name: catalog_categoryproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_categoryproduct
    ADD CONSTRAINT catalog_categoryproduct_pkey PRIMARY KEY (id);


--
-- Name: catalog_imagesproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_imagesproduct
    ADD CONSTRAINT catalog_imagesproduct_pkey PRIMARY KEY (id);


--
-- Name: catalog_maincategoryproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_maincategoryproduct
    ADD CONSTRAINT catalog_maincategoryproduct_pkey PRIMARY KEY (id);


--
-- Name: catalog_parameterproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_parameterproduct
    ADD CONSTRAINT catalog_parameterproduct_pkey PRIMARY KEY (id);


--
-- Name: catalog_product_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_product
    ADD CONSTRAINT catalog_product_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: catalog_categoryproduct_main_category_id_65a11a36; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX catalog_categoryproduct_main_category_id_65a11a36 ON public.catalog_categoryproduct USING btree (main_category_id);


--
-- Name: catalog_imagesproduct_product_id_e08dff2d; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX catalog_imagesproduct_product_id_e08dff2d ON public.catalog_imagesproduct USING btree (product_id);


--
-- Name: catalog_parameterproduct_category_id_56bee4d1; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX catalog_parameterproduct_category_id_56bee4d1 ON public.catalog_parameterproduct USING btree (category_id);


--
-- Name: catalog_parameterproduct_product_id_c3c1ab44; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX catalog_parameterproduct_product_id_c3c1ab44 ON public.catalog_parameterproduct USING btree (product_id);


--
-- Name: catalog_product_category_id_35bf920b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX catalog_product_category_id_35bf920b ON public.catalog_product USING btree (category_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_categoryprod_main_category_id_65a11a36_fk_catalog_m; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_categoryproduct
    ADD CONSTRAINT catalog_categoryprod_main_category_id_65a11a36_fk_catalog_m FOREIGN KEY (main_category_id) REFERENCES public.catalog_maincategoryproduct(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_imagesproduct_product_id_e08dff2d_fk_catalog_product_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_imagesproduct
    ADD CONSTRAINT catalog_imagesproduct_product_id_e08dff2d_fk_catalog_product_id FOREIGN KEY (product_id) REFERENCES public.catalog_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_parameterpro_category_id_56bee4d1_fk_catalog_c; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_parameterproduct
    ADD CONSTRAINT catalog_parameterpro_category_id_56bee4d1_fk_catalog_c FOREIGN KEY (category_id) REFERENCES public.catalog_categoryparameterproduct(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_parameterpro_product_id_c3c1ab44_fk_catalog_p; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_parameterproduct
    ADD CONSTRAINT catalog_parameterpro_product_id_c3c1ab44_fk_catalog_p FOREIGN KEY (product_id) REFERENCES public.catalog_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_product_category_id_35bf920b_fk_catalog_c; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.catalog_product
    ADD CONSTRAINT catalog_product_category_id_35bf920b_fk_catalog_c FOREIGN KEY (category_id) REFERENCES public.catalog_categoryproduct(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

