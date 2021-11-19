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
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    order_date date,
    shipped_date date,
    order_amount numeric,
    payment_id integer,
    shipped_address character varying(100),
    user_id integer,
    product_id integer
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment (
    id integer NOT NULL,
    payment_type character varying(50)
);


ALTER TABLE public.payment OWNER TO postgres;

--
-- Name: payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_id_seq OWNER TO postgres;

--
-- Name: payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_id_seq OWNED BY public.payment.id;


--
-- Name: product_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_categories (
    id integer NOT NULL,
    categery_name character varying(30)
);


ALTER TABLE public.product_categories OWNER TO postgres;

--
-- Name: product_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_categories_id_seq OWNER TO postgres;

--
-- Name: product_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_categories_id_seq OWNED BY public.product_categories.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(20),
    price numeric,
    size character varying(10),
    color character varying(20),
    categery_id integer,
    description character varying(500)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    fname character varying(20),
    lname character varying(20),
    phone numeric,
    email character varying(20),
    city character varying(20),
    state character varying(20),
    address character varying(50)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: payment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment ALTER COLUMN id SET DEFAULT nextval('public.payment_id_seq'::regclass);


--
-- Name: product_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_categories ALTER COLUMN id SET DEFAULT nextval('public.product_categories_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, order_date, shipped_date, order_amount, payment_id, shipped_address, user_id, product_id) FROM stdin;
1	2018-11-20	2018-11-30	42990	1	2nd Main Kanteerava Nagar, Nandhini Layout	1	1
2	2019-12-20	2019-12-23	13495	3	2nd Main Kanteerava Nagar, Nandhini Layout	1	2
3	2020-12-20	2021-01-10	8499	2	2nd Main Kanteerava Nagar, Nandhini Layout	1	4
4	2010-11-20	2010-12-01	127000	5	136, Veperyhighrd, Periamet	4	5
5	2012-01-20	2012-01-25	127000	5	35, Kandappa St, Vepery	5	5
6	2013-01-21	2013-01-24	1139	1	35, Kandappa St, Vepery	5	3
7	2014-04-15	2014-05-25	42990	4	134, Veperyhighrd, Periamet	3	1
8	2015-03-15	2015-03-25	127000	5	406, Blue Chip Cplx, Sayajigunj	6	5
9	2016-05-10	2016-05-17	13495	2	406, Blue Chip Cplx, Sayajigunj	6	2
10	2016-05-15	2016-05-17	1139	3	406, Blue Chip Cplx, Sayajigunj	6	3
11	2018-06-17	2018-06-20	8499	2	51,Samman Bazart	2	4
12	2018-06-17	2018-06-20	13495	5	51,Samman Bazart	2	2
13	2021-11-17	2021-12-01	42990	3	8/24 Sanjay colony	7	1
15	2019-10-12	2019-10-19	179900	5	51,Samman Bazart 	2	7
16	2020-10-14	2020-10-16	6999	3	2nd Main Kanteerava Nagar, Nandhini Layout	1	8
17	2017-11-14	2017-11-17	219000	5	8/24 Sanjay colony	1	9
14	2019-10-12	2019-10-19	169000	1	2nd Main Kanteerava Nagar, Nandhini Layout	1	6
\.


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment (id, payment_type) FROM stdin;
1	Pay on delivery
2	Credit/Debit card
3	Net Banking
4	Unified Payment Interface (UPI)
5	Easy Monthly Installments (EMI)
\.


--
-- Data for Name: product_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_categories (id, categery_name) FROM stdin;
1	Electronics
2	Sports
4	Clothing
5	Home
3	Beauty,Toys & more
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, price, size, color, categery_id, description) FROM stdin;
2	Shoes	13495	8	Black	2	Air Zoom Vomero 16 Running Shoes For Men
3	Shampoo	1139	250 ml	White	3	LOréal Professionnel Xtenso Care Shampoo
4	Jacket	8499	XL	Dark Brown	4	Full Sleeve Solid Men Riding Jacket
5	Bed	127000	Queen	Choco	5	mozart Solid Wood Queen Bed
1	Laptop	42990	14 Inch	Arctic Grey	1	Lenovo Ideapad Slim3 Core i3 11th Gen - (8 GB/256 GB SSD/Windows 10 Home)
7	TV	179900	55 inch		1	LG OLED Ultra HD (4K) Smart TV  (OLED55BXPTA)
8	Grip	6999	55 inch	Sunblaze-White	2	PUMA FUTURE Z Grip 1 Hybrid Goalkeeping Gloves
9	Sofa	219000		Brown	5	WLI Fabric 3 + 2 + 1 Brown Sofa Set 
6	Mobile	169000	6.7 inch	Graphite	1	APPLE iPhone 13 Pro Max (Graphite, 1 TB)
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, fname, lname, phone, email, city, state, address) FROM stdin;
1	sagar	sharma	9999900000	sagar@gmail.com	FBD	HR	2nd Main Kanteerava Nagar, Nandhini Layout
4	sohan	kumar	9999923012	sohan@gmail.com	gaya	UP	136, Veperyhighrd, Periamet
5	kajal		9999923015	kajal@gmail.com	KGG	BR	35, Kandappa St, Vepery
3	satyam	kumar	9999900012	satyam@gmail.com	Noida	UP	134, Veperyhighrd, Periamet
6	aman	verma	9999923415	aman@gmail.com	rohtak	HR	406, Blue Chip Cplx, Sayajigunj
2	Om	parkesh	9999900012	om@gmail.com	Delhi	Delhi	51,Samman Bazart
7	Mohan	panday	9990023415	mohan@gmail.com	sonipat	HR	8/24 Sanjay colony
\.


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- Name: payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_id_seq', 1, false);


--
-- Name: product_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_categories_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);


--
-- Name: product_categories product_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: orders orders_payment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES public.payment(id);


--
-- Name: orders orders_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: orders orders_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: products products_categery_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_categery_id_fkey FOREIGN KEY (categery_id) REFERENCES public.product_categories(id);


--
-- PostgreSQL database dump complete
--

