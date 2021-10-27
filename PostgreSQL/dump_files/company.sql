--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

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
-- Name: car; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.car (
    id integer NOT NULL,
    model character varying(20)
);


ALTER TABLE public.car OWNER TO postgres;

--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    name character varying(20),
    email character varying(20),
    date_of_birth date,
    gender character varying(10),
    department character varying(20),
    salary integer
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: id; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.id (
    id integer NOT NULL,
    c_id integer,
    p_id integer,
    e_id integer
);


ALTER TABLE public.id OWNER TO postgres;

--
-- Name: id_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.id_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_id_seq OWNER TO postgres;

--
-- Name: id_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.id_id_seq OWNED BY public.id.id;


--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    id integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Name: project_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_id_seq OWNER TO postgres;

--
-- Name: project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.project_id_seq OWNED BY public.project.id;


--
-- Name: id id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id ALTER COLUMN id SET DEFAULT nextval('public.id_id_seq'::regclass);


--
-- Name: project id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project ALTER COLUMN id SET DEFAULT nextval('public.project_id_seq'::regclass);


--
-- Data for Name: car; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.car (id, model) FROM stdin;
1	volvo S90
2	volvo XC60
3	TATA Punch
4	TATA Punch
5	MG Aster
6	Mahindra XUV700
7	Hyundai i20 N Line
8	Audi e-tron GT
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (id, name, email, date_of_birth, gender, department, salary) FROM stdin;
1	Rahul	rahul@gmail.com	1998-04-14	male	sales	15000
2	Mohan	mohan@gmail.com	1997-10-20	male	Human Resource	20000
3	sita	sita@gmail.com	2020-10-20	female	Human Resource	18000
6	mukesh	mukesh@gmail.com	1999-05-10	male	Purchase	25000
4	kajal	kajal@gmail.com	1998-11-15	female	Finance	25000
5	ram	ram@gmail.com	1996-01-15	male	Purchase	23000
7	sanjay	sanjay@gmail.com	1995-04-10	male	IT	30000
8	suraj	saraj@gmail.com	1990-08-17	male	IT	35000
9	sagar	sagar@gmail.com	1993-06-19	male	Account	35000
10	sapna	sapna@gmail.com	1994-07-19	female	Marketing	25000
\.


--
-- Data for Name: id; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.id (id, c_id, p_id, e_id) FROM stdin;
1	1	2	2
5	4	4	3
9	7	1	8
2	2	2	3
3	1	2	2
4	4	2	3
7	7	3	8
8	8	4	8
6	6	2	5
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project (id, name) FROM stdin;
1	Batman
2	Canary
3	Hornets
4	Bigfoot
5	Cascade
\.


--
-- Name: id_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.id_id_seq', 1, false);


--
-- Name: project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_id_seq', 1, false);


--
-- Name: car car_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (id);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- Name: id id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id
    ADD CONSTRAINT id_pkey PRIMARY KEY (id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);


--
-- Name: id id_c_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id
    ADD CONSTRAINT id_c_id_fkey FOREIGN KEY (c_id) REFERENCES public.car(id);


--
-- Name: id id_e_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id
    ADD CONSTRAINT id_e_id_fkey FOREIGN KEY (e_id) REFERENCES public.employee(id);


--
-- Name: id id_p_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id
    ADD CONSTRAINT id_p_id_fkey FOREIGN KEY (p_id) REFERENCES public.project(id);


--
-- PostgreSQL database dump complete
--

