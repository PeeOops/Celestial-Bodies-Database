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
    name character varying(30) NOT NULL,
    has_life boolean,
    distance integer,
    far boolean
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
-- Name: gravitation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.gravitation (
    name character varying(30) NOT NULL,
    gravitation_id integer NOT NULL,
    available boolean,
    is_it_on_earth boolean,
    weight integer
);


ALTER TABLE public.gravitation OWNER TO freecodecamp;

--
-- Name: gravitation_gravity_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.gravitation_gravity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gravitation_gravity_id_seq OWNER TO freecodecamp;

--
-- Name: gravitation_gravity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.gravitation_gravity_id_seq OWNED BY public.gravitation.gravitation_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    planet_id integer,
    how_many integer
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
    name character varying(30) NOT NULL,
    description text,
    star_id integer,
    beautiful boolean
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
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    is_spherical boolean,
    planet_types integer,
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
-- Name: gravitation gravitation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gravitation ALTER COLUMN gravitation_id SET DEFAULT nextval('public.gravitation_gravity_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Fero', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Balanar', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cupapimunyenyo', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'LOQ', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Logi', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'SupaSuper', false, NULL, NULL);


--
-- Data for Name: gravitation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.gravitation VALUES ('10', 1, true, NULL, NULL);
INSERT INTO public.gravitation VALUES ('15', 2, false, NULL, NULL);
INSERT INTO public.gravitation VALUES ('15', 3, true, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moons', 5, 4, NULL);
INSERT INTO public.moon VALUES (2, 'Luna', 384400, 1, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', 6000, 2, NULL);
INSERT INTO public.moon VALUES (4, 'Deimos', 24000, 2, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 628000, 3, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1070000, 3, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 1880000, 3, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 1220000, 4, NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', 527000, 4, NULL);
INSERT INTO public.moon VALUES (10, 'Iapetus', 3560000, 4, NULL);
INSERT INTO public.moon VALUES (11, 'Triton', 357000, 5, NULL);
INSERT INTO public.moon VALUES (12, 'Charon', 197000, 5, NULL);
INSERT INTO public.moon VALUES (13, 'Enceladus', 2380000, 4, NULL);
INSERT INTO public.moon VALUES (14, 'Dione', 561000, 4, NULL);
INSERT INTO public.moon VALUES (15, 'Tethys', 294000, 4, NULL);
INSERT INTO public.moon VALUES (16, 'Miranda', 129000, 6, NULL);
INSERT INTO public.moon VALUES (17, 'Ariel', 115000, 6, NULL);
INSERT INTO public.moon VALUES (18, 'Umbriel', 266000, 6, NULL);
INSERT INTO public.moon VALUES (19, 'Titania', 436000, 6, NULL);
INSERT INTO public.moon VALUES (20, 'Oberon', 583000, 6, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth 001', 'Green planet', 2, NULL);
INSERT INTO public.planet VALUES (2, 'Venusers', 'Red Pink Planet', 4, NULL);
INSERT INTO public.planet VALUES (3, 'Martians', 'Gray Planet', 2, NULL);
INSERT INTO public.planet VALUES (4, 'Masako', 'Planets', 5, NULL);
INSERT INTO public.planet VALUES (5, 'Macikayo', 'Planets', 6, NULL);
INSERT INTO public.planet VALUES (6, 'Omae', 'Japanese Planet', 2, NULL);
INSERT INTO public.planet VALUES (7, 'VSPlanet', 'Planet', 4, NULL);
INSERT INTO public.planet VALUES (8, 'Atom', 'Atom', 5, NULL);
INSERT INTO public.planet VALUES (9, 'Steam', 'Steam', 1, NULL);
INSERT INTO public.planet VALUES (10, 'Sepuh', 'Sepuh', 4, NULL);
INSERT INTO public.planet VALUES (11, 'Coba', 'Cobra', 2, NULL);
INSERT INTO public.planet VALUES (12, 'Leno', 'vo', 4, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Supernova', 400, true, 5, 1);
INSERT INTO public.star VALUES (2, 'SuperMana', 300, false, 3, 2);
INSERT INTO public.star VALUES (3, 'Superwonder', 500, false, 2, 3);
INSERT INTO public.star VALUES (4, 'Magnifish', 600, true, 3, 4);
INSERT INTO public.star VALUES (5, 'Sades', 150, true, 2, 2);
INSERT INTO public.star VALUES (7, 'Hades', 200, false, 3, 3);
INSERT INTO public.star VALUES (6, 'Aresu', 900, true, 3, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: gravitation_gravity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.gravitation_gravity_id_seq', 1, false);


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
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: gravitation gravitation_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gravitation
    ADD CONSTRAINT gravitation_id UNIQUE (gravitation_id);


--
-- Name: gravitation gravitation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gravitation
    ADD CONSTRAINT gravitation_pkey PRIMARY KEY (gravitation_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

