--
-- PostgreSQL database dump
--

\restrict QcazxTcxNlJkNxE1BVUenbf9kaZv4Uy6eGvhmt81URK58bFj0wNfSSvNE1evGKX

-- Dumped from database version 18.1 (Debian 18.1-1.pgdg12+2)
-- Dumped by pg_dump version 18.1

-- Started on 2025-11-21 01:17:04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: base_de_datos_bootcamp_user
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO base_de_datos_bootcamp_user;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 16429)
-- Name: campus; Type: TABLE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE TABLE public.campus (
    id_campus integer NOT NULL,
    nombre_campus character varying(50) NOT NULL
);


ALTER TABLE public.campus OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 223 (class 1259 OID 16428)
-- Name: campus_id_campus_seq; Type: SEQUENCE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE SEQUENCE public.campus_id_campus_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.campus_id_campus_seq OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 223
-- Name: campus_id_campus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER SEQUENCE public.campus_id_campus_seq OWNED BY public.campus.id_campus;


--
-- TOC entry 234 (class 1259 OID 16515)
-- Name: estudiantes; Type: TABLE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE TABLE public.estudiantes (
    id_estudiante integer NOT NULL,
    nombre character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    id_promocion integer,
    id_campus integer
);


ALTER TABLE public.estudiantes OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 233 (class 1259 OID 16514)
-- Name: estudiantes_id_estudiante_seq; Type: SEQUENCE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE SEQUENCE public.estudiantes_id_estudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estudiantes_id_estudiante_seq OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 233
-- Name: estudiantes_id_estudiante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER SEQUENCE public.estudiantes_id_estudiante_seq OWNED BY public.estudiantes.id_estudiante;


--
-- TOC entry 228 (class 1259 OID 16451)
-- Name: modalidades; Type: TABLE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE TABLE public.modalidades (
    id_modalidad integer NOT NULL,
    nombre_modalidad character varying(50) NOT NULL
);


ALTER TABLE public.modalidades OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 227 (class 1259 OID 16450)
-- Name: modalidades_id_modalidad_seq; Type: SEQUENCE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE SEQUENCE public.modalidades_id_modalidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.modalidades_id_modalidad_seq OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 227
-- Name: modalidades_id_modalidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER SEQUENCE public.modalidades_id_modalidad_seq OWNED BY public.modalidades.id_modalidad;


--
-- TOC entry 238 (class 1259 OID 16553)
-- Name: notas; Type: TABLE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE TABLE public.notas (
    id_nota integer NOT NULL,
    id_estudiante integer,
    id_proyecto integer,
    calificacion character varying(10) NOT NULL
);


ALTER TABLE public.notas OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 237 (class 1259 OID 16552)
-- Name: notas_id_nota_seq; Type: SEQUENCE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE SEQUENCE public.notas_id_nota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notas_id_nota_seq OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 237
-- Name: notas_id_nota_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER SEQUENCE public.notas_id_nota_seq OWNED BY public.notas.id_nota;


--
-- TOC entry 230 (class 1259 OID 16475)
-- Name: profesores; Type: TABLE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE TABLE public.profesores (
    id_profesor integer NOT NULL,
    nombre character varying(100) NOT NULL,
    rol character varying(50),
    id_vertical integer,
    id_campus integer,
    id_modalidad integer
);


ALTER TABLE public.profesores OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 229 (class 1259 OID 16474)
-- Name: profesores_id_profesor_seq; Type: SEQUENCE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE SEQUENCE public.profesores_id_profesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.profesores_id_profesor_seq OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 229
-- Name: profesores_id_profesor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER SEQUENCE public.profesores_id_profesor_seq OWNED BY public.profesores.id_profesor;


--
-- TOC entry 232 (class 1259 OID 16499)
-- Name: promociones; Type: TABLE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE TABLE public.promociones (
    id_promocion integer NOT NULL,
    nombre_promocion character varying(50) NOT NULL,
    fecha_inicio date
);


ALTER TABLE public.promociones OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 231 (class 1259 OID 16498)
-- Name: promociones_id_promocion_seq; Type: SEQUENCE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE SEQUENCE public.promociones_id_promocion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.promociones_id_promocion_seq OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 231
-- Name: promociones_id_promocion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER SEQUENCE public.promociones_id_promocion_seq OWNED BY public.promociones.id_promocion;


