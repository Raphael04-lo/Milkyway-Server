--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

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
-- Name: article; Type: TABLE; Schema: public; Owner: m_admin
--

CREATE TABLE public.article (
    a_id integer NOT NULL,
    title character varying(40) NOT NULL,
    summary text NOT NULL,
    description text NOT NULL,
    i_id integer
);


ALTER TABLE public.article OWNER TO m_admin;

--
-- Name: article_a_id_seq; Type: SEQUENCE; Schema: public; Owner: m_admin
--

CREATE SEQUENCE public.article_a_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_a_id_seq OWNER TO m_admin;

--
-- Name: article_a_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: m_admin
--

ALTER SEQUENCE public.article_a_id_seq OWNED BY public.article.a_id;


--
-- Name: has; Type: TABLE; Schema: public; Owner: m_admin
--

CREATE TABLE public.has (
    p_id integer NOT NULL,
    r_id integer NOT NULL
);


ALTER TABLE public.has OWNER TO m_admin;

--
-- Name: info; Type: TABLE; Schema: public; Owner: m_admin
--

CREATE TABLE public.info (
    i_id integer NOT NULL,
    img character varying(50) NOT NULL,
    url character varying(50) NOT NULL
);


ALTER TABLE public.info OWNER TO m_admin;

--
-- Name: info_i_id_seq; Type: SEQUENCE; Schema: public; Owner: m_admin
--

CREATE SEQUENCE public.info_i_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.info_i_id_seq OWNER TO m_admin;

--
-- Name: info_i_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: m_admin
--

ALTER SEQUENCE public.info_i_id_seq OWNED BY public.info.i_id;


--
-- Name: merchendise; Type: TABLE; Schema: public; Owner: m_admin
--

CREATE TABLE public.merchendise (
    m_id integer NOT NULL,
    name character varying(40) NOT NULL,
    price numeric(6,2) NOT NULL,
    description text NOT NULL,
    i_id integer
);


ALTER TABLE public.merchendise OWNER TO m_admin;

--
-- Name: merchendise_m_id_seq; Type: SEQUENCE; Schema: public; Owner: m_admin
--

CREATE SEQUENCE public.merchendise_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchendise_m_id_seq OWNER TO m_admin;

--
-- Name: merchendise_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: m_admin
--

ALTER SEQUENCE public.merchendise_m_id_seq OWNED BY public.merchendise.m_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: m_admin
--

CREATE TABLE public.planet (
    p_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL,
    history text NOT NULL,
    yearly_vistors integer NOT NULL,
    radius numeric(8,2) NOT NULL,
    distance numeric(6,2) NOT NULL,
    price_per_day numeric(6,2) NOT NULL,
    weather character varying(30) NOT NULL,
    short_decription text NOT NULL,
    i_id integer
);


ALTER TABLE public.planet OWNER TO m_admin;

--
-- Name: planet_p_id_seq; Type: SEQUENCE; Schema: public; Owner: m_admin
--

CREATE SEQUENCE public.planet_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_id_seq OWNER TO m_admin;

--
-- Name: planet_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: m_admin
--

ALTER SEQUENCE public.planet_p_id_seq OWNED BY public.planet.p_id;


--
-- Name: routes; Type: TABLE; Schema: public; Owner: m_admin
--

