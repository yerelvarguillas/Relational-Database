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
-- Name: elements; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.elements (
    elements_id integer NOT NULL,
    name character varying(30),
    status text NOT NULL
);


ALTER TABLE public.elements OWNER TO freecodecamp;

--
-- Name: elements_element_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.elements_element_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.elements_element_id_seq OWNER TO freecodecamp;

--
-- Name: elements_element_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.elements_element_id_seq OWNED BY public.elements.elements_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    number_of_star integer NOT NULL,
    distance_from_earth integer,
    is_safe boolean
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
    name character varying(30),
    gravity character varying(30),
    age integer NOT NULL,
    wight integer
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
    name character varying(30),
    description character varying(30),
    has_life boolean,
    age_in_million_of_years integer,
    planet_type text,
    number_of_humans numeric NOT NULL,
    star_id integer,
    moon_id integer
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
    name character varying(30),
    galaxy_id integer,
    color character varying(30),
    years integer NOT NULL
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
-- Name: elements elements_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements ALTER COLUMN elements_id SET DEFAULT nextval('public.elements_element_id_seq'::regclass);


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
-- Data for Name: elements; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.elements VALUES (1, 'AGUA', 'LIQUIDA');
INSERT INTO public.elements VALUES (2, 'TIERRA', 'SOLIDO');
INSERT INTO public.elements VALUES (3, 'FUEGO', 'CONSUMIBLE');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vial Lactea', 785412, 10, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 999541, 1, true);
INSERT INTO public.galaxy VALUES (3, 'Duarema', 12541, 120, true);
INSERT INTO public.galaxy VALUES (4, 'Phermun', 20487452, 220, true);
INSERT INTO public.galaxy VALUES (5, 'YUMALI', 4415, 2940, true);
INSERT INTO public.galaxy VALUES (6, 'Sagitario', 100021, 270, true);
INSERT INTO public.galaxy VALUES (7, 'Rosha', 999541254, 985, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'LUNA', '20', 1, 4);
INSERT INTO public.moon VALUES (2, 'LGANA', '10', 2, 64);
INSERT INTO public.moon VALUES (3, 'MUNA', '40', 42, 164);
INSERT INTO public.moon VALUES (4, 'sart', '2', 19, 8);
INSERT INTO public.moon VALUES (5, 'GARA', '9', 5, 0);
INSERT INTO public.moon VALUES (6, 'DER', 'F5', 741, 985);
INSERT INTO public.moon VALUES (7, 'GNA', 'M45', 915, 371);
INSERT INTO public.moon VALUES (8, 'HUVA', 'N8U', 33, 1);
INSERT INTO public.moon VALUES (9, 'FUM', '4YNM', 46, 91);
INSERT INTO public.moon VALUES (10, '85NUAR', 'GA20', 22, 10);
INSERT INTO public.moon VALUES (11, 'MIER', 'F55', 741, 4985);
INSERT INTO public.moon VALUES (12, 'MUGNA', '5M45', 115, 271);
INSERT INTO public.moon VALUES (13, 'BUVA', '1N8U', 433, 19);
INSERT INTO public.moon VALUES (14, 'FEM', '8Y8M', 6, 941);
INSERT INTO public.moon VALUES (15, '8RVUAR', 'GBY0', 252, 110);
INSERT INTO public.moon VALUES (16, 'PIP4', 'D4', 31, 49);
INSERT INTO public.moon VALUES (17, 'MLIO', '5NH', 5, 3);
INSERT INTO public.moon VALUES (18, 'BMUY', 'U', 3, 1);
INSERT INTO public.moon VALUES (19, 'TB', '8A', 61, 9);
INSERT INTO public.moon VALUES (20, '8RR', 'Y0', 2, 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 'un planeta', true, 20, 'habitable', 2000, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Marte', 'P', false, 5, 'feo', 10, 2, 2);
INSERT INTO public.planet VALUES (3, 'supiter', 'P', false, 5, 'feo', 10, 3, 3);
INSERT INTO public.planet VALUES (4, 'urano', 'P', false, 5, 'feo', 10, 3, 3);
INSERT INTO public.planet VALUES (5, 'PLUTON', 'P', false, 5, 'feo', 10, 4, 5);
INSERT INTO public.planet VALUES (6, 'PCUP', 'P', false, 5, 'PELIGRO', 10, 1, 6);
INSERT INTO public.planet VALUES (7, 'SOLMEDA', 'P', false, 5, 'DANGER', 10, 4, 1);
INSERT INTO public.planet VALUES (8, 'SKIEDA', 'P', false, 7, 'DANGER', 10, 3, 18);
INSERT INTO public.planet VALUES (9, 'MALEREDA', 'P', false, 7, 'CORRE', 10, 3, 18);
INSERT INTO public.planet VALUES (11, 'jupiter', 'NO SIRVE', false, 70, 'NI UNO', 10, 4, 14);
INSERT INTO public.planet VALUES (12, 'TIEMARGAS', 'FUNCIONA', true, 9852874, 'REDONDO', 38790, 5, 17);
INSERT INTO public.planet VALUES (13, 'SAR 4 N10 PUF GA', 'MUY BUENO', true, 98874, '4D', 3870, 7, 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'MARTA', 1, 'GREEN', 44);
INSERT INTO public.star VALUES (2, 'Fila', 5, 'blue', 4);
INSERT INTO public.star VALUES (3, 'Dira', 3, 'white', 17);
INSERT INTO public.star VALUES (4, 'Yuta', 4, 'white', 17);
INSERT INTO public.star VALUES (7, 'Teta', 2, 'white', 17);
INSERT INTO public.star VALUES (6, 'Drima', 7, 'white', 172);
INSERT INTO public.star VALUES (5, 'MAYORIS', 6, 'BLACK', 28);


--
-- Name: elements_element_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.elements_element_id_seq', 1, false);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: elements elements_element_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_element_id_key UNIQUE (elements_id);


--
-- Name: elements elements_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_pkey PRIMARY KEY (elements_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

