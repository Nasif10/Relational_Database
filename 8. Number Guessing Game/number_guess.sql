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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: game_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_info (
    game_id integer NOT NULL,
    user_id integer,
    number_of_guesses integer NOT NULL
);


ALTER TABLE public.game_info OWNER TO freecodecamp;

--
-- Name: game_info_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_info_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_info_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_info_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_info_game_id_seq OWNED BY public.game_info.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: game_info game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info ALTER COLUMN game_id SET DEFAULT nextval('public.game_info_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: game_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_info VALUES (1, 2, 386);
INSERT INTO public.game_info VALUES (2, 2, 731);
INSERT INTO public.game_info VALUES (3, 3, 730);
INSERT INTO public.game_info VALUES (4, 3, 295);
INSERT INTO public.game_info VALUES (5, 2, 335);
INSERT INTO public.game_info VALUES (6, 2, 632);
INSERT INTO public.game_info VALUES (7, 2, 11);
INSERT INTO public.game_info VALUES (8, 4, 61);
INSERT INTO public.game_info VALUES (9, 4, 724);
INSERT INTO public.game_info VALUES (10, 5, 953);
INSERT INTO public.game_info VALUES (11, 5, 238);
INSERT INTO public.game_info VALUES (12, 4, 618);
INSERT INTO public.game_info VALUES (13, 4, 273);
INSERT INTO public.game_info VALUES (14, 4, 296);
INSERT INTO public.game_info VALUES (15, 1, 19);
INSERT INTO public.game_info VALUES (16, 6, 782);
INSERT INTO public.game_info VALUES (17, 6, 472);
INSERT INTO public.game_info VALUES (18, 7, 363);
INSERT INTO public.game_info VALUES (19, 7, 512);
INSERT INTO public.game_info VALUES (20, 6, 931);
INSERT INTO public.game_info VALUES (21, 6, 971);
INSERT INTO public.game_info VALUES (22, 6, 341);
INSERT INTO public.game_info VALUES (23, 8, 382);
INSERT INTO public.game_info VALUES (24, 8, 560);
INSERT INTO public.game_info VALUES (25, 9, 941);
INSERT INTO public.game_info VALUES (26, 9, 378);
INSERT INTO public.game_info VALUES (27, 8, 790);
INSERT INTO public.game_info VALUES (28, 8, 303);
INSERT INTO public.game_info VALUES (29, 8, 321);
INSERT INTO public.game_info VALUES (30, 10, 922);
INSERT INTO public.game_info VALUES (31, 10, 572);
INSERT INTO public.game_info VALUES (32, 11, 131);
INSERT INTO public.game_info VALUES (33, 11, 907);
INSERT INTO public.game_info VALUES (34, 10, 813);
INSERT INTO public.game_info VALUES (35, 10, 274);
INSERT INTO public.game_info VALUES (36, 10, 877);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'nsf');
INSERT INTO public.users VALUES (2, 'user_1677071355412');
INSERT INTO public.users VALUES (3, 'user_1677071355411');
INSERT INTO public.users VALUES (4, 'user_1677071401482');
INSERT INTO public.users VALUES (5, 'user_1677071401481');
INSERT INTO public.users VALUES (6, 'user_1677071655150');
INSERT INTO public.users VALUES (7, 'user_1677071655149');
INSERT INTO public.users VALUES (8, 'user_1677071681342');
INSERT INTO public.users VALUES (9, 'user_1677071681341');
INSERT INTO public.users VALUES (10, 'user_1677071723872');
INSERT INTO public.users VALUES (11, 'user_1677071723871');


--
-- Name: game_info_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_info_game_id_seq', 36, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 11, true);


--
-- Name: game_info game_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info
    ADD CONSTRAINT game_info_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: game_info game_info_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info
    ADD CONSTRAINT game_info_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