CREATE TABLE public.routes (
    r_id integer NOT NULL,
    name character varying(40) NOT NULL,
    price numeric(6,2) NOT NULL,
    distance numeric(6,2) NOT NULL,
    class character varying(20) NOT NULL,
    person integer DEFAULT 1 NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.routes OWNER TO m_admin;

--
-- Name: routes_r_id_seq; Type: SEQUENCE; Schema: public; Owner: m_admin
--

CREATE SEQUENCE public.routes_r_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.routes_r_id_seq OWNER TO m_admin;

--
-- Name: routes_r_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: m_admin
--

ALTER SEQUENCE public.routes_r_id_seq OWNED BY public.routes.r_id;


--
-- Name: article a_id; Type: DEFAULT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.article ALTER COLUMN a_id SET DEFAULT nextval('public.article_a_id_seq'::regclass);


--
-- Name: info i_id; Type: DEFAULT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.info ALTER COLUMN i_id SET DEFAULT nextval('public.info_i_id_seq'::regclass);


--
-- Name: merchendise m_id; Type: DEFAULT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.merchendise ALTER COLUMN m_id SET DEFAULT nextval('public.merchendise_m_id_seq'::regclass);


--
-- Name: planet p_id; Type: DEFAULT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.planet ALTER COLUMN p_id SET DEFAULT nextval('public.planet_p_id_seq'::regclass);


--
-- Name: routes r_id; Type: DEFAULT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.routes ALTER COLUMN r_id SET DEFAULT nextval('public.routes_r_id_seq'::regclass);


--
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: m_admin
--

COPY public.article (a_id, title, summary, description, i_id) FROM stdin;
\.


--
-- Data for Name: has; Type: TABLE DATA; Schema: public; Owner: m_admin
--

COPY public.has (p_id, r_id) FROM stdin;
\.


--
-- Data for Name: info; Type: TABLE DATA; Schema: public; Owner: m_admin
--

COPY public.info (i_id, img, url) FROM stdin;
\.


--
-- Data for Name: merchendise; Type: TABLE DATA; Schema: public; Owner: m_admin
--

COPY public.merchendise (m_id, name, price, description, i_id) FROM stdin;
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: m_admin
--

COPY public.planet (p_id, name, description, history, yearly_vistors, radius, distance, price_per_day, weather, short_decription, i_id) FROM stdin;
1	Mercury	Closest to the sun, Mercury has always been able to bring the most pleasant summer vibes all around the year. From the beautiful beaches, to the nightly games of the blazing flames this, fitting to its Patreon, Mercury, Metropol only blossoms economically. “Communication Dom Mercury”, the founders and Sponsors of this harmonic holiday resort, have put a lot of love and hard work into the latest projects and attractions for you to enjoy.\r\n\r\nOn the search for the perfect trip to soothe your nerves and strengthen your heart?\r\nVisit “Translucent Heaven”, a small holiday resort located at the edge of the beautiful “Seryth Falls”, a heavenly clean and soul reflection waterfall at the heart of our artificial rainforest. No wonder stars like Sasha Brady and his wonderful wife Ciera spent their most important night together right here!\r\n\r\nToo far away from the action for you? Just stay at one of the many hotels in our regional “Rapolla” campus & enjoy the beautiful messy business and market life of the large city. Museums, spars and various unique shops are waiting for you! And who knows, maybe even one of the rare student places or great paying job opportunities will fall under your lucky hands.\r\n	Surprisingly enough, Mercury has a rich, yet less well-known history of agriculture and viticulture. Many small farmers have been known for their great quality and plentiful experience in and on the field from the 22th century onwards. Wines like “Blue Blessing” or “Mercur’s” are not only one of the best but also more than affordable with our “Wine Club Membership”, that you can easily try out for free on your first trip to this astonishing planet.	450000	2439.70	0.40	420.00	Hot/Sunny	Just like earth’s romantic little Moon, only a bit hotter & without the unknown man looking down on you.	\N
2	Earth	An all time classic. Earth offers a variety of culture, in depth war history and many fan-fictions!\r\n\r\nOur Recommendations:\r\n\r\nHalloween Trip through the wasteland of the US: Spooky Scary Skeletons might not be real, but the scary, blood soaked gun laws & bittersweet diabetes giving treats definitely are. Gaze upon the high voltage gobbling sparkling light games & the junky messy street food, while you run from house to house, begging for treats and sometimes the mercy of some Karens.\r\n\r\nGet Freaky: Convention Time - Love to talk, meet some freaky freaks & dress up? Visit one of the many conventions on earth. You like video games? Boom! Games Com. We got you! Love animals way too much?  Midwest FurFest. Enjoy some freaky mangas and more? Anime Con! Perfect! So enough for everyone, well, everyone with a passion at least!\r\n	There is a reason we reference time from earth’s history, because oh boy is this a long and interesting one. And also one we all once grew up with. But don’t you worry, we are not gonna talk about all of it here. So look it up yourself. The only thing we're gonna mention is that a lot of great food, local cultures and morals clash here everyday. Creating a great mix of the most opposite and colorful humans.\r\n	12000000	6371.00	1.00	420.00	moody  (just like you)	Quite down to earth (get it?). Anyway, enjoy the great variety offered by the dust-dry desserts, the lawful good working conditions and the light reflecting smog all around the cities.\r\n	\N
\.


--
-- Data for Name: routes; Type: TABLE DATA; Schema: public; Owner: m_admin
--

COPY public.routes (r_id, name, price, distance, class, person, description) FROM stdin;
\.


--
-- Name: article_a_id_seq; Type: SEQUENCE SET; Schema: public; Owner: m_admin
--

SELECT pg_catalog.setval('public.article_a_id_seq', 1, false);


--
-- Name: info_i_id_seq; Type: SEQUENCE SET; Schema: public; Owner: m_admin
--

SELECT pg_catalog.setval('public.info_i_id_seq', 1, false);


--
-- Name: merchendise_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: m_admin
--

SELECT pg_catalog.setval('public.merchendise_m_id_seq', 1, false);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: m_admin
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 2, true);


--
-- Name: routes_r_id_seq; Type: SEQUENCE SET; Schema: public; Owner: m_admin
--

SELECT pg_catalog.setval('public.routes_r_id_seq', 1, false);


--
-- Name: article article_pkey; Type: CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (a_id);


--
-- Name: has has_pkey; Type: CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.has
    ADD CONSTRAINT has_pkey PRIMARY KEY (p_id, r_id);


--
-- Name: info info_pkey; Type: CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_pkey PRIMARY KEY (i_id);


--
-- Name: merchendise merchendise_pkey; Type: CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.merchendise
    ADD CONSTRAINT merchendise_pkey PRIMARY KEY (m_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (p_id);


--
-- Name: routes routes_pkey; Type: CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.routes
    ADD CONSTRAINT routes_pkey PRIMARY KEY (r_id);


--
-- Name: article article_i_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_i_id_fkey FOREIGN KEY (i_id) REFERENCES public.info(i_id);


--
-- Name: article fk_info_article; Type: FK CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT fk_info_article FOREIGN KEY (i_id) REFERENCES public.info(i_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: merchendise fk_info_merchendise; Type: FK CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.merchendise
    ADD CONSTRAINT fk_info_merchendise FOREIGN KEY (i_id) REFERENCES public.info(i_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: planet fk_info_planet; Type: FK CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_info_planet FOREIGN KEY (i_id) REFERENCES public.info(i_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: has fk_r_id; Type: FK CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.has
    ADD CONSTRAINT fk_r_id FOREIGN KEY (r_id) REFERENCES public.routes(r_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: merchendise merchendise_i_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.merchendise
    ADD CONSTRAINT merchendise_i_id_fkey FOREIGN KEY (i_id) REFERENCES public.info(i_id);


--
-- Name: planet planet_i_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_i_id_fkey FOREIGN KEY (i_id) REFERENCES public.info(i_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: m_admin
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO m_admin;


--
-- PostgreSQL database dump complete
--

