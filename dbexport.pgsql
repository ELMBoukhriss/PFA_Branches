--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: branches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.branches (
    id bigint NOT NULL,
    branche character varying(255)
);


ALTER TABLE public.branches OWNER TO postgres;

--
-- Name: branches_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.branches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.branches_id_seq OWNER TO postgres;

--
-- Name: branches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.branches_id_seq OWNED BY public.branches.id;


--
-- Name: branches id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branches ALTER COLUMN id SET DEFAULT nextval('public.branches_id_seq'::regclass);


--
-- Data for Name: branches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.branches (id, branche) FROM stdin;
1	Activités associatives
2	Activités informatiques
3	Administration publiques
4	Assainissement, voieries et gestion des déchets Autres industries extractives
5	Auxiliaires financiers et d'assurance
6	Commerce et réparation automobile
7	Fabrication d'autres matériels de transport
8	Fabrication d'autres produits minéraux non métalliques
9	Fabrication d'instruments médicaux, de précision d'optique et d'horlogerie
10	Fabrication d'équipements radio, télévision et communication
11	Fabrication de machines de bureau et de matériel informatique
12	Fabrication de machines et appareils électriques
13	Fabrication de machines et équipements
14	Fabrication de meubles, industries diverses
15	Industrie automobile
16	Industrie du caoutchouc et du plastique
17	Industrie du cuir et de la chaussure
18	Métallurgie
19	Postes et télécommunication
20	Production et distribution d'électricité, de gaz et de chaleur Recherche et développement
21	Récupération
22	Santé et action sociale
23	Services auxiliaires des transports
24	Test Branche
25	Services fournis principalement aux entreprises
26	Transports aériens
27	Transports par eau
28	Transports terrestres
\.


--
-- Name: branches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.branches_id_seq', 30, true);


--
-- Name: branches branches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branches
    ADD CONSTRAINT branches_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

