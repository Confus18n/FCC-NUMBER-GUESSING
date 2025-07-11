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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    games_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.games_id;


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
-- Name: games games_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN games_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 1);
INSERT INTO public.games VALUES (2, 1, 1);
INSERT INTO public.games VALUES (3, 1, 2);
INSERT INTO public.games VALUES (4, 2, 501);
INSERT INTO public.games VALUES (5, 2, 501);
INSERT INTO public.games VALUES (6, 3, 501);
INSERT INTO public.games VALUES (7, 3, 501);
INSERT INTO public.games VALUES (8, 2, 503);
INSERT INTO public.games VALUES (9, 2, 502);
INSERT INTO public.games VALUES (10, 2, 501);
INSERT INTO public.games VALUES (11, 5, 501);
INSERT INTO public.games VALUES (12, 5, 501);
INSERT INTO public.games VALUES (13, 6, 501);
INSERT INTO public.games VALUES (14, 6, 501);
INSERT INTO public.games VALUES (15, 5, 503);
INSERT INTO public.games VALUES (16, 5, 502);
INSERT INTO public.games VALUES (17, 5, 501);
INSERT INTO public.games VALUES (18, 1, 1);
INSERT INTO public.games VALUES (19, 1, 1);
INSERT INTO public.games VALUES (20, 7, 501);
INSERT INTO public.games VALUES (21, 7, 501);
INSERT INTO public.games VALUES (22, 8, 501);
INSERT INTO public.games VALUES (23, 8, 501);
INSERT INTO public.games VALUES (24, 7, 503);
INSERT INTO public.games VALUES (25, 7, 502);
INSERT INTO public.games VALUES (26, 7, 501);
INSERT INTO public.games VALUES (27, 1, 1);
INSERT INTO public.games VALUES (28, 1, 1);
INSERT INTO public.games VALUES (29, 9, 501);
INSERT INTO public.games VALUES (30, 9, 501);
INSERT INTO public.games VALUES (31, 10, 501);
INSERT INTO public.games VALUES (32, 10, 501);
INSERT INTO public.games VALUES (33, 9, 503);
INSERT INTO public.games VALUES (34, 9, 502);
INSERT INTO public.games VALUES (35, 9, 501);
INSERT INTO public.games VALUES (36, 11, 502);
INSERT INTO public.games VALUES (37, 11, 502);
INSERT INTO public.games VALUES (38, 12, 502);
INSERT INTO public.games VALUES (39, 12, 502);
INSERT INTO public.games VALUES (40, 11, 504);
INSERT INTO public.games VALUES (41, 11, 502);
INSERT INTO public.games VALUES (42, 11, 502);
INSERT INTO public.games VALUES (43, 13, 502);
INSERT INTO public.games VALUES (44, 13, 502);
INSERT INTO public.games VALUES (45, 14, 502);
INSERT INTO public.games VALUES (46, 14, 502);
INSERT INTO public.games VALUES (47, 13, 504);
INSERT INTO public.games VALUES (48, 13, 502);
INSERT INTO public.games VALUES (49, 13, 502);
INSERT INTO public.games VALUES (50, 15, 501);
INSERT INTO public.games VALUES (51, 15, 501);
INSERT INTO public.games VALUES (52, 16, 501);
INSERT INTO public.games VALUES (53, 16, 501);
INSERT INTO public.games VALUES (54, 15, 503);
INSERT INTO public.games VALUES (55, 15, 501);
INSERT INTO public.games VALUES (56, 15, 501);
INSERT INTO public.games VALUES (57, 1, 1);
INSERT INTO public.games VALUES (58, 17, 283);
INSERT INTO public.games VALUES (59, 17, 153);
INSERT INTO public.games VALUES (60, 18, 478);
INSERT INTO public.games VALUES (61, 18, 590);
INSERT INTO public.games VALUES (62, 17, 251);
INSERT INTO public.games VALUES (63, 17, 178);
INSERT INTO public.games VALUES (64, 17, 246);
INSERT INTO public.games VALUES (65, 19, 247);
INSERT INTO public.games VALUES (66, 19, 201);
INSERT INTO public.games VALUES (67, 20, 353);
INSERT INTO public.games VALUES (68, 20, 693);
INSERT INTO public.games VALUES (69, 19, 642);
INSERT INTO public.games VALUES (70, 19, 243);
INSERT INTO public.games VALUES (71, 19, 541);
INSERT INTO public.games VALUES (72, 21, 15);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Alvarez');
INSERT INTO public.users VALUES (2, 'user_1752251978474');
INSERT INTO public.users VALUES (3, 'user_1752251978473');
INSERT INTO public.users VALUES (5, 'user_1752252174849');
INSERT INTO public.users VALUES (6, 'user_1752252174848');
INSERT INTO public.users VALUES (7, 'user_1752252208142');
INSERT INTO public.users VALUES (8, 'user_1752252208141');
INSERT INTO public.users VALUES (9, 'user_1752252962391');
INSERT INTO public.users VALUES (10, 'user_1752252962390');
INSERT INTO public.users VALUES (11, 'user_1752253084333');
INSERT INTO public.users VALUES (12, 'user_1752253084332');
INSERT INTO public.users VALUES (13, 'user_1752253123011');
INSERT INTO public.users VALUES (14, 'user_1752253123010');
INSERT INTO public.users VALUES (15, 'user_1752253180835');
INSERT INTO public.users VALUES (16, 'user_1752253180834');
INSERT INTO public.users VALUES (17, 'user_1752253309890');
INSERT INTO public.users VALUES (18, 'user_1752253309889');
INSERT INTO public.users VALUES (19, 'user_1752253580658');
INSERT INTO public.users VALUES (20, 'user_1752253580657');
INSERT INTO public.users VALUES (21, 'Said');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 72, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (games_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