--
-- TOC entry 236 (class 1259 OID 16537)
-- Name: proyectos; Type: TABLE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE TABLE public.proyectos (
    id_proyecto integer NOT NULL,
    nombre_proyecto character varying(100) NOT NULL,
    id_vertical integer
);


ALTER TABLE public.proyectos OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 235 (class 1259 OID 16536)
-- Name: proyectos_id_proyecto_seq; Type: SEQUENCE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE SEQUENCE public.proyectos_id_proyecto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proyectos_id_proyecto_seq OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 235
-- Name: proyectos_id_proyecto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER SEQUENCE public.proyectos_id_proyecto_seq OWNED BY public.proyectos.id_proyecto;


--
-- TOC entry 226 (class 1259 OID 16440)
-- Name: verticales; Type: TABLE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE TABLE public.verticales (
    id_vertical integer NOT NULL,
    nombre_vertical character varying(50) NOT NULL
);


ALTER TABLE public.verticales OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 225 (class 1259 OID 16439)
-- Name: verticales_id_vertical_seq; Type: SEQUENCE; Schema: public; Owner: base_de_datos_bootcamp_user
--

CREATE SEQUENCE public.verticales_id_vertical_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.verticales_id_vertical_seq OWNER TO base_de_datos_bootcamp_user;

--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 225
-- Name: verticales_id_vertical_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER SEQUENCE public.verticales_id_vertical_seq OWNED BY public.verticales.id_vertical;


--
-- TOC entry 3268 (class 2604 OID 16432)
-- Name: campus id_campus; Type: DEFAULT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.campus ALTER COLUMN id_campus SET DEFAULT nextval('public.campus_id_campus_seq'::regclass);


--
-- TOC entry 3273 (class 2604 OID 16518)
-- Name: estudiantes id_estudiante; Type: DEFAULT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.estudiantes ALTER COLUMN id_estudiante SET DEFAULT nextval('public.estudiantes_id_estudiante_seq'::regclass);


--
-- TOC entry 3270 (class 2604 OID 16454)
-- Name: modalidades id_modalidad; Type: DEFAULT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.modalidades ALTER COLUMN id_modalidad SET DEFAULT nextval('public.modalidades_id_modalidad_seq'::regclass);


--
-- TOC entry 3275 (class 2604 OID 16556)
-- Name: notas id_nota; Type: DEFAULT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.notas ALTER COLUMN id_nota SET DEFAULT nextval('public.notas_id_nota_seq'::regclass);


--
-- TOC entry 3271 (class 2604 OID 16478)
-- Name: profesores id_profesor; Type: DEFAULT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.profesores ALTER COLUMN id_profesor SET DEFAULT nextval('public.profesores_id_profesor_seq'::regclass);


--
-- TOC entry 3272 (class 2604 OID 16502)
-- Name: promociones id_promocion; Type: DEFAULT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.promociones ALTER COLUMN id_promocion SET DEFAULT nextval('public.promociones_id_promocion_seq'::regclass);


--
-- TOC entry 3274 (class 2604 OID 16540)
-- Name: proyectos id_proyecto; Type: DEFAULT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.proyectos ALTER COLUMN id_proyecto SET DEFAULT nextval('public.proyectos_id_proyecto_seq'::regclass);


--
-- TOC entry 3269 (class 2604 OID 16443)
-- Name: verticales id_vertical; Type: DEFAULT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.verticales ALTER COLUMN id_vertical SET DEFAULT nextval('public.verticales_id_vertical_seq'::regclass);


--
-- TOC entry 3462 (class 0 OID 16429)
-- Dependencies: 224
-- Data for Name: campus; Type: TABLE DATA; Schema: public; Owner: base_de_datos_bootcamp_user
--

COPY public.campus (id_campus, nombre_campus) FROM stdin;
1	Madrid
2	Valencia
\.


--
-- TOC entry 3472 (class 0 OID 16515)
-- Dependencies: 234
-- Data for Name: estudiantes; Type: TABLE DATA; Schema: public; Owner: base_de_datos_bootcamp_user
--

