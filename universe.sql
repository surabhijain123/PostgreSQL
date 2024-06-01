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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    name character varying(80) NOT NULL,
    star_name character varying(80) NOT NULL,
    size bigint,
    temperature character varying(80)
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_planet_dwarf_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_planet_dwarf_planet_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_planet_dwarf_planet_id_seq OWNED BY public.dwarf_planet.dwarf_planet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(80) NOT NULL,
    galaxy_name character varying(80) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    number_of_planets bigint,
    description text,
    is_spherical boolean,
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
    name character varying(80) NOT NULL,
    moon_name character varying(80),
    planet_name character varying(80) NOT NULL,
    size bigint,
    temperature character varying(80)
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
    name character varying(80) NOT NULL,
    star_name character varying(80) NOT NULL,
    planet_name character varying(80),
    size bigint,
    temperature character varying(80)
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
    name character varying(80) NOT NULL,
    galaxy_name character varying(80) NOT NULL,
    age_in_million_of_years integer,
    star_name character varying(80),
    size bigint,
    temperature character varying(80)
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
-- Name: dwarf_planet dwarf_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet ALTER COLUMN dwarf_planet_id SET DEFAULT nextval('public.dwarf_planet_dwarf_planet_id_seq'::regclass);


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
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES (1, 'Pluto', 'Sun', 2376, '44 K');
INSERT INTO public.dwarf_planet VALUES (2, 'Ceres', 'Sun', 940, '167 K');
INSERT INTO public.dwarf_planet VALUES (3, 'Eris', 'Sun', 2326, '42 K');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'MilkyWay', 13600, 0.0, 100000000000, 'The galaxy that contains our Solar System.', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Andromeda', 10000, 2537000.0, 1000000000000, 'The nearest major galaxy to the Milky Way.', true, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Triangulum', 10000, 3000000.0, 40000000, 'A member of the Local Group of galaxies.', true, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Whirlpool', 600, 23000000.0, 300000000, 'A spiral galaxy in the constellation Canes Venatici.', true, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Sombrero', 13000, 31000000.0, 800000000, 'A lenticular galaxy in the constellation Virgo.', true, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Pinwheel', 2100, 21000000.0, 100000000000, 'A face-on spiral galaxy in the constellation Ursa Major.', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Moon', 'Earth', 3474, '220 K');
INSERT INTO public.moon VALUES (2, 'Phobos', 'Phobos', 'Mars', 22, '233 K');
INSERT INTO public.moon VALUES (3, 'Deimos', 'Deimos', 'Mars', 12, '233 K');
INSERT INTO public.moon VALUES (4, 'Europa', 'Europa', 'Jupiter', 3122, '102 K');
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Ganymede', 'Jupiter', 5268, '110 K');
INSERT INTO public.moon VALUES (6, 'Io', 'Io', 'Jupiter', 3643, '130 K');
INSERT INTO public.moon VALUES (7, 'Callisto', 'Callisto', 'Jupiter', 4820, '134 K');
INSERT INTO public.moon VALUES (8, 'Titan', 'Titan', 'Saturn', 5150, '94 K');
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Enceladus', 'Saturn', 504, '75 K');
INSERT INTO public.moon VALUES (10, 'Mimas', 'Mimas', 'Saturn', 396, '72 K');
INSERT INTO public.moon VALUES (11, 'Triton', 'Triton', 'Neptune', 2707, '38 K');
INSERT INTO public.moon VALUES (12, 'Nereid', 'Nereid', 'Neptune', 340, '54 K');
INSERT INTO public.moon VALUES (13, 'Oberon', 'Oberon', 'Uranus', 1523, '70 K');
INSERT INTO public.moon VALUES (14, 'Titania', 'Titania', 'Uranus', 1578, '70 K');
INSERT INTO public.moon VALUES (15, 'Ariel', 'Ariel', 'Uranus', 1158, '70 K');
INSERT INTO public.moon VALUES (16, 'Umbriel', 'Umbriel', 'Uranus', 1169, '70 K');
INSERT INTO public.moon VALUES (17, 'Miranda', 'Miranda', 'Uranus', 471, '60 K');
INSERT INTO public.moon VALUES (18, 'Dysnomia', 'Dysnomia', 'Proxima b', 700, '80 K');
INSERT INTO public.moon VALUES (19, 'Hygiea', 'Hygiea', 'Proxima c', 430, '85 K');
INSERT INTO public.moon VALUES (20, 'Kalliope', 'Kalliope', 'Proxima c', 160, '88 K');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Sun', 'Earth', 12742, '288 K');
INSERT INTO public.planet VALUES (2, 'Mars', 'Sun', 'Mars', 6779, '210 K');
INSERT INTO public.planet VALUES (3, 'Venus', 'Sun', 'Venus', 12104, '737 K');
INSERT INTO public.planet VALUES (4, 'Mercury', 'Sun', 'Mercury', 4879, '440 K');
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Sun', 'Jupiter', 139820, '165 K');
INSERT INTO public.planet VALUES (6, 'Saturn', 'Sun', 'Saturn', 116460, '134 K');
INSERT INTO public.planet VALUES (7, 'Uranus', 'Sun', 'Uranus', 50724, '76 K');
INSERT INTO public.planet VALUES (8, 'Neptune', 'Sun', 'Neptune', 49244, '72 K');
INSERT INTO public.planet VALUES (9, 'Proxima b', 'ProximaCentauri', 'Proxima b', 11464, '234 K');
INSERT INTO public.planet VALUES (10, 'Proxima c', 'ProximaCentauri', 'Proxima c', 12480, '218 K');
INSERT INTO public.planet VALUES (11, 'Betelgeuse b', 'Betelgeuse', 'Betelgeuse b', 143000, '300 K');
INSERT INTO public.planet VALUES (12, 'Betelgeuse c', 'Betelgeuse', 'Betelgeuse c', 150000, '320 K');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'MilkyWay', 4600, 'Sun', 1392700, '5778 K');
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'MilkyWay', 4600, 'ProximaCentauri', 200000, '3042 K');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'MilkyWay', 10000, 'Betelgeuse', 887220000, '3500 K');
INSERT INTO public.star VALUES (4, 'Sirius', 'MilkyWay', 300, 'Sirius', 2397000, '9940 K');
INSERT INTO public.star VALUES (5, 'Rigel', 'MilkyWay', 8000, 'Rigel', 782380000, '12130 K');
INSERT INTO public.star VALUES (6, 'Vega', 'MilkyWay', 455, 'Vega', 2039200, '9602 K');


--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_planet_dwarf_planet_id_seq', 3, true);


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
-- Name: dwarf_planet dwarf_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_pkey PRIMARY KEY (dwarf_planet_id);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (galaxy_name);


--
-- Name: dwarf_planet unique_name_dwarf_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT unique_name_dwarf_planet UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (moon_name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (planet_name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (star_name);


--
-- Name: star fk_galaxy_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_name FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- Name: moon fk_planet_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_name FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet fk_star_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_name FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: dwarf_planet fk_star_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT fk_star_name FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- PostgreSQL database dump complete
--

