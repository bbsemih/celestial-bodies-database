--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    weight numeric(7,1),
    age integer,
    alive boolean NOT NULL,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: human; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.human (
    human_id integer NOT NULL,
    name character varying(20),
    alive boolean NOT NULL,
    description text
);


ALTER TABLE public.human OWNER TO freecodecamp;

--
-- Name: human_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.human_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.human_id_seq OWNER TO freecodecamp;

--
-- Name: human_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.human_id_seq OWNED BY public.human.human_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    weight numeric(4,1),
    age integer,
    alive boolean NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    weight numeric(8,1),
    age integer,
    alive boolean NOT NULL,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    weight numeric(5,1),
    age integer,
    alive boolean NOT NULL,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: human human_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human ALTER COLUMN human_id SET DEFAULT nextval('public.human_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxyw sbsr1', NULL, NULL, false, 'galaroiv mon ovd');
INSERT INTO public.galaxy VALUES (2, 'galaxyw sbsr1', NULL, NULL, false, 'gaelaroiv mon ovd');
INSERT INTO public.galaxy VALUES (3, 'galaxyw sbsr1', NULL, NULL, true, 'gaeoiv mon ovd');
INSERT INTO public.galaxy VALUES (4, 'galaxyw sbsr1', NULL, NULL, true, 'gaiv mon ovd');
INSERT INTO public.galaxy VALUES (5, 'galaxyw sbsr1', NULL, NULL, false, 'ga mon ovd');
INSERT INTO public.galaxy VALUES (6, 'galaxyw sbsr1', NULL, NULL, false, 'xymon ovd');


--
-- Data for Name: human; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.human VALUES (1, 'human sbsr1', false, 'rpwe rove mon ovd');
INSERT INTO public.human VALUES (2, 'humanw sbsr1', false, 'rpwe rov mon ovd');
INSERT INTO public.human VALUES (3, 'humanw sbsr1', true, 'rpwe roiv mon ovd');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 3.0, 21, true, 'we love moon');
INSERT INTO public.moon VALUES (2, 'moon bro', 5.0, 24, true, 'we love moon bro');
INSERT INTO public.moon VALUES (3, 'moon sis', 6.0, 27, false, 'we love moon sis');
INSERT INTO public.moon VALUES (4, 'moon sis1', 6.0, 27, false, 'wwe love moon sis');
INSERT INTO public.moon VALUES (5, 'moon sisr1', 6.0, 27, false, 'wrwe love moon sis');
INSERT INTO public.moon VALUES (6, 'moon sisrr1', 6.0, 27, false, 'wrwe lrove moon sis');
INSERT INTO public.moon VALUES (7, 'moon ssrr1', 6.0, 27, false, 'wrwe rove moon sis');
INSERT INTO public.moon VALUES (8, 'mon ssrr1', 6.0, 27, false, 'rpwe rove moon sis');
INSERT INTO public.moon VALUES (9, 'mopn ssrr1', 6.0, 27, false, 'rpwe rove mon sis');
INSERT INTO public.moon VALUES (10, 'mopn ssr1', 6.0, 27, false, 'rpwe rove mon is');
INSERT INTO public.moon VALUES (11, 'planetryw sbsr1', 5.0, 41, false, 'pljgm vsdsd');
INSERT INTO public.moon VALUES (12, 'planetryw sbsr1', 5.0, 41, false, 'pljgm vssdsd');
INSERT INTO public.moon VALUES (13, 'planetryw sbsr1', 5.0, 41, false, 'pljgdm vssdsd');
INSERT INTO public.moon VALUES (14, 'planetryw sbsr1', 5.0, 41, false, 'pljgdm vdssdsd');
INSERT INTO public.moon VALUES (15, 'planetryw sbsr1', 5.0, 41, false, 'moon trust');
INSERT INTO public.moon VALUES (16, 'planetryw sbsr1', 5.0, 41, false, 'moon trfust');
INSERT INTO public.moon VALUES (17, 'planetryw sbsr1', 5.0, 41, false, 'moon trfudst');
INSERT INTO public.moon VALUES (18, 'planetryw sbsr1', 5.0, 41, false, 'moon trfuddst');
INSERT INTO public.moon VALUES (19, 'planetryw sbsr1', 5.0, 41, false, 'moon trfuddsst');
INSERT INTO public.moon VALUES (20, 'planetryw sbsr1', 5.0, 41, false, 'in moon we trust');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'moln ssr1', 6.0, 27, false, 'rpie rove mon o');
INSERT INTO public.planet VALUES (2, 'moln ssr1', 6.0, 27, false, 'rpie rove mon ov');
INSERT INTO public.planet VALUES (3, 'moln sbsr1', 6.0, 27, false, 'rpie rove mon ovd');
INSERT INTO public.planet VALUES (4, 'staryw sbsr1', NULL, NULL, false, 'planetym vd');
INSERT INTO public.planet VALUES (5, 'staryw sbsr1', NULL, NULL, false, 'plianetym vd');
INSERT INTO public.planet VALUES (6, 'staryw sbsr1', NULL, NULL, false, 'pliam vd');
INSERT INTO public.planet VALUES (7, 'planetryw sbsr1', 5.0, 41, false, 'plm vd');
INSERT INTO public.planet VALUES (8, 'planetryw sbsr1', 5.0, 41, false, 'pljm vd');
INSERT INTO public.planet VALUES (9, 'planetryw sbsr1', 5.0, 41, false, 'pljgm vd');
INSERT INTO public.planet VALUES (10, 'planetryw sbsr1', 5.0, 41, false, 'pljgm vdd');
INSERT INTO public.planet VALUES (11, 'planetryw sbsr1', 5.0, 41, false, 'pljgm vsdd');
INSERT INTO public.planet VALUES (12, 'planetryw sbsr1', 5.0, 41, false, 'pljgm vsdsd');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'mopn ssr1', 6.0, 27, false, 'rpwe rove mon is', NULL);
INSERT INTO public.star VALUES (2, 'mopn ssr1', 6.0, 27, false, 'rpwe rove mon s', NULL);
INSERT INTO public.star VALUES (3, 'mopn ssr1', 6.0, 27, false, 'rpwe rove mon o', NULL);
INSERT INTO public.star VALUES (4, 'staryw sbsr1', NULL, NULL, false, 'starymon ovd', NULL);
INSERT INTO public.star VALUES (5, 'staryw sbsr1', NULL, NULL, false, 'starrymon ovd', NULL);
INSERT INTO public.star VALUES (6, 'staryw sbsr1', NULL, NULL, false, 'starrymon vd', NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: human_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.human_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 3, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_galaxy_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_pkey PRIMARY KEY (galaxy_id);


--
-- Name: human human_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT human_description_key UNIQUE (description);


--
-- Name: human human_human_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT human_human_id_pkey PRIMARY KEY (human_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_moon_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_planet_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_star_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--