COPY public.estudiantes (id_estudiante, nombre, email, id_promocion, id_campus) FROM stdin;
1	Daniela Guitart	Daniela_Guitart@gmail.com	2	2
2	Ignacio Goicoechea	Ignacio_Goicoechea@gmail.com	1	1
3	Estrella Murillo	Estrella_Murillo@gmail.com	2	2
4	Daniela Falcó	Daniela_Falcó@gmail.com	1	1
5	Cleto Plana	Cleto_Plana@gmail.com	1	1
6	Cleto Montes	Cleto_Montes@gmail.com	2	2
7	Leoncio Tena	Leoncio_Tena@gmail.com	1	1
8	Jafet Casals	Jafet_Casals@gmail.com	1	1
9	Joaquina Asensio	Joaquina_Asensio@gmail.com	2	1
10	Haydée Figueroa	Haydée_Figueroa@gmail.com	2	1
11	Teresa Laguna	Teresa_Laguna@gmail.com	2	2
12	Noemí Vilanova	Noemí_Vilanova@gmail.com	2	2
13	Isabel Ibáñez	Isabel_Ibáñez@gmail.com	2	1
14	Daniel Rosselló	Daniel_Rosselló@gmail.com	2	2
15	Aitana Sebastián	Aitana_Sebastián@gmail.com	1	1
16	Luis Miguel Galvez	Luis_Miguel_Galvez@gmail.com	1	1
17	Pilar Abella	Pilar_Abella@gmail.com	1	1
18	Albino Macias	Albino_Macias@gmail.com	1	1
19	Dolores Valbuena	Dolores_Valbuena@gmail.com	1	1
20	Chita Mancebo	Chita_Mancebo@gmail.com	2	1
21	Herberto Figueras	Herberto_Figueras@gmail.com	1	1
22	Eli Casas	Eli_Casas@gmail.com	1	1
23	Flavia Amador	Flavia_Amador@gmail.com	1	1
24	Carlito Carrión	Carlito_Carrión@gmail.com	2	1
25	Jorge Manzanares	Jorge_Manzanares@gmail.com	1	1
26	Sergio Aguirre	Sergio_Aguirre@gmail.com	2	1
27	Alejandra Vilaplana	Alejandra_Vilaplana@gmail.com	2	2
28	Ester Sánchez	Ester_Sánchez@gmail.com	1	1
29	Anita Heredia	Anita_Heredia@gmail.com	1	1
30	Mireia Cabañas	Mireia_Cabañas@gmail.com	1	1
31	Cristian Sarabia	Cristian_Sarabia@gmail.com	2	1
32	Guillermo Borrego	Guillermo_Borrego@gmail.com	2	1
33	Timoteo Trillo	Timoteo_Trillo@gmail.com	2	2
34	Odalys Torrijos	Odalys_Torrijos@gmail.com	1	1
35	Heraclio Duque	Heraclio_Duque@gmail.com	1	1
36	Abraham Vélez	Abraham_Vélez@gmail.com	1	1
37	Onofre Adadia	Onofre_Adadia@gmail.com	1	1
38	Teodoro Alberola	Teodoro_Alberola@gmail.com	1	1
39	Julie Ferrer	Julie_Ferrer@gmail.com	1	1
40	Maximiliano Menéndez	Maximiliano_Menéndez@gmail.com	1	1
41	Amor Larrañaga	Amor_Larrañaga@gmail.com	1	1
42	Merche Prada	Merche_Prada@gmail.com	1	1
43	Clementina Santos	Clementina_Santos@gmail.com	1	1
44	Rosalina Llanos	Rosalina_Llanos@gmail.com	2	1
45	Loida Arellano	Loida_Arellano@gmail.com	1	1
46	Eduardo Caparrós	Eduardo_Caparrós@gmail.com	1	1
47	Estefanía Valcárcel	Estefanía_Valcárcel@gmail.com	2	2
48	Ricarda Tovar	Ricarda_Tovar@gmail.com	2	2
49	Rita Olivares	Rita_Olivares@gmail.com	2	2
50	Ernesto Uriarte	Ernesto_Uriarte@gmail.com	2	2
51	Desiderio Jordá	Desiderio_Jordá@gmail.com	2	1
52	Marino Castilla	Marino_Castilla@gmail.com	2	2
\.


--
-- TOC entry 3466 (class 0 OID 16451)
-- Dependencies: 228
-- Data for Name: modalidades; Type: TABLE DATA; Schema: public; Owner: base_de_datos_bootcamp_user
--

COPY public.modalidades (id_modalidad, nombre_modalidad) FROM stdin;
1	Presencial
2	Online
\.


