--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: attends; Type: TABLE; Schema: public; Owner: pd
--

CREATE TABLE public.attends (
    usn character varying(50) NOT NULL,
    s1 character varying(50),
    s1ca character varying(50),
    s1ch character varying(50),
    s2 character varying(50),
    s2ca character varying(50),
    s2ch character varying(50),
    s3 character varying(50),
    s3ca character varying(50),
    s3ch character varying(50),
    s4 character varying(50),
    s4ca character varying(50),
    s4ch character varying(50),
    s5 character varying(50),
    s5ca character varying(50),
    s5ch character varying(50),
    s6 character varying(50),
    s6ca character varying(50),
    s6ch character varying(50)
);


ALTER TABLE public.attends OWNER TO pd;

--
-- Name: genky; Type: TABLE; Schema: public; Owner: pd
--

CREATE TABLE public.genky (
    usn character varying(10),
    key character varying(4),
    verf character varying(1),
    regd_mail character varying(40)
);


ALTER TABLE public.genky OWNER TO pd;

--
-- Name: internals; Type: TABLE; Schema: public; Owner: pd
--

CREATE TABLE public.internals (
    usn character varying(10) NOT NULL,
    s1 character varying(3),
    s2 character varying(3),
    s3 character varying(3),
    s4 character varying(3),
    s5 character varying(3),
    l1 character varying(3),
    l2 character varying(3)
);


ALTER TABLE public.internals OWNER TO pd;

--
-- Name: login; Type: TABLE; Schema: public; Owner: pd
--

CREATE TABLE public.login (
    usn character varying(10) NOT NULL,
    login_pass character varying(10),
    name character varying(50)
);


ALTER TABLE public.login OWNER TO pd;

--
-- Name: login_teacher; Type: TABLE; Schema: public; Owner: pd
--

CREATE TABLE public.login_teacher (
    staffid character varying(10) NOT NULL,
    pass character varying(10),
    name character varying(40)
);


ALTER TABLE public.login_teacher OWNER TO pd;

--
-- Name: six_gpa; Type: TABLE; Schema: public; Owner: pd
--

CREATE TABLE public.six_gpa (
    usn character varying(10) NOT NULL,
    name character varying(50),
    inm1 character varying(3),
    exm1 character varying(3),
    inm2 character varying(3),
    exm2 character varying(3),
    inm3 character varying(3),
    exm3 character varying(3),
    inm4 character varying(3),
    exm4 character varying(3),
    inm5 character varying(3),
    exm5 character varying(3),
    inm6 character varying(3),
    exm6 character varying(3),
    inl1 character varying(3),
    exl1 character varying(3),
    inl2 character varying(3),
    exl2 character varying(3)
);


ALTER TABLE public.six_gpa OWNER TO pd;

--
-- Data for Name: attends; Type: TABLE DATA; Schema: public; Owner: pd
--

