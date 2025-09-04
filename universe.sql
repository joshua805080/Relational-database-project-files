--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    name character varying(20) NOT NULL,
    black_hole_id integer NOT NULL,
    size integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    size integer NOT NULL,
    mass integer,
    distance numeric,
    has_planets boolean,
    notes text
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
    name character varying(20),
    size integer,
    mass integer,
    distance numeric,
    has_atmosphere boolean,
    notes text,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    size integer,
    mass integer,
    distance numeric,
    has_moons boolean,
    notes text,
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    size integer,
    mass integer,
    distance numeric,
    has_planets boolean,
    notes text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES ('Ton 618', 1, 66);
INSERT INTO public.black_hole VALUES ('Cygnus X-1', 2, 20);
INSERT INTO public.black_hole VALUES ('Sagittarius A*', 3, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 1000000, 25000, true, 'Our home galaxy, a spiral galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, 1500000, 2500000, true, 'The closest major galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 60000, 160000, 23000000, true, 'A grand design spiral galaxy with prominent spiral arms');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 50000, 800000, 28000000, true, 'A peculiar galaxy with a prominent dust lane');
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 60000, 550000, 13000000, true, 'An elliptical galaxy with a prominent dust lane');
INSERT INTO public.galaxy VALUES (6, 'Carina Dwarf', 7000, 30000, 280000, false, 'A dwarf spheroidal galaxy, a satellite of the Milky Way');
INSERT INTO public.galaxy VALUES (7, 'Triangulum', 200, 200000, 2000000, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (8, 'Andromeda', 1200, 1100000, 2200000, true, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (9, 'Milky Way', 550, 5200000, 0, true, 'Home galaxy');
INSERT INTO public.galaxy VALUES (10, 'Triangulum', 220, 230000, 2300000, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (11, 'Whirlpool', 380, 900000, 650000, true, 'Interacting galaxy');
INSERT INTO public.galaxy VALUES (12, 'Sombrero', 420, 1300000, 1100000, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (13, 'Andromeda', 1200, 1100000, 2200000, true, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (14, 'Milky Way', 550, 5200000, 0, true, 'Home galaxy');
INSERT INTO public.galaxy VALUES (15, 'Triangulum', 220, 230000, 2300000, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (16, 'Whirlpool', 380, 900000, 650000, true, 'Interacting galaxy');
INSERT INTO public.galaxy VALUES (17, 'Sombrero', 420, 1300000, 1100000, false, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (18, 'Andromeda', 1200, 1100000, 2200000, true, 'Spiral galaxy');
INSERT INTO public.galaxy VALUES (19, 'Milky Way', 550, 5200000, 0, true, 'Home galaxy');
INSERT INTO public.galaxy VALUES (20, 'Triangulum', 220, 230000, 2300000, false, 'Spiral galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3475, 73477, 384400, false, 'Earth''s only natural satellite', 1);
INSERT INTO public.moon VALUES (2, 'Io', 3642, 89319, 421600, false, 'Volcanically active moon of Jupiter', 2);
INSERT INTO public.moon VALUES (3, 'Europa', 3121, 47998, 670900, false, 'Suspected to have a subsurface ocean', 3);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5268, 148190, 1070400, false, 'Largest moon in the Solar System', 4);
INSERT INTO public.moon VALUES (5, 'Callisto', 4821, 107590, 1882700, false, 'Heavily cratered moon of Jupiter', 5);
INSERT INTO public.moon VALUES (6, 'Titan', 5152, 134560, 1221850, true, 'Saturn''s largest moon, with a dense atmosphere', 6);
INSERT INTO public.moon VALUES (7, 'Enceladus', 504, 108, 237948, false, 'Small, geologically active moon of Saturn', 7);
INSERT INTO public.moon VALUES (8, 'Mimas', 396, 37, 185520, false, 'Small, heavily cratered moon of Saturn', 8);
INSERT INTO public.moon VALUES (9, 'Dione', 1122, 109, 377400, false, 'Heavily cratered moon of Saturn', 9);
INSERT INTO public.moon VALUES (10, 'Rhea', 1530, 230, 527108, false, 'Second-largest moon of Saturn', 10);
INSERT INTO public.moon VALUES (11, 'Titania', 1578, 352, 435910, false, 'Largest moon of Uranus', 11);
INSERT INTO public.moon VALUES (12, 'Oberon', 1522, 301, 583520, false, 'Outermost major moon of Uranus', 12);
INSERT INTO public.moon VALUES (13, 'Umbriel', 1169, 121, 265970, false, 'Dark, heavily cratered moon of Uranus', 13);
INSERT INTO public.moon VALUES (14, 'Ariel', 1158, 135, 190900, false, 'Icy moon of Uranus with a young surface', 14);
INSERT INTO public.moon VALUES (15, 'Triton', 2707, 214, 354800, true, 'Largest moon of Neptune, with a retrograde orbit', 15);
INSERT INTO public.moon VALUES (16, 'Nereid', 340, 31, 5513400, false, 'Irregularly shaped moon of Neptune', 16);
INSERT INTO public.moon VALUES (17, 'Charon', 1212, 158, 19596, false, 'Dwarf planet Pluto''s largest moon', 17);
INSERT INTO public.moon VALUES (18, 'Proxima Centauri b', 12742, 1170, 42000000000, true, 'Exoplanet orbiting the nearest star to the Sun', 18);
INSERT INTO public.moon VALUES (19, 'Kepler-186f', 17242, 1500, 49950000000, true, 'Exoplanet in the habitable zone of its star', 19);
INSERT INTO public.moon VALUES (20, 'Gliese 667Cc', 13800, 3800, 23600000000, true, 'Exoplanet in the habitable zone of a red dwarf star', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12742, 5, 14960000000, true, 'The only known planet to harbor life', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 6779, 6, 22790000000, true, 'The "Red Planet" with polar ice caps', 2);
INSERT INTO public.planet VALUES (3, 'Jupiter', 142984, 1, 77850000000, true, 'The largest planet in the Solar System', 3);
INSERT INTO public.planet VALUES (4, 'Saturn', 120536, 2, 14335000000, true, 'Known for its prominent ring system', 4);
INSERT INTO public.planet VALUES (5, 'Uranus', 51118, 3, 28725000000, true, 'Rotates on its side, creating extreme seasons', 5);
INSERT INTO public.planet VALUES (6, 'Neptune', 49528, 4, 44951000000, true, 'The farthest planet from the Sun', 6);
INSERT INTO public.planet VALUES (7, 'Venus', 12104, 5, 10820000000, false, 'The second planet from the Sun, with a dense atmosphere', 7);
INSERT INTO public.planet VALUES (8, 'Mercury', 4879, 1, 5790000000, false, 'The smallest and closest planet to the Sun', 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 1430, 1, 59064000000, true, 'Formerly classified as a planet, now a dwarf planet', 9);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 12742, 2, 42000000000, true, 'An exoplanet orbiting the nearest star to the Sun', 10);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', 17242, 3, 49950000000, true, 'An exoplanet in the habitable zone of its star', 11);
INSERT INTO public.planet VALUES (12, 'Gliese 667Cc', 13800, 4, 23600000000, true, 'An exoplanet in the habitable zone of a red dwarf star', 12);
INSERT INTO public.planet VALUES (13, 'Earth', 12742, 5, 14960000000, true, 'The only known planet to harbor life', 13);
INSERT INTO public.planet VALUES (14, 'Mars', 6779, 6, 22790000000, true, 'The "Red Planet" with polar ice caps', 14);
INSERT INTO public.planet VALUES (15, 'Jupiter', 142984, 1, 77850000000, true, 'The largest planet in the Solar System', 15);
INSERT INTO public.planet VALUES (16, 'Saturn', 120536, 2, 14335000000, true, 'Known for its prominent ring system', 16);
INSERT INTO public.planet VALUES (17, 'Uranus', 51118, 3, 28725000000, true, 'Rotates on its side, creating extreme seasons', 17);
INSERT INTO public.planet VALUES (18, 'Neptune', 49528, 4, 44951000000, true, 'The farthest planet from the Sun', 18);
INSERT INTO public.planet VALUES (19, 'Venus', 12104, 5, 10820000000, false, 'The second planet from the Sun, with a dense atmosphere', 19);
INSERT INTO public.planet VALUES (20, 'Mercury', 4879, 1, 5790000000, false, 'The smallest and closest planet to the Sun', 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 2, 4, 8.6, true, 'Brightest star in the night sky', 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 887, 20, 642.5, false, 'Red supergiant star', 2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 0, 0, 4.24, true, 'Closest star to the Sun', 3);
INSERT INTO public.star VALUES (4, 'Vega', 2, 2, 25.0, false, 'Bright star in the Lyra constellation', 4);
INSERT INTO public.star VALUES (5, 'Rigel', 78, 21, 860, true, 'Blue supergiant star', 5);
INSERT INTO public.star VALUES (6, 'Polaris', 37, 6, 433, true, 'North Star', 6);
INSERT INTO public.star VALUES (7, 'Sirius', 2, 2, 8.6, true, 'Brightest star in the night sky', 2);
INSERT INTO public.star VALUES (8, 'Betelgeuse', 950, 20, 650, false, 'Red supergiant star', 2);
INSERT INTO public.star VALUES (9, 'Proxima Centauri', 1, 0, 4.2, true, 'Closest star to the Sun', 2);
INSERT INTO public.star VALUES (10, 'Rigel', 78, 21, 860, true, 'Blue supergiant star', 2);
INSERT INTO public.star VALUES (11, 'Vega', 3, 2, 25, true, 'Fifth-brightest star in the night sky', 1);
INSERT INTO public.star VALUES (12, 'Antares', 680, 15, 600, false, 'Red supergiant star', 3);
INSERT INTO public.star VALUES (13, 'Sirius', 2, 2, 8.6, true, 'Brightest star in the night sky', 2);
INSERT INTO public.star VALUES (14, 'Betelgeuse', 950, 20, 650, false, 'Red supergiant star', 2);
INSERT INTO public.star VALUES (15, 'Proxima Centauri', 1, 0, 4.2, true, 'Closest star to the Sun', 2);
INSERT INTO public.star VALUES (16, 'Rigel', 78, 21, 860, true, 'Blue supergiant star', 2);
INSERT INTO public.star VALUES (17, 'Vega', 3, 2, 25, true, 'Fifth-brightest star in the night sky', 1);
INSERT INTO public.star VALUES (18, 'Antares', 680, 15, 600, false, 'Red supergiant star', 3);
INSERT INTO public.star VALUES (19, 'Sirius', 2, 2, 8.6, true, 'Brightest star in the night sky', 2);
INSERT INTO public.star VALUES (20, 'Betelgeuse', 950, 20, 650, false, 'Red supergiant star', 2);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 20, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 24, true);


--
-- Name: black_hole black_hole_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_id UNIQUE (black_hole_id);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


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
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