--
-- TOC entry 3476 (class 0 OID 16553)
-- Dependencies: 238
-- Data for Name: notas; Type: TABLE DATA; Schema: public; Owner: base_de_datos_bootcamp_user
--

COPY public.notas (id_nota, id_estudiante, id_proyecto, calificacion) FROM stdin;
1	44	1	Apto
2	51	1	No Apto
3	13	1	No Apto
4	31	1	Apto
5	9	1	No Apto
6	20	1	No Apto
7	10	1	Apto
8	24	1	Apto
9	26	1	Apto
10	32	1	Apto
11	22	1	Apto
12	29	1	Apto
13	40	1	Apto
14	36	1	Apto
15	4	1	Apto
16	43	1	Apto
17	2	1	Apto
18	46	1	No Apto
19	34	1	No Apto
20	7	1	Apto
21	17	1	Apto
22	42	1	Apto
23	37	1	Apto
24	25	1	Apto
25	8	1	Apto
26	44	2	Apto
27	51	2	Apto
28	13	2	Apto
29	31	2	Apto
30	9	2	No Apto
31	20	2	Apto
32	10	2	Apto
33	24	2	No Apto
34	26	2	No Apto
35	32	2	No Apto
36	22	2	Apto
37	29	2	Apto
38	40	2	No Apto
39	36	2	No Apto
40	4	2	Apto
41	43	2	No Apto
42	2	2	Apto
43	46	2	Apto
44	34	2	Apto
45	7	2	Apto
46	17	2	No Apto
47	42	2	No Apto
48	37	2	Apto
49	25	2	No Apto
50	8	2	No Apto
51	44	3	Apto
52	51	3	No Apto
53	13	3	No Apto
54	31	3	No Apto
55	9	3	Apto
56	20	3	No Apto
57	10	3	Apto
58	24	3	Apto
59	26	3	Apto
60	32	3	No Apto
61	22	3	Apto
62	29	3	Apto
63	40	3	Apto
64	36	3	No Apto
65	4	3	Apto
66	43	3	Apto
67	2	3	Apto
68	46	3	Apto
69	34	3	Apto
70	7	3	Apto
71	17	3	Apto
72	42	3	No Apto
73	37	3	Apto
74	25	3	Apto
75	8	3	Apto
76	44	4	Apto
77	51	4	No Apto
78	13	4	Apto
79	31	4	Apto
80	9	4	Apto
81	20	4	Apto
82	10	4	Apto
83	24	4	Apto
84	26	4	Apto
85	32	4	Apto
86	22	4	Apto
87	29	4	Apto
88	40	4	Apto
89	36	4	Apto
90	4	4	Apto
91	43	4	Apto
92	2	4	No Apto
93	46	4	Apto
94	34	4	Apto
95	7	4	Apto
96	17	4	Apto
97	42	4	Apto
98	37	4	No Apto
99	25	4	Apto
100	8	4	Apto
101	44	5	Apto
102	51	5	Apto
103	13	5	Apto
104	31	5	Apto
105	9	5	Apto
106	20	5	Apto
107	10	5	Apto
108	24	5	Apto
109	26	5	No Apto
110	32	5	No Apto
111	22	5	Apto
112	29	5	Apto
113	40	5	Apto
114	36	5	Apto
115	4	5	Apto
116	43	5	Apto
117	2	5	Apto
118	46	5	Apto
119	34	5	Apto
120	7	5	Apto
121	17	5	Apto
122	42	5	No Apto
123	37	5	Apto
124	25	5	Apto
125	8	5	Apto
126	12	6	Apto
127	47	6	Apto
128	52	6	No Apto
129	6	6	Apto
130	49	6	No Apto
131	14	6	No Apto
132	27	6	No Apto
133	48	6	Apto
134	33	6	No Apto
135	1	6	Apto
136	50	6	Apto
137	3	6	Apto
138	11	6	Apto
139	21	6	Apto
140	35	6	Apto
141	45	6	Apto
142	16	6	No Apto
143	28	6	No Apto
144	18	6	No Apto
145	23	6	Apto
146	30	6	No Apto
147	39	6	No Apto
148	19	6	Apto
149	15	6	Apto
150	5	6	Apto
151	38	6	No Apto
152	41	6	Apto
153	12	7	No Apto
154	47	7	Apto
155	52	7	No Apto
156	6	7	Apto
157	49	7	No Apto
158	14	7	No Apto
159	27	7	No Apto
160	48	7	Apto
161	33	7	Apto
162	1	7	No Apto
163	50	7	Apto
164	3	7	Apto
165	11	7	Apto
166	21	7	Apto
167	35	7	Apto
168	45	7	Apto
169	16	7	Apto
170	28	7	Apto
171	18	7	Apto
172	23	7	Apto
173	30	7	Apto
174	39	7	No Apto
175	19	7	Apto
176	15	7	No Apto
177	5	7	No Apto
178	38	7	No Apto
179	41	7	Apto
180	12	8	No Apto
181	47	8	No Apto
182	52	8	Apto
183	6	8	No Apto
184	49	8	No Apto
185	14	8	Apto
186	27	8	No Apto
187	48	8	Apto
188	33	8	Apto
189	1	8	No Apto
190	50	8	Apto
191	3	8	No Apto
192	11	8	Apto
193	21	8	Apto
194	35	8	No Apto
195	45	8	Apto
196	16	8	Apto
197	28	8	Apto
198	18	8	Apto
199	23	8	No Apto
200	30	8	Apto
201	39	8	No Apto
202	19	8	Apto
203	15	8	Apto
204	5	8	Apto
205	38	8	Apto
206	41	8	Apto
207	12	9	Apto
208	47	9	No Apto
209	52	9	No Apto
210	6	9	Apto
211	49	9	Apto
212	14	9	No Apto
213	27	9	Apto
214	48	9	Apto
215	33	9	Apto
216	1	9	Apto
217	50	9	Apto
218	3	9	Apto
219	11	9	Apto
220	21	9	Apto
221	35	9	No Apto
222	45	9	Apto
223	16	9	Apto
224	28	9	No Apto
225	18	9	Apto
226	23	9	Apto
227	30	9	Apto
228	39	9	Apto
229	19	9	Apto
230	15	9	No Apto
231	5	9	No Apto
232	38	9	No Apto
233	41	9	Apto
234	12	10	Apto
235	47	10	Apto
236	52	10	No Apto
237	6	10	Apto
238	49	10	Apto
239	14	10	No Apto
240	27	10	Apto
241	48	10	Apto
242	33	10	No Apto
243	1	10	Apto
244	50	10	Apto
245	3	10	Apto
246	11	10	Apto
247	21	10	Apto
248	35	10	No Apto
249	45	10	Apto
250	16	10	Apto
251	28	10	Apto
252	18	10	Apto
253	23	10	Apto
254	30	10	Apto
255	39	10	No Apto
256	19	10	No Apto
257	15	10	Apto
258	5	10	Apto
259	38	10	Apto
260	41	10	No Apto
\.


