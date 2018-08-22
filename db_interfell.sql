--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.13

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
-- Name: academic_degree; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.academic_degree (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.academic_degree OWNER TO postgres;

--
-- Name: academic_degree_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.academic_degree_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.academic_degree_id_seq OWNER TO postgres;

--
-- Name: academic_degree_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.academic_degree_id_seq OWNED BY public.academic_degree.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.city (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.city OWNER TO postgres;

--
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_id_seq OWNER TO postgres;

--
-- Name: city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.city_id_seq OWNED BY public.city.id;


--
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.country OWNER TO postgres;

--
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_id_seq OWNER TO postgres;

--
-- Name: country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
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
    date_joined timestamp with time zone NOT NULL,
    address text NOT NULL,
    academic_degree_id integer,
    city_id integer
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.user_groups OWNER TO postgres;

--
-- Name: user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_groups_id_seq OWNER TO postgres;

--
-- Name: user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_groups_id_seq OWNED BY public.user_groups.id;


--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.user_user_permissions OWNER TO postgres;

--
-- Name: user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_permissions_id_seq OWNED BY public.user_user_permissions.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_degree ALTER COLUMN id SET DEFAULT nextval('public.academic_degree_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city ALTER COLUMN id SET DEFAULT nextval('public.city_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_user_permissions_id_seq'::regclass);


--
-- Data for Name: academic_degree; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.academic_degree (id, name) FROM stdin;
4	Básica
5	Bachiller
6	Universitaria
\.


--
-- Name: academic_degree_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.academic_degree_id_seq', 6, true);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add academic degree	7	add_academicdegree
26	Can change academic degree	7	change_academicdegree
27	Can delete academic degree	7	delete_academicdegree
28	Can view academic degree	7	view_academicdegree
29	Can add city	8	add_city
30	Can change city	8	change_city
31	Can delete city	8	delete_city
32	Can view city	8	view_city
33	Can add country	9	add_country
34	Can change country	9	change_country
35	Can delete country	9	delete_country
36	Can view country	9	view_country
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.city (id, name, country_id) FROM stdin;
1	Caracas	1
2	Bogota	2
3	Buenos Aires	3
4	Santiago de Chile	4
5	Lima	5
6	La Paz	6
7	Montevideo	7
8	Brasilia	8
9	Tachira	1
10	Bolivar	1
11	La Plata	3
12	Valparaiso	4
13	Sao Paolo	8
\.


--
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.city_id_seq', 13, true);


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.country (id, name) FROM stdin;
1	Venezuela
2	Colombia
3	Argentina
4	Chile
5	Peru
6	Bolivia
7	Uruguay
8	Brasil
\.


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_id_seq', 8, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-08-20 13:42:42.978416-04	1	Venezuela	1	[{"added": {}}]	9	2
2	2018-08-20 13:42:49.932403-04	2	Colombia	1	[{"added": {}}]	9	2
3	2018-08-20 13:42:58.605266-04	3	Argentina	1	[{"added": {}}]	9	2
4	2018-08-20 13:43:02.147519-04	4	Chile	1	[{"added": {}}]	9	2
5	2018-08-20 13:43:05.485179-04	5	Peru	1	[{"added": {}}]	9	2
6	2018-08-20 13:43:09.857321-04	6	Bolivia	1	[{"added": {}}]	9	2
7	2018-08-20 13:43:14.004828-04	7	Uruguay	1	[{"added": {}}]	9	2
8	2018-08-20 13:43:20.09683-04	8	Brasil	1	[{"added": {}}]	9	2
9	2018-08-20 13:43:31.107437-04	1	Caracas, Venezuela	1	[{"added": {}}]	8	2
10	2018-08-20 13:43:46.601879-04	2	Bogota, Colombia	1	[{"added": {}}]	8	2
11	2018-08-20 13:43:54.428877-04	3	Buenos Aires, Argentina	1	[{"added": {}}]	8	2
12	2018-08-20 13:44:03.020587-04	4	Santiago de Chile, Chile	1	[{"added": {}}]	8	2
13	2018-08-20 13:44:11.786477-04	5	Lima, Peru	1	[{"added": {}}]	8	2
14	2018-08-20 13:44:35.065392-04	6	La Paz, Bolivia	1	[{"added": {}}]	8	2
15	2018-08-20 13:44:56.785075-04	7	Montevideo, Uruguay	1	[{"added": {}}]	8	2
16	2018-08-20 13:45:13.277211-04	8	Brasilia, Brasil	1	[{"added": {}}]	8	2
17	2018-08-20 13:45:48.871238-04	1	0	1	[{"added": {}}]	7	2
18	2018-08-20 13:45:54.296393-04	2	1	1	[{"added": {}}]	7	2
19	2018-08-20 13:45:58.657795-04	3	2	1	[{"added": {}}]	7	2
20	2018-08-20 21:46:39.838026-04	3	2	3		7	2
21	2018-08-20 21:46:40.114332-04	2	1	3		7	2
22	2018-08-20 21:46:40.134431-04	1	0	3		7	2
23	2018-08-20 21:48:37.9504-04	4	Básica	1	[{"added": {}}]	7	2
24	2018-08-20 21:48:43.220194-04	5	Bachiller	1	[{"added": {}}]	7	2
25	2018-08-20 21:48:51.270539-04	6	Universitaria	1	[{"added": {}}]	7	2
26	2018-08-20 23:45:54.595378-04	2	Admin Admin	2	[{"changed": {"fields": ["last_login", "first_name", "last_name", "email", "city", "academic_degree"]}}]	6	2
27	2018-08-20 23:48:42.545759-04	2	Admin Admin	2	[{"changed": {"fields": ["address"]}}]	6	2
28	2018-08-21 19:42:04.709914-04	9	Tachira, Venezuela	1	[{"added": {}}]	8	2
29	2018-08-21 19:42:11.595923-04	10	Bolivar, Venezuela	1	[{"added": {}}]	8	2
30	2018-08-21 19:42:19.90698-04	11	La Plata, Argentina	1	[{"added": {}}]	8	2
31	2018-08-21 19:42:28.320177-04	12	Valparaiso, Chile	1	[{"added": {}}]	8	2
32	2018-08-21 19:42:37.93909-04	13	Sao Paolo, Brasil	1	[{"added": {}}]	8	2
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 32, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	user	user
7	user	academicdegree
8	user	city
9	user	country
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-08-20 13:05:40.808519-04
2	contenttypes	0002_remove_content_type_name	2018-08-20 13:05:40.859915-04
3	auth	0001_initial	2018-08-20 13:05:41.397087-04
4	auth	0002_alter_permission_name_max_length	2018-08-20 13:05:41.443262-04
5	auth	0003_alter_user_email_max_length	2018-08-20 13:05:41.479926-04
6	auth	0004_alter_user_username_opts	2018-08-20 13:05:41.501564-04
7	auth	0005_alter_user_last_login_null	2018-08-20 13:05:41.523726-04
8	auth	0006_require_contenttypes_0002	2018-08-20 13:05:41.537668-04
9	auth	0007_alter_validators_add_error_messages	2018-08-20 13:05:41.557622-04
10	auth	0008_alter_user_username_max_length	2018-08-20 13:05:41.57797-04
11	auth	0009_alter_user_last_name_max_length	2018-08-20 13:05:41.588306-04
12	user	0001_initial	2018-08-20 13:05:42.51008-04
13	admin	0001_initial	2018-08-20 13:05:42.843645-04
14	admin	0002_logentry_remove_auto_add	2018-08-20 13:05:42.917351-04
15	admin	0003_logentry_add_action_flag_choices	2018-08-20 13:05:42.963354-04
16	sessions	0001_initial	2018-08-20 13:05:43.189703-04
17	user	0002_auto_20180820_1708	2018-08-20 13:08:03.513486-04
18	user	0003_auto_20180821_0148	2018-08-20 21:48:13.856115-04
19	user	0004_auto_20180821_0239	2018-08-20 22:39:39.572928-04
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
fn79925e8kw5ewsld5md6lsk09e8unzi	ZmQ4MzE1ZTY5YWM0NDk5YjFkMTdhOTZjM2FhZGFmYzcwNzIzZTUwMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiJlODUxOTAxNTRmOGJlZTA5MWFjYzZiNTU2ZjRkYWNiYTU5MWEzMzVlIn0=	2018-09-03 18:37:28.611542-04
tnmhc60kp8e2sfuf1blk17cxlwbfuynp	ZGMzYWM4NThiMDA3MjRhODRmODczNTZmM2VmMzg1OTBkMGJhNDhmNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTg1MTkwMTU0ZjhiZWUwOTFhY2M2YjU1NmY0ZGFjYmE1OTFhMzM1ZSIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-09-03 19:05:03.184048-04
opuz950dgh2z8h7sdv2nvmydz20fmnjj	Y2NjMDVhYjY2MTlkMzcwNDlhMWYxZDczYzBkNjMyNDcwNGMxZjE5OTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlODUxOTAxNTRmOGJlZTA5MWFjYzZiNTU2ZjRkYWNiYTU5MWEzMzVlIn0=	2018-09-03 19:49:38.086424-04
y1s8vw8p6glkf47s214fi70dxmndzpyk	ZGMzYWM4NThiMDA3MjRhODRmODczNTZmM2VmMzg1OTBkMGJhNDhmNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTg1MTkwMTU0ZjhiZWUwOTFhY2M2YjU1NmY0ZGFjYmE1OTFhMzM1ZSIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-09-03 22:27:58.615001-04
1fkfr4rj6o4c0lnfx59s5sj6jl22hh11	ZmQ4MzE1ZTY5YWM0NDk5YjFkMTdhOTZjM2FhZGFmYzcwNzIzZTUwMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiJlODUxOTAxNTRmOGJlZTA5MWFjYzZiNTU2ZjRkYWNiYTU5MWEzMzVlIn0=	2018-09-03 23:38:30.244298-04
1yusam84e12bm5yhuyeztx7167k293bs	ZmQ4MzE1ZTY5YWM0NDk5YjFkMTdhOTZjM2FhZGFmYzcwNzIzZTUwMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiJlODUxOTAxNTRmOGJlZTA5MWFjYzZiNTU2ZjRkYWNiYTU5MWEzMzVlIn0=	2018-09-03 23:39:11.372336-04
h2p3ax5g69dwjdy2gxbqsgec0e3jbe2c	ZmQ4MzE1ZTY5YWM0NDk5YjFkMTdhOTZjM2FhZGFmYzcwNzIzZTUwMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiJlODUxOTAxNTRmOGJlZTA5MWFjYzZiNTU2ZjRkYWNiYTU5MWEzMzVlIn0=	2018-09-03 23:54:29.55248-04
n3s6jd7var7cnhtjmoysxq34qs8ak2ed	ZmQ4MzE1ZTY5YWM0NDk5YjFkMTdhOTZjM2FhZGFmYzcwNzIzZTUwMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiJlODUxOTAxNTRmOGJlZTA5MWFjYzZiNTU2ZjRkYWNiYTU5MWEzMzVlIn0=	2018-09-04 00:32:38.636632-04
1zm04r87nzebg78qr7xdx2ig2xuk5j9y	ZmQ4MzE1ZTY5YWM0NDk5YjFkMTdhOTZjM2FhZGFmYzcwNzIzZTUwMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiJlODUxOTAxNTRmOGJlZTA5MWFjYzZiNTU2ZjRkYWNiYTU5MWEzMzVlIn0=	2018-09-04 00:33:21.151225-04
jstj7t6iv5xaon2ekso3q35pe53lgy2s	ZmQ4MzE1ZTY5YWM0NDk5YjFkMTdhOTZjM2FhZGFmYzcwNzIzZTUwMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiJlODUxOTAxNTRmOGJlZTA5MWFjYzZiNTU2ZjRkYWNiYTU5MWEzMzVlIn0=	2018-09-04 00:33:27.878877-04
mz6jz59ac0h08d6ttnpwvs120d744n8b	ZmQ4MzE1ZTY5YWM0NDk5YjFkMTdhOTZjM2FhZGFmYzcwNzIzZTUwMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiJlODUxOTAxNTRmOGJlZTA5MWFjYzZiNTU2ZjRkYWNiYTU5MWEzMzVlIn0=	2018-09-04 00:36:15.549075-04
z23qproock7zoabl2j8xe8z8ad44ybaj	ODZlMTU5MzJjNzllMmI4ZDY2NmM3NGRhMTViYzZhNWExOTkyODIxOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiIwYWIxMzhkMjQwNGQzMzhhZDlmNjdhNDE0MzhlMDNmNzYxZTQ4ZWI4In0=	2018-09-04 11:42:20.276384-04
w0ndmf8dh5oio091y1fexbg8vizono5u	MTQyMDY4NzljYjUyMGJhMzYzZDEyN2QyY2M4OWJhYjk3MGNmMDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGFiMTM4ZDI0MDRkMzM4YWQ5ZjY3YTQxNDM4ZTAzZjc2MWU0OGViOCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-09-04 12:02:18.112881-04
91xkf3y5x4xkbjy9rmf2o07wahj6czst	YmE3OTY3YTg4ZWE3ZGIzZmE3YmJjMDk4OWRiOGMxYzBjOTZkYjVhODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhYjEzOGQyNDA0ZDMzOGFkOWY2N2E0MTQzOGUwM2Y3NjFlNDhlYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-09-04 13:53:19.660102-04
lcoe8jxipkekw71v4lhsqs4oohwdchq0	YmE3OTY3YTg4ZWE3ZGIzZmE3YmJjMDk4OWRiOGMxYzBjOTZkYjVhODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhYjEzOGQyNDA0ZDMzOGFkOWY2N2E0MTQzOGUwM2Y3NjFlNDhlYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-09-04 13:53:40.37168-04
9km25or0wuph1k5qxfxb4a6dqqgyr7p0	OGZjZTUwNzExZDViYjY3NWFhYjFmYWEwZDk5M2JhYjc5ODhhZjc0NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGFiMTM4ZDI0MDRkMzM4YWQ5ZjY3YTQxNDM4ZTAzZjc2MWU0OGViOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-09-04 13:56:37.062091-04
iu44wg4nli0iv4gfd7ockldgc5iscvnf	OGZjZTUwNzExZDViYjY3NWFhYjFmYWEwZDk5M2JhYjc5ODhhZjc0NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGFiMTM4ZDI0MDRkMzM4YWQ5ZjY3YTQxNDM4ZTAzZjc2MWU0OGViOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-09-04 13:59:43.312946-04
sq1itbgj4khgt5r9e21ye7ppfhnck9sq	MTQyMDY4NzljYjUyMGJhMzYzZDEyN2QyY2M4OWJhYjk3MGNmMDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGFiMTM4ZDI0MDRkMzM4YWQ5ZjY3YTQxNDM4ZTAzZjc2MWU0OGViOCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-09-04 14:00:12.315531-04
av8us0tnx17yhl3q067q6s1n2gg58j3c	OGZjZTUwNzExZDViYjY3NWFhYjFmYWEwZDk5M2JhYjc5ODhhZjc0NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGFiMTM4ZDI0MDRkMzM4YWQ5ZjY3YTQxNDM4ZTAzZjc2MWU0OGViOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-09-04 14:00:43.190297-04
tsyy34zem3ufr5o2zhduwc2urgvuogjp	MjkxMjQ4YzkwZThkOGE3ODAzN2NkNTUxNGFlOTNkZGRkMjM4NGZjODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhYjEzOGQyNDA0ZDMzOGFkOWY2N2E0MTQzOGUwM2Y3NjFlNDhlYjgiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-09-04 14:03:45.700536-04
xrt2f6216dgoqd8wfotk6xeqj85fbq0b	OGZjZTUwNzExZDViYjY3NWFhYjFmYWEwZDk5M2JhYjc5ODhhZjc0NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGFiMTM4ZDI0MDRkMzM4YWQ5ZjY3YTQxNDM4ZTAzZjc2MWU0OGViOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-09-04 14:04:39.470376-04
kmdswjyroao3ypgjro6vz47z98xvahwy	MjkxMjQ4YzkwZThkOGE3ODAzN2NkNTUxNGFlOTNkZGRkMjM4NGZjODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhYjEzOGQyNDA0ZDMzOGFkOWY2N2E0MTQzOGUwM2Y3NjFlNDhlYjgiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-09-04 14:05:37.869447-04
0lc3glk3mohuzfwtqrplrkcxikd40uwp	MjkxMjQ4YzkwZThkOGE3ODAzN2NkNTUxNGFlOTNkZGRkMjM4NGZjODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhYjEzOGQyNDA0ZDMzOGFkOWY2N2E0MTQzOGUwM2Y3NjFlNDhlYjgiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-09-04 14:08:36.235279-04
ajyyhc2suwyqtjc4p9lc1gm02zos79vg	YmE3OTY3YTg4ZWE3ZGIzZmE3YmJjMDk4OWRiOGMxYzBjOTZkYjVhODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhYjEzOGQyNDA0ZDMzOGFkOWY2N2E0MTQzOGUwM2Y3NjFlNDhlYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-09-04 14:09:34.631955-04
f3be2esy3cnkr0cs0sq7ht8p6py3yojj	YmE3OTY3YTg4ZWE3ZGIzZmE3YmJjMDk4OWRiOGMxYzBjOTZkYjVhODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhYjEzOGQyNDA0ZDMzOGFkOWY2N2E0MTQzOGUwM2Y3NjFlNDhlYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-09-04 14:10:14.61543-04
edf97w7vjjvt008j76o84udv1wn5sk8c	YmE3OTY3YTg4ZWE3ZGIzZmE3YmJjMDk4OWRiOGMxYzBjOTZkYjVhODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhYjEzOGQyNDA0ZDMzOGFkOWY2N2E0MTQzOGUwM2Y3NjFlNDhlYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-09-04 14:12:00.821073-04
s2rjrpaoft3qqu6inoo817xhlpsvcohx	YmE3OTY3YTg4ZWE3ZGIzZmE3YmJjMDk4OWRiOGMxYzBjOTZkYjVhODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhYjEzOGQyNDA0ZDMzOGFkOWY2N2E0MTQzOGUwM2Y3NjFlNDhlYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-09-04 14:14:29.965209-04
xjyjn8gg0gql0od3h21uzsp3679rmc95	YmE3OTY3YTg4ZWE3ZGIzZmE3YmJjMDk4OWRiOGMxYzBjOTZkYjVhODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhYjEzOGQyNDA0ZDMzOGFkOWY2N2E0MTQzOGUwM2Y3NjFlNDhlYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-09-04 14:17:55.981023-04
rf4e85aa6i573k70fflvkjm1i0g2a3w1	OGZjZTUwNzExZDViYjY3NWFhYjFmYWEwZDk5M2JhYjc5ODhhZjc0NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGFiMTM4ZDI0MDRkMzM4YWQ5ZjY3YTQxNDM4ZTAzZjc2MWU0OGViOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-09-04 14:31:43.216436-04
xfn39mygmg8ih014m4wbrchw533we6l1	OGZjZTUwNzExZDViYjY3NWFhYjFmYWEwZDk5M2JhYjc5ODhhZjc0NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGFiMTM4ZDI0MDRkMzM4YWQ5ZjY3YTQxNDM4ZTAzZjc2MWU0OGViOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-09-04 14:32:27.179223-04
8c2b7i8nkvnasbnt3h3pw0g4wqm25ldh	YzgzOGZkMjMwMDczYzU4YjQyMjBkNWM1MjUzMzZmMmNiNGY1ZTExODp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjFiYWU2YTk5MzhlNTlkYmZiMTU1Yjk0NWM5NjcwODY5N2EyZDMzIn0=	2018-09-04 15:14:36.987088-04
whse1cene6n5doq7rzrgk99lb5k2d3hy	Y2U2YWE2MWIxNGVkMDNhYjA3MDdmNDQ0Yzk2NmEyOWMyZWJhN2ZiOTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNDg1MGUxZWU5NmI3NTcyNGZmZjZhZDZhMzc4NzU1NTc1YmIxYzdmIn0=	2018-09-04 18:45:36.093537-04
zr4l0yzkp3rs88j25ivaaswlnycatdx5	ZmJlMTZkYzVlZTZlMzAyNzEwNjE3Y2UwYTlkYjhiNmZlNGMyNTJiNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYWIxMzhkMjQwNGQzMzhhZDlmNjdhNDE0MzhlMDNmNzYxZTQ4ZWI4In0=	2018-09-04 19:25:11.685749-04
xnjyo3ssbksxwws0ih2awwzz3itagkxo	ZmJlMTZkYzVlZTZlMzAyNzEwNjE3Y2UwYTlkYjhiNmZlNGMyNTJiNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYWIxMzhkMjQwNGQzMzhhZDlmNjdhNDE0MzhlMDNmNzYxZTQ4ZWI4In0=	2018-09-04 19:28:40.508992-04
v8jiw4mcohioawtkiawvort083x2vc35	ZmJlMTZkYzVlZTZlMzAyNzEwNjE3Y2UwYTlkYjhiNmZlNGMyNTJiNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYWIxMzhkMjQwNGQzMzhhZDlmNjdhNDE0MzhlMDNmNzYxZTQ4ZWI4In0=	2018-09-04 19:31:09.138744-04
p40rj555eld2uovu9y8y02bd4r2kr4b1	ZmJlMTZkYzVlZTZlMzAyNzEwNjE3Y2UwYTlkYjhiNmZlNGMyNTJiNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYWIxMzhkMjQwNGQzMzhhZDlmNjdhNDE0MzhlMDNmNzYxZTQ4ZWI4In0=	2018-09-04 19:32:09.95382-04
72kj9jec6jcfg4xysoed4lctz5mr0fho	ZmJlMTZkYzVlZTZlMzAyNzEwNjE3Y2UwYTlkYjhiNmZlNGMyNTJiNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYWIxMzhkMjQwNGQzMzhhZDlmNjdhNDE0MzhlMDNmNzYxZTQ4ZWI4In0=	2018-09-04 19:37:32.658936-04
aaqoyo47ae96ikclx1w9jb2nua80np9w	ZmJlMTZkYzVlZTZlMzAyNzEwNjE3Y2UwYTlkYjhiNmZlNGMyNTJiNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYWIxMzhkMjQwNGQzMzhhZDlmNjdhNDE0MzhlMDNmNzYxZTQ4ZWI4In0=	2018-09-04 19:39:39.205725-04
h3np6ur5y7fgmcjrlzjwsu3yvypesklz	ZmJlMTZkYzVlZTZlMzAyNzEwNjE3Y2UwYTlkYjhiNmZlNGMyNTJiNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYWIxMzhkMjQwNGQzMzhhZDlmNjdhNDE0MzhlMDNmNzYxZTQ4ZWI4In0=	2018-09-04 19:43:27.144749-04
k1wtiuqrrhklazebusyah4bnr5r2wv2i	ZmJlMTZkYzVlZTZlMzAyNzEwNjE3Y2UwYTlkYjhiNmZlNGMyNTJiNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYWIxMzhkMjQwNGQzMzhhZDlmNjdhNDE0MzhlMDNmNzYxZTQ4ZWI4In0=	2018-09-04 19:49:10.982781-04
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, address, academic_degree_id, city_id) FROM stdin;
4	pbkdf2_sha256$100000$4kKrsSL4IIk1$ATNjZM+birgnwSja3NIY+sjSVOQjgP/kFouqrwHz4JA=	2018-08-21 15:14:36.970444-04	f	pgonzalez	Pepe	Gonzalez	pgonzalez@gmail.com	f	t	2018-08-21 15:14:22.287711-04	avenida venezuela	6	1
5	pbkdf2_sha256$100000$LZlNK22X8GCv$dcY+D8EfyGLSKIpk/TAFMLQ24nKFxv/RVMdUFiascVY=	2018-08-21 18:45:36.079077-04	f	jgcastro	Gabriel	Castro	jose.castro@gmail.com	f	t	2018-08-21 18:45:05.236809-04	los palos grandes	6	2
2	pbkdf2_sha256$100000$f2wQQo6jsUME$pB6AU8pdxyDGjBLeWcECB4nkcBSs6aChqUQnVfoqcKs=	2018-08-21 19:49:10.961711-04	t	admin	Jose	Castro	josegregorio994@gmail.com	t	t	2018-08-20 13:08:22-04	los palos grandes	6	1
\.


--
-- Data for Name: user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_groups_id_seq', 1, false);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 5, true);


--
-- Data for Name: user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_permissions_id_seq', 1, false);


--
-- Name: academic_degree_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_degree
    ADD CONSTRAINT academic_degree_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- Name: country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_pkey PRIMARY KEY (id);


--
-- Name: user_groups_user_id_group_id_40beef00_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_user_id_group_id_40beef00_uniq UNIQUE (user_id, group_id);


--
-- Name: user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_permissions
    ADD CONSTRAINT user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: user_user_permissions_user_id_permission_id_7dc6e2e0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_permissions
    ADD CONSTRAINT user_user_permissions_user_id_permission_id_7dc6e2e0_uniq UNIQUE (user_id, permission_id);


--
-- Name: user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: city_country_id_ec9de532; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX city_country_id_ec9de532 ON public.city USING btree (country_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: user_academic_degree_id_efc4ec09; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_academic_degree_id_efc4ec09 ON public."user" USING btree (academic_degree_id);


--
-- Name: user_city_id_62c8c5db; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_city_id_62c8c5db ON public."user" USING btree (city_id);


--
-- Name: user_groups_group_id_b76f8aba; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_groups_group_id_b76f8aba ON public.user_groups USING btree (group_id);


--
-- Name: user_groups_user_id_abaea130; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_groups_user_id_abaea130 ON public.user_groups USING btree (user_id);


--
-- Name: user_user_permissions_permission_id_9deb68a3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_permissions_permission_id_9deb68a3 ON public.user_user_permissions USING btree (permission_id);


--
-- Name: user_user_permissions_user_id_ed4a47ea; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_permissions_user_id_ed4a47ea ON public.user_user_permissions USING btree (user_id);


--
-- Name: user_username_cf016618_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_username_cf016618_like ON public."user" USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: city_country_id_ec9de532_fk_country_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_country_id_ec9de532_fk_country_id FOREIGN KEY (country_id) REFERENCES public.country(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_id FOREIGN KEY (user_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_academic_degree_id_efc4ec09_fk_academic_degree_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_academic_degree_id_efc4ec09_fk_academic_degree_id FOREIGN KEY (academic_degree_id) REFERENCES public.academic_degree(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_city_id_62c8c5db_fk_city_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_city_id_62c8c5db_fk_city_id FOREIGN KEY (city_id) REFERENCES public.city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_groups_group_id_b76f8aba_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_group_id_b76f8aba_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_groups_user_id_abaea130_fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_user_id_abaea130_fk_user_id FOREIGN KEY (user_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_permission_permission_id_9deb68a3_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_permissions
    ADD CONSTRAINT user_user_permission_permission_id_9deb68a3_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_permissions_user_id_ed4a47ea_fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_permissions
    ADD CONSTRAINT user_user_permissions_user_id_ed4a47ea_fk_user_id FOREIGN KEY (user_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;


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