COPY public.attends (usn, s1, s1ca, s1ch, s2, s2ca, s2ch, s3, s3ca, s3ch, s4, s4ca, s4ch, s5, s5ca, s5ch, s6, s6ca, s6ch) FROM stdin;
1MV15CS001	15CS71 - Web Technology and its applications	28	28	15CS72 - Advanced Computer Architectures	29	31	15CS73 - Machine Learning	30	30	15CS743 - Information and Network Security	22	24	15CS744 - Unix System Programming	27	29	15CS753 - Digital Image Processing	27	30
1MV15CS002	15CS71 - Web Technology and its applications	25	29	15CS72 - Advanced Computer Architectures	21	25	15CS73 - Machine Learning	24	27	15CS743 - Information and Network Security	29	30	15CS744 - Unix System Programming	23	28	15CS753 - Digital Image Processing	22	24
1MV15CS003	15CS71 - Web Technology and its applications	23	26	15CS72 - Advanced Computer Architectures	28	29	15CS73 - Machine Learning	28	29	15CS743 - Information and Network Security	28	28	15CS744 - Unix System Programming	28	31	15CS753 - Digital Image Processing	21	25
1MV15CS004	15CS71 - Web Technology and its applications	24	24	15CS72 - Advanced Computer Architectures	20	25	15CS73 - Machine Learning	25	26	15CS743 - Information and Network Security	22	26	15CS744 - Unix System Programming	27	30	15CS753 - Digital Image Processing	28	31
1MV15CS005	15CS71 - Web Technology and its applications	25	29	15CS72 - Advanced Computer Architectures	24	24	15CS73 - Machine Learning	29	29	15CS743 - Information and Network Security	25	27	15CS744 - Unix System Programming	29	29	15CS753 - Digital Image Processing	27	31
1MV15CS006	15CS71 - Web Technology and its applications	23	27	15CS72 - Advanced Computer Architectures	29	31	15CS73 - Machine Learning	28	31	15CS743 - Information and Network Security	23	25	15CS744 - Unix System Programming	28	30	15CS753 - Digital Image Processing	29	29
1MV15CS007	15CS71 - Web Technology and its applications	21	25	15CS72 - Advanced Computer Architectures	22	25	15CS73 - Machine Learning	26	31	15CS743 - Information and Network Security	30	30	15CS744 - Unix System Programming	27	28	15CS753 - Digital Image Processing	28	29
1MV15CS008	15CS71 - Web Technology and its applications	26	30	15CS72 - Advanced Computer Architectures	25	30	15CS73 - Machine Learning	21	26	15CS743 - Information and Network Security	20	24	15CS744 - Unix System Programming	28	30	15CS753 - Digital Image Processing	24	25
1MV15CS009	15CS71 - Web Technology and its applications	24	26	15CS72 - Advanced Computer Architectures	26	30	15CS73 - Machine Learning	22	24	15CS743 - Information and Network Security	28	28	15CS744 - Unix System Programming	27	27	15CS753 - Digital Image Processing	21	26
1MV15CS010	15CS71 - Web Technology and its applications	25	25	15CS72 - Advanced Computer Architectures	20	25	15CS73 - Machine Learning	27	27	15CS743 - Information and Network Security	28	29	15CS744 - Unix System Programming	22	25	15CS753 - Digital Image Processing	25	26
1MV15CS011	15CS71 - Web Technology and its applications	29	31	15CS72 - Advanced Computer Architectures	30	30	15CS73 - Machine Learning	27	31	15CS743 - Information and Network Security	29	31	15CS744 - Unix System Programming	25	26	15CS753 - Digital Image Processing	27	28
1MV15CS012	15CS71 - Web Technology and its applications	31	31	15CS72 - Advanced Computer Architectures	26	31	15CS73 - Machine Learning	29	30	15CS743 - Information and Network Security	25	25	15CS744 - Unix System Programming	20	25	15CS753 - Digital Image Processing	28	31
1MV15CS013	15CS71 - Web Technology and its applications	23	24	15CS72 - Advanced Computer Architectures	21	24	15CS73 - Machine Learning	25	26	15CS743 - Information and Network Security	19	24	15CS744 - Unix System Programming	24	27	15CS753 - Digital Image Processing	25	26
1MV15CS014	15CS71 - Web Technology and its applications	28	29	15CS72 - Advanced Computer Architectures	22	26	15CS73 - Machine Learning	25	27	15CS743 - Information and Network Security	22	24	15CS744 - Unix System Programming	21	24	15CS753 - Digital Image Processing	26	27
1MV15CS015	15CS71 - Web Technology and its applications	31	31	15CS72 - Advanced Computer Architectures	30	31	15CS73 - Machine Learning	31	31	15CS743 - Information and Network Security	26	29	15CS744 - Unix System Programming	27	31	15CS753 - Digital Image Processing	24	24
1MV15CS016	15CS71 - Web Technology and its applications	25	25	15CS72 - Advanced Computer Architectures	26	28	15CS73 - Machine Learning	23	26	15CS743 - Information and Network Security	24	27	15CS744 - Unix System Programming	26	27	15CS753 - Digital Image Processing	20	25
1MV15CS017	15CS71 - Web Technology and its applications	22	25	15CS72 - Advanced Computer Architectures	25	28	15CS73 - Machine Learning	25	29	15CS743 - Information and Network Security	26	29	15CS744 - Unix System Programming	27	31	15CS753 - Digital Image Processing	22	26
1MV15CS018	15CS71 - Web Technology and its applications	25	25	15CS72 - Advanced Computer Architectures	22	25	15CS73 - Machine Learning	28	31	15CS743 - Information and Network Security	25	25	15CS744 - Unix System Programming	24	29	15CS753 - Digital Image Processing	23	28
1MV15CS019	15CS71 - Web Technology and its applications	23	24	15CS72 - Advanced Computer Architectures	25	25	15CS73 - Machine Learning	19	24	15CS743 - Information and Network Security	23	26	15CS744 - Unix System Programming	26	30	15CS753 - Digital Image Processing	27	30
1MV15CS020	15CS71 - Web Technology and its applications	24	29	15CS72 - Advanced Computer Architectures	29	30	15CS73 - Machine Learning	24	29	15CS743 - Information and Network Security	24	28	15CS744 - Unix System Programming	21	26	15CS753 - Digital Image Processing	23	24
1MV15CS021	15CS71 - Web Technology and its applications	30	30	15CS72 - Advanced Computer Architectures	24	24	15CS73 - Machine Learning	25	30	15CS743 - Information and Network Security	22	26	15CS744 - Unix System Programming	27	27	15CS753 - Digital Image Processing	24	27
1MV15CS022	15CS71 - Web Technology and its applications	23	26	15CS72 - Advanced Computer Architectures	26	30	15CS73 - Machine Learning	24	26	15CS743 - Information and Network Security	25	28	15CS744 - Unix System Programming	25	28	15CS753 - Digital Image Processing	23	28
1MV15CS023	15CS71 - Web Technology and its applications	24	24	15CS72 - Advanced Computer Architectures	26	30	15CS73 - Machine Learning	30	31	15CS743 - Information and Network Security	26	26	15CS744 - Unix System Programming	23	28	15CS753 - Digital Image Processing	29	29
1MV15CS024	15CS71 - Web Technology and its applications	23	24	15CS72 - Advanced Computer Architectures	22	24	15CS73 - Machine Learning	26	26	15CS743 - Information and Network Security	27	30	15CS744 - Unix System Programming	27	31	15CS753 - Digital Image Processing	29	30
1MV15CS025	15CS71 - Web Technology and its applications	28	29	15CS72 - Advanced Computer Architectures	20	25	15CS73 - Machine Learning	28	31	15CS743 - Information and Network Security	24	28	15CS744 - Unix System Programming	31	31	15CS753 - Digital Image Processing	22	24
1MV15CS026	15CS71 - Web Technology and its applications	20	24	15CS72 - Advanced Computer Architectures	29	30	15CS73 - Machine Learning	22	27	15CS743 - Information and Network Security	22	24	15CS744 - Unix System Programming	24	28	15CS753 - Digital Image Processing	22	25
1MV15CS027	15CS71 - Web Technology and its applications	23	27	15CS72 - Advanced Computer Architectures	21	25	15CS73 - Machine Learning	28	28	15CS743 - Information and Network Security	25	25	15CS744 - Unix System Programming	25	25	15CS753 - Digital Image Processing	28	31
1MV15CS028	15CS71 - Web Technology and its applications	19	24	15CS72 - Advanced Computer Architectures	25	25	15CS73 - Machine Learning	25	28	15CS743 - Information and Network Security	24	24	15CS744 - Unix System Programming	29	29	15CS753 - Digital Image Processing	27	27
1MV15CS029	15CS71 - Web Technology and its applications	27	30	15CS72 - Advanced Computer Architectures	27	29	15CS73 - Machine Learning	26	30	15CS743 - Information and Network Security	24	27	15CS744 - Unix System Programming	30	30	15CS753 - Digital Image Processing	25	28
1MV15CS030	15CS71 - Web Technology and its applications	30	30	15CS72 - Advanced Computer Architectures	22	27	15CS73 - Machine Learning	22	25	15CS743 - Information and Network Security	24	27	15CS744 - Unix System Programming	26	26	15CS753 - Digital Image Processing	24	26
1MV15CS031	15CS71 - Web Technology and its applications	24	25	15CS72 - Advanced Computer Architectures	28	31	15CS73 - Machine Learning	23	28	15CS743 - Information and Network Security	24	27	15CS744 - Unix System Programming	22	27	15CS753 - Digital Image Processing	22	26
1MV15CS032	15CS71 - Web Technology and its applications	29	31	15CS72 - Advanced Computer Architectures	22	25	15CS73 - Machine Learning	26	27	15CS743 - Information and Network Security	24	27	15CS744 - Unix System Programming	28	28	15CS753 - Digital Image Processing	25	28
1MV15CS033	15CS71 - Web Technology and its applications	25	30	15CS72 - Advanced Computer Architectures	28	31	15CS73 - Machine Learning	23	27	15CS743 - Information and Network Security	28	29	15CS744 - Unix System Programming	28	30	15CS753 - Digital Image Processing	26	26
1MV15CS034	15CS71 - Web Technology and its applications	29	31	15CS72 - Advanced Computer Architectures	26	26	15CS73 - Machine Learning	30	30	15CS743 - Information and Network Security	26	27	15CS744 - Unix System Programming	30	30	15CS753 - Digital Image Processing	29	31
1MV15CS035	15CS71 - Web Technology and its applications	26	31	15CS72 - Advanced Computer Architectures	24	25	15CS73 - Machine Learning	23	28	15CS743 - Information and Network Security	30	31	15CS744 - Unix System Programming	28	28	15CS753 - Digital Image Processing	22	27
1MV15CS036	15CS71 - Web Technology and its applications	21	24	15CS72 - Advanced Computer Architectures	23	25	15CS73 - Machine Learning	30	30	15CS743 - Information and Network Security	24	25	15CS744 - Unix System Programming	26	29	15CS753 - Digital Image Processing	28	29
1MV15CS037	15CS71 - Web Technology and its applications	28	29	15CS72 - Advanced Computer Architectures	26	28	15CS73 - Machine Learning	28	28	15CS743 - Information and Network Security	29	29	15CS744 - Unix System Programming	20	25	15CS753 - Digital Image Processing	27	29
1MV15CS038	15CS71 - Web Technology and its applications	22	25	15CS72 - Advanced Computer Architectures	28	29	15CS73 - Machine Learning	24	27	15CS743 - Information and Network Security	23	24	15CS744 - Unix System Programming	30	31	15CS753 - Digital Image Processing	26	30
1MV15CS039	15CS71 - Web Technology and its applications	27	27	15CS72 - Advanced Computer Architectures	22	26	15CS73 - Machine Learning	19	24	15CS743 - Information and Network Security	29	29	15CS744 - Unix System Programming	20	25	15CS753 - Digital Image Processing	26	31
1MV15CS040	15CS71 - Web Technology and its applications	27	31	15CS72 - Advanced Computer Architectures	25	25	15CS73 - Machine Learning	24	24	15CS743 - Information and Network Security	23	26	15CS744 - Unix System Programming	27	27	15CS753 - Digital Image Processing	26	26
1MV15CS041	15CS71 - Web Technology and its applications	23	27	15CS72 - Advanced Computer Architectures	26	27	15CS73 - Machine Learning	21	26	15CS743 - Information and Network Security	27	28	15CS744 - Unix System Programming	26	27	15CS753 - Digital Image Processing	21	26
1MV15CS042	15CS71 - Web Technology and its applications	22	26	15CS72 - Advanced Computer Architectures	27	29	15CS73 - Machine Learning	26	27	15CS743 - Information and Network Security	20	25	15CS744 - Unix System Programming	24	27	15CS753 - Digital Image Processing	27	27
1MV15CS043	15CS71 - Web Technology and its applications	23	25	15CS72 - Advanced Computer Architectures	19	24	15CS73 - Machine Learning	28	29	15CS743 - Information and Network Security	27	30	15CS744 - Unix System Programming	27	27	15CS753 - Digital Image Processing	25	28
1MV15CS044	15CS71 - Web Technology and its applications	26	27	15CS72 - Advanced Computer Architectures	25	26	15CS73 - Machine Learning	19	24	15CS743 - Information and Network Security	22	25	15CS744 - Unix System Programming	30	31	15CS753 - Digital Image Processing	23	25
1MV15CS045	15CS71 - Web Technology and its applications	25	30	15CS72 - Advanced Computer Architectures	29	30	15CS73 - Machine Learning	24	27	15CS743 - Information and Network Security	31	31	15CS744 - Unix System Programming	23	26	15CS753 - Digital Image Processing	24	28
1MV15CS046	15CS71 - Web Technology and its applications	29	30	15CS72 - Advanced Computer Architectures	26	29	15CS73 - Machine Learning	20	24	15CS743 - Information and Network Security	25	28	15CS744 - Unix System Programming	31	31	15CS753 - Digital Image Processing	28	29
1MV15CS047	15CS71 - Web Technology and its applications	24	29	15CS72 - Advanced Computer Architectures	26	27	15CS73 - Machine Learning	29	31	15CS743 - Information and Network Security	27	30	15CS744 - Unix System Programming	27	27	15CS753 - Digital Image Processing	20	24
1MV15CS048	15CS71 - Web Technology and its applications	21	25	15CS72 - Advanced Computer Architectures	29	31	15CS73 - Machine Learning	29	31	15CS743 - Information and Network Security	26	31	15CS744 - Unix System Programming	25	25	15CS753 - Digital Image Processing	21	24
1MV15CS049	15CS71 - Web Technology and its applications	27	28	15CS72 - Advanced Computer Architectures	20	25	15CS73 - Machine Learning	23	24	15CS743 - Information and Network Security	29	29	15CS744 - Unix System Programming	24	24	15CS753 - Digital Image Processing	24	24
1MV15CS050	15CS71 - Web Technology and its applications	26	29	15CS72 - Advanced Computer Architectures	28	30	15CS73 - Machine Learning	21	25	15CS743 - Information and Network Security	23	28	15CS744 - Unix System Programming	23	25	15CS753 - Digital Image Processing	26	28
1MV15CS051	15CS71 - Web Technology and its applications	21	24	15CS72 - Advanced Computer Architectures	29	30	15CS73 - Machine Learning	25	27	15CS743 - Information and Network Security	21	24	15CS744 - Unix System Programming	30	31	15CS753 - Digital Image Processing	24	29
1MV15CS052	15CS71 - Web Technology and its applications	21	25	15CS72 - Advanced Computer Architectures	28	29	15CS73 - Machine Learning	27	28	15CS743 - Information and Network Security	28	28	15CS744 - Unix System Programming	26	31	15CS753 - Digital Image Processing	22	25
1MV15CS053	15CS71 - Web Technology and its applications	23	25	15CS72 - Advanced Computer Architectures	28	29	15CS73 - Machine Learning	27	27	15CS743 - Information and Network Security	26	30	15CS744 - Unix System Programming	27	28	15CS753 - Digital Image Processing	25	27
1MV15CS054	15CS71 - Web Technology and its applications	23	25	15CS72 - Advanced Computer Architectures	24	29	15CS73 - Machine Learning	26	27	15CS743 - Information and Network Security	24	25	15CS744 - Unix System Programming	28	29	15CS753 - Digital Image Processing	19	24
1MV15CS055	15CS71 - Web Technology and its applications	23	24	15CS72 - Advanced Computer Architectures	24	27	15CS73 - Machine Learning	27	29	15CS743 - Information and Network Security	19	24	15CS744 - Unix System Programming	28	28	15CS753 - Digital Image Processing	24	24
1MV15CS056	15CS71 - Web Technology and its applications	29	31	15CS72 - Advanced Computer Architectures	24	28	15CS73 - Machine Learning	29	29	15CS743 - Information and Network Security	29	30	15CS744 - Unix System Programming	28	29	15CS753 - Digital Image Processing	25	30
1MV15CS057	15CS71 - Web Technology and its applications	28	28	15CS72 - Advanced Computer Architectures	23	24	15CS73 - Machine Learning	24	26	15CS743 - Information and Network Security	30	31	15CS744 - Unix System Programming	24	26	15CS753 - Digital Image Processing	28	31
1MV15CS058	15CS71 - Web Technology and its applications	30	31	15CS72 - Advanced Computer Architectures	25	30	15CS73 - Machine Learning	23	28	15CS743 - Information and Network Security	24	26	15CS744 - Unix System Programming	30	30	15CS753 - Digital Image Processing	23	28
1MV15CS059	15CS71 - Web Technology and its applications	26	30	15CS72 - Advanced Computer Architectures	29	29	15CS73 - Machine Learning	25	26	15CS743 - Information and Network Security	27	29	15CS744 - Unix System Programming	22	25	15CS753 - Digital Image Processing	24	25
1MV15CS060	15CS71 - Web Technology and its applications	31	31	15CS72 - Advanced Computer Architectures	28	29	15CS73 - Machine Learning	21	25	15CS743 - Information and Network Security	24	24	15CS744 - Unix System Programming	28	28	15CS753 - Digital Image Processing	27	29
1MV15CS061	15CS71 - Web Technology and its applications	28	29	15CS72 - Advanced Computer Architectures	23	25	15CS73 - Machine Learning	22	27	15CS743 - Information and Network Security	22	26	15CS744 - Unix System Programming	25	28	15CS753 - Digital Image Processing	27	28
1MV15CS062	15CS71 - Web Technology and its applications	22	24	15CS72 - Advanced Computer Architectures	29	29	15CS73 - Machine Learning	22	24	15CS743 - Information and Network Security	24	26	15CS744 - Unix System Programming	24	27	15CS753 - Digital Image Processing	24	26
1MV15CS063	15CS71 - Web Technology and its applications	19	24	15CS72 - Advanced Computer Architectures	22	24	15CS73 - Machine Learning	26	28	15CS743 - Information and Network Security	26	27	15CS744 - Unix System Programming	25	26	15CS753 - Digital Image Processing	26	26
1MV15CS064	15CS71 - Web Technology and its applications	25	30	15CS72 - Advanced Computer Architectures	23	24	15CS73 - Machine Learning	31	31	15CS743 - Information and Network Security	27	28	15CS744 - Unix System Programming	26	27	15CS753 - Digital Image Processing	25	27
1MV15CS065	15CS71 - Web Technology and its applications	28	30	15CS72 - Advanced Computer Architectures	21	25	15CS73 - Machine Learning	27	31	15CS743 - Information and Network Security	26	26	15CS744 - Unix System Programming	28	29	15CS753 - Digital Image Processing	24	29
1MV15CS066	15CS71 - Web Technology and its applications	27	27	15CS72 - Advanced Computer Architectures	24	29	15CS73 - Machine Learning	19	24	15CS743 - Information and Network Security	24	27	15CS744 - Unix System Programming	21	24	15CS753 - Digital Image Processing	25	27
1MV15CS067	15CS71 - Web Technology and its applications	31	31	15CS72 - Advanced Computer Architectures	26	31	15CS73 - Machine Learning	29	30	15CS743 - Information and Network Security	25	27	15CS744 - Unix System Programming	23	26	15CS753 - Digital Image Processing	20	24
1MV15CS068	15CS71 - Web Technology and its applications	24	24	15CS72 - Advanced Computer Architectures	25	26	15CS73 - Machine Learning	25	27	15CS743 - Information and Network Security	21	26	15CS744 - Unix System Programming	19	24	15CS753 - Digital Image Processing	21	24
1MV15CS069	15CS71 - Web Technology and its applications	21	24	15CS72 - Advanced Computer Architectures	24	24	15CS73 - Machine Learning	28	29	15CS743 - Information and Network Security	28	30	15CS744 - Unix System Programming	28	29	15CS753 - Digital Image Processing	25	25
1MV15CS070	15CS71 - Web Technology and its applications	27	30	15CS72 - Advanced Computer Architectures	22	25	15CS73 - Machine Learning	26	30	15CS743 - Information and Network Security	24	28	15CS744 - Unix System Programming	23	24	15CS753 - Digital Image Processing	24	28
1MV15CS071	15CS71 - Web Technology and its applications	27	30	15CS72 - Advanced Computer Architectures	31	31	15CS73 - Machine Learning	27	31	15CS743 - Information and Network Security	25	25	15CS744 - Unix System Programming	22	26	15CS753 - Digital Image Processing	28	29
1MV15CS072	15CS71 - Web Technology and its applications	21	24	15CS72 - Advanced Computer Architectures	24	28	15CS73 - Machine Learning	20	24	15CS743 - Information and Network Security	25	28	15CS744 - Unix System Programming	21	25	15CS753 - Digital Image Processing	28	29
1MV15CS073	15CS71 - Web Technology and its applications	26	28	15CS72 - Advanced Computer Architectures	25	25	15CS73 - Machine Learning	23	28	15CS743 - Information and Network Security	27	28	15CS744 - Unix System Programming	23	28	15CS753 - Digital Image Processing	23	24
1MV15CS074	15CS71 - Web Technology and its applications	19	24	15CS72 - Advanced Computer Architectures	23	28	15CS73 - Machine Learning	21	26	15CS743 - Information and Network Security	23	24	15CS744 - Unix System Programming	29	30	15CS753 - Digital Image Processing	30	30
1MV15CS075	15CS71 - Web Technology and its applications	21	26	15CS72 - Advanced Computer Architectures	28	30	15CS73 - Machine Learning	26	28	15CS743 - Information and Network Security	25	25	15CS744 - Unix System Programming	23	28	15CS753 - Digital Image Processing	29	31
1MV15CS076	15CS71 - Web Technology and its applications	26	27	15CS72 - Advanced Computer Architectures	30	31	15CS73 - Machine Learning	26	31	15CS743 - Information and Network Security	27	30	15CS744 - Unix System Programming	27	27	15CS753 - Digital Image Processing	19	24
1MV15CS077	15CS71 - Web Technology and its applications	29	31	15CS72 - Advanced Computer Architectures	31	31	15CS73 - Machine Learning	30	30	15CS743 - Information and Network Security	27	30	15CS744 - Unix System Programming	27	27	15CS753 - Digital Image Processing	30	30
1MV15CS078	15CS71 - Web Technology and its applications	22	26	15CS72 - Advanced Computer Architectures	22	26	15CS73 - Machine Learning	21	26	15CS743 - Information and Network Security	28	31	15CS744 - Unix System Programming	26	30	15CS753 - Digital Image Processing	24	25
1MV15CS079	15CS71 - Web Technology and its applications	22	26	15CS72 - Advanced Computer Architectures	27	28	15CS73 - Machine Learning	25	27	15CS743 - Information and Network Security	25	27	15CS744 - Unix System Programming	26	30	15CS753 - Digital Image Processing	29	29
1MV15CS080	15CS71 - Web Technology and its applications	22	25	15CS72 - Advanced Computer Architectures	23	26	15CS73 - Machine Learning	23	27	15CS743 - Information and Network Security	29	29	15CS744 - Unix System Programming	26	28	15CS753 - Digital Image Processing	29	29
1MV15CS081	15CS71 - Web Technology and its applications	25	30	15CS72 - Advanced Computer Architectures	24	28	15CS73 - Machine Learning	23	28	15CS743 - Information and Network Security	27	31	15CS744 - Unix System Programming	24	25	15CS753 - Digital Image Processing	27	29
1MV15CS082	15CS71 - Web Technology and its applications	30	31	15CS72 - Advanced Computer Architectures	26	28	15CS73 - Machine Learning	27	31	15CS743 - Information and Network Security	25	27	15CS744 - Unix System Programming	31	31	15CS753 - Digital Image Processing	28	29
1MV15CS083	15CS71 - Web Technology and its applications	21	25	15CS72 - Advanced Computer Architectures	24	27	15CS73 - Machine Learning	21	25	15CS743 - Information and Network Security	30	30	15CS744 - Unix System Programming	26	26	15CS753 - Digital Image Processing	30	31
1MV15CS084	15CS71 - Web Technology and its applications	26	30	15CS72 - Advanced Computer Architectures	22	27	15CS73 - Machine Learning	26	27	15CS743 - Information and Network Security	24	24	15CS744 - Unix System Programming	27	30	15CS753 - Digital Image Processing	30	30
1MV15CS085	15CS71 - Web Technology and its applications	29	30	15CS72 - Advanced Computer Architectures	23	26	15CS73 - Machine Learning	27	27	15CS743 - Information and Network Security	23	24	15CS744 - Unix System Programming	29	29	15CS753 - Digital Image Processing	22	27
1MV15CS086	15CS71 - Web Technology and its applications	27	28	15CS72 - Advanced Computer Architectures	24	29	15CS73 - Machine Learning	23	25	15CS743 - Information and Network Security	26	26	15CS744 - Unix System Programming	22	24	15CS753 - Digital Image Processing	31	31
1MV15CS087	15CS71 - Web Technology and its applications	28	29	15CS72 - Advanced Computer Architectures	23	28	15CS73 - Machine Learning	29	29	15CS743 - Information and Network Security	24	24	15CS744 - Unix System Programming	28	29	15CS753 - Digital Image Processing	28	31
1MV15CS088	15CS71 - Web Technology and its applications	28	28	15CS72 - Advanced Computer Architectures	25	27	15CS73 - Machine Learning	20	25	15CS743 - Information and Network Security	26	28	15CS744 - Unix System Programming	22	27	15CS753 - Digital Image Processing	26	31
1MV15CS089	15CS71 - Web Technology and its applications	27	29	15CS72 - Advanced Computer Architectures	21	26	15CS73 - Machine Learning	27	28	15CS743 - Information and Network Security	29	29	15CS744 - Unix System Programming	29	31	15CS753 - Digital Image Processing	28	28
1MV15CS090	15CS71 - Web Technology and its applications	29	30	15CS72 - Advanced Computer Architectures	25	26	15CS73 - Machine Learning	25	29	15CS743 - Information and Network Security	26	29	15CS744 - Unix System Programming	20	25	15CS753 - Digital Image Processing	22	27
1MV15CS091	15CS71 - Web Technology and its applications	20	24	15CS72 - Advanced Computer Architectures	19	24	15CS73 - Machine Learning	25	28	15CS743 - Information and Network Security	20	25	15CS744 - Unix System Programming	27	27	15CS753 - Digital Image Processing	27	27
1MV15CS092	15CS71 - Web Technology and its applications	30	31	15CS72 - Advanced Computer Architectures	31	31	15CS73 - Machine Learning	29	30	15CS743 - Information and Network Security	24	24	15CS744 - Unix System Programming	26	27	15CS753 - Digital Image Processing	28	30
1MV15CS093	15CS71 - Web Technology and its applications	25	28	15CS72 - Advanced Computer Architectures	23	27	15CS73 - Machine Learning	22	25	15CS743 - Information and Network Security	27	30	15CS744 - Unix System Programming	19	24	15CS753 - Digital Image Processing	27	28
1MV15CS094	15CS71 - Web Technology and its applications	25	29	15CS72 - Advanced Computer Architectures	22	26	15CS73 - Machine Learning	24	28	15CS743 - Information and Network Security	21	24	15CS744 - Unix System Programming	25	28	15CS753 - Digital Image Processing	24	29
1MV15CS095	15CS71 - Web Technology and its applications	25	27	15CS72 - Advanced Computer Architectures	28	31	15CS73 - Machine Learning	19	24	15CS743 - Information and Network Security	28	30	15CS744 - Unix System Programming	26	30	15CS753 - Digital Image Processing	21	25
1MV15CS096	15CS71 - Web Technology and its applications	22	26	15CS72 - Advanced Computer Architectures	23	24	15CS73 - Machine Learning	23	25	15CS743 - Information and Network Security	23	26	15CS744 - Unix System Programming	21	26	15CS753 - Digital Image Processing	23	27
1MV15CS097	15CS71 - Web Technology and its applications	21	25	15CS72 - Advanced Computer Architectures	25	29	15CS73 - Machine Learning	28	31	15CS743 - Information and Network Security	26	26	15CS744 - Unix System Programming	23	26	15CS753 - Digital Image Processing	26	30
1MV15CS098	15CS71 - Web Technology and its applications	25	25	15CS72 - Advanced Computer Architectures	27	31	15CS73 - Machine Learning	26	31	15CS743 - Information and Network Security	27	30	15CS744 - Unix System Programming	28	29	15CS753 - Digital Image Processing	22	26
1MV15CS099	15CS71 - Web Technology and its applications	24	28	15CS72 - Advanced Computer Architectures	25	30	15CS73 - Machine Learning	22	24	15CS743 - Information and Network Security	24	25	15CS744 - Unix System Programming	24	29	15CS753 - Digital Image Processing	28	30
1MV15CS100	15CS71 - Web Technology and its applications	20	24	15CS72 - Advanced Computer Architectures	25	28	15CS73 - Machine Learning	24	26	15CS743 - Information and Network Security	21	26	15CS744 - Unix System Programming	25	30	15CS753 - Digital Image Processing	26	29
1MV15CS101	15CS71 - Web Technology and its applications	31	31	15CS72 - Advanced Computer Architectures	27	31	15CS73 - Machine Learning	21	25	15CS743 - Information and Network Security	21	25	15CS744 - Unix System Programming	30	30	15CS753 - Digital Image Processing	25	29
1MV15CS102	15CS71 - Web Technology and its applications	24	24	15CS72 - Advanced Computer Architectures	26	28	15CS73 - Machine Learning	28	29	15CS743 - Information and Network Security	27	27	15CS744 - Unix System Programming	26	27	15CS753 - Digital Image Processing	23	26
1MV15CS103	15CS71 - Web Technology and its applications	22	26	15CS72 - Advanced Computer Architectures	22	27	15CS73 - Machine Learning	27	29	15CS743 - Information and Network Security	22	24	15CS744 - Unix System Programming	25	28	15CS753 - Digital Image Processing	20	25
1MV15CS104	15CS71 - Web Technology and its applications	27	31	15CS72 - Advanced Computer Architectures	23	27	15CS73 - Machine Learning	26	28	15CS743 - Information and Network Security	24	26	15CS744 - Unix System Programming	26	31	15CS753 - Digital Image Processing	24	26
1MV15CS105	15CS71 - Web Technology and its applications	19	24	15CS72 - Advanced Computer Architectures	25	29	15CS73 - Machine Learning	25	27	15CS743 - Information and Network Security	26	26	15CS744 - Unix System Programming	23	27	15CS753 - Digital Image Processing	29	31
1MV15CS106	15CS71 - Web Technology and its applications	26	27	15CS72 - Advanced Computer Architectures	28	31	15CS73 - Machine Learning	25	30	15CS743 - Information and Network Security	22	27	15CS744 - Unix System Programming	26	28	15CS753 - Digital Image Processing	21	25
1MV15CS107	15CS71 - Web Technology and its applications	24	24	15CS72 - Advanced Computer Architectures	28	29	15CS73 - Machine Learning	22	25	15CS743 - Information and Network Security	30	31	15CS744 - Unix System Programming	26	28	15CS753 - Digital Image Processing	28	28
1MV15CS108	15CS71 - Web Technology and its applications	25	25	15CS72 - Advanced Computer Architectures	27	28	15CS73 - Machine Learning	21	24	15CS743 - Information and Network Security	21	25	15CS744 - Unix System Programming	30	31	15CS753 - Digital Image Processing	25	29
1MV15CS109	15CS71 - Web Technology and its applications	25	28	15CS72 - Advanced Computer Architectures	24	24	15CS73 - Machine Learning	24	26	15CS743 - Information and Network Security	25	25	15CS744 - Unix System Programming	23	25	15CS753 - Digital Image Processing	29	29
1MV15CS110	15CS71 - Web Technology and its applications	25	28	15CS72 - Advanced Computer Architectures	29	31	15CS73 - Machine Learning	22	25	15CS743 - Information and Network Security	26	31	15CS744 - Unix System Programming	29	30	15CS753 - Digital Image Processing	26	31
1MV15CS111	15CS71 - Web Technology and its applications	24	26	15CS72 - Advanced Computer Architectures	25	29	15CS73 - Machine Learning	25	29	15CS743 - Information and Network Security	22	25	15CS744 - Unix System Programming	28	28	15CS753 - Digital Image Processing	27	30
1MV15CS112	15CS71 - Web Technology and its applications	27	31	15CS72 - Advanced Computer Architectures	29	29	15CS73 - Machine Learning	23	25	15CS743 - Information and Network Security	27	31	15CS744 - Unix System Programming	24	24	15CS753 - Digital Image Processing	20	24
1MV15CS113	15CS71 - Web Technology and its applications	22	24	15CS72 - Advanced Computer Architectures	22	24	15CS73 - Machine Learning	28	31	15CS743 - Information and Network Security	24	26	15CS744 - Unix System Programming	23	24	15CS753 - Digital Image Processing	21	24
1MV15CS114	15CS71 - Web Technology and its applications	28	31	15CS72 - Advanced Computer Architectures	25	25	15CS73 - Machine Learning	23	26	15CS743 - Information and Network Security	27	29	15CS744 - Unix System Programming	21	25	15CS753 - Digital Image Processing	22	25
1MV15CS115	15CS71 - Web Technology and its applications	21	25	15CS72 - Advanced Computer Architectures	27	28	15CS73 - Machine Learning	28	29	15CS743 - Information and Network Security	21	26	15CS744 - Unix System Programming	24	27	15CS753 - Digital Image Processing	24	26
1MV15CS116	15CS71 - Web Technology and its applications	27	28	15CS72 - Advanced Computer Architectures	24	28	15CS73 - Machine Learning	27	27	15CS743 - Information and Network Security	25	26	15CS744 - Unix System Programming	29	31	15CS753 - Digital Image Processing	19	24
1MV15CS117	15CS71 - Web Technology and its applications	19	24	15CS72 - Advanced Computer Architectures	24	27	15CS73 - Machine Learning	23	26	15CS743 - Information and Network Security	24	25	15CS744 - Unix System Programming	29	30	15CS753 - Digital Image Processing	28	29
1MV15CS118	15CS71 - Web Technology and its applications	24	27	15CS72 - Advanced Computer Architectures	28	31	15CS73 - Machine Learning	26	29	15CS743 - Information and Network Security	28	29	15CS744 - Unix System Programming	24	28	15CS753 - Digital Image Processing	24	28
1MV15CS119	15CS71 - Web Technology and its applications	27	28	15CS72 - Advanced Computer Architectures	24	26	15CS73 - Machine Learning	22	24	15CS743 - Information and Network Security	25	30	15CS744 - Unix System Programming	21	24	15CS753 - Digital Image Processing	30	31
1MV15CS120	15CS71 - Web Technology and its applications	22	25	15CS72 - Advanced Computer Architectures	21	25	15CS73 - Machine Learning	29	31	15CS743 - Information and Network Security	24	29	15CS744 - Unix System Programming	26	31	15CS753 - Digital Image Processing	26	28
1MV15CS121	15CS71 - Web Technology and its applications	25	26	15CS72 - Advanced Computer Architectures	22	27	15CS73 - Machine Learning	21	26	15CS743 - Information and Network Security	27	30	15CS744 - Unix System Programming	28	30	15CS753 - Digital Image Processing	28	29
1MV15CS122	15CS71 - Web Technology and its applications	22	27	15CS72 - Advanced Computer Architectures	25	29	15CS73 - Machine Learning	24	28	15CS743 - Information and Network Security	23	26	15CS744 - Unix System Programming	23	25	15CS753 - Digital Image Processing	23	26
1MV15CS123	15CS71 - Web Technology and its applications	24	24	15CS72 - Advanced Computer Architectures	24	29	15CS73 - Machine Learning	25	28	15CS743 - Information and Network Security	20	25	15CS744 - Unix System Programming	25	30	15CS753 - Digital Image Processing	28	28
1MV15CS124	15CS71 - Web Technology and its applications	28	28	15CS72 - Advanced Computer Architectures	25	27	15CS73 - Machine Learning	25	27	15CS743 - Information and Network Security	27	30	15CS744 - Unix System Programming	25	26	15CS753 - Digital Image Processing	22	27
1MV15CS125	15CS71 - Web Technology and its applications	23	28	15CS72 - Advanced Computer Architectures	26	27	15CS73 - Machine Learning	22	27	15CS743 - Information and Network Security	25	28	15CS744 - Unix System Programming	26	27	15CS753 - Digital Image Processing	28	30
1MV15CS126	15CS71 - Web Technology and its applications	21	25	15CS72 - Advanced Computer Architectures	23	26	15CS73 - Machine Learning	26	30	15CS743 - Information and Network Security	23	28	15CS744 - Unix System Programming	27	29	15CS753 - Digital Image Processing	22	24
1MV15CS127	15CS71 - Web Technology and its applications	25	28	15CS72 - Advanced Computer Architectures	26	31	15CS73 - Machine Learning	25	30	15CS743 - Information and Network Security	28	28	15CS744 - Unix System Programming	27	31	15CS753 - Digital Image Processing	22	24
1MV15CS128	15CS71 - Web Technology and its applications	26	31	15CS72 - Advanced Computer Architectures	22	24	15CS73 - Machine Learning	23	24	15CS743 - Information and Network Security	25	30	15CS744 - Unix System Programming	25	30	15CS753 - Digital Image Processing	23	24
1MV15CS129	15CS71 - Web Technology and its applications	23	25	15CS72 - Advanced Computer Architectures	30	31	15CS73 - Machine Learning	24	26	15CS743 - Information and Network Security	19	24	15CS744 - Unix System Programming	31	31	15CS753 - Digital Image Processing	20	24
1MV15CS130	15CS71 - Web Technology and its applications	24	25	15CS72 - Advanced Computer Architectures	20	24	15CS73 - Machine Learning	28	30	15CS743 - Information and Network Security	22	26	15CS744 - Unix System Programming	27	27	15CS753 - Digital Image Processing	27	28
\.