--
-- TOC entry 3468 (class 0 OID 16475)
-- Dependencies: 230
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: base_de_datos_bootcamp_user
--

COPY public.profesores (id_profesor, nombre, rol, id_vertical, id_campus, id_modalidad) FROM stdin;
1	Noa Yáñez	TA	1	1	1
2	Saturnina Benitez	TA	1	1	1
3	Anna Feliu	TA	2	1	1
4	Rosalva Ayuso	TA	2	2	1
5	Ana Sofía Ferrer	TA	2	2	1
6	Angélica Corral	TA	2	1	1
7	Ariel Lledó	TA	1	1	1
8	Mario Prats	LI	2	2	2
9	Luis Ángel Suárez	LI	2	1	2
10	María Dolores Diaz	LI	1	1	2
\.


--
-- TOC entry 3470 (class 0 OID 16499)
-- Dependencies: 232
-- Data for Name: promociones; Type: TABLE DATA; Schema: public; Owner: base_de_datos_bootcamp_user
--

COPY public.promociones (id_promocion, nombre_promocion, fecha_inicio) FROM stdin;
1	Septiembre 2023	2023-09-18
2	Febrero 2024	2024-02-12
\.


--
-- TOC entry 3474 (class 0 OID 16537)
-- Dependencies: 236
-- Data for Name: proyectos; Type: TABLE DATA; Schema: public; Owner: base_de_datos_bootcamp_user
--

