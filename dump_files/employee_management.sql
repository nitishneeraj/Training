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
-- Name: course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course (
    c_id integer NOT NULL,
    course_name character varying(50)
);


ALTER TABLE public.course OWNER TO postgres;

--
-- Name: course_c_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.course_c_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_c_id_seq OWNER TO postgres;

--
-- Name: course_c_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.course_c_id_seq OWNED BY public.course.c_id;


--
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    d_id integer NOT NULL,
    department_name character varying(50),
    salary integer
);


ALTER TABLE public.department OWNER TO postgres;

--
-- Name: depatment_d_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.depatment_d_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.depatment_d_id_seq OWNER TO postgres;

--
-- Name: depatment_d_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.depatment_d_id_seq OWNED BY public.department.d_id;


--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    emp_id integer NOT NULL,
    emp_name character varying(50) NOT NULL,
    dob date NOT NULL,
    city character varying(50),
    pin character varying(50)
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: employees_emp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_emp_id_seq OWNER TO postgres;

--
-- Name: employees_emp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_emp_id_seq OWNED BY public.employee.emp_id;


--
-- Name: id; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.id (
    s_id integer,
    c_id integer,
    d_id integer,
    emp_id integer,
    id integer NOT NULL
);


ALTER TABLE public.id OWNER TO postgres;

--
-- Name: intern; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.intern (
    s_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    gender character varying(50),
    email character varying(50),
    address character varying(50),
    date_of_birth date
);


ALTER TABLE public.intern OWNER TO postgres;

--
-- Name: student_s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_s_id_seq OWNER TO postgres;

--
-- Name: student_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_s_id_seq OWNED BY public.intern.s_id;


--
-- Name: course c_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course ALTER COLUMN c_id SET DEFAULT nextval('public.course_c_id_seq'::regclass);


--
-- Name: department d_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department ALTER COLUMN d_id SET DEFAULT nextval('public.depatment_d_id_seq'::regclass);


--
-- Name: employee emp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN emp_id SET DEFAULT nextval('public.employees_emp_id_seq'::regclass);


--
-- Name: intern s_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intern ALTER COLUMN s_id SET DEFAULT nextval('public.student_s_id_seq'::regclass);


--
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.course (c_id, course_name) FROM stdin;
1	MBA
2	BBA
3	MS
4	B.COM
5	B.TECH
6	MBBS
7	BA
8	B.ED
9	BCA
10	BSC
\.


--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department (d_id, department_name, salary) FROM stdin;
1	Support	10000
2	Accounting	20000
4	Human Resources	25000
3	Marketing	22000
5	Product Management	26000
6	Accounting	30000
7	Human Resources	35000
8	Marketing	32000
9	Legal	35000
10	Business Development	30000
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (emp_id, emp_name, dob, city, pin) FROM stdin;
2	Lemar Shearer	2021-04-01	Terang	043
3	Melamie Lenahan	2020-10-11	Barrancas	4195
7	Aveline Meeus	2021-06-02	Leigu	5167
8	Renate Walsh	2021-03-02	Foxton	4
11	Sigrid MacAindreis	2021-04-05	Wiązownica	72
12	Barnie Hartell	2020-11-11	Baoyang	723
15	Westbrook Forrington	2021-12-04	Sainte-Anne-des-Monts	370
18	Raleigh Brisbane	2021-05-01	Cherryville	34343
25	Olivie Nutter	2021-07-04	Babice	933
28	Charlotte Hartington	2020-12-11	Kinsealy-Drinan	60099
29	Theresina Durham	2021-02-02	Jāti	436
\.


--
-- Data for Name: id; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.id (s_id, c_id, d_id, emp_id, id) FROM stdin;
1	1	1	2	1
2	2	2	3	2
3	3	3	8	3
4	4	4	29	4
4	4	4	25	5
2	4	5	28	6
\.


--
-- Data for Name: intern; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.intern (s_id, first_name, last_name, gender, email, address, date_of_birth) FROM stdin;
1	Guillemette	Coggeshall	F	gcoggeshall0@usnews.com	12833 Hanson Trail	1997-01-01
2	Veriee	Hakeworth	F	vhakeworth1@flavors.me	52 Golf View Place	1998-02-02
3	Tyrus	Clausewitz	M	tclausewitz2@geocities.jp	3 Mayer Point	1999-03-03
4	Julietta	Fewlass	F	jfewlass3@com.com	7 Dawn Hill	2000-04-04
5	Alexandro	Margrem	M	amargrem4@alibaba.com	01330 Doe Crossing Avenue	2001-05-05
6	Jayson	Foster-Smith	M	jfostersmith5@pinterest.com	09 Dennis Parkway	2001-06-05
7	Tyrus	Toovey	M	ttoovey6@wikispaces.com	7 Blaine Junction	1998-06-02
8	Mommy	Croasdale	F	mcroasdale7@mediafire.com	2 Bonner Pass	1996-06-01
9	Whitney	Cloney	M	wcloney8@hatena.ne.jp	80462 Tennessee Pass	1995-05-01
10	Grannie	Pumphrey	M	gpumphrey9@engadget.com	6 Green Circle	1997-11-01
11	Eldridge	Shilvock	M	eshilvocka@columbia.edu	95522 Laurel Place	1994-12-11
12	Randy	Kibby	M	rkibbyb@hud.gov	20010 Vermont Street	1998-12-14
13	Stanford	Thorburn	M	sthorburnc@edublogs.org	68647 Clyde Gallagher Park	1997-12-14
14	Ekaterina	Aspy	F	easpyd@weibo.com	605 Fallview Crossing	1994-09-14
15	Ferdie	Mangenet	M	fmangenete@nifty.com	13891 Northwestern Junction	1994-10-14
16	Arlette	Stockoe	F	astockoef@myspace.com	860 Upham Street	1996-10-13
17	Lynde	Courvert	F	lcourvertg@pen.io	0932 Lighthouse Bay Plaza	1994-11-13
18	Sharona	Emmet	F	semmeth@ted.com	93927 Miller Court	1993-12-13
19	Padgett	Maddicks	M	pmaddicksi@ibm.com	0653 Saint Paul Parkway	1999-07-13
20	Opalina	Lemanu	F	olemanuj@prnewswire.com	6561 Menomonie Street	2000-07-13
\.


--
-- Name: course_c_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.course_c_id_seq', 1, false);


--
-- Name: depatment_d_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.depatment_d_id_seq', 3, true);


--
-- Name: employees_emp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_emp_id_seq', 1, false);


--
-- Name: student_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_s_id_seq', 1, false);


--
-- Name: course course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (c_id);


--
-- Name: department depatment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT depatment_pkey PRIMARY KEY (d_id);


--
-- Name: employee employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_id);


--
-- Name: id id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id
    ADD CONSTRAINT id_pkey PRIMARY KEY (id);


--
-- Name: intern student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intern
    ADD CONSTRAINT student_pkey PRIMARY KEY (s_id);


--
-- Name: id id_c_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id
    ADD CONSTRAINT id_c_id_fkey FOREIGN KEY (c_id) REFERENCES public.course(c_id);


--
-- Name: id id_d_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id
    ADD CONSTRAINT id_d_id_fkey FOREIGN KEY (d_id) REFERENCES public.department(d_id);


--
-- Name: id id_emp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id
    ADD CONSTRAINT id_emp_id_fkey FOREIGN KEY (emp_id) REFERENCES public.employee(emp_id);


--
-- Name: id id_s_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id
    ADD CONSTRAINT id_s_id_fkey FOREIGN KEY (s_id) REFERENCES public.intern(s_id);


--
-- PostgreSQL database dump complete
--

