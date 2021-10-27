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
-- Name: bonus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bonus (
    worker_ref_id integer,
    bonus_amount integer,
    bonus_date date
);


ALTER TABLE public.bonus OWNER TO postgres;

--
-- Name: title; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.title (
    worker_ref_id integer,
    worker_title character(25),
    affected_from date
);


ALTER TABLE public.title OWNER TO postgres;

--
-- Name: worker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.worker (
    worker_id integer NOT NULL,
    first_name character(25),
    last_name character(25),
    salary integer,
    joining_date date,
    department character(25)
);


ALTER TABLE public.worker OWNER TO postgres;

--
-- Name: worker_worker_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.worker_worker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.worker_worker_id_seq OWNER TO postgres;

--
-- Name: worker_worker_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.worker_worker_id_seq OWNED BY public.worker.worker_id;


--
-- Name: worker worker_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worker ALTER COLUMN worker_id SET DEFAULT nextval('public.worker_worker_id_seq'::regclass);


--
-- Data for Name: bonus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bonus (worker_ref_id, bonus_amount, bonus_date) FROM stdin;
1	5000	2020-02-16
2	3000	2011-06-16
3	4000	2020-02-16
1	4500	2020-02-16
2	3500	2011-06-16
\.


--
-- Data for Name: title; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.title (worker_ref_id, worker_title, affected_from) FROM stdin;
1	Manager                  	2016-02-20
2	Executive                	2016-06-11
8	Executive                	2016-06-11
5	Manager                  	2016-06-11
4	Asst. Manager            	2016-06-11
7	Executive                	2016-06-11
6	Lead                     	2016-06-11
3	Lead                     	2016-06-11
\.


--
-- Data for Name: worker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.worker (worker_id, first_name, last_name, salary, joining_date, department) FROM stdin;
1	Monika                   	Arora                    	100000	2020-02-14	HR                       
2	Niharika                 	Verma                    	80000	2011-06-14	Admin                    
3	Vishal                   	Singhal                  	300000	2020-02-14	HR                       
4	Amitabh                  	Singh                    	500000	2020-02-14	Admin                    
5	Vivek                    	Bhati                    	500000	2011-06-14	Admin                    
6	Vipul                    	Diwan                    	200000	2011-06-14	Account                  
7	Satish                   	Kumar                    	75000	2020-01-14	Account                  
8	Geetika                  	Chauhan                  	90000	2011-04-14	Admin                    
\.


--
-- Name: worker_worker_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.worker_worker_id_seq', 1, false);


--
-- Name: worker worker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worker
    ADD CONSTRAINT worker_pkey PRIMARY KEY (worker_id);


--
-- Name: bonus bonus_worker_ref_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bonus
    ADD CONSTRAINT bonus_worker_ref_id_fkey FOREIGN KEY (worker_ref_id) REFERENCES public.worker(worker_id) ON DELETE CASCADE;


--
-- Name: title title_worker_ref_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.title
    ADD CONSTRAINT title_worker_ref_id_fkey FOREIGN KEY (worker_ref_id) REFERENCES public.worker(worker_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

