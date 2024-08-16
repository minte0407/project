--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(20) NOT NULL,
    distance integer,
    universe_name character varying(20),
    multiverse_name character varying(20)
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
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    is_moon boolean,
    is_your_momma boolean
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
    name character varying(20) NOT NULL,
    population integer,
    size numeric(10,2),
    language text,
    habitable boolean,
    star_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    glows_in_dark boolean,
    galaxy_id integer,
    kiek_kampu integer
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
-- Name: tiesiog; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tiesiog (
    tiesiog_id integer NOT NULL,
    dydis integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.tiesiog OWNER TO freecodecamp;

--
-- Name: tiesiog_tiesiog_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.tiesiog_tiesiog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiesiog_tiesiog_id_seq OWNER TO freecodecamp;

--
-- Name: tiesiog_tiesiog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.tiesiog_tiesiog_id_seq OWNED BY public.tiesiog.tiesiog_id;


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
-- Name: tiesiog tiesiog_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tiesiog ALTER COLUMN tiesiog_id SET DEFAULT nextval('public.tiesiog_tiesiog_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'mili', 123456, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'giga', 654321, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'chad', 42069, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'centi', 100, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'deca', 10, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'byte', 8, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, '2', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, '3', 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, '4', 1, NULL, NULL);
INSERT INTO public.moon VALUES (5, '5', 1, NULL, NULL);
INSERT INTO public.moon VALUES (6, '65', 1, NULL, NULL);
INSERT INTO public.moon VALUES (7, '765', 1, NULL, NULL);
INSERT INTO public.moon VALUES (8, '85', 1, NULL, NULL);
INSERT INTO public.moon VALUES (9, '9765', 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, '1085', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, '11085', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, '121085', 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, '13085', 5, NULL, NULL);
INSERT INTO public.moon VALUES (14, '145', 5, NULL, NULL);
INSERT INTO public.moon VALUES (15, '15', 5, NULL, NULL);
INSERT INTO public.moon VALUES (16, '165', 5, NULL, NULL);
INSERT INTO public.moon VALUES (17, '1765', 5, NULL, NULL);
INSERT INTO public.moon VALUES (18, '1865', 11, NULL, NULL);
INSERT INTO public.moon VALUES (19, '1965', 11, NULL, NULL);
INSERT INTO public.moon VALUES (20, '201965', 12, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 70000, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (2, 'Mars', 0, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 0, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 0, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'A', 50, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (6, 'B', NULL, 100000.00, NULL, NULL, 4);
INSERT INTO public.planet VALUES (7, 'X', NULL, 123.00, NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'Y', NULL, 321.00, NULL, NULL, 4);
INSERT INTO public.planet VALUES (11, 'Englandia', NULL, NULL, 'english', NULL, 5);
INSERT INTO public.planet VALUES (12, 'Lituanica', NULL, NULL, 'Lithuanian', NULL, 6);
INSERT INTO public.planet VALUES (13, 'zeme', NULL, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (14, 'vanduo', NULL, NULL, NULL, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', true, 4, NULL);
INSERT INTO public.star VALUES (3, 'Glass', false, 1, NULL);
INSERT INTO public.star VALUES (4, 'XBOX', true, 3, NULL);
INSERT INTO public.star VALUES (5, 'Pipe', true, 2, NULL);
INSERT INTO public.star VALUES (6, 'Creat', false, 3, NULL);
INSERT INTO public.star VALUES (7, 'Asus', true, 5, NULL);


--
-- Data for Name: tiesiog; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.tiesiog VALUES (1, 159, 'nieko');
INSERT INTO public.tiesiog VALUES (2, 951, 'geriau');
INSERT INTO public.tiesiog VALUES (3, 753, 'nesugalvojau');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: tiesiog_tiesiog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.tiesiog_tiesiog_id_seq', 3, true);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: tiesiog tiesiog_dydis_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tiesiog
    ADD CONSTRAINT tiesiog_dydis_key UNIQUE (dydis);


--
-- Name: tiesiog tiesiog_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tiesiog
    ADD CONSTRAINT tiesiog_name_key UNIQUE (name);


--
-- Name: tiesiog tiesiog_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tiesiog
    ADD CONSTRAINT tiesiog_pkey PRIMARY KEY (tiesiog_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


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
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

