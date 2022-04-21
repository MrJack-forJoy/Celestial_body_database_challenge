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
-- Name: current_universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.current_universe (
    name character varying(30) NOT NULL,
    current_universe_id integer NOT NULL,
    age integer
);


ALTER TABLE public.current_universe OWNER TO freecodecamp;

--
-- Name: current_universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.current_universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.current_universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: current_universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.current_universe_universe_id_seq OWNED BY public.current_universe.current_universe_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_age integer,
    galaxy_distance numeric,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    moon_age integer,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_age integer,
    area numeric,
    more_info text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_age integer,
    galaxy_id integer,
    has_life boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: current_universe current_universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.current_universe ALTER COLUMN current_universe_id SET DEFAULT nextval('public.current_universe_universe_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: current_universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.current_universe VALUES ('universe one', 1, NULL);
INSERT INTO public.current_universe VALUES ('universe two', 2, NULL);
INSERT INTO public.current_universe VALUES ('universe three', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Mikey Way', 13, 100000, NULL);
INSERT INTO public.galaxy VALUES (2, 'Malin', 10, 100000.1, NULL);
INSERT INTO public.galaxy VALUES (3, 'Red', 9, 1000.2, NULL);
INSERT INTO public.galaxy VALUES (4, 'Ring', 12, 1900000.1, NULL);
INSERT INTO public.galaxy VALUES (5, 'UIX', 23, 20000.2, NULL);
INSERT INTO public.galaxy VALUES (6, 'Long', 18, 2000000, NULL);
INSERT INTO public.galaxy VALUES (7, 'A1', 19, 100, NULL);
INSERT INTO public.galaxy VALUES (8, 'B1', 20, 200, NULL);
INSERT INTO public.galaxy VALUES (9, 'C3', 30, 300, NULL);
INSERT INTO public.galaxy VALUES (10, 'C4', 40, 400, NULL);
INSERT INTO public.galaxy VALUES (11, 'C5', 50, 500, NULL);
INSERT INTO public.galaxy VALUES (12, 'C6', 60, 600, NULL);
INSERT INTO public.galaxy VALUES (13, 'C7', 70, 700, NULL);
INSERT INTO public.galaxy VALUES (14, 'C8', 80, 800, NULL);
INSERT INTO public.galaxy VALUES (15, 'C9', 90, 900, NULL);
INSERT INTO public.galaxy VALUES (16, 'C10', 100, 1000, NULL);
INSERT INTO public.galaxy VALUES (17, 'C11', 200, 1100, NULL);
INSERT INTO public.galaxy VALUES (18, 'C12', 300, 1200, NULL);
INSERT INTO public.galaxy VALUES (19, 'C13', 400, 1300, NULL);
INSERT INTO public.galaxy VALUES (20, 'C14', 500, 1400, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4, false, 1);
INSERT INTO public.moon VALUES (2, 'moon1', 5, false, 2);
INSERT INTO public.moon VALUES (3, 'moon2', 6, false, 3);
INSERT INTO public.moon VALUES (4, 'moon3', 7, false, NULL);
INSERT INTO public.moon VALUES (5, 'moon4', 8, false, NULL);
INSERT INTO public.moon VALUES (6, 'moon5', 9, false, NULL);
INSERT INTO public.moon VALUES (7, 'moon6', 10, false, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', 11, false, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', 12, false, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', 13, false, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 14, false, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 15, false, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 16, false, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 17, false, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 18, false, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 19, false, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 20, false, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', 21, false, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', 22, false, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', 23, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4, 510.4, 'The best planet in the universe', true, 1);
INSERT INTO public.planet VALUES (2, 'venus', 5, 600.1, 'just a random planet i can think of', NULL, 2);
INSERT INTO public.planet VALUES (3, 'mercury', 6, 7000.1, 'Another random planet mercury', NULL, 3);
INSERT INTO public.planet VALUES (4, 'mars', 7, 8000, 'i am from mar', NULL, 4);
INSERT INTO public.planet VALUES (21, 'M1', 8, 9000, NULL, true, 5);
INSERT INTO public.planet VALUES (22, 'M2', 9, 10000, NULL, true, 6);
INSERT INTO public.planet VALUES (23, 'M3', 10, 20000, NULL, false, 7);
INSERT INTO public.planet VALUES (24, 'M4', 11, 30000, NULL, false, 8);
INSERT INTO public.planet VALUES (25, 'M5', 12, 40000, NULL, false, 9);
INSERT INTO public.planet VALUES (26, 'M6', 13, 50000, NULL, false, 10);
INSERT INTO public.planet VALUES (27, 'M7', 14, 60000, NULL, false, 11);
INSERT INTO public.planet VALUES (28, 'M8', 15, 70000, NULL, false, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Red_milky_way_star', 20, 1, NULL);
INSERT INTO public.star VALUES (2, 'Blue star', 30, 2, NULL);
INSERT INTO public.star VALUES (3, 'Black star', 40, 3, NULL);
INSERT INTO public.star VALUES (4, 'Green star', 50, 4, NULL);
INSERT INTO public.star VALUES (5, 'Yellow star', 60, 5, NULL);
INSERT INTO public.star VALUES (6, 'Grey star', 70, 6, NULL);
INSERT INTO public.star VALUES (7, 'G11', 80, 7, NULL);
INSERT INTO public.star VALUES (8, 'G12', 90, 8, NULL);
INSERT INTO public.star VALUES (9, 'G13', 100, 9, NULL);
INSERT INTO public.star VALUES (10, 'G14', 200, 10, NULL);
INSERT INTO public.star VALUES (11, 'G15', 300, 11, NULL);
INSERT INTO public.star VALUES (12, 'G16', 400, 12, NULL);
INSERT INTO public.star VALUES (13, 'G17', 500, 13, NULL);
INSERT INTO public.star VALUES (14, 'G18', 600, 14, NULL);
INSERT INTO public.star VALUES (15, 'G19', 700, 15, NULL);
INSERT INTO public.star VALUES (16, 'G20', 800, 16, NULL);
INSERT INTO public.star VALUES (17, 'G21', 900, 17, NULL);
INSERT INTO public.star VALUES (18, 'G22', 900, 18, NULL);
INSERT INTO public.star VALUES (19, 'G23', 1000, 19, NULL);
INSERT INTO public.star VALUES (20, 'G24', 1100, 20, NULL);


--
-- Name: current_universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.current_universe_universe_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 28, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: current_universe current_universe_current_universe_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.current_universe
    ADD CONSTRAINT current_universe_current_universe_id_key UNIQUE (current_universe_id);


--
-- Name: current_universe current_universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.current_universe
    ADD CONSTRAINT current_universe_name_key UNIQUE (name);


--
-- Name: current_universe current_universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.current_universe
    ADD CONSTRAINT current_universe_pkey PRIMARY KEY (current_universe_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

