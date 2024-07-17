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
-- Name: clouds; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.clouds (
    clouds_id integer NOT NULL,
    name character varying(60) NOT NULL,
    column_3 text,
    column_4 integer,
    column_5 boolean
);


ALTER TABLE public.clouds OWNER TO freecodecamp;

--
-- Name: clouds_clouds_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.clouds_clouds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clouds_clouds_id_seq OWNER TO freecodecamp;

--
-- Name: clouds_clouds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.clouds_clouds_id_seq OWNED BY public.clouds.clouds_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    diameter_ly integer,
    galaxy_types boolean,
    distance_from_earth integer
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
    planet character varying(60),
    is_spherical boolean,
    distance_from_earth integer,
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
    planet_type character varying(60),
    has_ring boolean,
    distance_from_sun integer,
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
    star_type character varying(60),
    constellation boolean,
    "numeric" numeric,
    text text,
    age_in_millions_of_years integer,
    galaxy_id integer
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
-- Name: clouds clouds_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.clouds ALTER COLUMN clouds_id SET DEFAULT nextval('public.clouds_clouds_id_seq'::regclass);


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
-- Data for Name: clouds; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.clouds VALUES (1, 'high', NULL, NULL, NULL);
INSERT INTO public.clouds VALUES (2, 'middle', NULL, NULL, NULL);
INSERT INTO public.clouds VALUES (3, 'low', NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 22000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Tadpole galaxy', 390000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool galaxy', 60000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel galaxy', 130000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cigar galaxy', 37000, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth', true, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars', false, NULL, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars', false, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter', false, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter', false, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Jupiter', true, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter', false, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Thebe', 'Jupiter', false, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Amalthea', 'Jupiter', false, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Adrastea', 'Jupiter', false, NULL, 5);
INSERT INTO public.moon VALUES (11, 'Metis', 'Jupiter', false, NULL, 5);
INSERT INTO public.moon VALUES (12, 'Titan', 'Saturn', true, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Rhea', 'Saturn', true, NULL, 6);
INSERT INTO public.moon VALUES (14, 'Iapetes', 'Saturn', false, NULL, 6);
INSERT INTO public.moon VALUES (15, 'Dione', 'Saturn', false, NULL, 6);
INSERT INTO public.moon VALUES (16, 'Tethys', 'Saturn', false, NULL, 6);
INSERT INTO public.moon VALUES (17, 'Hyperion', 'Saturn', false, NULL, 6);
INSERT INTO public.moon VALUES (18, 'Enceladus', 'Saturn', false, NULL, 6);
INSERT INTO public.moon VALUES (19, 'Tatiana', 'Uranus', false, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Oberon', 'Uranus', false, NULL, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Rocky', false, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Rocky', false, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Rocky', false, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Rocky', false, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Juputer', 'Gas giant', false, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas giant', true, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant', true, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice giant', false, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 'Dwarf planet', false, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 'Dwarf planet', false, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Charon', 'Dwarf planet', false, NULL, 1);
INSERT INTO public.planet VALUES (12, '2003 UB', 'Dwarf planet', false, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Yellow dwarf', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Binary', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'Red dwarf', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'Sun-like', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', 'Sun-like', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Arcturus', 'Orange giant', NULL, NULL, NULL, NULL, 1);


--
-- Name: clouds_clouds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.clouds_clouds_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: clouds clouds_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.clouds
    ADD CONSTRAINT clouds_name_key UNIQUE (name);


--
-- Name: clouds clouds_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.clouds
    ADD CONSTRAINT clouds_pkey PRIMARY KEY (clouds_id);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

