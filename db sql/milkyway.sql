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
-- Roles
--


CREATE ROLE m_admin;
ALTER ROLE m_admin WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE milk_admin;
ALTER ROLE milk_admin WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:N7kcvpvTFgeyj8nZggfOfg==$iPT5yOZxuZxql5m1OSnyvspLAdaVH3X0nVUGPYBO/EA=:pFma4/4SM27Uy88KXOczF54k477bB9vdTudLP+twFoE=';


--
-- Role memberships
--

GRANT m_admin TO milk_admin GRANTED BY postgres;

--
-- Name: article; Type: TABLE; Schema: public; Owner: m_admin
--

CREATE TABLE public.article (
    a_id integer NOT NULL,
    title character varying(40) NOT NULL,
    summary text NOT NULL,
    description text NOT NULL,
    img character varying(50)
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
-- Name: merchendise; Type: TABLE; Schema: public; Owner: m_admin
--

CREATE TABLE public.merchendise (
    m_id integer NOT NULL,
    name character varying(40) NOT NULL,
    price numeric(6,2) NOT NULL,
    description text NOT NULL,
    img character varying(50)
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
    img character varying(50),
    color character varying(20)
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

COPY public.article (a_id, title, summary, description, img) FROM stdin;
1	MyWy-113 ti	The new MyWy-113 ti makes space-trips into space naps!\r\n\r\n	\r\n\r\nFaster, comfier and cheaper. Our new night-jet class rocket offers way more than just a new design and more pillows (and blankets too!). An engine stronger than the atmosphere a red giant bears. Spacier than one of our mid-class hotels and better food served than you can ever dream of at home. And yes we have classified mommy star cooks for you on board. Starting with our new spring season, MyWy-113 ti will journey across the bright and starry universe we know together with you and our amazing team. Not me though.\r\n\r\nNot satisfied by your own apart-style suite, free room service and our on board pool, including a bar? No problem. With MyWy-113 ti we introduce our first and utmost greatest full travel experience. Offering our own, ever changing and colorful shopping center and amusement  establishments. Spas, theaters, clubs, restaurants and planet local shops. Name it all and we will deliver.\r\n\r\nNot enough? Well, then I am glad to announce that you can try out all of this for free during our “No sleep sleepover” opening event. The only catch, you have to stay awake all night! Maybe even party. Hell, what kind of an offer!\r\n\r\nWant to be a part of something bigger? Join our talented on board crew or become an exclusive contractor for our “MyWy Shopping Luxray”, the first and biggest shopping wall on moving galactic ground, also called a MyWy-113 ti. Let’s become a lightray illuminating across the universe and happy smiles of our many customers.\r\n	\N
2	Musket’sche Meltdown	Everything a Musk touches seems to melt down and turn into a hot mess (not the good one though). Recently exactly the same happened again. Not as negative as the big Twitter war a few decades ago, but hell, it was burning.\r\n	Everything a Musk touches seems to melt down and turn into a hot mess (not the good one though). Recently exactly the same happened again. Not as negative as the big Twitter war a few decades ago, but hell, it was burning.\r\n\r\nThe so-called Musket’sche Meltdown, a great mistake made again by none other than X Æ A-12 Jr. IV Musk led not only to a dozen of social media publicity but also to the destruction of the Elon factory.\r\n\r\nAnd what went wrong this time? Well, the cloning industry has been making trouble for the past decades already, especially if handling extraordinary people and celebrities. And I am sure Musk’s DNA can be called “special” with confidence. Allegedly, following the statements of locals and employees, the meme input into the chambers of the Musks were not regulated strictly enough, leading to an overdose of vitamin-reddit and vitamin-4chan. This allegedly led to an I-have-to-destroy-a-company rush deep rooted in the cells of the clones and their instinctively reaction: Throwing themselves against the glass walls and freeing even more Musks. The chain reaction quickly took over and after they painfully realized that Twitter wasn’t there to be destroyed again, they decided to end their endless suffering cycle by destroying the facility and joining the traditions of the famous Sonnentempler.\r\n\r\nBut not everything is bad. X Æ A-12 Jr. IV Musk decided to sell the tears of the Elon Clones to the public after collecting more than half a lake filling of fluid. X Æ A-12 Jr. IV Musk also exclaims that the tears of his ancestors should be able to refresh the needed meme-dosis of even the worst patients with only half of a teaspoon per day! On the other side possible side effects include:\r\n<ul>\r\n    <li>The desire to buy Twitter</li>\r\n    <li>A fetish for blue checkmarks</li>\r\n    <li>The believe that Tesla cars are actually good</li>\r\n    <li>and that naming their son  “X Æ A-12” is a good idea</li>\r\n</ul>	\N
3	Top 10 Bars you need to see!	On your trip? Then you surely gonna need a sip one day or the other. So where do you find the best bars? Nowhere, right! Because we bring them to you! But that by side, what are our top 10 go tos?\r\n	<ol>\r\n    <li>Hot Mess: Located on our lovely and warm sun, this is something for the really special ones among you. Expensive, dangerous and from time to time even a certain death guarantee! So take your suncream with you and fill your pockets with money, because even the water costs more than your average burger next door! And that even though you won’t say “I’m lovin’ it” afterwards.</li>\r\n    <li>The Blue Giant: Cold, dark and mysterious. Right on Neptune one of the greatest cocktail bars in the universe is hidden. Fresh and local classics like the “Deep Dive” are not only out of the world but also affordable! So down with that sh*t, after all it’s cheaper than the water there!</li>\r\n    <li>Univers-ally Tasty: A bar, a restaurant and the objectification of whatever your throat or tummy could ever crave for! A self called northern train through the star field. Always mobile and with the freshest ingredients imaginable. Every day is something new and great. But don’t forget. Your stay will end after 7 days, but hell, those seven days will lead you to heaven!</li>\r\n    <li>Yellow Star: Small and comfy. Yellow Star offers more of a family experience than some overrated luxury. A small kitchen, hand-made goods from the old little owner and a relaxing, well kept little garden to breathe some fresh air in. Get yourself comfortable and enjoy some hospitality, because this yellow star will always shine for you!</li>\r\n    <li>CoreMelt: Hot drinks with the greatest core imaginable: Alcohol. Hot chocolate, coffee, milkshake? They serve them all with a hard and special kick. Take the shot to your liver and enjoy the hot messy night with some friends or more.</li>\r\n    <li>Nameso: Name your wish and they will deliver! Craving some cucumber with a breeze of whiskey? You don’t have to wait any longer. Just tell them your needs and they will add it to the week's menu. That’s why they are Nameso, because you name the menu!</li>\r\n</ol>	\N
\.


--
-- Data for Name: has; Type: TABLE DATA; Schema: public; Owner: m_admin
--

COPY public.has (p_id, r_id) FROM stdin;
\.


--
-- Data for Name: merchendise; Type: TABLE DATA; Schema: public; Owner: m_admin
--

COPY public.merchendise (m_id, name, price, description, img) FROM stdin;
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: m_admin
--

COPY public.planet (p_id, name, description, history, yearly_vistors, radius, distance, price_per_day, weather, short_decription, img, color) FROM stdin;
1	Mercury	Closest to the sun, Mercury has always been able to bring the most pleasant summer vibes all around the year. From the beautiful beaches, to the nightly games of the blazing flames this, fitting to its Patreon, Mercury, Metropol only blossoms economically. “Communication Dom Mercury”, the founders and Sponsors of this harmonic holiday resort, have put a lot of love and hard work into the latest projects and attractions for you to enjoy.\r\n\r\nOn the search for the perfect trip to soothe your nerves and strengthen your heart?\r\nVisit “Translucent Heaven”, a small holiday resort located at the edge of the beautiful “Seryth Falls”, a heavenly clean and soul reflection waterfall at the heart of our artificial rainforest. No wonder stars like Sasha Brady and his wonderful wife Ciera spent their most important night together right here!\r\n\r\nToo far away from the action for you? Just stay at one of the many hotels in our regional “Rapolla” campus & enjoy the beautiful messy business and market life of the large city. Museums, spars and various unique shops are waiting for you! And who knows, maybe even one of the rare student places or great paying job opportunities will fall under your lucky hands.\r\n	Surprisingly enough, Mercury has a rich, yet less well-known history of agriculture and viticulture. Many small farmers have been known for their great quality and plentiful experience in and on the field from the 22th century onwards. Wines like “Blue Blessing” or “Mercur’s” are not only one of the best but also more than affordable with our “Wine Club Membership”, that you can easily try out for free on your first trip to this astonishing planet.	450000	2439.70	0.40	420.00	Hot/Sunny	Just like earth’s romantic little Moon, only a bit hotter & without the unknown man looking down on you.	mercury.jpg	#334155
2	Earth	An all time classic. Earth offers a variety of culture, in depth war history and many fan-fictions!\r\n\r\nOur Recommendations:\r\n\r\nHalloween Trip through the wasteland of the US: Spooky Scary Skeletons might not be real, but the scary, blood soaked gun laws & bittersweet diabetes giving treats definitely are. Gaze upon the high voltage gobbling sparkling light games & the junky messy street food, while you run from house to house, begging for treats and sometimes the mercy of some Karens.\r\n\r\nGet Freaky: Convention Time - Love to talk, meet some freaky freaks & dress up? Visit one of the many conventions on earth. You like video games? Boom! Games Com. We got you! Love animals way too much?  Midwest FurFest. Enjoy some freaky mangas and more? Anime Con! Perfect! So enough for everyone, well, everyone with a passion at least!\r\n	There is a reason we reference time from earth’s history, because oh boy is this a long and interesting one. And also one we all once grew up with. But don’t you worry, we are not gonna talk about all of it here. So look it up yourself. The only thing we're gonna mention is that a lot of great food, local cultures and morals clash here everyday. Creating a great mix of the most opposite and colorful humans.\r\n	12000000	6371.00	1.00	420.00	moody  (just like you)	Quite down to earth (get it?). Anyway, enjoy the great variety offered by the dust-dry desserts, the lawful good working conditions and the light reflecting smog all around the cities.\r\n	earth.jpg	#2563eb
3	Mars	A great and cheap offer for everyone who wants to be not too fancy but also wants to have some freedom again, the red planet - or as I like to call it, the orange-dust dooming ball in front of my 25qm naturally not air-conditioned apartment called prison cell! - is a great place to let some dust loose. And that even without having to handle the sticky sweat disadvantages of doing so. So get your suncream and jackets ready. It’s about to drop below zero, baby!\r\n\r\nBelow zero, not the spanish action thriller with a measly audience score of 54%, is our most famous part of Mars history, galactic slavery! Just kidding, we won’t talk about Musk's below zero policy, because that’s already far gone. The only below zero we offer is measured in celsius and the free food we offer of course. For simplicity we're gonna measure that in celsius too.\r\n\r\nDespite being nearly as cheap as my hourly wage, the red giant has a lot to offer. Ever wanted to ride a sand buggy through the endless cold of a far away planet? Now you can & you can do so with style (and a small fee).\r\n\r\nWar is your hobby? Luckily not only the god Mars, but also the planet, offer some great war grounds. Okay, maybe we can’t offer you real weapons while you are on them, but paintball sounds like fun too, am I right, mate?\r\n\r\nYou aren’t a paintball enjoying softy? Well, I have the perfect deal for you too! Our premium deluxe, ultra rare puppy restaurant (with pickup service). Oh and therapy sessions if the belt of your father still flashes your dreams.\r\n\r\nDid I piss you off? Luckily my office is right at Iodgevackgasse 0 Door 3. Just knock at the door and ask for a good time, maybe we can figure your anger out like that ;)\r\n	I really don’t like this part, especially because of the many books I have to read for this. So I won’t do it…\r\nOkay, I will. The penny for every hour I work is worth it after all.\r\nMars - The Red Planet - was always a big interest for our unknowing ancestors, especially for Musk and not mustache enjoyers. With the potential to replace earth one day and therefore leave all our self made problems behind (and this time not behind our grave) a lot of fuss was made. Despite me calling it a fuss, there was progress made, just not enough, especially not after the great Twitter war 2025. And after leaving a few hundred fanboys stranded on Mars the story pretty much ends with a few ruins and rotten bodies. Oh and a quite lit native folk that still exists. They make great corndogs, so just you know.\r\n	2000000	3.39	1.50	50.00	sunny init	Basic, basic & basic! Musk’s holy self-inserted little part of human history. Still, I like it. The food and sand buggies are funny. So take a shot (not literally) & discover the red planet.	mars.jpg	#ea580c
\.


--
-- Data for Name: routes; Type: TABLE DATA; Schema: public; Owner: m_admin
--

COPY public.routes (r_id, name, price, distance, class, person, description) FROM stdin;
\.


--
-- Name: article_a_id_seq; Type: SEQUENCE SET; Schema: public; Owner: m_admin
--

SELECT pg_catalog.setval('public.article_a_id_seq', 3, true);


--
-- Name: merchendise_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: m_admin
--

SELECT pg_catalog.setval('public.merchendise_m_id_seq', 1, false);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: m_admin
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 3, true);


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
-- Name: has fk_r_id; Type: FK CONSTRAINT; Schema: public; Owner: m_admin
--

ALTER TABLE ONLY public.has
    ADD CONSTRAINT fk_r_id FOREIGN KEY (r_id) REFERENCES public.routes(r_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: m_admin
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO m_admin;


--
-- PostgreSQL database dump complete
--

