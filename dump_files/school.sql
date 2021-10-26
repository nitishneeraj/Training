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
-- Name: state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.state (
    c_id integer NOT NULL,
    state character varying(20)
);


ALTER TABLE public.state OWNER TO postgres;

--
-- Name: city_c_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.city_c_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_c_id_seq OWNER TO postgres;

--
-- Name: city_c_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.city_c_id_seq OWNED BY public.state.c_id;


--
-- Name: course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course (
    cr_id integer NOT NULL,
    branch character varying(20)
);


ALTER TABLE public.course OWNER TO postgres;

--
-- Name: course_cr_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.course_cr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_cr_id_seq OWNER TO postgres;

--
-- Name: course_cr_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.course_cr_id_seq OWNED BY public.course.cr_id;


--
-- Name: hobby; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hobby (
    h_id integer NOT NULL,
    h_name character varying(20)
);


ALTER TABLE public.hobby OWNER TO postgres;

--
-- Name: hobby_h_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hobby_h_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hobby_h_id_seq OWNER TO postgres;

--
-- Name: hobby_h_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hobby_h_id_seq OWNED BY public.hobby.h_id;


--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    st_id integer NOT NULL,
    name character varying(20),
    gender character varying(20),
    city_id integer,
    course_id integer,
    hb_id integer,
    dob date
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Name: student_st_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_st_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_st_id_seq OWNER TO postgres;

--
-- Name: student_st_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_st_id_seq OWNED BY public.student.st_id;


--
-- Name: course cr_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course ALTER COLUMN cr_id SET DEFAULT nextval('public.course_cr_id_seq'::regclass);


--
-- Name: hobby h_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hobby ALTER COLUMN h_id SET DEFAULT nextval('public.hobby_h_id_seq'::regclass);


--
-- Name: state c_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state ALTER COLUMN c_id SET DEFAULT nextval('public.city_c_id_seq'::regclass);


--
-- Name: student st_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student ALTER COLUMN st_id SET DEFAULT nextval('public.student_st_id_seq'::regclass);


--
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.course (cr_id, branch) FROM stdin;
5	BA
6	B.COM
7	BBA
8	MBA
1	BBA
2	B.COM
3	B.Tech
4	MBA
\.


--
-- Data for Name: hobby; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hobby (h_id, h_name) FROM stdin;
1	Movie
2	reading
3	driving
4	singing
\.


--
-- Data for Name: state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.state (c_id, state) FROM stdin;
1	UP
2	BR
4	RJ
6	GOA
8	RJ
3	BR
5	HR
7	RJ
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (st_id, name, gender, city_id, course_id, hb_id, dob) FROM stdin;
2	Mohan	Male	2	2	1	1998-10-12
1	rahul	male	2	3	1	1995-11-12
3	sita	female	4	1	3	1998-01-12
4	reeta	female	5	1	2	1999-11-12
5	kajal	female	6	4	4	2000-01-12
6	sohan	Male	4	3	2	2004-01-12
7	Yogesh	male	1	5	4	1998-04-12
8	retika	female	5	3	1	1998-11-12
\.


--
-- Name: city_c_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.city_c_id_seq', 1, false);


--
-- Name: course_cr_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.course_cr_id_seq', 1, false);


--
-- Name: hobby_h_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hobby_h_id_seq', 1, false);


--
-- Name: student_st_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_st_id_seq', 1, false);


--
-- Name: state city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT city_pkey PRIMARY KEY (c_id);


--
-- Name: course course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (cr_id);


--
-- Name: hobby hobby_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hobby
    ADD CONSTRAINT hobby_pkey PRIMARY KEY (h_id);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (st_id);


--
-- Name: student student_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.state(c_id);


--
-- Name: student student_city_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_city_id_fkey1 FOREIGN KEY (city_id) REFERENCES public.state(c_id);


--
-- Name: student student_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.course(cr_id);


--
-- Name: student student_hb_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_hb_id_fkey FOREIGN KEY (hb_id) REFERENCES public.hobby(h_id);


--
-- PostgreSQL database dump complete
--

