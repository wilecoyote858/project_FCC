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
    name character varying(100) NOT NULL,
    designations text,
    constellations text,
    name_meaning text
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
    name character varying(100) NOT NULL,
    parent_planet text,
    distance_to_planet integer,
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
    name character varying(100) NOT NULL,
    has_life boolean NOT NULL,
    description text,
    distance_from_earth numeric(10,2),
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric(5,2) NOT NULL,
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
    name character varying(100) NOT NULL,
    constellation text,
    designation character varying(50),
    approval_date date,
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
-- Name: stations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.stations (
    stations_id integer NOT NULL,
    name character varying(100) NOT NULL,
    crew_size integer
);


ALTER TABLE public.stations OWNER TO freecodecamp;

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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'M31', 'Andromeda', 'Andromeda is the daughter of the kings of Ethiopia.');
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxy', 'NGC 4038', 'Corvus', 'This is a dual galaxy');
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', 'NGC 4622', 'Centaurus', 'It seems to rotate in the opposite direction to what it should according to its shape');                                                                                                                                                                  INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 'Evil Eye Galaxy', 'Coma Berenices', 'It looks like an eye with a dark stripe underneath');
INSERT INTO public.galaxy VALUES (5, 'Bodes Galaxy', 'M81', 'Ursa Major', 'Named after the astronomer who discovered it, Johann Elert Bode');
INSERT INTO public.galaxy VALUES (6, 'Butterfly Galaxies', 'NGC 4567', 'Virgo', 'It looks like a pair of butterfly wings');
INSERT INTO public.galaxy VALUES (7, 'Cartwheel Galaxy', 'PGC 2248', 'Sculptor', 'It loIt looks a bit like a cartwheel');
INSERT INTO public.galaxy VALUES (8, 'Milky Way', 'No designation', 'Sagitarrius', 'Night sky formed from stars that cannot be individually distinguished by the nakedeye');                                                                                                                                                               

--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth', 384400, 4);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars', 2618, 5);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars', 23460, 5);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter', 262000, 12);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter', 414000, 12);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Jupiter', 1070400, 12);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter', 1880000, 12);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'Jupiter', 181000, 12);
INSERT INTO public.moon VALUES (9, 'Himalia', 'Jupiter', 4400000, 12);
INSERT INTO public.moon VALUES (10, 'Elara', 'Jupiter', 4277900, 12);
INSERT INTO public.moon VALUES (11, 'Pasiphea', 'Jupiter', 18000000, 12);
INSERT INTO public.moon VALUES (12, 'Sinope', 'Jupiter', 528845, 12);
INSERT INTO public.moon VALUES (13, 'Lysithea', 'Jupiter', 18, 12);
INSERT INTO public.moon VALUES (14, 'Carme', 'Jupiter', 22, 12);
INSERT INTO public.moon VALUES (15, 'Ananke', 'Jupiter', 6788, 12);
INSERT INTO public.moon VALUES (16, 'Leda', 'Jupiter', 6, 12);
INSERT INTO public.moon VALUES (17, 'Thebe', 'Jupiter', 140, 12);
INSERT INTO public.moon VALUES (18, 'Adrastea', 'Jupiter', 140, 12);
INSERT INTO public.moon VALUES (19, 'Metis', 'Jupiter', 59900, 12);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 'Jupiter', 422, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 'Mercury is a rocky planet, also known as a terrestrial planet', 77.00, true, 4.60, 3);
INSERT INTO public.planet VALUES (2, 'Jupiter', false, 'Gas giant', 367.00, true, 4.50, 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, 'One of the four terrestrial planets', 40.00, true, 4.60, 6);
INSERT INTO public.planet VALUES (4, 'Earth', true, 'An ellipsoid with a circumference of about 40k km.', 0.00, true, 4.45, 4);
INSERT INTO public.planet VALUES (5, 'Mars', false, 'Cold desert world', 140.00, true, 4.60, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 'It is a vast giant with an average radius of about nine and a half times that of Earth', 1.67, true, 4.60, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 'Seventh planet from the Sun', 2.90, true, 4.60, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 'Neptune is the eighth planet from the sun and the farthest know solar planet right now', 4.40, true, 17.60, 5);                                                                                                                                                                     INSERT INTO public.planet VALUES (9, 'Pluto', false, 'Dwarf planet', 5.05, true, 4.50, 2);
INSERT INTO public.planet VALUES (10, 'Ceres', false, 'Dwarf planet too', 5.80, true, 4.50, 5);
INSERT INTO public.planet VALUES (11, 'Charon', false, 'Dwarf planet moon', 5.06, true, 4.50, 2);
INSERT INTO public.planet VALUES (12, '2003 UB313', false, 'Celestial object', 6.00, true, 0.00, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Acamar', 'Eridanus', 'Eridani A', '2016-07-20', 8);
INSERT INTO public.star VALUES (2, 'Achird', 'Cassiopeia', 'Cassiopeiae A', '2017-09-05', 7);
INSERT INTO public.star VALUES (3, 'Achernar', 'Eridanus', 'Eridanus A', '2016-06-30', 3);
INSERT INTO public.star VALUES (4, 'Acrab', 'Scorpius', 'Scorpii Aa', '2016-08-21', 6);
INSERT INTO public.star VALUES (5, 'Acrux', 'Crux', 'Crucios Aa', '2016-07-20', 2);
INSERT INTO public.star VALUES (6, 'Acubens', 'Cancer', 'Cancri', '2016-07-20', 2);
INSERT INTO public.star VALUES (7, 'Adhafera', 'Leo', 'Leonis', '2016-07-20', 4);


--
-- Data for Name: stations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.stations VALUES (1, 'Salyut 1', 3);
INSERT INTO public.stations VALUES (2, 'Skylab', 3);
INSERT INTO public.stations VALUES (3, 'Salyut 3', 2);
INSERT INTO public.stations VALUES (4, 'Salyut 4', 2);
INSERT INTO public.stations VALUES (5, 'Salyut 5', 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: stations stations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stations
    ADD CONSTRAINT stations_name_key UNIQUE (name);


--
-- Name: stations stations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stations
    ADD CONSTRAINT stations_pkey PRIMARY KEY (stations_id);


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