COPY public.proyectos (id_proyecto, nombre_proyecto, id_vertical) FROM stdin;
1	Proyecto_HLF	1
2	Proyecto_EDA	1
3	Proyecto_BBDD	1
4	Proyecto_ML	1
5	Proyecto_Deployment	1
6	Proyecto_WebDev	2
7	Proyecto_FrontEnd	2
8	Proyecto_Backend	2
9	Proyecto_React	2
10	Proyecto_FullSatck	2
\.


--
-- TOC entry 3464 (class 0 OID 16440)
-- Dependencies: 226
-- Data for Name: verticales; Type: TABLE DATA; Schema: public; Owner: base_de_datos_bootcamp_user
--

COPY public.verticales (id_vertical, nombre_vertical) FROM stdin;
1	DS
2	FS
\.


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 223
-- Name: campus_id_campus_seq; Type: SEQUENCE SET; Schema: public; Owner: base_de_datos_bootcamp_user
--

SELECT pg_catalog.setval('public.campus_id_campus_seq', 2, true);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 233
-- Name: estudiantes_id_estudiante_seq; Type: SEQUENCE SET; Schema: public; Owner: base_de_datos_bootcamp_user
--

SELECT pg_catalog.setval('public.estudiantes_id_estudiante_seq', 52, true);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 227
-- Name: modalidades_id_modalidad_seq; Type: SEQUENCE SET; Schema: public; Owner: base_de_datos_bootcamp_user
--

SELECT pg_catalog.setval('public.modalidades_id_modalidad_seq', 2, true);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 237
-- Name: notas_id_nota_seq; Type: SEQUENCE SET; Schema: public; Owner: base_de_datos_bootcamp_user
--

SELECT pg_catalog.setval('public.notas_id_nota_seq', 260, true);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 229
-- Name: profesores_id_profesor_seq; Type: SEQUENCE SET; Schema: public; Owner: base_de_datos_bootcamp_user
--

SELECT pg_catalog.setval('public.profesores_id_profesor_seq', 10, true);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 231
-- Name: promociones_id_promocion_seq; Type: SEQUENCE SET; Schema: public; Owner: base_de_datos_bootcamp_user
--

SELECT pg_catalog.setval('public.promociones_id_promocion_seq', 2, true);


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 235
-- Name: proyectos_id_proyecto_seq; Type: SEQUENCE SET; Schema: public; Owner: base_de_datos_bootcamp_user
--

SELECT pg_catalog.setval('public.proyectos_id_proyecto_seq', 10, true);


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 225
-- Name: verticales_id_vertical_seq; Type: SEQUENCE SET; Schema: public; Owner: base_de_datos_bootcamp_user
--

SELECT pg_catalog.setval('public.verticales_id_vertical_seq', 2, true);


--
-- TOC entry 3277 (class 2606 OID 16438)
-- Name: campus campus_nombre_campus_key; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.campus
    ADD CONSTRAINT campus_nombre_campus_key UNIQUE (nombre_campus);


--
-- TOC entry 3279 (class 2606 OID 16436)
-- Name: campus campus_pkey; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.campus
    ADD CONSTRAINT campus_pkey PRIMARY KEY (id_campus);


--
-- TOC entry 3295 (class 2606 OID 16525)
-- Name: estudiantes estudiantes_email_key; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_email_key UNIQUE (email);


--
-- TOC entry 3297 (class 2606 OID 16523)
-- Name: estudiantes estudiantes_pkey; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (id_estudiante);


--
-- TOC entry 3285 (class 2606 OID 16460)
-- Name: modalidades modalidades_nombre_modalidad_key; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.modalidades
    ADD CONSTRAINT modalidades_nombre_modalidad_key UNIQUE (nombre_modalidad);


--
-- TOC entry 3287 (class 2606 OID 16458)
-- Name: modalidades modalidades_pkey; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.modalidades
    ADD CONSTRAINT modalidades_pkey PRIMARY KEY (id_modalidad);


--
-- TOC entry 3303 (class 2606 OID 16563)
-- Name: notas notas_id_estudiante_id_proyecto_key; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.notas
    ADD CONSTRAINT notas_id_estudiante_id_proyecto_key UNIQUE (id_estudiante, id_proyecto);


--
-- TOC entry 3305 (class 2606 OID 16561)
-- Name: notas notas_pkey; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.notas
    ADD CONSTRAINT notas_pkey PRIMARY KEY (id_nota);


--
-- TOC entry 3289 (class 2606 OID 16482)
-- Name: profesores profesores_pkey; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (id_profesor);


