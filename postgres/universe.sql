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
    name character varying(40),
    description text NOT NULL,
    galaxy_type character varying(40),
    age_in_million_of_years numeric
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
    name character varying(40),
    description text NOT NULL,
    is_spherical boolean,
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
    name character varying(40),
    description text NOT NULL,
    is_spherical boolean,
    star_id integer,
    number_of_moons integer,
    number_of_territories integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(40),
    description text NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    description text NOT NULL,
    is_spherical boolean,
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
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 'The galaxy that includes solar system containing the only known life form', 'Spiral Galaxy', 13610);
INSERT INTO public.galaxy VALUES (2, 'Adromeda', 'Also know as Messier 31 or M31 is a barred spiral galaxy', 'Spiral Galaxy', 10101);
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf', 'A disputed dwarf irregular in the local group in the same part of the sky as the constillation Canis Major', 'Irregular Galaxy', 13080);
INSERT INTO public.galaxy VALUES (4, 'Cygnus', 'A radio galaxy and one of the strongest radio sources in the sky', 'Elliptical Galaxy', 3);
INSERT INTO public.galaxy VALUES (5, 'Virgo A', 'Also known as Messier 87, A supergaint elliptical galaxy', 'Elliptical Galaxy', 13240);
INSERT INTO public.galaxy VALUES (6, 'Magellanic Clouds', 'The Magellanic Clouds are 2 irregular dwarf galaxies in the southern celestial hemisphare', 'Irregular Galaxy', 13000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titan', 'The largest moon of saturn and the larges natural satelite in the solar system', true, 9);
INSERT INTO public.moon VALUES (2, 'The Moon', 'Earth largest and only natural satelite', true, 6);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Innermost and largest of the two natural satelite of mars', false, 7);
INSERT INTO public.moon VALUES (4, 'Diemos', 'Smaller and outermost of the two natural satelite of mars', false, 7);
INSERT INTO public.moon VALUES (5, 'Enceladus', 'The sixth largest moon of sartun', true, 9);
INSERT INTO public.moon VALUES (6, 'Amalthea', 'Has the third larges orbit around jupiter and the fifth moon of jupiter to be discorvered', false, 8);
INSERT INTO public.moon VALUES (7, 'Pan', 'The innermost named moon of saturn', false, 9);
INSERT INTO public.moon VALUES (8, 'Pandora', 'An inner satelite of saturn', false, 9);
INSERT INTO public.moon VALUES (9, 'Thebe', 'Also known as Jupiter XIV, Is the fourth of Jupiter moon by distance to the planet', false, 8);
INSERT INTO public.moon VALUES (10, 'Puch', 'An inner moon of Uranus', false, 10);
INSERT INTO public.moon VALUES (11, 'Cupid', 'An inner satelite of Uranus', false, 10);
INSERT INTO public.moon VALUES (12, 'Triton', 'Largest natural satelite of planet Neptune', true, 11);
INSERT INTO public.moon VALUES (13, 'Titania', 'Also known as Uranus III, is the largest moon of Uranus and the eigth largest moon in our solar system', true, 10);
INSERT INTO public.moon VALUES (14, 'Juliet', 'An inner satelite of Uranus', false, 10);
INSERT INTO public.moon VALUES (15, 'Io', 'Also known as Jupiter 1, is the innermost and the third largest of the four Galilean moons of Jupiter', true, 8);
INSERT INTO public.moon VALUES (16, 'Europa', 'ALSO known as Jupiter II, And the smallest of the for Galilean moon orbiting Jupiter, And the sixth closest to the planet from all the know moons', true, 8);
INSERT INTO public.moon VALUES (17, 'Thiazzi', 'Previously known as S/2004 S 33 is a natural satelite of Saturn', false, 9);
INSERT INTO public.moon VALUES (18, 'Oberon', 'Also Known as Uranus IV, is the outermost major moon of the planet', true, 10);
INSERT INTO public.moon VALUES (19, 'Belinda', 'An inner satelite of planet Uranus', false, 10);
INSERT INTO public.moon VALUES (20, 'Portia', 'An inner satelite of Uranus', false, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'Mercury', 'Smallest planet in our Solar system and the closes to the sun', true, 1, 0, 0);
INSERT INTO public.planet VALUES (5, 'Venus', 'Second planet from the sun, sometimes called earth sister or twin', true, 1, 0, 0);
INSERT INTO public.planet VALUES (6, 'Earth', 'Third planet from the sun and source of all known life', true, 1, 1, 241);
INSERT INTO public.planet VALUES (7, 'Mars', 'Fourth planet from the sun and the second smallest planet in our solar system', true, 1, 2, 0);
INSERT INTO public.planet VALUES (8, 'Jupiter', 'Fifth planet from the sun and the largest in our solar system', true, 1, 92, 0);
INSERT INTO public.planet VALUES (9, 'Saturn', 'Sixth planet from the sun and the second largest planet in our solar syatem', false, 1, 83, 0);
INSERT INTO public.planet VALUES (10, 'Uranus', 'Seveth planet from the sun', true, 1, 27, 0);
INSERT INTO public.planet VALUES (11, 'Neptune', 'Eight planet from the sun and the farthest known planet in our solar system', true, 1, 14, 0);
INSERT INTO public.planet VALUES (12, 'Kepler-186f', 'An exoplanet orbiting the red dwarf', true, 2, 0, 0);
INSERT INTO public.planet VALUES (13, 'Arion', 'Now known as 18 Delphini, is an exrasolar planet', false, 3, 8, 0);
INSERT INTO public.planet VALUES (14, 'Orbitar', 'Now known as 47 Draconis b, a candidate extrasolar planet', false, 1, 67, 0);
INSERT INTO public.planet VALUES (15, 'Taphao Thong', 'Now known as 47 Ursae Majoris b, a gas planet and extrasolar planet', false, 6, 14, 0);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Gases', 'A planet made majorly of gases, like a giant gas ball in space');
INSERT INTO public.planet_types VALUES (2, 'Rocky Planet', 'A planent composed mainly of sillicate rocs and metal');
INSERT INTO public.planet_types VALUES (3, 'Super Earths', 'A very large earth like planets');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'The star that planets, commets, many astriod in our solar system orbits', false, 1);
INSERT INTO public.star VALUES (2, 'Polaris', 'The Norther circumpola constellation of Ursa minor', true, 1);
INSERT INTO public.star VALUES (3, 'Sirus', 'The brightest star in the night sky', true, 1);
INSERT INTO public.star VALUES (4, 'Vega', 'The brightest star in the northern constellation of lyra', true, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 'The blue supergaint star in the contellation of orion', false, 1);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'A red supergaint of spherical type M1-2 and one of the largest star visible to the naked eye', true, 1);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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

