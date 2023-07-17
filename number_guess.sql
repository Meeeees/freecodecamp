--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

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
    user_id integer,
    tries integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 3);
INSERT INTO public.games VALUES (1, 3);
INSERT INTO public.games VALUES (2, 28);
INSERT INTO public.games VALUES (2, 63);
INSERT INTO public.games VALUES (3, 228);
INSERT INTO public.games VALUES (3, 22);
INSERT INTO public.games VALUES (2, 107);
INSERT INTO public.games VALUES (2, 204);
INSERT INTO public.games VALUES (2, 210);
INSERT INTO public.games VALUES (4, 241);
INSERT INTO public.games VALUES (4, 715);
INSERT INTO public.games VALUES (5, 861);
INSERT INTO public.games VALUES (6, 148);
INSERT INTO public.games VALUES (5, 723);
INSERT INTO public.games VALUES (6, 529);
INSERT INTO public.games VALUES (4, 280);
INSERT INTO public.games VALUES (7, 75);
INSERT INTO public.games VALUES (7, 378);
INSERT INTO public.games VALUES (4, 931);
INSERT INTO public.games VALUES (6, 849);
INSERT INTO public.games VALUES (4, 495);
INSERT INTO public.games VALUES (6, 436);
INSERT INTO public.games VALUES (6, 308);
INSERT INTO public.games VALUES (8, 684);
INSERT INTO public.games VALUES (9, 912);
INSERT INTO public.games VALUES (8, 172);
INSERT INTO public.games VALUES (8, 828);
INSERT INTO public.games VALUES (8, 383);
INSERT INTO public.games VALUES (10, 867);
INSERT INTO public.games VALUES (11, 86);
INSERT INTO public.games VALUES (10, 239);
INSERT INTO public.games VALUES (10, 503);
INSERT INTO public.games VALUES (10, 821);
INSERT INTO public.games VALUES (12, 255);
INSERT INTO public.games VALUES (12, 484);
INSERT INTO public.games VALUES (13, 339);
INSERT INTO public.games VALUES (13, 828);
INSERT INTO public.games VALUES (12, 996);
INSERT INTO public.games VALUES (12, 880);
INSERT INTO public.games VALUES (12, 903);
INSERT INTO public.games VALUES (14, 896);
INSERT INTO public.games VALUES (14, 87);
INSERT INTO public.games VALUES (15, 575);
INSERT INTO public.games VALUES (15, 78);
INSERT INTO public.games VALUES (14, 67);
INSERT INTO public.games VALUES (14, 690);
INSERT INTO public.games VALUES (14, 127);
INSERT INTO public.games VALUES (1, 3);
INSERT INTO public.games VALUES (16, 480);
INSERT INTO public.games VALUES (16, 593);
INSERT INTO public.games VALUES (17, 509);
INSERT INTO public.games VALUES (17, 616);
INSERT INTO public.games VALUES (16, 581);
INSERT INTO public.games VALUES (16, 192);
INSERT INTO public.games VALUES (16, 885);
INSERT INTO public.games VALUES (18, 18);
INSERT INTO public.games VALUES (18, 24);
INSERT INTO public.games VALUES (19, 756);
INSERT INTO public.games VALUES (19, 366);
INSERT INTO public.games VALUES (18, 103);
INSERT INTO public.games VALUES (18, 454);
INSERT INTO public.games VALUES (18, 133);
INSERT INTO public.games VALUES (20, 45);
INSERT INTO public.games VALUES (20, 435);
INSERT INTO public.games VALUES (21, 768);
INSERT INTO public.games VALUES (21, 951);
INSERT INTO public.games VALUES (20, 291);
INSERT INTO public.games VALUES (20, 895);
INSERT INTO public.games VALUES (20, 54);
INSERT INTO public.games VALUES (22, 523);
INSERT INTO public.games VALUES (23, 449);
INSERT INTO public.games VALUES (22, 881);
INSERT INTO public.games VALUES (23, 655);
INSERT INTO public.games VALUES (24, 227);
INSERT INTO public.games VALUES (25, 698);
INSERT INTO public.games VALUES (24, 672);
INSERT INTO public.games VALUES (22, 941);
INSERT INTO public.games VALUES (25, 849);
INSERT INTO public.games VALUES (22, 129);
INSERT INTO public.games VALUES (23, 782);
INSERT INTO public.games VALUES (22, 88);
INSERT INTO public.games VALUES (23, 443);
INSERT INTO public.games VALUES (23, 878);
INSERT INTO public.games VALUES (26, 597);
INSERT INTO public.games VALUES (26, 785);
INSERT INTO public.games VALUES (27, 422);
INSERT INTO public.games VALUES (27, 731);
INSERT INTO public.games VALUES (26, 254);
INSERT INTO public.games VALUES (26, 894);
INSERT INTO public.games VALUES (26, 231);
INSERT INTO public.games VALUES (1, 13);
INSERT INTO public.games VALUES (28, 759);
INSERT INTO public.games VALUES (28, 830);
INSERT INTO public.games VALUES (29, 558);
INSERT INTO public.games VALUES (29, 337);
INSERT INTO public.games VALUES (28, 211);
INSERT INTO public.games VALUES (28, 757);
INSERT INTO public.games VALUES (28, 11);
INSERT INTO public.games VALUES (30, 181);
INSERT INTO public.games VALUES (30, 29);
INSERT INTO public.games VALUES (31, 531);
INSERT INTO public.games VALUES (31, 780);
INSERT INTO public.games VALUES (30, 796);
INSERT INTO public.games VALUES (30, 192);
INSERT INTO public.games VALUES (30, 992);
INSERT INTO public.games VALUES (32, 633);
INSERT INTO public.games VALUES (32, 405);
INSERT INTO public.games VALUES (33, 291);
INSERT INTO public.games VALUES (33, 286);
INSERT INTO public.games VALUES (32, 6);
INSERT INTO public.games VALUES (32, 712);
INSERT INTO public.games VALUES (32, 260);
INSERT INTO public.games VALUES (34, 385);
INSERT INTO public.games VALUES (34, 592);
INSERT INTO public.games VALUES (35, 390);
INSERT INTO public.games VALUES (35, 270);
INSERT INTO public.games VALUES (34, 781);
INSERT INTO public.games VALUES (34, 303);
INSERT INTO public.games VALUES (34, 255);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'mees');
INSERT INTO public.users VALUES (2, 'user_1689614275139');
INSERT INTO public.users VALUES (3, 'user_1689614275138');
INSERT INTO public.users VALUES (4, 'user_1689614285986');
INSERT INTO public.users VALUES (5, 'user_1689614285985');
INSERT INTO public.users VALUES (6, 'user_1689614287430');
INSERT INTO public.users VALUES (7, 'user_1689614287429');
INSERT INTO public.users VALUES (8, 'user_1689614301869');
INSERT INTO public.users VALUES (9, 'user_1689614301868');
INSERT INTO public.users VALUES (10, 'user_1689614309349');
INSERT INTO public.users VALUES (11, 'user_1689614309348');
INSERT INTO public.users VALUES (12, 'user_1689614328621');
INSERT INTO public.users VALUES (13, 'user_1689614328620');
INSERT INTO public.users VALUES (14, 'user_1689614342929');
INSERT INTO public.users VALUES (15, 'user_1689614342928');
INSERT INTO public.users VALUES (16, 'user_1689614350251');
INSERT INTO public.users VALUES (17, 'user_1689614350250');
INSERT INTO public.users VALUES (18, 'user_1689614384552');
INSERT INTO public.users VALUES (19, 'user_1689614384551');
INSERT INTO public.users VALUES (20, 'user_1689614458279');
INSERT INTO public.users VALUES (21, 'user_1689614458277');
INSERT INTO public.users VALUES (22, 'user_1689614686895');
INSERT INTO public.users VALUES (23, 'user_1689614687395');
INSERT INTO public.users VALUES (24, 'user_1689614686894');
INSERT INTO public.users VALUES (25, 'user_1689614687394');
INSERT INTO public.users VALUES (26, 'user_1689614698911');
INSERT INTO public.users VALUES (27, 'user_1689614698910');
INSERT INTO public.users VALUES (28, 'user_1689614950578');
INSERT INTO public.users VALUES (29, 'user_1689614950577');
INSERT INTO public.users VALUES (30, 'user_1689614959563');
INSERT INTO public.users VALUES (31, 'user_1689614959562');
INSERT INTO public.users VALUES (32, 'user_1689614990748');
INSERT INTO public.users VALUES (33, 'user_1689614990747');
INSERT INTO public.users VALUES (34, 'user_1689615018910');
INSERT INTO public.users VALUES (35, 'user_1689615018909');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

