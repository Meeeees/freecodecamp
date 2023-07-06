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
    name character varying(100),
    inhabits integer,
    rocks integer,
    weight numeric,
    water boolean,
    richest_person text NOT NULL,
    liveable boolean NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100),
    inhabits integer,
    rocks integer,
    weight numeric,
    water boolean,
    richest_person text NOT NULL,
    liveable boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(100),
    inhabits integer,
    rocks integer,
    weight numeric,
    water boolean,
    richest_person text NOT NULL,
    liveable boolean NOT NULL,
    star_id integer NOT NULL
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
    name character varying(100),
    inhabits integer,
    rocks integer,
    weight numeric,
    water boolean,
    richest_person text NOT NULL,
    liveable boolean NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: yummy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.yummy (
    yummy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    nice boolean NOT NULL
);


ALTER TABLE public.yummy OWNER TO freecodecamp;

--
-- Name: yummy_yummy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.yummy_yummy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yummy_yummy_id_seq OWNER TO freecodecamp;

--
-- Name: yummy_yummy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.yummy_yummy_id_seq OWNED BY public.yummy.yummy_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


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
-- Name: yummy yummy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.yummy ALTER COLUMN yummy_id SET DEFAULT nextval('public.yummy_yummy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 100000000, 500000, 4.2, true, 'John Doe', true);
INSERT INTO public.galaxy VALUES (2, 'Sombrero', 500000, 2000, 2.9, false, 'David Johnson', false);
INSERT INTO public.galaxy VALUES (3, 'Mily Way', 760000, 2000, 5.6, true, 'Jane Smith', true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 250000, 1500, 3.7, true, 'Michael Brown', true);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 300000, 1800, 4.1, false, 'Emily Davis', false);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 180000, 1200, 2.5, true, 'Daniel Johnson', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (46, 'Moon 1', 1, 0, 123456789, false, 'John Smith', false, 37);
INSERT INTO public.moon VALUES (47, 'Moon 2', 0, 1, 987654321, false, 'Jane Doe', false, 37);
INSERT INTO public.moon VALUES (48, 'Moon 3', 0, 2, 246813579, false, 'Robert Johnson', false, 37);
INSERT INTO public.moon VALUES (49, 'Moon 4', 0, 1, 135792468, false, 'Emily Davis', false, 37);
INSERT INTO public.moon VALUES (50, 'Moon 5', 0, 3, 987654321, true, 'Michael Brown', true, 37);
INSERT INTO public.moon VALUES (51, 'Moon 6', 0, 2, 123456789, true, 'Sophia Thompson', true, 38);
INSERT INTO public.moon VALUES (52, 'Moon 7', 0, 1, 246813579, false, 'Daniel Johnson', false, 38);
INSERT INTO public.moon VALUES (53, 'Moon 8', 0, 4, 135792468, true, 'Olivia White', true, 38);
INSERT INTO public.moon VALUES (54, 'Moon 9', 0, 2, 987654321, false, 'William Thompson', false, 38);
INSERT INTO public.moon VALUES (55, 'Moon 10', 0, 1, 123456789, false, 'Emma Johnson', false, 39);
INSERT INTO public.moon VALUES (56, 'Moon 11', 0, 3, 246813579, false, 'Daniel Brown', false, 39);
INSERT INTO public.moon VALUES (57, 'Moon 12', 0, 1, 135792468, false, 'Charlotte Davis', false, 39);
INSERT INTO public.moon VALUES (58, 'Moon 13', 0, 2, 987654321, false, 'Oliver Smith', false, 40);
INSERT INTO public.moon VALUES (59, 'Moon 14', 0, 4, 123456789, true, 'Sophia Wilson', true, 40);
INSERT INTO public.moon VALUES (60, 'Moon 15', 0, 1, 246813579, true, 'James Taylor', true, 41);
INSERT INTO public.moon VALUES (61, 'Moon 16', 0, 3, 135792468, false, 'Emma Davis', false, 41);
INSERT INTO public.moon VALUES (62, 'Moon 17', 0, 2, 987654321, false, 'Daniel Wilson', false, 42);
INSERT INTO public.moon VALUES (63, 'Moon 18', 0, 1, 123456789, false, 'Sophia Smith', false, 42);
INSERT INTO public.moon VALUES (64, 'Moon 19', 0, 4, 246813579, true, 'William Davis', true, 43);
INSERT INTO public.moon VALUES (65, 'Moon 20', 0, 2, 135792468, true, 'Olivia Wilson', true, 43);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (37, 'Earth', 1, 0, 5973600000000000000000000, true, 'Jeff Bezos', true, 3);
INSERT INTO public.planet VALUES (38, 'Mars', 0, 2, 641710000000000000000000, false, 'Elon Musk', false, 3);
INSERT INTO public.planet VALUES (39, 'Venus', 0, 3, 4867600000000000000000000, false, 'Richard Branson', false, 3);
INSERT INTO public.planet VALUES (40, 'Mercury', 0, 1, 330110000000000000000000, false, 'Warren Buffett', false, 3);
INSERT INTO public.planet VALUES (41, 'Jupiter', 0, 5, 1898600000000000000000000000, false, 'Mark Zuckerberg', false, 4);
INSERT INTO public.planet VALUES (42, 'Saturn', 0, 4, 568460000000000000000000000, false, 'Larry Page', false, 4);
INSERT INTO public.planet VALUES (43, 'Uranus', 0, 1, 86832000000000000000000, false, 'Sergey Brin', false, 4);
INSERT INTO public.planet VALUES (44, 'Neptune', 0, 2, 102430000000000000000000, false, 'Tim Cook', false, 4);
INSERT INTO public.planet VALUES (45, 'Pluto', 0, 0, 1300000000000000000000, false, 'Satya Nadella', false, 5);
INSERT INTO public.planet VALUES (46, 'Europa', 0, 2, 480000000000000000000000, true, 'Ginni Rometty', true, 5);
INSERT INTO public.planet VALUES (47, 'Titan', 0, 3, 1345200000000000000000000, true, 'Mary Barra', true, 6);
INSERT INTO public.planet VALUES (48, 'Enceladus', 0, 1, 10800000000000000000000, true, 'Indra Nooyi', true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Sun', 1, 0, 1989000.0, false, 'John Doe', true, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 0, 1, 0.1234, false, 'Jane Smith', false, 2);
INSERT INTO public.star VALUES (5, 'Sirius', 3, 4, 2.3456, true, 'Robert Johnson', true, 1);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 0, 5, 10.987, false, 'Michael Brown', false, 3);
INSERT INTO public.star VALUES (7, 'Vega', 2, 2, 1.2345, true, 'Elizabeth Davis', true, 2);
INSERT INTO public.star VALUES (8, 'Alpha Centauri A', 1, 3, 2.5678, false, 'William Thompson', true, 2);


--
-- Data for Name: yummy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.yummy VALUES (1, 'Chocolate', true);
INSERT INTO public.yummy VALUES (2, 'Pizza', true);
INSERT INTO public.yummy VALUES (3, 'Ice Cream', true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 66, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 48, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: yummy_yummy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.yummy_yummy_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_richest_person_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_richest_person_key UNIQUE (richest_person);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_richest_person_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_richest_person_key UNIQUE (richest_person);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_richest_person_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_richest_person_key UNIQUE (richest_person);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_richest_person_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_richest_person_key UNIQUE (richest_person);


--
-- Name: yummy yummy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.yummy
    ADD CONSTRAINT yummy_name_key UNIQUE (name);


--
-- Name: yummy yummy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.yummy
    ADD CONSTRAINT yummy_pkey PRIMARY KEY (yummy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