--
-- Data for Name: genky; Type: TABLE DATA; Schema: public; Owner: pd
--

COPY public.genky (usn, key, verf, regd_mail) FROM stdin;
1MV15CS083	5871	Y	rav**********19@gmail.com
\.


--
-- Data for Name: internals; Type: TABLE DATA; Schema: public; Owner: pd
--

COPY public.internals (usn, s1, s2, s3, s4, s5, l1, l2) FROM stdin;
1MV15CS001	19	17	17	18	19	17	16
1MV15CS002	20	16	17	16	16	17	16
1MV15CS004	18	17	17	18	16	19	17
1MV15CS005	19	16	18	16	17	17	17
1MV15CS006	16	20	19	19	20	18	20
1MV15CS007	18	19	17	18	20	18	17
1MV15CS008	20	17	19	20	20	17	18
1MV15CS009	19	18	17	19	18	19	16
1MV15CS010	20	19	17	20	20	19	20
1MV15CS011	17	18	18	17	19	19	19
1MV15CS012	16	19	20	17	16	20	16
1MV15CS013	17	16	16	19	19	16	16
1MV15CS014	16	16	16	16	20	19	18
1MV15CS015	19	20	19	16	20	17	19
1MV15CS016	18	16	19	17	18	19	17
1MV15CS017	19	18	16	20	19	19	17
1MV15CS019	16	19	17	19	18	17	16
1MV15CS020	19	19	20	16	16	20	18
1MV15CS021	17	18	20	20	20	20	19
1MV15CS023	16	19	17	20	19	16	17
1MV15CS024	17	19	19	19	16	19	20
1MV15CS025	17	18	20	20	18	17	19
1MV15CS026	19	16	20	17	16	19	18
1MV15CS027	20	16	16	17	16	20	17
1MV15CS028	16	17	19	17	17	19	16
1MV15CS029	16	16	18	17	20	18	20
1MV15CS031	16	17	20	18	18	16	20
1MV15CS032	19	18	16	19	17	19	19
1MV15CS033	17	20	16	18	16	20	17
1MV15CS034	17	19	16	18	20	18	16
1MV15CS035	17	16	16	18	20	17	17
1MV15CS036	18	19	18	18	19	16	18
1MV15CS037	18	17	20	17	20	17	17
1MV15CS038	19	20	16	18	19	17	17
1MV15CS039	16	17	18	16	17	17	16
1MV15CS040	16	18	18	20	17	20	17
1MV15CS041	19	17	16	19	18	20	18
1MV15CS042	16	17	18	18	18	17	19
1MV15CS043	20	17	18	19	20	20	17
1MV15CS044	19	20	16	17	19	16	17
1MV15CS046	19	20	20	20	19	20	17
1MV15CS047	20	16	19	19	19	18	16
1MV15CS048	18	17	17	17	19	17	18
1MV15CS049	18	18	18	16	16	18	20
1MV15CS050	19	20	19	20	20	18	19
1MV15CS052	16	17	16	17	18	20	20
1MV15CS053	20	20	20	19	19	20	17
1MV15CS055	18	20	18	19	19	16	20
1MV15CS056	17	16	18	16	19	20	20
1MV15CS057	18	18	16	19	20	19	16
1MV15CS058	19	18	17	17	16	17	16
1MV15CS060	20	17	19	20	16	17	18
1MV15CS061	18	16	16	20	19	16	20
1MV15CS062	18	18	19	18	20	18	18
1MV15CS064	18	20	19	17	20	18	20
1MV15CS065	18	18	19	16	19	20	17
1MV15CS066	19	19	19	20	17	19	20
1MV15CS067	20	19	16	16	18	18	20
1MV15CS068	17	18	17	16	17	18	17
1MV15CS069	19	18	18	20	17	19	18
1MV15CS070	16	16	19	20	20	18	18
1MV15CS071	19	16	18	19	16	16	17
1MV15CS072	17	18	20	20	19	17	18
1MV15CS073	19	20	16	16	19	20	19
1MV15CS074	19	18	18	20	18	19	16
1MV15CS075	17	17	19	20	17	17	20
1MV15CS076	16	16	16	17	20	18	20
1MV15CS077	19	16	16	18	19	20	19
1MV15CS079	16	16	18	18	17	18	18
1MV15CS080	18	20	20	20	17	19	17
1MV15CS081	17	16	16	18	20	18	19
1MV15CS082	16	16	16	20	16	17	16
1MV15CS083	20	16	17	20	20	19	17
1MV15CS084	16	16	17	20	17	20	19
1MV15CS085	16	19	17	16	17	16	18
1MV15CS086	17	18	18	17	18	16	18
1MV15CS087	16	19	17	19	16	17	19
1MV15CS088	18	19	20	19	16	16	20
1MV15CS089	18	17	18	17	19	18	18
1MV15CS090	19	16	18	17	17	16	18
1MV15CS091	17	18	16	17	16	20	18
1MV15CS092	17	20	20	17	19	19	16
1MV15CS093	18	19	19	20	20	18	18
1MV15CS094	18	16	19	17	18	18	16
1MV15CS095	16	19	19	16	17	20	19
1MV15CS096	16	19	17	19	19	16	19
1MV15CS097	18	20	20	20	19	19	16
1MV15CS098	16	17	16	18	20	18	20
1MV15CS099	17	19	20	16	20	17	18
1MV15CS100	17	17	17	20	16	17	16
1MV15CS101	18	20	17	17	19	19	17
1MV15CS102	16	16	20	17	17	18	16
1MV15CS103	17	17	16	18	19	18	18
1MV15CS104	19	18	19	16	20	19	16
1MV15CS105	17	19	20	16	18	20	17
1MV15CS106	17	19	20	16	19	19	18
1MV15CS107	17	17	18	18	17	18	20
1MV15CS108	17	18	19	17	19	18	19
1MV15CS109	18	17	18	16	18	17	17
1MV15CS110	17	16	20	17	18	17	18
1MV15CS111	16	16	18	17	17	16	17
1MV15CS112	18	16	16	20	16	16	18
1MV15CS113	20	18	18	16	16	17	16
1MV15CS114	19	20	17	19	19	18	16
1MV15CS115	16	18	17	16	18	16	20
1MV15CS116	17	20	17	18	20	16	16
1MV15CS117	20	19	18	17	19	17	16
1MV15CS118	17	20	19	18	18	20	18
1MV15CS119	17	20	19	18	19	16	20
1MV15CS120	16	19	19	17	18	19	18
1MV15CS121	18	16	19	17	20	20	20
1MV15CS122	20	20	18	16	19	18	20
1MV15CS123	19	17	18	20	18	19	17
1MV15CS124	18	16	17	18	16	20	19
1MV15CS125	18	16	19	16	18	16	16
1MV15CS127	19	16	18	16	16	19	16
1MV15CS128	20	17	19	18	20	20	18
1MV15CS129	19	20	16	17	20	20	20
1MV15CS130	20	20	19	16	18	16	17
\.


