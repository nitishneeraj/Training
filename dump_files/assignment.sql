--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-1.pgdg20.04+1)

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
-- Name: aircraft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aircraft (
    aid integer NOT NULL,
    aname character varying(20),
    cruisingrange integer
);


ALTER TABLE public.aircraft OWNER TO postgres;

--
-- Name: certified; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.certified (
    eid integer,
    aid integer
);


ALTER TABLE public.certified OWNER TO postgres;

--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    eid integer NOT NULL,
    ename character varying(20),
    salary integer
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flights (
    flno integer NOT NULL,
    from_ character varying(20),
    to_ character varying(20),
    distance integer,
    departs time without time zone,
    arrives time without time zone,
    price integer
);


ALTER TABLE public.flights OWNER TO postgres;

--
-- Data for Name: aircraft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aircraft (aid, aname, cruisingrange) FROM stdin;
1	Emirates	4000
2	Emirates	14000
3	Emirates	3000
4	Boeing	3000
5	Qutar	2500
6	Qutar	3000
7	Emirates	5000
8	Boeing	1000
9	Malindo air	10000
10	Qutar	20000
\.


--
-- Data for Name: certified; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.certified (eid, aid) FROM stdin;
1	1
2	2
3	3
2	4
1	5
3	6
6	7
3	8
2	9
3	10
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (eid, ename, salary) FROM stdin;
2	sanjay	15000
3	karan	10000
4	mohan	8000
5	sohan	20000
6	parkesh	200000
7	Aman	80000
8	satyam	70000
9	kalu	50000
10	lokesh	30000
1	sagar	90000
\.


--
-- Data for Name: flights; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flights (flno, from_, to_, distance, departs, arrives, price) FROM stdin;
1	Delhi	Goa	3029	07:30:00	12:12:00	10000
2	Malaysia	Los Angeles	13000	07:30:00	12:12:00	90500
5	India	South korea	4691	18:00:00	01:10:00	28630
7	India	Dubai	2181	11:00:00	14:40:00	30688
8	Rasiya	India	2181	12:00:00	18:10:00	50971
9	India	canada	11626	02:00:00	16:10:00	73626
10	Australia	India	10426	04:00:00	18:10:00	129392
3	Los Angeles	Honolulu	8490	06:30:00	19:12:00	77500
4	Los Angeles	Chicago	2982	12:00:00	18:10:00	18674
6	Madison	New York	6961	08:00:00	22:10:00	66688
\.


--
-- Name: aircraft aircraft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aircraft
    ADD CONSTRAINT aircraft_pkey PRIMARY KEY (aid);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (eid);


--
-- Name: flights flights_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_pkey PRIMARY KEY (flno);


--
-- Name: certified certified_aid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certified
    ADD CONSTRAINT certified_aid_fkey FOREIGN KEY (aid) REFERENCES public.aircraft(aid);


--
-- Name: certified certified_eid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certified
    ADD CONSTRAINT certified_eid_fkey FOREIGN KEY (eid) REFERENCES public.employees(eid);


--
-- PostgreSQL database dump complete
--