--
-- TOC entry 3291 (class 2606 OID 16508)
-- Name: promociones promociones_nombre_promocion_key; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.promociones
    ADD CONSTRAINT promociones_nombre_promocion_key UNIQUE (nombre_promocion);


--
-- TOC entry 3293 (class 2606 OID 16506)
-- Name: promociones promociones_pkey; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.promociones
    ADD CONSTRAINT promociones_pkey PRIMARY KEY (id_promocion);


--
-- TOC entry 3299 (class 2606 OID 16546)
-- Name: proyectos proyectos_nombre_proyecto_key; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.proyectos
    ADD CONSTRAINT proyectos_nombre_proyecto_key UNIQUE (nombre_proyecto);


--
-- TOC entry 3301 (class 2606 OID 16544)
-- Name: proyectos proyectos_pkey; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.proyectos
    ADD CONSTRAINT proyectos_pkey PRIMARY KEY (id_proyecto);


--
-- TOC entry 3281 (class 2606 OID 16449)
-- Name: verticales verticales_nombre_vertical_key; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.verticales
    ADD CONSTRAINT verticales_nombre_vertical_key UNIQUE (nombre_vertical);


--
-- TOC entry 3283 (class 2606 OID 16447)
-- Name: verticales verticales_pkey; Type: CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.verticales
    ADD CONSTRAINT verticales_pkey PRIMARY KEY (id_vertical);


--
-- TOC entry 3309 (class 2606 OID 16531)
-- Name: estudiantes estudiantes_id_campus_fkey; Type: FK CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_id_campus_fkey FOREIGN KEY (id_campus) REFERENCES public.campus(id_campus);


--
-- TOC entry 3310 (class 2606 OID 16526)
-- Name: estudiantes estudiantes_id_promocion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_id_promocion_fkey FOREIGN KEY (id_promocion) REFERENCES public.promociones(id_promocion);


--
-- TOC entry 3312 (class 2606 OID 16564)
-- Name: notas notas_id_estudiante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.notas
    ADD CONSTRAINT notas_id_estudiante_fkey FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_estudiante);


--
-- TOC entry 3313 (class 2606 OID 16569)
-- Name: notas notas_id_proyecto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.notas
    ADD CONSTRAINT notas_id_proyecto_fkey FOREIGN KEY (id_proyecto) REFERENCES public.proyectos(id_proyecto);


--
-- TOC entry 3306 (class 2606 OID 16488)
-- Name: profesores profesores_id_campus_fkey; Type: FK CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_id_campus_fkey FOREIGN KEY (id_campus) REFERENCES public.campus(id_campus);


--
-- TOC entry 3307 (class 2606 OID 16493)
-- Name: profesores profesores_id_modalidad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_id_modalidad_fkey FOREIGN KEY (id_modalidad) REFERENCES public.modalidades(id_modalidad);


--
-- TOC entry 3308 (class 2606 OID 16483)
-- Name: profesores profesores_id_vertical_fkey; Type: FK CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_id_vertical_fkey FOREIGN KEY (id_vertical) REFERENCES public.verticales(id_vertical);


--
-- TOC entry 3311 (class 2606 OID 16547)
-- Name: proyectos proyectos_id_vertical_fkey; Type: FK CONSTRAINT; Schema: public; Owner: base_de_datos_bootcamp_user
--

ALTER TABLE ONLY public.proyectos
    ADD CONSTRAINT proyectos_id_vertical_fkey FOREIGN KEY (id_vertical) REFERENCES public.verticales(id_vertical);


--
-- TOC entry 2092 (class 826 OID 16391)
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO base_de_datos_bootcamp_user;


--
-- TOC entry 2094 (class 826 OID 16393)
-- Name: DEFAULT PRIVILEGES FOR TYPES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO base_de_datos_bootcamp_user;


--
-- TOC entry 2093 (class 826 OID 16392)
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO base_de_datos_bootcamp_user;


--
-- TOC entry 2091 (class 826 OID 16390)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES TO base_de_datos_bootcamp_user;


-- Completed on 2025-11-21 01:17:08

--
-- PostgreSQL database dump complete
--

\unrestrict QcazxTcxNlJkNxE1BVUenbf9kaZv4Uy6eGvhmt81URK58bFj0wNfSSvNE1evGKX