--
-- Data for Name: login; Type: TABLE DATA; Schema: public; Owner: pd
--

COPY public.login (usn, login_pass, name) FROM stdin;
1MV15CS001	001	AASHI
1MV15CS002	002	 AASHISH  PRAKASH 
1MV15CS004	004	 ADITYA  BHASHKAR 
1MV15CS005	005	 ADITYA  GUPTA 
1MV15CS006	006	 AISHWARYA  R  GEORGE 
1MV15CS007	007	 AMRUTHA  B 
1MV15CS008	008	 ANIMESH  MOHAN 
1MV15CS009	009	 ANKIT  VASHISTHA 
1MV15CS010	010	 ANOOP  KULKARNI 
1MV15CS011	011	 ANSHUMAN  THAKUR 
1MV15CS012	012	 ANUPAMA  RAJ 
1MV15CS013	013	 ASHAY  SRIVASTAVA 
1MV15CS014	014	 ASHUTOSH  MANI  TRIPATHI 
1MV15CS015	015	 ASHUTOSH  SINGH 
1MV15CS016	016	 BHAVANA  R 
1MV15CS017	017	 BHUVNESH  TENGURIA 
1MV15CS019	019	 BOLLU  HIMANA 
1MV15CS020	020	 CH  RAVI  RAJ 
1MV15CS021	021	 CHETHANA  MANIRAJU 
1MV15CS023	023	 DARSHAN  RATNAKAR  NAIK 
1MV15CS024	024	 DAVID  CHERIA  MATHEW 
1MV15CS025	025	 DEEPAK  PANDEY 
1MV15CS026	026	 DEGALA.JASWANTH  SAI 
1MV15CS027	027	 DENZIL  RITESH 
1MV15CS028	028	 DEVAYANI  M 
1MV15CS029	029	 DEWASHISH  KASHYAP 
1MV15CS031	031	 DIVYANSH  BHATT 
1MV15CS032	032	 DORANALA  SWATHI 
1MV15CS033	033	DURGESH
1MV15CS034	034	 EYANSHU  GUPTA 
1MV15CS035	035	 GEETHIKA  PRIYA 
1MV15CS036	036	 GUNA  SAI  M 
1MV15CS037	037	 GURUMURTHY  R 
1MV15CS038	038	 HITESH  KUMAR.S 
1MV15CS039	039	 ISMAIL  ZABIULLA 
1MV15CS040	040	 JAYATEERTH  P  KAMATGI 
1MV15CS041	041	 JHESTA  N 
1MV15CS042	042	 JOPHIN  JOSEPH  N 
1MV15CS043	043	 K  .NIKITHA  REDDY 
1MV15CS044	044	 K  J  SOWMYA  REDDY 
1MV15CS046	046	 KANNIKA  P  R 
1MV15CS047	047	 KARISHMA  JOSEPH 
1MV15CS048	048	 KAVANA  M  V 
1MV15CS049	049	 KHATRI  MRUNAL  MOHAN 
1MV15CS050	050	 KISHORE  KUNAL 
1MV15CS052	052	 LEKKALA  BHANU  PRAKASH  REDDY 
1MV15CS053	053	 M  D  PAVAN  KUMAR 
1MV15CS055	055	 M  V  NISHITHA 
1MV15CS056	056	 MAHESH  K  SALIMATH 
1MV15CS057	057	 MANISHA  K  JOHNSON 
1MV15CS058	058	 MANOHAR  R 
1MV15CS060	060	 MITHIL  V.S 
1MV15CS061	061	 MOHAMMED  MAHABOOB  KHAN 
1MV15CS062	062	 MOHAMMED  SHAKEEL  B 
1MV15CS064	064	 NAELA  TARANNUM 
1MV15CS065	065	NAFISA
1MV15CS066	066	 NIDA  SHAFAATH 
1MV15CS067	067	 NIHARIKA  .M 
1MV15CS068	068	 NIKHIL  H  V 
1MV15CS069	069	 NIKHIL  KUMAR  SINGH 
1MV15CS070	070	 NITISH  MEHTA 
1MV15CS071	071	 PARAS  AGRAWAL 
1MV15CS072	072	 PARAS  JAIN 
1MV15CS073	073	 PAVAN  KALYAN  K 
1MV15CS074	074	 PRABHAT  KUMAR  SINGH 
1MV15CS075	075	 PRAJWAL  R  VAIDYA  U 
1MV15CS076	076	 PRASAD  RAMACHANDRA  SIDDHESHWAR 
1MV15CS077	077	 PRIYA  BHURE 
1MV15CS079	079	 RACHIT  BHARGAVA 
1MV15CS080	080	 RAKSHATH  A  HEGDE  H 
1MV15CS081	081	RAKSHITA.SHINDHE.S
1MV15CS082	082	 RAVIKUMAR  ERANNA  MURALI 
1MV15CS084	084	 RISHI  S  NAIR 
1MV15CS085	085	 ROHIT  ANAND 
1MV15CS086	086	 REDDIBHATHUNI  RUCHITHA 
1MV15CS087	087	 RUSHIKA  NANABALA 
1MV15CS088	088	 S  PRIYADHARSHAN 
1MV15CS089	089	 SOMAVARAPU  SRIPRIYA 
1MV15CS090	090	 S  WONTHAN 
1MV15CS091	091	 S.K.NIKHITA  SINGH 
1MV15CS092	092	 S.SACHIN  KUMAR 
1MV15CS093	093	 SAMIT  ABHISHEK 
1MV15CS094	094	 SANATHKUMAR  SUNKAD 
1MV15CS095	095	 SANJANA  MUKHERJEE 
1MV15CS096	096	 SANJAY  CHICHADWANI 
1MV15CS097	097	 SANKET  RAJ 
1MV15CS098	098	 SAUMYA  MATHUR 
1MV15CS099	099	 SEEPALA  VENKATA  SAI  VARDHAN 
1MV15CS100	100	 SHAIK  KAMRAN  MOINUDDIN 
1MV15CS101	101	 SHARANYA  G 
1MV15CS102	102	 SHIVPRAKASH  PATIL 
1MV15CS103	103	 SHRAWANI  SHEKHAR 
1MV15CS104	104	 SHREYA  SABU 
1MV15CS105	105	 SHREYAS  S 
1MV15CS106	106	 SHRINIVAS  UDUPA  E  S 
1MV15CS107	107	 SNEHA  S  R 
1MV15CS108	108	SUJITH
1MV15CS109	109	 SUSHEN  KUMAR 
1MV15CS110	110	 SWATI  MISHRA 
1MV15CS111	111	 SWECHHA  JHA 
1MV15CS112	112	 SWETA  KUMARI  AGRAWAL 
1MV15CS114	114	 T  RUSHIKA  REDDY 
1MV15CS115	115	 T  S  SAGARIKA 
1MV15CS116	116	 TANISHQ  GARG 
1MV15CS117	117	 TIRUMALA  V  KULKARNI 
1MV15CS118	118	 V  ROHIT  KUMAR 
1MV15CS119	119	 V  SUBHAPRIYA 
1MV15CS120	120	 VAIBHAV  NARAYAN  SABHAHIT 
1MV15CS121	121	 VANDHITHA  .P 
1MV15CS122	122	 VARSHA  R 
1MV15CS123	123	VARSHA.C.BENDRE
1MV15CS124	124	 VARUN  J  BOBDE 
1MV15CS125	125	 VIMARSHA  C 
1MV15CS127	127	 VISHAL  N 
1MV15CS128	128	VISHNUKANT
1MV15CS129	129	 YASHASWINI  KUMAR 
1MV15CS130	130	 MILIND  DAFTARI 
1MV15CS113	113	\N
1MV15CS083	083	 Ravil Kashyap 
\.


