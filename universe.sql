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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    black_holes_id integer NOT NULL,
    name character varying(50) NOT NULL,
    radius numeric NOT NULL,
    galaxy_id integer NOT NULL,
    mass numeric NOT NULL
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_holes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_holes_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_holes_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(50) NOT NULL,
    age_in_million_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL
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
    name character varying(50) NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL,
    radius numeric NOT NULL,
    density numeric NOT NULL
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    age_in_million_of_years integer NOT NULL,
    is_habitable boolean NOT NULL,
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
    name character varying(50) NOT NULL,
    star_type character varying(50) NOT NULL,
    age_in_million_of_years integer NOT NULL,
    illuminance integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_black_holes_id_seq'::regclass);


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
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, 'M87 Black Hole', 40, 1, 6500000000);
INSERT INTO public.black_holes VALUES (2, 'Cygnus X-1', 24, 2, 15);
INSERT INTO public.black_holes VALUES (3, 'NGC 4472 Intermediate BH', 150, 1, 1000000);
INSERT INTO public.black_holes VALUES (4, 'Sagittarius A*', 20, 3, 4300000);
INSERT INTO public.black_holes VALUES (5, 'Messier 32 BH', 6, 2, 100000);
INSERT INTO public.black_holes VALUES (6, 'IC 1101 Central BH', 250, 1, 20000000000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral Galaxy', 13000, 27000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral Galaxy', 13000, 2500000);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Elliptical Galaxy', 13000, 55000);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral Galaxy', 13000, 3000000);
INSERT INTO public.galaxy VALUES (5, 'NGC 4594', 'Sombrero Galaxy', 13000, 29000);
INSERT INTO public.galaxy VALUES (6, 'IC 1101', 'Giant Elliptical Galaxy', 60000, 1900000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 1, 1738, 3340);
INSERT INTO public.moon VALUES (2, 'Phobos', true, 4, 11, 1876);
INSERT INTO public.moon VALUES (3, 'Europa', true, 3, 1561, 3015);
INSERT INTO public.moon VALUES (4, 'Titan', true, 5, 2575, 1882);
INSERT INTO public.moon VALUES (5, 'Ganymede', true, 3, 2634, 1940);
INSERT INTO public.moon VALUES (6, 'Deimos', true, 4, 6, 1472);
INSERT INTO public.moon VALUES (7, 'Io', true, 3, 1821, 3560);
INSERT INTO public.moon VALUES (8, 'Callisto', true, 5, 2403, 1835);
INSERT INTO public.moon VALUES (9, 'Enceladus', true, 3, 252, 1600);
INSERT INTO public.moon VALUES (10, 'Triton', true, 5, 1353, 2090);
INSERT INTO public.moon VALUES (11, 'Mimas', true, 3, 198, 1150);
INSERT INTO public.moon VALUES (12, 'Charon', true, 1, 606, 1700);
INSERT INTO public.moon VALUES (13, 'Dione', true, 3, 561, 1471);
INSERT INTO public.moon VALUES (14, 'Hyperion', true, 5, 143, 550);
INSERT INTO public.moon VALUES (15, 'Rhea', true, 3, 764, 1240);
INSERT INTO public.moon VALUES (16, 'Phoebe', true, 5, 106, 1600);
INSERT INTO public.moon VALUES (17, 'Iapetus', true, 3, 734, 1190);
INSERT INTO public.moon VALUES (18, 'Oberon', true, 5, 761, 1556);
INSERT INTO public.moon VALUES (19, 'Umbriel', true, 3, 584, 1400);
INSERT INTO public.moon VALUES (20, 'Miranda', true, 5, 235, 1200);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Blue planet with diverse life forms', 4500, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Red planet with a thin atmosphere', 4000, false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Gas giant with a strong magnetic field', 5000, false, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 'Rocky planet with a thick atmosphere', 4200, false, 1);
INSERT INTO public.planet VALUES (5, 'Neptune', 'Ice giant with a windy atmosphere', 5000, false, 1);
INSERT INTO public.planet VALUES (6, 'Kepler-186f', 'Exoplanet in the habitable zone', 500, true, 2);
INSERT INTO public.planet VALUES (7, 'HD 209458 b', 'Hot Jupiter with an evaporating atmosphere', 100, false, 3);
INSERT INTO public.planet VALUES (8, 'TrES-2b', 'Dark planet with extremely low reflectivity', 200, false, 4);
INSERT INTO public.planet VALUES (9, 'Gliese 581g', 'Potentially habitable exoplanet', 1000, true, 5);
INSERT INTO public.planet VALUES (10, '55 Cancri e', 'Super-Earth with extreme temperatures', 800, false, 6);
INSERT INTO public.planet VALUES (11, 'TOI 700 d', 'Habitable zone exoplanet', 500, true, 2);
INSERT INTO public.planet VALUES (12, 'WASP-121b', 'Hot Jupiter with a stratosphere', 100, false, 3);
INSERT INTO public.planet VALUES (13, 'GJ 1214 b', 'Water world exoplanet', 600, false, 4);
INSERT INTO public.planet VALUES (14, 'Kepler-22b', 'Super-Earth in the habitable zone', 2000, true, 5);
INSERT INTO public.planet VALUES (15, 'HD 80606 b', 'Gas giant with an eccentric orbit', 1000, false, 6);
INSERT INTO public.planet VALUES (16, 'Proxima Centauri b', 'Potentially habitable exoplanet', 500, true, 2);
INSERT INTO public.planet VALUES (17, 'CoRoT-7b', 'Rocky exoplanet with extreme temperatures', 800, false, 3);
INSERT INTO public.planet VALUES (18, 'Gliese 436 b', 'Hot Neptune with a strange atmosphere', 100, false, 4);
INSERT INTO public.planet VALUES (19, 'WASP-76b', 'Hot Jupiter with iron and titanium vapor', 200, false, 5);
INSERT INTO public.planet VALUES (20, 'K2-18b', 'Super-Earth in the habitable zone', 1000, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type Main Sequence', 5000, 100000, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'G-type Main Sequence', 6000, 90000, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red Supergiant', 8000, 80000, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 'A-type Main Sequence', 300, 250000, 2);
INSERT INTO public.star VALUES (5, 'Vega', 'A-type Main Sequence', 400, 200000, 3);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 'M-type Main Sequence', 500, 15000, 2);


--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_holes_id_seq', 7, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: black_holes black_holes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_name_key UNIQUE (name);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


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
-- Name: black_holes black_holes_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