--
-- Data for Name: login_teacher; Type: TABLE DATA; Schema: public; Owner: pd
--

COPY public.login_teacher (staffid, pass, name) FROM stdin;
1MV15TH001	001	Narendra Babu
\.


--
-- Data for Name: six_gpa; Type: TABLE DATA; Schema: public; Owner: pd
--

COPY public.six_gpa (usn, name, inm1, exm1, inm2, exm2, inm3, exm3, inm4, exm4, inm5, exm5, inm6, exm6, inl1, exl1, inl2, exl2) FROM stdin;
1MV15IS001	AASHI	18	72	17	42	16	55	17	41	20	41	19	41	15	65	20	47
1MV15CS061	 MOHAMMED  MAHABOOB  KHAN 	18	59	15	43	17	76	17	51	14	41	19	51	18	76	20	79\n
1MV15CS062	 MOHAMMED  SHAKEEL  B 	17	54	16	32	17	48	18	42	17	41	18	48	20	70	20	77\n
1MV15CS064	 NAELA  TARANNUM 	16	29	17	50	15	46	17	29	16	33	18	33	19	73	19	76\n
1MV15CS065	NAFISA	14	35	12	34	12	40	10	30	12	23	15	23	14	74	17	78\n
1MV15CS066	 NIDA  SHAFAATH 	20	53	20	56	20	63	20	36	20	40	20	50	20	78	20	78\n
1MV15CS067	 NIHARIKA  .M 	15	36	17	43	16	49	17	38	16	28	17	35	17	35	18	75\n
1MV15CS068	 NIKHIL  H  V 	16	47	16	60	14	69	15	30	14	43	16	50	18	50	19	51\n
1MV15CS069	 NIKHIL  KUMAR  SINGH 	16	49	14	33	15	39	19	35	19	35	18	28	16	77	16	46\n
1MV15CS070	 NITISH  MEHTA 	18	47	18	56	17	56	17	28	13	38	17	15	17	35	18	39\n
1MV15CS071	 PARAS  AGRAWAL 	19	52	15	54	18	63	20	46	20	37	17	49	19	75	18	76\n
1MV15CS072	 PARAS  JAIN 	19	64	18	56	12	63	14	46	17	47	17	33	18	78	17	46\n
1MV15CS073	 PAVAN  KALYAN  K 	19	52	18	56	17	69	19	58	17	53	15	50	19	73	18	79\n
1MV15CS074	 PRABHAT  KUMAR  SINGH 	17	57	17	54	15	37	16	39	18	42	17	33	17	65	19	79\n
1MV15CS075	 PRAJWAL  R  VAIDYA  U 	18	65	12	42	17	53	18	31	15	34	17	29	17	22	20	79\n
1MV15CS076	 PRASAD  RAMACHANDRA  SIDDHESHWAR 	19	59	20	49	15	66	20	39	19	44	17	64	17	78	19	70\n
1MV15CS077	 PRIYA  BHURE 	20	45	18	45	17	68	19	37	18	48	18	28	19	78	20	74\n
1MV15CS079	 RACHIT  BHARGAVA 	12	36	14	45	14	41	14	19	16	29	14	33	17	73	12	45\n
1MV15CS080	 RAKSHATH  A  HEGDE  H 	14	40	12	39	15	49	16	37	12	19	13	44	17	56	15	45\n
1MV15CS081	RAKSHITA.SHINDHE.S	18	46	13	23	12	30	17	12	12	11	12	28	16	37	17	36\n
1MV15CS082	 RAVIKUMAR  ERANNA  MURALI 	18	63	14	49	14	49	18	29	15	36	17	43	14	73	17	45\n
1MV15CS083	 RAVIL  KASHYAP 	20	54	17	49	19	53	20	38	20	46	19	47	17	78	18	46\n
1MV15CS084	 RISHI  S  NAIR 	19	66	18	37	19	63	18	46	20	35	16	44	16	78	19	79\n
1MV15CS085	 ROHIT  ANAND 	16	62	16	60	19	77	18	43	17	35	19	50	19	39	17	46\n
1MV15CS086	 REDDIBHATHUNI  RUCHITHA 	14	48	13	28	14	62	16	29	18	19	17	28	17	35	20	70\n
1MV15CS087	 RUSHIKA  NANABALA 	18	55	18	47	18	63	20	38	18	62	17	59	17	70	20	70\n
1MV15CS088	 S  PRIYADHARSHAN 	16	49	13	28	13	65	20	28	17	46	14	38	20	70	15	78\n
1MV15CS089	 SOMAVARAPU  SRIPRIYA 	13	28	12	35	12	28	12	15	12	20	12	18	18	33	12	35\n
1MV15CS090	 S  WONTHAN 	12	22	16	54	12	49	16	32	12	37	19	24	16	74	12	67\n
1MV15CS091	 S.K.NIKHITA  SINGH 	15	40	13	45	13	49	15	19	13	16	17	36	18	73	12	62\n
1MV15CS092	 S.SACHIN  KUMAR 	12	9	13	18	12	40	11	32	12	20	12	3	13	35	12	35\n
1MV15CS093	 SAMIT  ABHISHEK 	13	43	13	28	15	41	16	29	17	33	12	45	17	74	12	40\n
1MV15CS001	AASHI	18	72	17	42	16	55	17	41	20	41	19	41	15	65	20	47\n
1MV15CS002	 AASHISH  PRAKASH 	14	29	17	28	15	28	18	30	15	28	15	33	12	47	20	47\n
1MV15CS004	 ADITYA  BHASHKAR 	20	47	18	55	19	58	19	41	18	41	15	48	20	44	20	73\n
1MV15CS005	 ADITYA  GUPTA 	18	69	18	52	19	57	18	42	19	45	17	54	18	43	20	71\n
1MV15CS006	 AISHWARYA  R  GEORGE 	14	12	17	42	14	52	16	23	15	24	17	24	13	44	20	36\n
1MV15CS007	 AMRUTHA  B 	20	65	18	49	20	62	17	45	16	41	17	41	20	79	20	79\n
1MV15CS008	 ANIMESH  MOHAN 	17	61	16	47	20	60	18	34	17	40	18	30	20	79	20	77\n
1MV15CS009	 ANKIT  VASHISTHA 	16	51	12	54	15	55	16	28	18	38	15	38	20	66	19	65\n
1MV15CS010	 ANOOP  KULKARNI 	17	39	18	48	17	62	17	50	19	41	20	43	20	79	20	78\n
1MV15CS011	 ANSHUMAN  THAKUR 	15	42	16	38	16	39	15	18	18	48	17	42	20	60	19	60\n
1MV15CS012	 ANUPAMA  RAJ 	18	49	20	61	20	68	19	44	20	41	18	52	20	79	18	61\n
1MV15CS013	 ASHAY  SRIVASTAVA 	14	40	19	51	15	44	16	37	15	42	17	50	17	78	18	46\n
1MV15CS014	 ASHUTOSH  MANI  TRIPATHI 	16	59	18	53	17	64	14	16	17	53	15	57	17	80	18	43\n
1MV15CS015	 ASHUTOSH  SINGH 	19	48	18	52	18	56	16	50	18	58	17	47	20	80	20	79\n
1MV15CS016	 BHAVANA  R 	18	36	17	50	16	47	16	47	18	46	20	42	17	77	17	35\n
1MV15CS017	 BHUVNESH  TENGURIA 	17	73	15	38	16	59	16	34	15	39	14	55	17	77	20	79\n
1MV15CS019	 BOLLU  HIMANA 	16	32	19	50	15	55	17	44	18	29	18	41	16	50	18	72\n
1MV15CS020	 CH  RAVI  RAJ 	19	64	20	60	20	71	19	43	20	62	19	42	20	80	20	80\n
1MV15CS021	 CHETHANA  MANIRAJU 	14	39	12	14	12	39	14	8	12	7	13	8	13	60	18	35\n
1MV15CS023	 DARSHAN  RATNAKAR  NAIK 	12	28	12	38	12	39	8	34	12	22	14	30	18	33	13	0\n
1MV15CS024	 DAVID  CHERIA  MATHEW 	19	65	20	36	18	57	18	50	19	62	20	36	20	79	20	78\n
1MV15CS025	 DEEPAK  PANDEY 	17	62	19	58	20	72	17	40	19	54	18	51	14	79	20	51\n
1MV15CS026	 DEGALA.JASWANTH  SAI 	13	30	15	31	13	46	15	25	15	19	14	17	12	80	18	39\n
1MV15CS027	 DENZIL  RITESH 	16	44	15	55	15	54	17	42	16	36	18	41	15	74	16	52\n
1MV15CS028	 DEVAYANI  M 	18	53	19	52	17	68	19	47	19	46	19	58	18	78	17	75\n
1MV15CS029	 DEWASHISH  KASHYAP 	12	45	12	49	12	22	12	28	12	28	12	40	12	75	15	79\n
1MV15CS031	 DIVYANSH  BHATT 	12	20	13	38	12	50	12	28	14	38	15	37	15	66	14	10\n
1MV15CS032	 DORANALA  SWATHI 	20	72	20	69	20	78	20	58	20	58	20	68	20	78	20	79\n
1MV15CS033	DURGESH	15	63	18	56	15	45	15	41	14	41	16	55	18	73	15	79\n
1MV15CS034	 EYANSHU  GUPTA 	13	31	17	59	12	48	15	37	16	40	12	41	19	76	12	47\n
1MV15CS035	 GEETHIKA  PRIYA 	16	45	12	9	12	35	11	12	12	12	8	12	16	40	17	35\n
1MV15CS036	 GUNA  SAI  M 	17	58	18	72	17	44	19	28	18	33	18	38	18	40	18	47\n
1MV15CS037	 GURUMURTHY  R 	13	37	12	43	12	46	13	36	14	17	13	41	13	35	15	37\n
1MV15CS038	 HITESH  KUMAR.S 	13	35	12	13	15	22	11	29	12	39	13	32	19	45	14	0\n
1MV15CS039	 ISMAIL  ZABIULLA 	16	45	16	45	17	51	17	37	17	29	17	43	19	35	15	72\n
1MV15CS040	 JAYATEERTH  P  KAMATGI 	20	63	18	58	17	78	19	68	19	36	20	54	19	78	20	79\n
1MV15CS041	 JHESTA  N 	16	52	15	29	14	42	15	37	12	28	13	31	18	35	20	35\n
1MV15CS042	 JOPHIN  JOSEPH  N 	19	57	19	68	19	51	19	37	20	66	19	53	18	37	18	74\n
1MV15CS043	 K  .NIKITHA  REDDY 	20	64	20	48	20	75	20	65	20	58	20	62	20	78	20	78\n
1MV15CS044	 K  J  SOWMYA  REDDY 	20	62	20	62	19	67	20	50	18	62	20	45	20	76	20	77\n
1MV15CS046	 KANNIKA  P  R 	19	58	20	40	20	68	19	59	19	46	19	49	20	74	20	77\n
1MV15CS047	 KARISHMA  JOSEPH 	19	77	20	52	20	68	19	43	20	67	19	56	20	78	20	78\n
1MV15CS048	 KAVANA  M  V 	17	30	19	45	18	59	19	64	18	36	18	47	18	72	18	79\n
1MV15CS049	 KHATRI  MRUNAL  MOHAN 	19	63	18	56	20	61	16	54	17	36	16	38	18	78	19	79\n
1MV15CS050	 KISHORE  KUNAL 	18	43	17	41	15	45	13	28	17	61	16	37	18	70	19	35\n
1MV15CS052	 LEKKALA  BHANU  PRAKASH  REDDY 	12	28	12	30	12	35	9	23	13	30	12	8	16	35	12	35\n
1MV15CS053	 M  D  PAVAN  KUMAR 	18	56	17	56	17	61	16	33	17	49	18	51	20	64	18	73\n
1MV15CS055	 M  V  NISHITHA 	20	65	13	45	18	43	13	32	16	40	13	44	20	76	20	76\n
1MV15CS056	 MAHESH  K  SALIMATH 	19	51	13	43	16	62	14	32	15	46	18	33	17	73	20	72\n
1MV15CS057	 MANISHA  K  JOHNSON 	19	71	15	57	16	48	18	28	19	56	19	39	19	78	16	73\n
1MV15CS058	 MANOHAR  R 	19	77	20	65	19	78	18	46	20	46	20	44	20	76	19	46\n
1MV15CS060	 MITHIL  V.S 	19	64	14	29	17	52	17	35	14	41	13	48	17	40	19	79\n
1MV15CS094	 SANATHKUMAR  SUNKAD 	17	49	13	52	18	46	16	35	13	29	20	39	16	35	12	35\n
1MV15CS095	 SANJANA  MUKHERJEE 	19	70	18	61	20	78	20	65	18	38	19	42	18	78	20	79\n
1MV15CS096	 SANJAY  CHICHADWANI 	16	51	17	42	16	56	15	32	18	40	16	42	19	78	18	56\n
1MV15CS097	 SANKET  RAJ 	13	30	15	29	15	48	17	30	14	28	20	44	17	40	14	61\n
1MV15CS098	 SAUMYA  MATHUR 	17	43	18	53	17	50	18	42	16	39	17	34	15	73	15	35\n
1MV15CS099	 SEEPALA  VENKATA  SAI  VARDHAN 	17	46	18	58	17	60	17	28	14	33	15	59	18	79	18	76\n
1MV15CS100	 SHAIK  KAMRAN  MOINUDDIN 	18	62	17	49	19	55	18	41	18	71	16	51	18	75	14	68\n
1MV15CS101	 SHARANYA  G 	12	52	15	61	13	49	18	29	15	34	15	28	19	78	20	35\n
1MV15CS102	 SHIVPRAKASH  PATIL 	13	42	12	48	12	33	17	37	12	28	13	28	12	60	14	59\n
1MV15CS103	 SHRAWANI  SHEKHAR 	12	32	17	37	16	40	19	15	17	38	13	35	15	50	12	76\n
1MV15CS104	 SHREYA  SABU 	20	78	20	68	20	68	20	58	20	56	20	56	20	78	20	79\n
1MV15CS105	 SHREYAS  S 	16	58	15	43	16	61	20	35	17	40	17	57	17	50	15	56\n
1MV15CS106	 SHRINIVAS  UDUPA  E  S 	18	65	20	57	18	57	20	44	20	51	20	45	18	50	20	64\n
1MV15CS107	 SNEHA  S  R 	19	59	19	46	18	63	20	35	18	28	18	48	15	40	20	76\n
1MV15CS108	SUJITH	15	38	15	53	16	52	18	32	15	48	18	49	18	78	12	66\n
1MV15CS109	 SUSHEN  KUMAR 	10	30	15	43	6	54	10	17	6	34	2	38	13	40	12	48\n
1MV15CS110	 SWATI  MISHRA 	17	46	18	41	14	65	19	44	14	46	18	52	17	50	14	78\n
1MV15CS111	 SWECHHA  JHA 	16	29	16	56	16	64	19	54	14	41	17	59	19	40	12	65\n
1MV15CS112	 SWETA  KUMARI  AGRAWAL 	19	74	20	52	20	64	19	44	20	48	20	47	20	79	17	78\n
1MV15CS113	 SYED  MOHAMMED  FAIZ 	12	30	16	49	15	49	19	16	16	46	16	39	19	34	13	35\n
1MV15CS114	 T  RUSHIKA  REDDY 	20	67	18	65	19	59	20	50	16	58	18	65	18	79	20	79\n
1MV15CS115	 T  S  SAGARIKA 	20	59	20	66	17	61	20	49	18	48	19	44	18	79	17	78\n
1MV15CS116	 TANISHQ  GARG 	15	57	15	49	16	58	17	28	16	19	12	30	16	71	12	65\n
1MV15CS117	 TIRUMALA  V  KULKARNI 	19	66	15	40	16	51	15	35	17	41	14	39	17	50	16	74\n
1MV15CS118	 V  ROHIT  KUMAR 	12	46	16	47	15	57	17	47	12	41	15	31	17	73	13	72\n
1MV15CS119	 V  SUBHAPRIYA 	18	56	16	58	17	70	20	32	18	36	17	41	17	68	13	64\n
1MV15CS120	 VAIBHAV  NARAYAN  SABHAHIT 	18	54	20	50	19	57	20	52	19	53	20	53	16	40	15	70\n
1MV15CS121	 VANDHITHA  .P 	16	51	15	42	14	39	18	33	14	35	15	28	18	76	20	69\n
1MV15CS122	 VARSHA  R 	16	53	15	28	13	50	19	29	18	28	16	41	13	77	20	74\n
1MV15CS123	VARSHA.C.BENDRE	18	56	18	50	17	58	18	57	16	37	20	57	17	79	12	62\n
1MV15CS124	 VARUN  J  BOBDE 	12	35	12	22	12	29	16	17	12	28	13	20	16	33	12	45\n
1MV15CS125	 VIMARSHA  C 	14	28	13	37	14	45	17	31	14	16	15	38	16	45	13	35\n
1MV15CS127	 VISHAL  N 	19	60	17	74	17	52	20	45	19	59	19	57	20	79	17	78\n
1MV15CS128	VISHNUKANT	10	36	12	19	12	35	11	8	12	24	12	28	10	77	12	35\n
1MV15CS129	 YASHASWINI  KUMAR 	12	35	12	31	10	21	12	28	13	19	13	24	10	33	13	35\n
1MV15CS130	 MILIND  DAFTARI 	14	28	14	33	14	35	14	28	12	33	13	17	18	78	14	64\n
\.


--
-- Name: attends attends_pkey; Type: CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY public.attends
    ADD CONSTRAINT attends_pkey PRIMARY KEY (usn);


--
-- Name: internals internals_pkey; Type: CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY public.internals
    ADD CONSTRAINT internals_pkey PRIMARY KEY (usn);


--
-- Name: login login_pkey; Type: CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (usn);


--
-- Name: login_teacher login_teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY public.login_teacher
    ADD CONSTRAINT login_teacher_pkey PRIMARY KEY (staffid);


--
-- Name: six_gpa six_gpa_pkey; Type: CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY public.six_gpa
    ADD CONSTRAINT six_gpa_pkey PRIMARY KEY (usn);


--
-- Name: genky genky_usn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pd
--

ALTER TABLE ONLY public.genky
    ADD CONSTRAINT genky_usn_fkey FOREIGN KEY (usn) REFERENCES public.login(usn) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

