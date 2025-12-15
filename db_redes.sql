--
-- PostgreSQL database dump
--

\restrict QSIMDJbeyimwECWewTHvFRWbGCdKXvQiSZrqXOHghg0NhH6ptwmOOmdlSnA6Bdw

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-12-15 11:25:48

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 36093)
-- Name: cache; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO postgres;

--
-- TOC entry 5545 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE cache; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.cache IS 'Cache de Laravel';


--
-- TOC entry 220 (class 1259 OID 36100)
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache_locks OWNER TO postgres;

--
-- TOC entry 5546 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE cache_locks; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.cache_locks IS 'Locks de cache de Laravel';


--
-- TOC entry 263 (class 1259 OID 43719)
-- Name: categorias_mega_eventos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categorias_mega_eventos (
    id bigint NOT NULL,
    codigo character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    icono character varying(50),
    color character varying(20) DEFAULT 'primary'::character varying NOT NULL,
    orden integer DEFAULT 0 NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.categorias_mega_eventos OWNER TO postgres;

--
-- TOC entry 5547 (class 0 OID 0)
-- Dependencies: 263
-- Name: TABLE categorias_mega_eventos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.categorias_mega_eventos IS 'Catálogo de categorías de mega eventos';


--
-- TOC entry 5548 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN categorias_mega_eventos.codigo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.categorias_mega_eventos.codigo IS 'Código único de la categoría (ej: social, cultural)';


--
-- TOC entry 5549 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN categorias_mega_eventos.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.categorias_mega_eventos.nombre IS 'Nombre de la categoría';


--
-- TOC entry 5550 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN categorias_mega_eventos.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.categorias_mega_eventos.descripcion IS 'Descripción de la categoría';


--
-- TOC entry 5551 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN categorias_mega_eventos.icono; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.categorias_mega_eventos.icono IS 'Clase de icono FontAwesome';


--
-- TOC entry 5552 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN categorias_mega_eventos.color; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.categorias_mega_eventos.color IS 'Color del badge';


--
-- TOC entry 5553 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN categorias_mega_eventos.orden; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.categorias_mega_eventos.orden IS 'Orden de visualización';


--
-- TOC entry 5554 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN categorias_mega_eventos.activo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.categorias_mega_eventos.activo IS 'Si la categoría está activa';


--
-- TOC entry 262 (class 1259 OID 43718)
-- Name: categorias_mega_eventos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categorias_mega_eventos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categorias_mega_eventos_id_seq OWNER TO postgres;

--
-- TOC entry 5555 (class 0 OID 0)
-- Dependencies: 262
-- Name: categorias_mega_eventos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categorias_mega_eventos_id_seq OWNED BY public.categorias_mega_eventos.id;


--
-- TOC entry 265 (class 1259 OID 43735)
-- Name: ciudades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciudades (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    codigo_postal character varying(20),
    departamento character varying(100),
    pais character varying(100) DEFAULT 'Bolivia'::character varying NOT NULL,
    lat numeric(10,7),
    lng numeric(10,7),
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.ciudades OWNER TO postgres;

--
-- TOC entry 5556 (class 0 OID 0)
-- Dependencies: 265
-- Name: TABLE ciudades; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.ciudades IS 'Catálogo de ciudades';


--
-- TOC entry 5557 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN ciudades.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.ciudades.nombre IS 'Nombre de la ciudad';


--
-- TOC entry 5558 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN ciudades.codigo_postal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.ciudades.codigo_postal IS 'Código postal';


--
-- TOC entry 5559 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN ciudades.departamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.ciudades.departamento IS 'Departamento o provincia';


--
-- TOC entry 5560 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN ciudades.pais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.ciudades.pais IS 'País';


--
-- TOC entry 5561 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN ciudades.lat; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.ciudades.lat IS 'Latitud';


--
-- TOC entry 5562 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN ciudades.lng; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.ciudades.lng IS 'Longitud';


--
-- TOC entry 5563 (class 0 OID 0)
-- Dependencies: 265
-- Name: COLUMN ciudades.activo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.ciudades.activo IS 'Si la ciudad está activa';


--
-- TOC entry 264 (class 1259 OID 43734)
-- Name: ciudades_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ciudades_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ciudades_id_seq OWNER TO postgres;

--
-- TOC entry 5564 (class 0 OID 0)
-- Dependencies: 264
-- Name: ciudades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ciudades_id_seq OWNED BY public.ciudades.id;


--
-- TOC entry 231 (class 1259 OID 36175)
-- Name: empresas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empresas (
    user_id bigint NOT NULL,
    nombre_empresa character varying(100) NOT NULL,
    "NIT" character varying(20),
    telefono character varying(20),
    direccion character varying(150),
    sitio_web character varying(150),
    descripcion text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    foto_perfil character varying(500)
);


ALTER TABLE public.empresas OWNER TO postgres;

--
-- TOC entry 5565 (class 0 OID 0)
-- Dependencies: 231
-- Name: TABLE empresas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.empresas IS 'Perfil extendido de usuarios tipo Empresa. Relación 1:1 con usuarios';


--
-- TOC entry 273 (class 1259 OID 43797)
-- Name: estados_evento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estados_evento (
    id bigint NOT NULL,
    codigo character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    tipo character varying(255) DEFAULT 'ambos'::character varying NOT NULL,
    color character varying(20) DEFAULT 'secondary'::character varying NOT NULL,
    icono character varying(50),
    orden integer DEFAULT 0 NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    CONSTRAINT estados_evento_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['evento'::character varying, 'mega_evento'::character varying, 'ambos'::character varying])::text[])))
);


ALTER TABLE public.estados_evento OWNER TO postgres;

--
-- TOC entry 5566 (class 0 OID 0)
-- Dependencies: 273
-- Name: TABLE estados_evento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.estados_evento IS 'Catálogo de estados de eventos (borrador, publicado, finalizado, cancelado)';


--
-- TOC entry 5567 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN estados_evento.codigo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_evento.codigo IS 'Código único del estado (ej: borrador, publicado)';


--
-- TOC entry 5568 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN estados_evento.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_evento.nombre IS 'Nombre del estado';


--
-- TOC entry 5569 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN estados_evento.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_evento.descripcion IS 'Descripción del estado';


--
-- TOC entry 5570 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN estados_evento.tipo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_evento.tipo IS 'Tipo de evento al que aplica';


--
-- TOC entry 5571 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN estados_evento.color; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_evento.color IS 'Color del badge';


--
-- TOC entry 5572 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN estados_evento.icono; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_evento.icono IS 'Clase de icono FontAwesome';


--
-- TOC entry 5573 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN estados_evento.orden; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_evento.orden IS 'Orden de visualización';


--
-- TOC entry 5574 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN estados_evento.activo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_evento.activo IS 'Si el estado está activo';


--
-- TOC entry 272 (class 1259 OID 43796)
-- Name: estados_evento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estados_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estados_evento_id_seq OWNER TO postgres;

--
-- TOC entry 5575 (class 0 OID 0)
-- Dependencies: 272
-- Name: estados_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estados_evento_id_seq OWNED BY public.estados_evento.id;


--
-- TOC entry 269 (class 1259 OID 43766)
-- Name: estados_participacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estados_participacion (
    id bigint NOT NULL,
    codigo character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    color character varying(20) DEFAULT 'secondary'::character varying NOT NULL,
    icono character varying(50),
    orden integer DEFAULT 0 NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.estados_participacion OWNER TO postgres;

--
-- TOC entry 5576 (class 0 OID 0)
-- Dependencies: 269
-- Name: TABLE estados_participacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.estados_participacion IS 'Catálogo de estados de participación (inscrito, confirmado, asistió, ausente)';


--
-- TOC entry 5577 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN estados_participacion.codigo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_participacion.codigo IS 'Código único del estado (ej: pendiente, aprobada)';


--
-- TOC entry 5578 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN estados_participacion.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_participacion.nombre IS 'Nombre del estado';


--
-- TOC entry 5579 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN estados_participacion.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_participacion.descripcion IS 'Descripción del estado';


--
-- TOC entry 5580 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN estados_participacion.color; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_participacion.color IS 'Color del badge';


--
-- TOC entry 5581 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN estados_participacion.icono; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_participacion.icono IS 'Clase de icono FontAwesome';


--
-- TOC entry 5582 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN estados_participacion.orden; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_participacion.orden IS 'Orden de visualización';


--
-- TOC entry 5583 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN estados_participacion.activo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados_participacion.activo IS 'Si el estado está activo';


--
-- TOC entry 268 (class 1259 OID 43765)
-- Name: estados_participacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estados_participacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estados_participacion_id_seq OWNER TO postgres;

--
-- TOC entry 5584 (class 0 OID 0)
-- Dependencies: 268
-- Name: estados_participacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estados_participacion_id_seq OWNED BY public.estados_participacion.id;


--
-- TOC entry 240 (class 1259 OID 36249)
-- Name: evento_auspiciadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evento_auspiciadores (
    id bigint NOT NULL,
    evento_id bigint NOT NULL,
    empresa_id bigint,
    tipo_aporte character varying(100),
    monto numeric(10,2),
    descripcion text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.evento_auspiciadores OWNER TO postgres;

--
-- TOC entry 5585 (class 0 OID 0)
-- Dependencies: 240
-- Name: TABLE evento_auspiciadores; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.evento_auspiciadores IS 'Relación N:M entre eventos y empresas auspiciadoras';


--
-- TOC entry 239 (class 1259 OID 36248)
-- Name: evento_auspiciadores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evento_auspiciadores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.evento_auspiciadores_id_seq OWNER TO postgres;

--
-- TOC entry 5586 (class 0 OID 0)
-- Dependencies: 239
-- Name: evento_auspiciadores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evento_auspiciadores_id_seq OWNED BY public.evento_auspiciadores.id;


--
-- TOC entry 279 (class 1259 OID 43982)
-- Name: evento_compartidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evento_compartidos (
    id bigint NOT NULL,
    evento_id bigint NOT NULL,
    externo_id bigint,
    nombres character varying(100),
    apellidos character varying(100),
    email character varying(255),
    metodo character varying(50) DEFAULT 'link'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    ip_address character varying(45),
    user_agent text
);


ALTER TABLE public.evento_compartidos OWNER TO postgres;

--
-- TOC entry 5587 (class 0 OID 0)
-- Dependencies: 279
-- Name: TABLE evento_compartidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.evento_compartidos IS 'Compartidos de eventos por usuarios';


--
-- TOC entry 278 (class 1259 OID 43981)
-- Name: evento_compartidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evento_compartidos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.evento_compartidos_id_seq OWNER TO postgres;

--
-- TOC entry 5588 (class 0 OID 0)
-- Dependencies: 278
-- Name: evento_compartidos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evento_compartidos_id_seq OWNED BY public.evento_compartidos.id;


--
-- TOC entry 257 (class 1259 OID 43659)
-- Name: evento_empresas_participantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evento_empresas_participantes (
    id bigint NOT NULL,
    evento_id bigint NOT NULL,
    empresa_id bigint NOT NULL,
    estado character varying(50) DEFAULT 'asignada'::character varying NOT NULL,
    asistio boolean DEFAULT false NOT NULL,
    tipo_colaboracion text,
    descripcion_colaboracion text,
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.evento_empresas_participantes OWNER TO postgres;

--
-- TOC entry 5589 (class 0 OID 0)
-- Dependencies: 257
-- Name: TABLE evento_empresas_participantes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.evento_empresas_participantes IS 'Relación N:M entre eventos y empresas participantes';


--
-- TOC entry 256 (class 1259 OID 43658)
-- Name: evento_empresas_participantes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evento_empresas_participantes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.evento_empresas_participantes_id_seq OWNER TO postgres;

--
-- TOC entry 5590 (class 0 OID 0)
-- Dependencies: 256
-- Name: evento_empresas_participantes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evento_empresas_participantes_id_seq OWNED BY public.evento_empresas_participantes.id;


--
-- TOC entry 242 (class 1259 OID 36268)
-- Name: evento_integrantes_externos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evento_integrantes_externos (
    id bigint NOT NULL,
    evento_id bigint NOT NULL,
    integrante_externo_id bigint NOT NULL,
    rol character varying(100),
    confirmado boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.evento_integrantes_externos OWNER TO postgres;

--
-- TOC entry 5591 (class 0 OID 0)
-- Dependencies: 242
-- Name: TABLE evento_integrantes_externos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.evento_integrantes_externos IS 'Integrantes internos asignados a eventos';


--
-- TOC entry 241 (class 1259 OID 36267)
-- Name: evento_integrantes_externos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evento_integrantes_externos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.evento_integrantes_externos_id_seq OWNER TO postgres;

--
-- TOC entry 5592 (class 0 OID 0)
-- Dependencies: 241
-- Name: evento_integrantes_externos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evento_integrantes_externos_id_seq OWNED BY public.evento_integrantes_externos.id;


--
-- TOC entry 251 (class 1259 OID 36387)
-- Name: evento_participaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evento_participaciones (
    id bigint NOT NULL,
    evento_id bigint NOT NULL,
    externo_id bigint NOT NULL,
    asistio boolean DEFAULT false NOT NULL,
    puntos integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    estado character varying(20) DEFAULT 'pendiente'::character varying NOT NULL,
    estado_participacion_id bigint,
    ticket_codigo character varying(100),
    checkin_at timestamp(0) without time zone,
    checkout_at timestamp(0) without time zone,
    modo_asistencia character varying(50),
    observaciones text,
    registrado_por bigint,
    estado_asistencia character varying(50) DEFAULT 'no_asistido'::character varying NOT NULL,
    ip_registro character varying(45),
    ubicacion_aproximada character varying(255),
    fecha_modificacion timestamp(0) without time zone,
    usuario_modifico bigint,
    comentario_asistencia text,
    qr_descargado_at timestamp without time zone
);


ALTER TABLE public.evento_participaciones OWNER TO postgres;

--
-- TOC entry 5593 (class 0 OID 0)
-- Dependencies: 251
-- Name: TABLE evento_participaciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.evento_participaciones IS 'Participaciones de usuarios registrados en eventos. Tabla intermedia N:M entre usuarios y eventos';


--
-- TOC entry 250 (class 1259 OID 36386)
-- Name: evento_participaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evento_participaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.evento_participaciones_id_seq OWNER TO postgres;

--
-- TOC entry 5594 (class 0 OID 0)
-- Dependencies: 250
-- Name: evento_participaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evento_participaciones_id_seq OWNED BY public.evento_participaciones.id;


--
-- TOC entry 277 (class 1259 OID 43954)
-- Name: evento_participantes_no_registrados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evento_participantes_no_registrados (
    id bigint NOT NULL,
    evento_id bigint NOT NULL,
    nombres character varying(100) NOT NULL,
    apellidos character varying(100) NOT NULL,
    email character varying(255),
    telefono character varying(20),
    estado character varying(50) DEFAULT 'pendiente'::character varying NOT NULL,
    asistio boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    ticket_codigo character varying(100)
);


ALTER TABLE public.evento_participantes_no_registrados OWNER TO postgres;

--
-- TOC entry 5595 (class 0 OID 0)
-- Dependencies: 277
-- Name: TABLE evento_participantes_no_registrados; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.evento_participantes_no_registrados IS 'Participantes no registrados (invitados) en eventos';


--
-- TOC entry 276 (class 1259 OID 43953)
-- Name: evento_participantes_no_registrados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evento_participantes_no_registrados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.evento_participantes_no_registrados_id_seq OWNER TO postgres;

--
-- TOC entry 5596 (class 0 OID 0)
-- Dependencies: 276
-- Name: evento_participantes_no_registrados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evento_participantes_no_registrados_id_seq OWNED BY public.evento_participantes_no_registrados.id;


--
-- TOC entry 236 (class 1259 OID 36217)
-- Name: evento_patrocinadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evento_patrocinadores (
    id bigint NOT NULL,
    evento_id bigint NOT NULL,
    empresa_id bigint,
    tipo_aporte character varying(100),
    monto numeric(10,2),
    descripcion text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.evento_patrocinadores OWNER TO postgres;

--
-- TOC entry 5597 (class 0 OID 0)
-- Dependencies: 236
-- Name: TABLE evento_patrocinadores; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.evento_patrocinadores IS 'Relación N:M entre eventos y empresas patrocinadoras';


--
-- TOC entry 235 (class 1259 OID 36216)
-- Name: evento_patrocinadores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evento_patrocinadores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.evento_patrocinadores_id_seq OWNER TO postgres;

--
-- TOC entry 5598 (class 0 OID 0)
-- Dependencies: 235
-- Name: evento_patrocinadores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evento_patrocinadores_id_seq OWNED BY public.evento_patrocinadores.id;


--
-- TOC entry 253 (class 1259 OID 36414)
-- Name: evento_reacciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evento_reacciones (
    id bigint NOT NULL,
    evento_id bigint NOT NULL,
    externo_id bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    nombres character varying(100),
    apellidos character varying(100),
    email character varying(255)
);


ALTER TABLE public.evento_reacciones OWNER TO postgres;

--
-- TOC entry 5599 (class 0 OID 0)
-- Dependencies: 253
-- Name: TABLE evento_reacciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.evento_reacciones IS 'Reacciones de usuarios a eventos';


--
-- TOC entry 252 (class 1259 OID 36413)
-- Name: evento_reacciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evento_reacciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.evento_reacciones_id_seq OWNER TO postgres;

--
-- TOC entry 5600 (class 0 OID 0)
-- Dependencies: 252
-- Name: evento_reacciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evento_reacciones_id_seq OWNED BY public.evento_reacciones.id;


--
-- TOC entry 234 (class 1259 OID 36200)
-- Name: eventos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.eventos (
    id bigint NOT NULL,
    ong_id bigint NOT NULL,
    titulo character varying(255) NOT NULL,
    descripcion text,
    tipo_evento character varying(100) NOT NULL,
    fecha_inicio timestamp(0) without time zone NOT NULL,
    fecha_fin timestamp(0) without time zone,
    fecha_limite_inscripcion timestamp(0) without time zone,
    capacidad_maxima integer,
    inscripcion_abierta boolean DEFAULT true NOT NULL,
    estado character varying(255) DEFAULT 'borrador'::character varying NOT NULL,
    lat numeric(10,7),
    lng numeric(10,7),
    direccion character varying(255),
    ciudad character varying(255),
    imagenes json,
    patrocinadores json,
    auspiciadores json,
    invitados json,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tipo_evento_id bigint,
    ciudad_id bigint,
    lugar_id bigint,
    estado_evento_id bigint,
    fecha_finalizacion timestamp(0) without time zone,
    visualizaciones integer DEFAULT 0 NOT NULL,
    CONSTRAINT eventos_estado_check CHECK (((estado)::text = ANY ((ARRAY['borrador'::character varying, 'publicado'::character varying, 'cancelado'::character varying])::text[])))
);


ALTER TABLE public.eventos OWNER TO postgres;

--
-- TOC entry 5601 (class 0 OID 0)
-- Dependencies: 234
-- Name: TABLE eventos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.eventos IS 'Eventos individuales del sistema. Tabla central del módulo de eventos';


--
-- TOC entry 5602 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN eventos.fecha_finalizacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.eventos.fecha_finalizacion IS 'Fecha y hora exacta en que el evento fue marcado como finalizado automáticamente';


--
-- TOC entry 233 (class 1259 OID 36199)
-- Name: eventos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.eventos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.eventos_id_seq OWNER TO postgres;

--
-- TOC entry 5603 (class 0 OID 0)
-- Dependencies: 233
-- Name: eventos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.eventos_id_seq OWNED BY public.eventos.id;


--
-- TOC entry 225 (class 1259 OID 36125)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- TOC entry 5604 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE failed_jobs; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.failed_jobs IS 'Trabajos fallidos de Laravel';


--
-- TOC entry 224 (class 1259 OID 36124)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 5605 (class 0 OID 0)
-- Dependencies: 224
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 232 (class 1259 OID 36187)
-- Name: integrantes_externos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.integrantes_externos (
    user_id bigint NOT NULL,
    nombres character varying(100) NOT NULL,
    apellidos character varying(100),
    fecha_nacimiento date,
    email character varying(100),
    phone_number character varying(30),
    descripcion text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    foto_perfil character varying(500)
);


ALTER TABLE public.integrantes_externos OWNER TO postgres;

--
-- TOC entry 5606 (class 0 OID 0)
-- Dependencies: 232
-- Name: TABLE integrantes_externos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.integrantes_externos IS 'Perfil extendido de usuarios externos/voluntarios. Relación 1:1 con usuarios';


--
-- TOC entry 238 (class 1259 OID 36236)
-- Name: invitados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invitados (
    id bigint NOT NULL,
    evento_id bigint NOT NULL,
    nombre character varying(150) NOT NULL,
    correo character varying(100),
    telefono character varying(20),
    cargo character varying(100),
    asistio boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.invitados OWNER TO postgres;

--
-- TOC entry 5607 (class 0 OID 0)
-- Dependencies: 238
-- Name: TABLE invitados; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.invitados IS 'Invitados no registrados en el sistema. Usados para participantes sin cuenta';


--
-- TOC entry 237 (class 1259 OID 36235)
-- Name: invitados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invitados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.invitados_id_seq OWNER TO postgres;

--
-- TOC entry 5608 (class 0 OID 0)
-- Dependencies: 237
-- Name: invitados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invitados_id_seq OWNED BY public.invitados.id;


--
-- TOC entry 223 (class 1259 OID 36117)
-- Name: job_batches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


ALTER TABLE public.job_batches OWNER TO postgres;

--
-- TOC entry 5609 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE job_batches; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.job_batches IS 'Lotes de trabajos de Laravel';


--
-- TOC entry 222 (class 1259 OID 36108)
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- TOC entry 5610 (class 0 OID 0)
-- Dependencies: 222
-- Name: TABLE jobs; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.jobs IS 'Cola de trabajos de Laravel';


--
-- TOC entry 221 (class 1259 OID 36107)
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO postgres;

--
-- TOC entry 5611 (class 0 OID 0)
-- Dependencies: 221
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- TOC entry 267 (class 1259 OID 43748)
-- Name: lugares; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lugares (
    id bigint NOT NULL,
    nombre character varying(200) NOT NULL,
    direccion text,
    ciudad_id bigint,
    lat numeric(10,7),
    lng numeric(10,7),
    capacidad integer,
    descripcion text,
    telefono character varying(20),
    email character varying(100),
    sitio_web character varying(255),
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.lugares OWNER TO postgres;

--
-- TOC entry 5612 (class 0 OID 0)
-- Dependencies: 267
-- Name: TABLE lugares; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.lugares IS 'Lugares físicos donde se realizan eventos. Relacionado con ciudades';


--
-- TOC entry 5613 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN lugares.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.lugares.nombre IS 'Nombre del lugar (ej: Parque Central, Auditorio Municipal)';


--
-- TOC entry 5614 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN lugares.direccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.lugares.direccion IS 'Dirección completa';


--
-- TOC entry 5615 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN lugares.lat; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.lugares.lat IS 'Latitud';


--
-- TOC entry 5616 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN lugares.lng; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.lugares.lng IS 'Longitud';


--
-- TOC entry 5617 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN lugares.capacidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.lugares.capacidad IS 'Capacidad máxima del lugar';


--
-- TOC entry 5618 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN lugares.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.lugares.descripcion IS 'Descripción del lugar';


--
-- TOC entry 5619 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN lugares.telefono; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.lugares.telefono IS 'Teléfono de contacto';


--
-- TOC entry 5620 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN lugares.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.lugares.email IS 'Email de contacto';


--
-- TOC entry 5621 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN lugares.sitio_web; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.lugares.sitio_web IS 'Sitio web';


--
-- TOC entry 5622 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN lugares.activo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.lugares.activo IS 'Si el lugar está activo';


--
-- TOC entry 266 (class 1259 OID 43747)
-- Name: lugares_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lugares_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lugares_id_seq OWNER TO postgres;

--
-- TOC entry 5623 (class 0 OID 0)
-- Dependencies: 266
-- Name: lugares_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lugares_id_seq OWNED BY public.lugares.id;


--
-- TOC entry 281 (class 1259 OID 44098)
-- Name: mega_evento_compartidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mega_evento_compartidos (
    id bigint NOT NULL,
    mega_evento_id bigint NOT NULL,
    externo_id bigint,
    nombres character varying(100),
    apellidos character varying(100),
    email character varying(255),
    metodo character varying(50) DEFAULT 'link'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    ip_address character varying(45),
    user_agent text
);


ALTER TABLE public.mega_evento_compartidos OWNER TO postgres;

--
-- TOC entry 5624 (class 0 OID 0)
-- Dependencies: 281
-- Name: TABLE mega_evento_compartidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.mega_evento_compartidos IS 'Compartidos de mega eventos por usuarios';


--
-- TOC entry 280 (class 1259 OID 44097)
-- Name: mega_evento_compartidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mega_evento_compartidos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mega_evento_compartidos_id_seq OWNER TO postgres;

--
-- TOC entry 5625 (class 0 OID 0)
-- Dependencies: 280
-- Name: mega_evento_compartidos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mega_evento_compartidos_id_seq OWNED BY public.mega_evento_compartidos.id;


--
-- TOC entry 245 (class 1259 OID 36305)
-- Name: mega_evento_ongs_organizadoras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mega_evento_ongs_organizadoras (
    mega_evento_id bigint NOT NULL,
    ong_id bigint NOT NULL,
    rol_organizacion character varying(100),
    fecha_union timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    activo boolean DEFAULT true NOT NULL
);


ALTER TABLE public.mega_evento_ongs_organizadoras OWNER TO postgres;

--
-- TOC entry 5626 (class 0 OID 0)
-- Dependencies: 245
-- Name: TABLE mega_evento_ongs_organizadoras; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.mega_evento_ongs_organizadoras IS 'Relación N:M entre mega eventos y ONGs organizadoras';


--
-- TOC entry 246 (class 1259 OID 36322)
-- Name: mega_evento_participantes_externos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mega_evento_participantes_externos (
    mega_evento_id bigint NOT NULL,
    integrante_externo_id bigint NOT NULL,
    tipo_participacion character varying(100),
    habilidades_ofrecidas text,
    disponibilidad character varying(500),
    estado_participacion character varying(50) DEFAULT 'interesado'::character varying,
    fecha_registro timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    comentarios text,
    activo boolean DEFAULT true NOT NULL,
    asistio boolean DEFAULT false NOT NULL,
    modo_asistencia character varying(50),
    observaciones text,
    registrado_por bigint,
    estado_asistencia character varying(50) DEFAULT 'no_asistido'::character varying NOT NULL,
    checkin_at timestamp(0) without time zone,
    checkout_at timestamp(0) without time zone,
    ticket_codigo character varying(100),
    comentario_asistencia text,
    ip_registro character varying(45),
    ubicacion_aproximada character varying(255),
    qr_descargado_at timestamp without time zone
);


ALTER TABLE public.mega_evento_participantes_externos OWNER TO postgres;

--
-- TOC entry 5627 (class 0 OID 0)
-- Dependencies: 246
-- Name: TABLE mega_evento_participantes_externos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.mega_evento_participantes_externos IS 'Participantes externos (usuarios registrados) en mega eventos';


--
-- TOC entry 285 (class 1259 OID 44146)
-- Name: mega_evento_participantes_no_registrados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mega_evento_participantes_no_registrados (
    id bigint NOT NULL,
    mega_evento_id bigint NOT NULL,
    nombres character varying(100) NOT NULL,
    apellidos character varying(100) NOT NULL,
    email character varying(255),
    telefono character varying(20),
    estado character varying(50) DEFAULT 'aprobada'::character varying NOT NULL,
    asistio boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    modo_asistencia character varying(50),
    observaciones text,
    registrado_por bigint,
    estado_asistencia character varying(50) DEFAULT 'no_asistido'::character varying NOT NULL,
    checkin_at timestamp(0) without time zone,
    checkout_at timestamp(0) without time zone,
    ticket_codigo character varying(100),
    comentario_asistencia text,
    ip_registro character varying(45),
    ubicacion_aproximada character varying(255)
);


ALTER TABLE public.mega_evento_participantes_no_registrados OWNER TO postgres;

--
-- TOC entry 5628 (class 0 OID 0)
-- Dependencies: 285
-- Name: TABLE mega_evento_participantes_no_registrados; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.mega_evento_participantes_no_registrados IS 'Participantes no registrados (invitados) en mega eventos';


--
-- TOC entry 284 (class 1259 OID 44145)
-- Name: mega_evento_participantes_no_registrados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mega_evento_participantes_no_registrados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mega_evento_participantes_no_registrados_id_seq OWNER TO postgres;

--
-- TOC entry 5629 (class 0 OID 0)
-- Dependencies: 284
-- Name: mega_evento_participantes_no_registrados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mega_evento_participantes_no_registrados_id_seq OWNED BY public.mega_evento_participantes_no_registrados.id;


--
-- TOC entry 247 (class 1259 OID 36342)
-- Name: mega_evento_patrocinadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mega_evento_patrocinadores (
    mega_evento_id bigint NOT NULL,
    empresa_id bigint NOT NULL,
    tipo_patrocinio character varying(100),
    monto_contribucion numeric(15,2),
    tipo_contribucion character varying(100),
    descripcion_contribucion text,
    fecha_compromiso timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    estado_compromiso character varying(50) DEFAULT 'confirmado'::character varying NOT NULL,
    activo boolean DEFAULT true NOT NULL
);


ALTER TABLE public.mega_evento_patrocinadores OWNER TO postgres;

--
-- TOC entry 5630 (class 0 OID 0)
-- Dependencies: 247
-- Name: TABLE mega_evento_patrocinadores; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.mega_evento_patrocinadores IS 'Relación N:M entre mega eventos y empresas patrocinadoras';


--
-- TOC entry 283 (class 1259 OID 44125)
-- Name: mega_evento_reacciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mega_evento_reacciones (
    id bigint NOT NULL,
    mega_evento_id bigint NOT NULL,
    externo_id bigint,
    nombres character varying(100),
    apellidos character varying(100),
    email character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.mega_evento_reacciones OWNER TO postgres;

--
-- TOC entry 5631 (class 0 OID 0)
-- Dependencies: 283
-- Name: TABLE mega_evento_reacciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.mega_evento_reacciones IS 'Reacciones de usuarios a mega eventos';


--
-- TOC entry 282 (class 1259 OID 44124)
-- Name: mega_evento_reacciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mega_evento_reacciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mega_evento_reacciones_id_seq OWNER TO postgres;

--
-- TOC entry 5632 (class 0 OID 0)
-- Dependencies: 282
-- Name: mega_evento_reacciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mega_evento_reacciones_id_seq OWNED BY public.mega_evento_reacciones.id;


--
-- TOC entry 244 (class 1259 OID 36286)
-- Name: mega_eventos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mega_eventos (
    mega_evento_id bigint NOT NULL,
    titulo character varying(200) NOT NULL,
    descripcion text,
    fecha_inicio timestamp(0) without time zone NOT NULL,
    fecha_fin timestamp(0) without time zone NOT NULL,
    ubicacion character varying(500),
    fecha_creacion timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    categoria character varying(50) DEFAULT 'social'::character varying NOT NULL,
    ong_organizadora_principal bigint,
    capacidad_maxima integer,
    es_publico boolean DEFAULT false NOT NULL,
    estado character varying(20) DEFAULT 'planificacion'::character varying NOT NULL,
    lat numeric(10,7),
    lng numeric(10,7),
    imagenes json,
    categoria_id bigint,
    estado_evento_id bigint
);


ALTER TABLE public.mega_eventos OWNER TO postgres;

--
-- TOC entry 5633 (class 0 OID 0)
-- Dependencies: 244
-- Name: TABLE mega_eventos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.mega_eventos IS 'Mega eventos del sistema. Eventos complejos que pueden agrupar múltiples eventos';


--
-- TOC entry 243 (class 1259 OID 36285)
-- Name: mega_eventos_mega_evento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mega_eventos_mega_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mega_eventos_mega_evento_id_seq OWNER TO postgres;

--
-- TOC entry 5634 (class 0 OID 0)
-- Dependencies: 243
-- Name: mega_eventos_mega_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mega_eventos_mega_evento_id_seq OWNED BY public.mega_eventos.mega_evento_id;


--
-- TOC entry 218 (class 1259 OID 36087)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 5635 (class 0 OID 0)
-- Dependencies: 218
-- Name: TABLE migrations; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.migrations IS 'Historial de migraciones ejecutadas en Laravel';


--
-- TOC entry 217 (class 1259 OID 36086)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 5636 (class 0 OID 0)
-- Dependencies: 217
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 290 (class 1259 OID 44682)
-- Name: model_has_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_permissions OWNER TO postgres;

--
-- TOC entry 5637 (class 0 OID 0)
-- Dependencies: 290
-- Name: TABLE model_has_permissions; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.model_has_permissions IS 'Permisos asignados a modelos (Spatie Permission)';


--
-- TOC entry 291 (class 1259 OID 44693)
-- Name: model_has_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_roles OWNER TO postgres;

--
-- TOC entry 5638 (class 0 OID 0)
-- Dependencies: 291
-- Name: TABLE model_has_roles; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.model_has_roles IS 'Roles asignados a modelos (Spatie Permission)';


--
-- TOC entry 255 (class 1259 OID 36435)
-- Name: notificaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notificaciones (
    id bigint NOT NULL,
    ong_id bigint NOT NULL,
    evento_id bigint,
    externo_id bigint,
    tipo character varying(50) NOT NULL,
    titulo character varying(200) NOT NULL,
    mensaje text NOT NULL,
    leida boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tipo_notificacion_id bigint
);


ALTER TABLE public.notificaciones OWNER TO postgres;

--
-- TOC entry 5639 (class 0 OID 0)
-- Dependencies: 255
-- Name: TABLE notificaciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.notificaciones IS 'Sistema de notificaciones del sistema. Relacionado con usuarios y tipos de notificación';


--
-- TOC entry 254 (class 1259 OID 36434)
-- Name: notificaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notificaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notificaciones_id_seq OWNER TO postgres;

--
-- TOC entry 5640 (class 0 OID 0)
-- Dependencies: 254
-- Name: notificaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notificaciones_id_seq OWNED BY public.notificaciones.id;


--
-- TOC entry 294 (class 1259 OID 44860)
-- Name: ong_exportaciones_pdf; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ong_exportaciones_pdf (
    id bigint NOT NULL,
    ong_id bigint NOT NULL,
    numero_exportacion integer DEFAULT 0 NOT NULL,
    tipo_exportacion character varying(50) DEFAULT 'dashboard'::character varying NOT NULL,
    fecha_generacion timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    metadata json,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tipo character varying(20) DEFAULT 'pdf'::character varying,
    folio character varying(20)
);


ALTER TABLE public.ong_exportaciones_pdf OWNER TO postgres;

--
-- TOC entry 5641 (class 0 OID 0)
-- Dependencies: 294
-- Name: TABLE ong_exportaciones_pdf; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.ong_exportaciones_pdf IS 'Exportaciones PDF de organizaciones (legacy - verificar si aún se usa)';


--
-- TOC entry 293 (class 1259 OID 44859)
-- Name: ong_exportaciones_pdf_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ong_exportaciones_pdf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ong_exportaciones_pdf_id_seq OWNER TO postgres;

--
-- TOC entry 5642 (class 0 OID 0)
-- Dependencies: 293
-- Name: ong_exportaciones_pdf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ong_exportaciones_pdf_id_seq OWNED BY public.ong_exportaciones_pdf.id;


--
-- TOC entry 230 (class 1259 OID 36163)
-- Name: ongs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ongs (
    user_id bigint NOT NULL,
    nombre_ong character varying(100) NOT NULL,
    "NIT" character varying(20),
    telefono character varying(20),
    direccion character varying(150),
    sitio_web character varying(150),
    descripcion text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    foto_perfil character varying(500)
);


ALTER TABLE public.ongs OWNER TO postgres;

--
-- TOC entry 5643 (class 0 OID 0)
-- Dependencies: 230
-- Name: TABLE ongs; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.ongs IS 'Perfil extendido de usuarios tipo ONG. Relación 1:1 con usuarios';


--
-- TOC entry 259 (class 1259 OID 43683)
-- Name: parametros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parametros (
    id bigint NOT NULL,
    codigo character varying(100) NOT NULL,
    nombre character varying(200) NOT NULL,
    descripcion text,
    categoria character varying(50) DEFAULT 'general'::character varying NOT NULL,
    tipo character varying(20) DEFAULT 'texto'::character varying NOT NULL,
    valor text,
    valor_defecto text,
    opciones json,
    grupo character varying(50),
    orden integer DEFAULT 0 NOT NULL,
    editable boolean DEFAULT true NOT NULL,
    visible boolean DEFAULT true NOT NULL,
    requerido boolean DEFAULT false NOT NULL,
    validacion character varying(500),
    ayuda text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.parametros OWNER TO postgres;

--
-- TOC entry 5644 (class 0 OID 0)
-- Dependencies: 259
-- Name: TABLE parametros; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.parametros IS 'Sistema de parametrización dinámica del sistema';


--
-- TOC entry 5645 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.codigo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.codigo IS 'Código único del parámetro (ej: max_eventos_por_ong)';


--
-- TOC entry 5646 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.nombre IS 'Nombre descriptivo del parámetro';


--
-- TOC entry 5647 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.descripcion IS 'Descripción detallada del parámetro';


--
-- TOC entry 5648 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.categoria; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.categoria IS 'Categoría: general, eventos, usuarios, notificaciones, etc.';


--
-- TOC entry 5649 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.tipo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.tipo IS 'Tipo: texto, numero, booleano, json, fecha';


--
-- TOC entry 5650 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.valor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.valor IS 'Valor del parámetro';


--
-- TOC entry 5651 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.valor_defecto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.valor_defecto IS 'Valor por defecto';


--
-- TOC entry 5652 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.opciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.opciones IS 'Opciones disponibles (para select, radio, etc.)';


--
-- TOC entry 5653 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.grupo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.grupo IS 'Grupo al que pertenece (para agrupar en la UI)';


--
-- TOC entry 5654 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.orden; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.orden IS 'Orden de visualización';


--
-- TOC entry 5655 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.editable; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.editable IS 'Si el parámetro puede ser editado';


--
-- TOC entry 5656 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.visible; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.visible IS 'Si el parámetro es visible en la UI';


--
-- TOC entry 5657 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.requerido; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.requerido IS 'Si el parámetro es requerido';


--
-- TOC entry 5658 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.validacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.validacion IS 'Reglas de validación adicionales';


--
-- TOC entry 5659 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN parametros.ayuda; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parametros.ayuda IS 'Texto de ayuda para el usuario';


--
-- TOC entry 258 (class 1259 OID 43682)
-- Name: parametros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parametros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.parametros_id_seq OWNER TO postgres;

--
-- TOC entry 5660 (class 0 OID 0)
-- Dependencies: 258
-- Name: parametros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parametros_id_seq OWNED BY public.parametros.id;


--
-- TOC entry 287 (class 1259 OID 44661)
-- Name: permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.permissions OWNER TO postgres;

--
-- TOC entry 5661 (class 0 OID 0)
-- Dependencies: 287
-- Name: TABLE permissions; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.permissions IS 'Permisos del sistema (Spatie Permission)';


--
-- TOC entry 286 (class 1259 OID 44660)
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permissions_id_seq OWNER TO postgres;

--
-- TOC entry 5662 (class 0 OID 0)
-- Dependencies: 286
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- TOC entry 227 (class 1259 OID 36137)
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name text NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- TOC entry 5663 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE personal_access_tokens; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.personal_access_tokens IS 'Tokens de autenticación API (Laravel Sanctum)';


--
-- TOC entry 226 (class 1259 OID 36136)
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 5664 (class 0 OID 0)
-- Dependencies: 226
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- TOC entry 292 (class 1259 OID 44704)
-- Name: role_has_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.role_has_permissions OWNER TO postgres;

--
-- TOC entry 5665 (class 0 OID 0)
-- Dependencies: 292
-- Name: TABLE role_has_permissions; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.role_has_permissions IS 'Permisos asignados a roles (Spatie Permission)';


--
-- TOC entry 289 (class 1259 OID 44672)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 5666 (class 0 OID 0)
-- Dependencies: 289
-- Name: TABLE roles; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.roles IS 'Roles del sistema (Spatie Permission)';


--
-- TOC entry 288 (class 1259 OID 44671)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO postgres;

--
-- TOC entry 5667 (class 0 OID 0)
-- Dependencies: 288
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 249 (class 1259 OID 36372)
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- TOC entry 5668 (class 0 OID 0)
-- Dependencies: 249
-- Name: TABLE sessions; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.sessions IS 'Sesiones de usuario (Laravel)';


--
-- TOC entry 248 (class 1259 OID 36362)
-- Name: super_admins; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.super_admins (
    user_id bigint NOT NULL,
    nivel_acceso integer
);


ALTER TABLE public.super_admins OWNER TO postgres;

--
-- TOC entry 5669 (class 0 OID 0)
-- Dependencies: 248
-- Name: TABLE super_admins; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.super_admins IS 'Administradores del sistema. Relación 1:1 con usuarios';


--
-- TOC entry 261 (class 1259 OID 43703)
-- Name: tipos_evento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_evento (
    id bigint NOT NULL,
    codigo character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    icono character varying(50),
    color character varying(20) DEFAULT 'primary'::character varying NOT NULL,
    orden integer DEFAULT 0 NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.tipos_evento OWNER TO postgres;

--
-- TOC entry 5670 (class 0 OID 0)
-- Dependencies: 261
-- Name: TABLE tipos_evento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tipos_evento IS 'Catálogo de tipos de eventos (ej: Taller, Conferencia, Voluntariado)';


--
-- TOC entry 5671 (class 0 OID 0)
-- Dependencies: 261
-- Name: COLUMN tipos_evento.codigo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_evento.codigo IS 'Código único del tipo (ej: conferencia, taller)';


--
-- TOC entry 5672 (class 0 OID 0)
-- Dependencies: 261
-- Name: COLUMN tipos_evento.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_evento.nombre IS 'Nombre del tipo de evento';


--
-- TOC entry 5673 (class 0 OID 0)
-- Dependencies: 261
-- Name: COLUMN tipos_evento.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_evento.descripcion IS 'Descripción del tipo de evento';


--
-- TOC entry 5674 (class 0 OID 0)
-- Dependencies: 261
-- Name: COLUMN tipos_evento.icono; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_evento.icono IS 'Clase de icono FontAwesome';


--
-- TOC entry 5675 (class 0 OID 0)
-- Dependencies: 261
-- Name: COLUMN tipos_evento.color; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_evento.color IS 'Color del badge (primary, success, info, etc.)';


--
-- TOC entry 5676 (class 0 OID 0)
-- Dependencies: 261
-- Name: COLUMN tipos_evento.orden; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_evento.orden IS 'Orden de visualización';


--
-- TOC entry 5677 (class 0 OID 0)
-- Dependencies: 261
-- Name: COLUMN tipos_evento.activo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_evento.activo IS 'Si el tipo está activo';


--
-- TOC entry 260 (class 1259 OID 43702)
-- Name: tipos_evento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipos_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipos_evento_id_seq OWNER TO postgres;

--
-- TOC entry 5678 (class 0 OID 0)
-- Dependencies: 260
-- Name: tipos_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_evento_id_seq OWNED BY public.tipos_evento.id;


--
-- TOC entry 271 (class 1259 OID 43782)
-- Name: tipos_notificacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_notificacion (
    id bigint NOT NULL,
    codigo character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    plantilla_mensaje text,
    icono character varying(50),
    color character varying(20) DEFAULT 'info'::character varying NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.tipos_notificacion OWNER TO postgres;

--
-- TOC entry 5679 (class 0 OID 0)
-- Dependencies: 271
-- Name: TABLE tipos_notificacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tipos_notificacion IS 'Catálogo de tipos de notificaciones del sistema';


--
-- TOC entry 5680 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN tipos_notificacion.codigo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_notificacion.codigo IS 'Código único del tipo (ej: reaccion_evento, nueva_participacion)';


--
-- TOC entry 5681 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN tipos_notificacion.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_notificacion.nombre IS 'Nombre del tipo de notificación';


--
-- TOC entry 5682 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN tipos_notificacion.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_notificacion.descripcion IS 'Descripción del tipo';


--
-- TOC entry 5683 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN tipos_notificacion.plantilla_mensaje; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_notificacion.plantilla_mensaje IS 'Plantilla del mensaje (puede usar variables como {usuario}, {evento})';


--
-- TOC entry 5684 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN tipos_notificacion.icono; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_notificacion.icono IS 'Clase de icono FontAwesome';


--
-- TOC entry 5685 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN tipos_notificacion.color; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_notificacion.color IS 'Color del badge';


--
-- TOC entry 5686 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN tipos_notificacion.activo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_notificacion.activo IS 'Si el tipo está activo';


--
-- TOC entry 270 (class 1259 OID 43781)
-- Name: tipos_notificacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipos_notificacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipos_notificacion_id_seq OWNER TO postgres;

--
-- TOC entry 5687 (class 0 OID 0)
-- Dependencies: 270
-- Name: tipos_notificacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_notificacion_id_seq OWNED BY public.tipos_notificacion.id;


--
-- TOC entry 275 (class 1259 OID 43816)
-- Name: tipos_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_usuario (
    id bigint NOT NULL,
    codigo character varying(50) NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    permisos_default json,
    activo boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.tipos_usuario OWNER TO postgres;

--
-- TOC entry 5688 (class 0 OID 0)
-- Dependencies: 275
-- Name: TABLE tipos_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tipos_usuario IS 'Catálogo de tipos de usuario del sistema';


--
-- TOC entry 5689 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN tipos_usuario.codigo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_usuario.codigo IS 'Código único del tipo (ej: ong, empresa, externo, admin)';


--
-- TOC entry 5690 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN tipos_usuario.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_usuario.nombre IS 'Nombre del tipo de usuario';


--
-- TOC entry 5691 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN tipos_usuario.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_usuario.descripcion IS 'Descripción del tipo';


--
-- TOC entry 5692 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN tipos_usuario.permisos_default; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_usuario.permisos_default IS 'Permisos por defecto para este tipo';


--
-- TOC entry 5693 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN tipos_usuario.activo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipos_usuario.activo IS 'Si el tipo está activo';


--
-- TOC entry 274 (class 1259 OID 43815)
-- Name: tipos_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipos_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipos_usuario_id_seq OWNER TO postgres;

--
-- TOC entry 5694 (class 0 OID 0)
-- Dependencies: 274
-- Name: tipos_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_usuario_id_seq OWNED BY public.tipos_usuario.id;


--
-- TOC entry 229 (class 1259 OID 36150)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id_usuario bigint NOT NULL,
    nombre_usuario character varying(50) NOT NULL,
    correo_electronico character varying(100) NOT NULL,
    contrasena character varying(255) NOT NULL,
    fecha_registro timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    tipo_usuario character varying(25) NOT NULL,
    activo boolean DEFAULT true NOT NULL,
    foto_perfil character varying(500),
    tipo_usuario_id bigint,
    CONSTRAINT tipo_usuario_chk CHECK (((tipo_usuario)::text = ANY ((ARRAY['Super admin'::character varying, 'Integrante externo'::character varying, 'ONG'::character varying, 'Empresa'::character varying])::text[])))
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 5695 (class 0 OID 0)
-- Dependencies: 229
-- Name: TABLE usuarios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.usuarios IS 'Tabla central de usuarios del sistema. Base para todos los tipos de usuario.';


--
-- TOC entry 228 (class 1259 OID 36149)
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 5696 (class 0 OID 0)
-- Dependencies: 228
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;


--
-- TOC entry 5011 (class 2604 OID 43722)
-- Name: categorias_mega_eventos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias_mega_eventos ALTER COLUMN id SET DEFAULT nextval('public.categorias_mega_eventos_id_seq'::regclass);


--
-- TOC entry 5015 (class 2604 OID 43738)
-- Name: ciudades id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciudades ALTER COLUMN id SET DEFAULT nextval('public.ciudades_id_seq'::regclass);


--
-- TOC entry 5027 (class 2604 OID 43800)
-- Name: estados_evento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estados_evento ALTER COLUMN id SET DEFAULT nextval('public.estados_evento_id_seq'::regclass);


--
-- TOC entry 5020 (class 2604 OID 43769)
-- Name: estados_participacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estados_participacion ALTER COLUMN id SET DEFAULT nextval('public.estados_participacion_id_seq'::regclass);


--
-- TOC entry 4968 (class 2604 OID 36252)
-- Name: evento_auspiciadores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_auspiciadores ALTER COLUMN id SET DEFAULT nextval('public.evento_auspiciadores_id_seq'::regclass);


--
-- TOC entry 5037 (class 2604 OID 43985)
-- Name: evento_compartidos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_compartidos ALTER COLUMN id SET DEFAULT nextval('public.evento_compartidos_id_seq'::regclass);


--
-- TOC entry 4996 (class 2604 OID 43662)
-- Name: evento_empresas_participantes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_empresas_participantes ALTER COLUMN id SET DEFAULT nextval('public.evento_empresas_participantes_id_seq'::regclass);


--
-- TOC entry 4969 (class 2604 OID 36271)
-- Name: evento_integrantes_externos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_integrantes_externos ALTER COLUMN id SET DEFAULT nextval('public.evento_integrantes_externos_id_seq'::regclass);


--
-- TOC entry 4988 (class 2604 OID 36390)
-- Name: evento_participaciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_participaciones ALTER COLUMN id SET DEFAULT nextval('public.evento_participaciones_id_seq'::regclass);


--
-- TOC entry 5034 (class 2604 OID 43957)
-- Name: evento_participantes_no_registrados id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_participantes_no_registrados ALTER COLUMN id SET DEFAULT nextval('public.evento_participantes_no_registrados_id_seq'::regclass);


--
-- TOC entry 4965 (class 2604 OID 36220)
-- Name: evento_patrocinadores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_patrocinadores ALTER COLUMN id SET DEFAULT nextval('public.evento_patrocinadores_id_seq'::regclass);


--
-- TOC entry 4993 (class 2604 OID 36417)
-- Name: evento_reacciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_reacciones ALTER COLUMN id SET DEFAULT nextval('public.evento_reacciones_id_seq'::regclass);


--
-- TOC entry 4961 (class 2604 OID 36203)
-- Name: eventos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eventos ALTER COLUMN id SET DEFAULT nextval('public.eventos_id_seq'::regclass);


--
-- TOC entry 4955 (class 2604 OID 36128)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 4966 (class 2604 OID 36239)
-- Name: invitados id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invitados ALTER COLUMN id SET DEFAULT nextval('public.invitados_id_seq'::regclass);


--
-- TOC entry 4954 (class 2604 OID 36111)
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- TOC entry 5018 (class 2604 OID 43751)
-- Name: lugares id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lugares ALTER COLUMN id SET DEFAULT nextval('public.lugares_id_seq'::regclass);


--
-- TOC entry 5039 (class 2604 OID 44101)
-- Name: mega_evento_compartidos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_compartidos ALTER COLUMN id SET DEFAULT nextval('public.mega_evento_compartidos_id_seq'::regclass);


--
-- TOC entry 5042 (class 2604 OID 44149)
-- Name: mega_evento_participantes_no_registrados id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_participantes_no_registrados ALTER COLUMN id SET DEFAULT nextval('public.mega_evento_participantes_no_registrados_id_seq'::regclass);


--
-- TOC entry 5041 (class 2604 OID 44128)
-- Name: mega_evento_reacciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_reacciones ALTER COLUMN id SET DEFAULT nextval('public.mega_evento_reacciones_id_seq'::regclass);


--
-- TOC entry 4971 (class 2604 OID 36289)
-- Name: mega_eventos mega_evento_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_eventos ALTER COLUMN mega_evento_id SET DEFAULT nextval('public.mega_eventos_mega_evento_id_seq'::regclass);


--
-- TOC entry 4953 (class 2604 OID 36090)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 4994 (class 2604 OID 36438)
-- Name: notificaciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificaciones ALTER COLUMN id SET DEFAULT nextval('public.notificaciones_id_seq'::regclass);


--
-- TOC entry 5048 (class 2604 OID 44863)
-- Name: ong_exportaciones_pdf id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ong_exportaciones_pdf ALTER COLUMN id SET DEFAULT nextval('public.ong_exportaciones_pdf_id_seq'::regclass);


--
-- TOC entry 5000 (class 2604 OID 43686)
-- Name: parametros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametros ALTER COLUMN id SET DEFAULT nextval('public.parametros_id_seq'::regclass);


--
-- TOC entry 5046 (class 2604 OID 44664)
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- TOC entry 4957 (class 2604 OID 36140)
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- TOC entry 5047 (class 2604 OID 44675)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 5007 (class 2604 OID 43706)
-- Name: tipos_evento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_evento ALTER COLUMN id SET DEFAULT nextval('public.tipos_evento_id_seq'::regclass);


--
-- TOC entry 5024 (class 2604 OID 43785)
-- Name: tipos_notificacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_notificacion ALTER COLUMN id SET DEFAULT nextval('public.tipos_notificacion_id_seq'::regclass);


--
-- TOC entry 5032 (class 2604 OID 43819)
-- Name: tipos_usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_usuario ALTER COLUMN id SET DEFAULT nextval('public.tipos_usuario_id_seq'::regclass);


--
-- TOC entry 4958 (class 2604 OID 36153)
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);


--
-- TOC entry 5464 (class 0 OID 36093)
-- Dependencies: 219
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache (key, value, expiration) FROM stdin;
laravel-cache-ong_dashboard_4_521dd10620b6361f982aa6b79ab4c0a5	a:13:{s:8:"metricas";a:7:{s:15:"eventos_activos";i:5;s:17:"eventos_inactivos";i:0;s:19:"eventos_finalizados";i:20;s:16:"total_reacciones";i:21;s:17:"total_compartidos";i:61;s:17:"total_voluntarios";i:4;s:19:"total_participantes";i:32;}s:20:"tendencias_mensuales";a:7:{s:7:"2025-06";i:0;s:7:"2025-07";i:0;s:7:"2025-08";i:0;s:7:"2025-09";i:0;s:7:"2025-10";i:0;s:7:"2025-11";i:9;s:7:"2025-12";i:21;}s:20:"distribucion_estados";a:4:{s:6:"activo";i:5;s:8:"inactivo";i:0;s:10:"finalizado";i:20;s:9:"cancelado";i:0;}s:17:"actividad_semanal";a:5:{s:7:"2025-47";i:6;s:7:"2025-48";i:13;s:7:"2025-49";i:41;s:7:"2025-50";i:8;s:7:"2025-51";i:1;}s:19:"comparativa_eventos";a:15:{i:0;a:5:{s:9:"evento_id";i:2;s:6:"titulo";s:18:"Clase de Proyectos";s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"participantes";i:1;}i:1;a:5:{s:9:"evento_id";i:4;s:6:"titulo";s:37:"Jornada de Reforestación Comunitaria";s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"participantes";i:0;}i:2;a:5:{s:9:"evento_id";i:5;s:6:"titulo";s:31:"Feria de Salud Comunitaria 2025";s:10:"reacciones";i:3;s:11:"compartidos";i:3;s:13:"participantes";i:3;}i:3;a:5:{s:9:"evento_id";i:6;s:6:"titulo";s:45:"Taller de Primeros Auxilios para la Comunidad";s:10:"reacciones";i:4;s:11:"compartidos";i:10;s:13:"participantes";i:6;}i:4;a:5:{s:9:"evento_id";i:14;s:6:"titulo";s:6:"Wall-E";s:10:"reacciones";i:1;s:11:"compartidos";i:0;s:13:"participantes";i:1;}i:5;a:5:{s:9:"evento_id";i:26;s:6:"titulo";s:22:"Alimentando animalitos";s:10:"reacciones";i:2;s:11:"compartidos";i:1;s:13:"participantes";i:2;}i:6;a:5:{s:9:"evento_id";i:7;s:6:"titulo";s:34:"Taller de Manualidades para Niños";s:10:"reacciones";i:3;s:11:"compartidos";i:17;s:13:"participantes";i:10;}i:7;a:5:{s:9:"evento_id";i:27;s:6:"titulo";s:12:"Clash Royale";s:10:"reacciones";i:1;s:11:"compartidos";i:0;s:13:"participantes";i:1;}i:8;a:5:{s:9:"evento_id";i:30;s:6:"titulo";s:35:"Festival Cultural de la Chiquitania";s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"participantes";i:0;}i:9;a:5:{s:9:"evento_id";i:29;s:6:"titulo";s:38:"Desarrollo Web para Principiantes 2025";s:10:"reacciones";i:1;s:11:"compartidos";i:7;s:13:"participantes";i:5;}i:10;a:5:{s:9:"evento_id";i:3;s:6:"titulo";s:16:"PRUEBAA1 2025...";s:10:"reacciones";i:2;s:11:"compartidos";i:2;s:13:"participantes";i:1;}i:11;a:5:{s:9:"evento_id";i:32;s:6:"titulo";s:34:"Danzas chiquitanas (nivel inicial)";s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"participantes";i:0;}i:12;a:5:{s:9:"evento_id";i:31;s:6:"titulo";s:21:"Alas Chiquitanas 2025";s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"participantes";i:0;}i:13;a:5:{s:9:"evento_id";i:33;s:6:"titulo";s:41:"Historia, Patrimonio y Memoria Chiquitana";s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"participantes";i:0;}i:14;a:5:{s:9:"evento_id";i:34;s:6:"titulo";s:65:"Feria de Emprendimientos – Manos Chiquitanas (Alas Chiquitanas)";s:10:"reacciones";i:0;s:11:"compartidos";i:1;s:13:"participantes";i:0;}}s:11:"top_eventos";a:10:{i:0;a:9:{s:9:"evento_id";i:7;s:6:"titulo";s:34:"Taller de Manualidades para Niños";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-14 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";N;s:6:"estado";s:9:"publicado";s:10:"reacciones";i:3;s:11:"compartidos";i:17;s:13:"inscripciones";i:10;s:10:"engagement";i:30;}i:1;a:9:{s:9:"evento_id";i:6;s:6:"titulo";s:45:"Taller de Primeros Auxilios para la Comunidad";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-25 09:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";N;s:6:"estado";s:9:"publicado";s:10:"reacciones";i:4;s:11:"compartidos";i:10;s:13:"inscripciones";i:6;s:10:"engagement";i:20;}i:2;a:9:{s:9:"evento_id";i:29;s:6:"titulo";s:38:"Desarrollo Web para Principiantes 2025";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-12 08:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";N;s:6:"estado";s:9:"publicado";s:10:"reacciones";i:1;s:11:"compartidos";i:7;s:13:"inscripciones";i:5;s:10:"engagement";i:13;}i:3;a:9:{s:9:"evento_id";i:5;s:6:"titulo";s:31:"Feria de Salud Comunitaria 2025";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-12 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";N;s:6:"estado";s:9:"publicado";s:10:"reacciones";i:3;s:11:"compartidos";i:3;s:13:"inscripciones";i:3;s:10:"engagement";i:9;}i:4;a:9:{s:9:"evento_id";i:26;s:6:"titulo";s:22:"Alimentando animalitos";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-04 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";N;s:6:"estado";s:9:"publicado";s:10:"reacciones";i:2;s:11:"compartidos";i:1;s:13:"inscripciones";i:2;s:10:"engagement";i:5;}i:5;a:9:{s:9:"evento_id";i:3;s:6:"titulo";s:16:"PRUEBAA1 2025...";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-14 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";N;s:6:"estado";s:9:"publicado";s:10:"reacciones";i:2;s:11:"compartidos";i:2;s:13:"inscripciones";i:1;s:10:"engagement";i:5;}i:6;a:9:{s:9:"evento_id";i:14;s:6:"titulo";s:6:"Wall-E";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-24 00:12:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";N;s:6:"estado";s:9:"publicado";s:10:"reacciones";i:1;s:11:"compartidos";i:0;s:13:"inscripciones";i:1;s:10:"engagement";i:2;}i:7;a:9:{s:9:"evento_id";i:27;s:6:"titulo";s:12:"Clash Royale";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-04 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";N;s:6:"estado";s:9:"publicado";s:10:"reacciones";i:1;s:11:"compartidos";i:0;s:13:"inscripciones";i:1;s:10:"engagement";i:2;}i:8;a:9:{s:9:"evento_id";i:2;s:6:"titulo";s:18:"Clase de Proyectos";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-19 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";N;s:6:"estado";s:9:"publicado";s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:1;s:10:"engagement";i:1;}i:9;a:9:{s:9:"evento_id";i:34;s:6:"titulo";s:65:"Feria de Emprendimientos – Manos Chiquitanas (Alas Chiquitanas)";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-15 10:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";N;s:6:"estado";s:9:"publicado";s:10:"reacciones";i:0;s:11:"compartidos";i:1;s:13:"inscripciones";i:0;s:10:"engagement";i:1;}}s:15:"top_voluntarios";a:3:{i:0;a:5:{s:10:"externo_id";i:3;s:6:"nombre";s:9:"Carmen PA";s:5:"email";s:16:"carmen@gmail.com";s:20:"eventos_participados";i:8;s:18:"horas_contribuidas";i:16;}i:1;a:5:{s:10:"externo_id";i:14;s:6:"nombre";s:17:"Brillos Johnson's";s:5:"email";s:23:"gotasdebrillo@gmail.com";s:20:"eventos_participados";i:2;s:18:"horas_contribuidas";i:4;}i:2;a:5:{s:10:"externo_id";i:6;s:6:"nombre";s:12:"Angel Pumari";s:5:"email";s:15:"angel@gmail.com";s:20:"eventos_participados";i:1;s:18:"horas_contribuidas";i:2;}}s:26:"distribucion_participantes";a:2:{s:10:"por_estado";a:1:{s:8:"aprobada";i:30;}s:8:"por_tipo";a:3:{s:10:"voluntario";i:11;s:9:"asistente";i:0;s:11:"colaborador";i:19;}}s:15:"listado_eventos";a:29:{i:0;a:8:{s:2:"id";i:7;s:6:"titulo";s:34:"Taller de Manualidades para Niños";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-14 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-14 16:10:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:91:"Municipio La Guardia, Provincia Andrés Ibáñez, Santa Cruz, Bolivia, Municipio La Guardia";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:10;s:4:"tipo";s:6:"evento";}i:1;a:8:{s:2:"id";i:6;s:6:"titulo";s:45:"Taller de Primeros Auxilios para la Comunidad";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-25 09:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-25 18:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:81:"Municipio Charagua, Provincia Cordillera, Santa Cruz, Bolivia, Municipio Charagua";s:6:"estado";s:6:"activo";s:19:"total_participantes";i:6;s:4:"tipo";s:6:"evento";}i:2;a:8:{s:2:"id";i:29;s:6:"titulo";s:38:"Desarrollo Web para Principiantes 2025";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-12 08:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-12 12:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:55:"Villa Montes, Gran Chaco, Tarija, Bolivia, Villa Montes";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:5;s:4:"tipo";s:6:"evento";}i:3;a:8:{s:2:"id";i:5;s:6:"titulo";s:31:"Feria de Salud Comunitaria 2025";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-12 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-12 16:10:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:94:"Riva Palacios, Municipio Cabezas, Provincia Cordillera, Santa Cruz, Bolivia, Municipio Cabezas";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:3;s:4:"tipo";s:6:"evento";}i:4;a:8:{s:2:"id";i:26;s:6:"titulo";s:22:"Alimentando animalitos";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-04 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-04 16:10:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:103:"San Isidro, Municipio La Guardia, Provincia Andrés Ibáñez, Santa Cruz, Bolivia, Municipio La Guardia";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:2;s:4:"tipo";s:6:"evento";}i:5;a:8:{s:2:"id";i:2;s:6:"titulo";s:18:"Clase de Proyectos";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-19 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-19 16:10:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:97:"Santa Cruz de la Sierra, Provincia Andrés Ibáñez, Santa Cruz, Bolivia, Santa Cruz de la Sierra";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:1;s:4:"tipo";s:6:"evento";}i:6;a:8:{s:2:"id";i:14;s:6:"titulo";s:6:"Wall-E";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-24 00:12:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-25 20:12:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:84:"La Abrita, Municipio Warnes, Provincia Warnes, Santa Cruz, Bolivia, Municipio Warnes";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:1;s:4:"tipo";s:6:"evento";}i:7;a:8:{s:2:"id";i:27;s:6:"titulo";s:12:"Clash Royale";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-04 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-04 18:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:97:"Santa Cruz de la Sierra, Provincia Andrés Ibáñez, Santa Cruz, Bolivia, Santa Cruz de la Sierra";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:1;s:4:"tipo";s:6:"evento";}i:8;a:8:{s:2:"id";i:3;s:6:"titulo";s:16:"PRUEBAA1 2025...";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-14 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-15 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:86:"Villa Karen, Municipio Warnes, Provincia Warnes, Santa Cruz, Bolivia, Municipio Warnes";s:6:"estado";s:6:"activo";s:19:"total_participantes";i:1;s:4:"tipo";s:6:"evento";}i:9;a:8:{s:2:"id";i:9;s:6:"titulo";s:2:"hi";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-14 20:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-14 22:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:47:"Municipio Entre Rios, O'Connor, Tarija, Bolivia";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:1;s:4:"tipo";s:11:"mega_evento";}i:10;a:8:{s:2:"id";i:3;s:6:"titulo";s:20:"Clase de Tecnologias";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-18 20:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-18 21:40:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:55:"Municipio Warnes, Provincia Warnes, Santa Cruz, Bolivia";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:1;s:4:"tipo";s:11:"mega_evento";}i:11;a:8:{s:2:"id";i:4;s:6:"titulo";s:37:"Jornada de Reforestación Comunitaria";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-19 09:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-19 12:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:121:"RN4: Vía Santa Cruz-Montero-Guabira, Naranjal, Municipio Warnes, Provincia Warnes, Santa Cruz, Bolivia, Municipio Warnes";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:0;s:4:"tipo";s:6:"evento";}i:12;a:8:{s:2:"id";i:30;s:6:"titulo";s:35:"Festival Cultural de la Chiquitania";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-08 08:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-08 10:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:158:"Pesque y Pague, Camino a Buen Retiro, Buen Retiro, Municipio Porongo (Ayacucho), Provincia Andrés Ibáñez, Santa Cruz, Bolivia, Municipio Porongo (Ayacucho)";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:0;s:4:"tipo";s:6:"evento";}i:13;a:8:{s:2:"id";i:32;s:6:"titulo";s:34:"Danzas chiquitanas (nivel inicial)";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-16 10:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-16 12:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:78:"San José de Chiquitos, Chiquitos, Santa Cruz, Bolivia, San José de Chiquitos";s:6:"estado";s:6:"activo";s:19:"total_participantes";i:0;s:4:"tipo";s:6:"evento";}i:14;a:8:{s:2:"id";i:31;s:6:"titulo";s:21:"Alas Chiquitanas 2025";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-15 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-15 16:10:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:51:"Portachuelo, Sara, Santa Cruz, Bolivia, Portachuelo";s:6:"estado";s:6:"activo";s:19:"total_participantes";i:0;s:4:"tipo";s:6:"evento";}i:15;a:8:{s:2:"id";i:33;s:6:"titulo";s:41:"Historia, Patrimonio y Memoria Chiquitana";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-16 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-16 16:10:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:116:"Municipio San Antonio de Lomerio, Provincia Ñuflo de Chávez, Santa Cruz, Bolivia, Municipio San Antonio de Lomerio";s:6:"estado";s:6:"activo";s:19:"total_participantes";i:0;s:4:"tipo";s:6:"evento";}i:16;a:8:{s:2:"id";i:34;s:6:"titulo";s:65:"Feria de Emprendimientos – Manos Chiquitanas (Alas Chiquitanas)";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-15 10:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-15 12:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:86:"El Carmen Rivero Tórrez, Germán Busch, Santa Cruz, Bolivia, El Carmen Rivero Tórrez";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:0;s:4:"tipo";s:6:"evento";}i:17;a:8:{s:2:"id";i:4;s:6:"titulo";s:1:"a";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-18 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-18 20:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:101:"Estación de Control, Medición y Compresión Villa Montes, Villa Montes, Gran Chaco, Tarija, Bolivia";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:0;s:4:"tipo";s:11:"mega_evento";}i:18;a:8:{s:2:"id";i:1;s:6:"titulo";s:13:"Hola Mundo :)";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-18 14:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-18 20:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:61:"Municipio Charagua, Provincia Cordillera, Santa Cruz, Bolivia";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:0;s:4:"tipo";s:11:"mega_evento";}i:19;a:8:{s:2:"id";i:13;s:6:"titulo";s:22:"Clase de Proyectos 123";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-10 04:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-10 06:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:41:"Colpa Bélgica, Sara, Santa Cruz, Bolivia";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:0;s:4:"tipo";s:11:"mega_evento";}i:20;a:8:{s:2:"id";i:16;s:6:"titulo";s:32:"Semana Cultural Alas Chiquitanas";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-15 12:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-15 18:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:55:"Municipio Warnes, Provincia Warnes, Santa Cruz, Bolivia";s:6:"estado";s:13:"planificacion";s:19:"total_participantes";i:0;s:4:"tipo";s:11:"mega_evento";}i:21;a:8:{s:2:"id";i:7;s:6:"titulo";s:4:"gg 1";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-24 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-11-24 16:10:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:80:"Calle Nanawa, Miraflores, Centro, La Paz, Pedro Domingo Murillo, La Paz, Bolivia";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:0;s:4:"tipo";s:11:"mega_evento";}i:22;a:8:{s:2:"id";i:11;s:6:"titulo";s:50:"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-08 08:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-08 10:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:66:"Cuta, Municipio Cabezas, Provincia Cordillera, Santa Cruz, Bolivia";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:0;s:4:"tipo";s:11:"mega_evento";}i:23;a:8:{s:2:"id";i:10;s:6:"titulo";s:27:"MUESTRA  ANUAL DE PROYECTOS";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-05 08:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-05 13:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:41:"Colpa Bélgica, Sara, Santa Cruz, Bolivia";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:0;s:4:"tipo";s:11:"mega_evento";}i:24;a:8:{s:2:"id";i:17;s:6:"titulo";s:27:"Maratón Cultural Solidaria";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-16 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-16 18:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:75:"Municipio Cuatro Cañadas, Provincia Ñuflo de Chávez, Santa Cruz, Bolivia";s:6:"estado";s:13:"planificacion";s:19:"total_participantes";i:0;s:4:"tipo";s:11:"mega_evento";}i:25;a:8:{s:2:"id";i:14;s:6:"titulo";s:11:"PRUEBA 2025";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-12 04:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-12 06:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:138:"Camino Pozo Colorado-Guenda Espejo, El Tucan, Pozo Colorado, Municipio Porongo (Ayacucho), Provincia Andrés Ibáñez, Santa Cruz, Bolivia";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:0;s:4:"tipo";s:11:"mega_evento";}i:26;a:8:{s:2:"id";i:15;s:6:"titulo";s:53:"Mega Festival “Alas Chiquitanas” – Cultura Viva";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-15 10:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-15 12:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:82:"Municipio San Antonio de Lomerio, Provincia Ñuflo de Chávez, Santa Cruz, Bolivia";s:6:"estado";s:10:"finalizado";s:19:"total_participantes";i:0;s:4:"tipo";s:11:"mega_evento";}i:27;a:8:{s:2:"id";i:18;s:6:"titulo";s:43:"Encuentro Nacional de Voluntariado Cultural";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-17 10:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-17 12:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:61:"Municipio Charagua, Provincia Cordillera, Santa Cruz, Bolivia";s:6:"estado";s:13:"planificacion";s:19:"total_participantes";i:0;s:4:"tipo";s:11:"mega_evento";}i:28;a:8:{s:2:"id";i:19;s:6:"titulo";s:42:"Congreso de Cultura y Gestión Comunitaria";s:12:"fecha_inicio";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-16 14:30:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"fecha_fin";O:25:"Illuminate\\Support\\Carbon":3:{s:4:"date";s:26:"2025-12-16 16:10:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}s:9:"ubicacion";s:64:"Barrial, Municipio Warnes, Provincia Warnes, Santa Cruz, Bolivia";s:6:"estado";s:13:"planificacion";s:19:"total_participantes";i:0;s:4:"tipo";s:11:"mega_evento";}}s:18:"actividad_reciente";a:30:{s:10:"2025-11-15";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-11-16";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-11-17";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-11-18";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-11-19";a:4:{s:10:"reacciones";i:1;s:11:"compartidos";i:0;s:13:"inscripciones";i:2;s:5:"total";i:3;}s:10:"2025-11-20";a:4:{s:10:"reacciones";i:1;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:1;}s:10:"2025-11-21";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-11-22";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-11-23";a:4:{s:10:"reacciones";i:2;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:2;}s:10:"2025-11-24";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-11-25";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:1;s:5:"total";i:1;}s:10:"2025-11-26";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-11-27";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-11-28";a:4:{s:10:"reacciones";i:2;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:2;}s:10:"2025-11-29";a:4:{s:10:"reacciones";i:1;s:11:"compartidos";i:9;s:13:"inscripciones";i:0;s:5:"total";i:10;}s:10:"2025-11-30";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-12-01";a:4:{s:10:"reacciones";i:2;s:11:"compartidos";i:2;s:13:"inscripciones";i:0;s:5:"total";i:4;}s:10:"2025-12-02";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:9;s:13:"inscripciones";i:0;s:5:"total";i:9;}s:10:"2025-12-03";a:4:{s:10:"reacciones";i:3;s:11:"compartidos";i:5;s:13:"inscripciones";i:3;s:5:"total";i:11;}s:10:"2025-12-04";a:4:{s:10:"reacciones";i:1;s:11:"compartidos";i:1;s:13:"inscripciones";i:1;s:5:"total";i:3;}s:10:"2025-12-05";a:4:{s:10:"reacciones";i:4;s:11:"compartidos";i:8;s:13:"inscripciones";i:2;s:5:"total";i:14;}s:10:"2025-12-06";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-12-07";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-12-08";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-12-09";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:4;s:13:"inscripciones";i:2;s:5:"total";i:6;}s:10:"2025-12-10";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-12-11";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-12-12";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-12-13";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:0;s:13:"inscripciones";i:0;s:5:"total";i:0;}s:10:"2025-12-14";a:4:{s:10:"reacciones";i:0;s:11:"compartidos";i:2;s:13:"inscripciones";i:0;s:5:"total";i:2;}}s:12:"comparativas";a:4:{s:10:"reacciones";a:4:{s:6:"actual";i:17;s:8:"anterior";i:0;s:11:"crecimiento";d:100;s:9:"tendencia";s:2:"up";}s:11:"compartidos";a:4:{s:6:"actual";i:41;s:8:"anterior";i:0;s:11:"crecimiento";d:100;s:9:"tendencia";s:2:"up";}s:11:"voluntarios";a:4:{s:6:"actual";i:3;s:8:"anterior";i:0;s:11:"crecimiento";d:100;s:9:"tendencia";s:2:"up";}s:13:"participantes";a:4:{s:6:"actual";i:30;s:8:"anterior";i:0;s:11:"crecimiento";d:100;s:9:"tendencia";s:2:"up";}}s:14:"metricas_radar";a:4:{s:10:"reacciones";d:21;s:11:"compartidos";d:61;s:11:"voluntarios";d:4;s:13:"participantes";d:32;}s:7:"alertas";a:4:{i:0;a:4:{s:4:"tipo";s:15:"sin_voluntarios";s:9:"severidad";s:6:"danger";s:7:"mensaje";s:102:"El evento 'Taller de Primeros Auxilios para la Comunidad' inicia pronto y tiene menos de 5 voluntarios";s:9:"evento_id";i:6;}i:1;a:4:{s:4:"tipo";s:15:"sin_voluntarios";s:9:"severidad";s:6:"danger";s:7:"mensaje";s:91:"El evento 'Danzas chiquitanas (nivel inicial)' inicia pronto y tiene menos de 5 voluntarios";s:9:"evento_id";i:32;}i:2;a:4:{s:4:"tipo";s:15:"sin_voluntarios";s:9:"severidad";s:6:"danger";s:7:"mensaje";s:78:"El evento 'Alas Chiquitanas 2025' inicia pronto y tiene menos de 5 voluntarios";s:9:"evento_id";i:31;}i:3;a:4:{s:4:"tipo";s:15:"sin_voluntarios";s:9:"severidad";s:6:"danger";s:7:"mensaje";s:98:"El evento 'Historia, Patrimonio y Memoria Chiquitana' inicia pronto y tiene menos de 5 voluntarios";s:9:"evento_id";i:33;}}}	1765804937
laravel-cache-reportes_kpis_ong_4	a:28:{s:18:"total_mega_eventos";i:14;s:24:"mega_eventos_finalizados";i:0;s:20:"mega_eventos_activos";i:6;s:23:"mega_eventos_cancelados";i:0;s:24:"total_participantes_mega";i:5;s:25:"total_patrocinadores_mega";i:2;s:22:"tasa_finalizacion_mega";d:0;s:21:"tasa_utilizacion_mega";d:0.4;s:13:"total_eventos";i:16;s:19:"eventos_finalizados";i:10;s:15:"eventos_activos";i:1;s:18:"eventos_cancelados";i:0;s:27:"total_participantes_eventos";i:12;s:28:"total_patrocinadores_eventos";i:3;s:25:"tasa_finalizacion_eventos";d:62.5;s:21:"total_eventos_general";i:30;s:25:"total_finalizados_general";i:10;s:19:"total_participantes";i:17;s:20:"total_patrocinadores";i:5;s:17:"tasa_finalizacion";d:33.33;s:16:"tasa_cancelacion";d:0;s:25:"detalle_tasa_finalizacion";a:3:{s:17:"eventos_regulares";a:4:{s:5:"total";i:16;s:11:"finalizados";i:10;s:4:"tasa";d:62.5;s:10:"porcentaje";d:53.33;}s:12:"mega_eventos";a:4:{s:5:"total";i:14;s:11:"finalizados";i:0;s:4:"tasa";d:0;s:10:"porcentaje";d:46.67;}s:11:"consolidado";a:3:{s:5:"total";i:30;s:11:"finalizados";i:10;s:4:"tasa";d:33.33;}}s:23:"eventos_ultimos_6_meses";i:30;s:26:"eventos_6_meses_anteriores";i:0;s:22:"crecimiento_porcentual";i:100;s:15:"capacidad_total";i:1250;s:18:"promedio_capacidad";d:89.29;s:22:"distribucion_categoria";a:3:{s:6:"social";i:5;s:9:"educativo";i:3;s:8:"cultural";i:3;}}	1765804071
\.


--
-- TOC entry 5465 (class 0 OID 36100)
-- Dependencies: 220
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- TOC entry 5508 (class 0 OID 43719)
-- Dependencies: 263
-- Data for Name: categorias_mega_eventos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categorias_mega_eventos (id, codigo, nombre, descripcion, icono, color, orden, activo, created_at, updated_at, deleted_at) FROM stdin;
1	social	Social	Evento social	fas fa-users	primary	1	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
2	cultural	Cultural	Evento cultural	fas fa-theater-masks	purple	2	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
3	deportivo	Deportivo	Evento deportivo	fas fa-running	danger	3	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
4	educativo	Educativo	Evento educativo	fas fa-graduation-cap	info	4	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
5	benefico	Benéfico	Evento benéfico	fas fa-heart	danger	5	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
6	ambiental	Ambiental	Evento ambiental	fas fa-leaf	success	6	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
7	otro	Otro	Otra categoría	fas fa-calendar	secondary	7	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
\.


--
-- TOC entry 5510 (class 0 OID 43735)
-- Dependencies: 265
-- Data for Name: ciudades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciudades (id, nombre, codigo_postal, departamento, pais, lat, lng, activo, created_at, updated_at, deleted_at) FROM stdin;
1	Santa Cruz de la Sierra	\N	Santa Cruz	Bolivia	-17.8146000	-63.1561000	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
2	La Paz	\N	La Paz	Bolivia	-16.5000000	-68.1500000	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
3	Cochabamba	\N	Cochabamba	Bolivia	-17.3935000	-66.1570000	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
4	Sucre	\N	Chuquisaca	Bolivia	-19.0196000	-65.2620000	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
5	Oruro	\N	Oruro	Bolivia	-17.9750000	-67.1100000	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
6	Potosí	\N	Potosí	Bolivia	-19.5833000	-65.7500000	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
7	Tarija	\N	Tarija	Bolivia	-21.5311000	-64.7311000	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
8	Trinidad	\N	Beni	Bolivia	-14.8333000	-64.9000000	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
9	Cobija	\N	Pando	Bolivia	-11.0333000	-68.7333000	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
\.


--
-- TOC entry 5476 (class 0 OID 36175)
-- Dependencies: 231
-- Data for Name: empresas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empresas (user_id, nombre_empresa, "NIT", telefono, direccion, sitio_web, descripcion, created_at, updated_at, foto_perfil) FROM stdin;
5	Servicell Pumari	1020304050-7	+591 6796864	Villa montes	https://servicellpumari.com	Bienvenido a Servicell Pumari	2025-11-18 19:34:22	2025-11-27 12:52:04	perfil/empresa/5/e6ae5c7b-3499-46f8-9677-85d5273dea94.png
8	Zabala	15151515	+591 72174576	Av. América 15, Cochabamba	https://zabala.org	Hola esto es una pruebaaaaa	2025-11-27 14:42:44	2025-11-27 14:42:44	\N
13	Deli Sweet	15151515	+591 35360000	Municipio San Miguel de Velasco, Velasco, Santa Cruz, Bolivia	https://delisweet.com	Deli Sweet	2025-12-05 14:01:08	2025-12-05 14:01:08	\N
7	Univalle	2539602	+591 77005645	Av. Beni #123 (esq. 4to Anillo), Santa Cruz de la Sierra, Bolivia	https://www.univalle.edu/	Universidad del Valle Privada	2025-11-25 19:45:03	2025-12-07 02:50:50	perfil/empresa/7/d97dde97-9180-4a1e-9bcd-390c142f43ad.png
\.


--
-- TOC entry 5518 (class 0 OID 43797)
-- Dependencies: 273
-- Data for Name: estados_evento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estados_evento (id, codigo, nombre, descripcion, tipo, color, icono, orden, activo, created_at, updated_at, deleted_at) FROM stdin;
1	borrador	Borrador	Evento en borrador	evento	secondary	fas fa-edit	1	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
2	publicado	Publicado	Evento publicado	evento	success	fas fa-check	2	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
3	cancelado	Cancelado	Evento cancelado	evento	danger	fas fa-times	3	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
4	planificacion	En Planificación	Mega evento en planificación	mega_evento	info	fas fa-calendar-alt	1	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
5	activo	Activo	Mega evento activo	mega_evento	success	fas fa-play	2	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
6	en_curso	En Curso	Mega evento en curso	mega_evento	warning	fas fa-spinner	3	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
7	finalizado	Finalizado	Mega evento finalizado	mega_evento	secondary	fas fa-check-circle	4	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
8	cancelado_mega	Cancelado	Mega evento cancelado	mega_evento	danger	fas fa-times-circle	5	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
\.


--
-- TOC entry 5514 (class 0 OID 43766)
-- Dependencies: 269
-- Data for Name: estados_participacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estados_participacion (id, codigo, nombre, descripcion, color, icono, orden, activo, created_at, updated_at, deleted_at) FROM stdin;
1	pendiente	Pendiente	Solicitud pendiente de aprobación	warning	fas fa-clock	1	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
2	aprobada	Aprobada	Participación aprobada	success	fas fa-check-circle	2	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
3	rechazada	Rechazada	Participación rechazada	danger	fas fa-times-circle	3	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
\.


--
-- TOC entry 5485 (class 0 OID 36249)
-- Dependencies: 240
-- Data for Name: evento_auspiciadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evento_auspiciadores (id, evento_id, empresa_id, tipo_aporte, monto, descripcion, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5524 (class 0 OID 43982)
-- Dependencies: 279
-- Data for Name: evento_compartidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evento_compartidos (id, evento_id, externo_id, nombres, apellidos, email, metodo, created_at, updated_at, ip_address, user_agent) FROM stdin;
1	7	4	\N	\N	\N	qr	2025-11-29 02:41:44	2025-11-29 02:41:44	\N	\N
2	7	4	\N	\N	\N	link	2025-11-29 02:41:47	2025-11-29 02:41:47	\N	\N
3	7	4	\N	\N	\N	link	2025-11-29 02:41:54	2025-11-29 02:41:54	\N	\N
4	5	4	\N	\N	\N	qr	2025-11-29 04:09:52	2025-11-29 04:09:52	\N	\N
5	7	4	\N	\N	\N	qr	2025-11-29 04:15:14	2025-11-29 04:15:14	\N	\N
6	7	4	\N	\N	\N	qr	2025-11-29 04:18:13	2025-11-29 04:18:13	\N	\N
7	7	4	\N	\N	\N	qr	2025-11-29 04:22:36	2025-11-29 04:22:36	\N	\N
8	6	4	\N	\N	\N	qr	2025-11-29 04:28:09	2025-11-29 04:28:09	\N	\N
9	6	4	\N	\N	\N	qr	2025-11-29 04:57:31	2025-11-29 04:57:31	\N	\N
10	7	4	\N	\N	\N	qr	2025-12-01 04:44:07	2025-12-01 04:44:07	\N	\N
11	5	4	\N	\N	\N	qr	2025-12-01 16:47:56	2025-12-01 16:47:56	\N	\N
12	6	4	\N	\N	\N	qr	2025-12-02 13:32:51	2025-12-02 13:32:51	\N	\N
13	6	4	\N	\N	\N	link	2025-12-02 13:33:37	2025-12-02 13:33:37	\N	\N
14	6	4	\N	\N	\N	qr	2025-12-02 13:36:08	2025-12-02 13:36:08	\N	\N
15	6	4	\N	\N	\N	qr	2025-12-02 13:38:27	2025-12-02 13:38:27	\N	\N
16	6	4	\N	\N	\N	qr	2025-12-02 13:44:39	2025-12-02 13:44:39	\N	\N
17	6	4	\N	\N	\N	link	2025-12-02 13:46:25	2025-12-02 13:46:25	\N	\N
18	7	4	\N	\N	\N	qr	2025-12-02 13:49:53	2025-12-02 13:49:53	\N	\N
19	7	4	\N	\N	\N	link	2025-12-02 13:51:16	2025-12-02 13:51:16	\N	\N
20	7	4	\N	\N	\N	qr	2025-12-02 18:35:05	2025-12-02 18:35:05	\N	\N
21	7	4	\N	\N	\N	qr	2025-12-03 14:02:37	2025-12-03 14:02:37	\N	\N
22	7	4	\N	\N	\N	qr	2025-12-03 14:05:19	2025-12-03 14:05:19	\N	\N
23	3	4	\N	\N	\N	qr	2025-12-03 14:11:55	2025-12-03 14:11:55	\N	\N
24	3	4	\N	\N	\N	qr	2025-12-03 15:59:44	2025-12-03 15:59:44	\N	\N
27	26	4	\N	\N	\N	qr	2025-12-03 20:47:47	2025-12-03 20:47:47	\N	\N
28	5	4	\N	\N	\N	qr	2025-12-04 19:17:02	2025-12-04 19:17:02	\N	\N
29	29	4	\N	\N	\N	qr	2025-12-05 14:29:15	2025-12-05 14:29:15	\N	\N
30	29	4	\N	\N	\N	qr	2025-12-05 15:27:45	2025-12-05 15:27:45	\N	\N
31	7	4	\N	\N	\N	qr	2025-12-05 15:32:31	2025-12-05 15:32:31	\N	\N
32	29	4	\N	\N	\N	qr	2025-12-05 15:59:24	2025-12-05 15:59:24	\N	\N
33	29	4	\N	\N	\N	qr	2025-12-05 16:14:02	2025-12-05 16:14:02	\N	\N
34	7	4	\N	\N	\N	qr	2025-12-05 16:27:17	2025-12-05 16:27:17	\N	\N
35	6	4	\N	\N	\N	qr	2025-12-05 16:36:13	2025-12-05 16:36:13	\N	\N
36	6	4	\N	\N	\N	qr	2025-12-05 16:39:02	2025-12-05 16:39:02	\N	\N
37	29	4	\N	\N	\N	qr	2025-12-09 03:46:33	2025-12-09 03:46:33	\N	\N
38	29	4	\N	\N	\N	qr	2025-12-09 03:53:52	2025-12-09 03:53:52	\N	\N
39	7	4	\N	\N	\N	qr	2025-12-09 03:54:56	2025-12-09 03:54:56	\N	\N
40	29	4	\N	\N	\N	qr	2025-12-09 21:54:39	2025-12-09 21:54:39	\N	\N
41	7	\N	\N	\N	\N	link	2025-12-14 06:13:45	2025-12-14 06:13:45	\N	\N
42	7	\N	\N	\N	\N	link	2025-12-14 06:13:53	2025-12-14 06:13:53	\N	\N
43	34	4	\N	\N	\N	qr	2025-12-15 00:54:20	2025-12-15 00:54:20	\N	\N
44	35	4	\N	\N	\N	qr	2025-12-15 13:01:22	2025-12-15 13:01:22	\N	\N
45	33	4	\N	\N	\N	qr	2025-12-15 13:08:42	2025-12-15 13:08:42	\N	\N
\.


--
-- TOC entry 5502 (class 0 OID 43659)
-- Dependencies: 257
-- Data for Name: evento_empresas_participantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evento_empresas_participantes (id, evento_id, empresa_id, estado, asistio, tipo_colaboracion, descripcion_colaboracion, activo, created_at, updated_at) FROM stdin;
7	2	5	asignada	f	Patrocinador	\N	t	2025-11-25 22:13:29	2025-11-25 22:13:29
8	3	5	asignada	f	Patrocinador	\N	t	2025-11-25 22:13:29	2025-11-25 22:13:29
9	4	5	asignada	f	Patrocinador	\N	t	2025-11-25 22:13:29	2025-11-25 22:13:29
14	26	7	asignada	f	Patrocinador	\N	t	2025-12-03 20:45:22	2025-12-03 20:45:22
15	27	7	asignada	f	Patrocinador	\N	t	2025-12-04 01:51:18	2025-12-04 01:51:18
17	29	7	asignada	f	Patrocinador	\N	t	2025-12-05 13:59:13	2025-12-05 13:59:13
18	30	7	asignada	f	Patrocinador	\N	t	2025-12-07 02:49:47	2025-12-07 02:49:47
19	29	5	asignada	f	Patrocinador	\N	t	2025-12-08 00:46:38	2025-12-08 00:46:38
20	30	5	asignada	f	Patrocinador	\N	t	2025-12-08 00:48:37	2025-12-08 00:48:37
21	31	5	asignada	f	Patrocinador	\N	t	2025-12-15 00:40:31	2025-12-15 00:40:31
22	31	7	asignada	f	Patrocinador	\N	t	2025-12-15 00:40:31	2025-12-15 00:40:31
23	32	7	asignada	f	Patrocinador	\N	t	2025-12-15 00:43:40	2025-12-15 00:43:40
24	33	5	asignada	f	Patrocinador	\N	t	2025-12-15 00:47:12	2025-12-15 00:47:12
25	33	7	asignada	f	Patrocinador	\N	t	2025-12-15 00:47:12	2025-12-15 00:47:12
26	34	5	asignada	f	Patrocinador	\N	t	2025-12-15 00:50:51	2025-12-15 00:50:51
27	34	13	asignada	f	Patrocinador	\N	t	2025-12-15 00:50:51	2025-12-15 00:50:51
28	34	7	asignada	f	Patrocinador	\N	t	2025-12-15 00:50:51	2025-12-15 00:50:51
29	35	7	asignada	f	Patrocinador	\N	t	2025-12-15 12:58:57	2025-12-15 12:58:57
\.


--
-- TOC entry 5487 (class 0 OID 36268)
-- Dependencies: 242
-- Data for Name: evento_integrantes_externos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evento_integrantes_externos (id, evento_id, integrante_externo_id, rol, confirmado, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5496 (class 0 OID 36387)
-- Dependencies: 251
-- Data for Name: evento_participaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evento_participaciones (id, evento_id, externo_id, asistio, puntos, created_at, updated_at, estado, estado_participacion_id, ticket_codigo, checkin_at, checkout_at, modo_asistencia, observaciones, registrado_por, estado_asistencia, ip_registro, ubicacion_aproximada, fecha_modificacion, usuario_modifico, comentario_asistencia, qr_descargado_at) FROM stdin;
1	2	3	f	0	2025-11-19 02:48:43	2025-11-19 03:32:05	aprobada	2	\N	\N	\N	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	\N
2	6	6	f	0	2025-11-19 20:37:02	2025-11-19 20:37:02	aprobada	2	\N	\N	\N	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	\N
4	14	3	f	0	2025-11-25 22:59:43	2025-11-25 22:59:43	aprobada	2	\N	\N	\N	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	\N
5	5	3	f	0	2025-12-03 16:34:28	2025-12-03 16:34:28	aprobada	2	ecbdcb15-c3ea-41d1-992c-57050ee9f6b5	\N	\N	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	\N
7	7	3	f	0	2025-12-03 21:31:33	2025-12-03 21:31:33	aprobada	2	43511791-f246-4939-9455-dfb7861af7da	\N	\N	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	\N
9	6	3	f	0	2025-12-05 06:43:26	2025-12-05 06:43:26	aprobada	\N	7d3d53ed-c1cb-40b5-95bb-90400f5bd9e8	\N	\N	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	\N
8	27	3	t	0	2025-12-04 01:52:11	2025-12-05 07:07:49	aprobada	\N	52ebad81-0c1d-4b8e-a8b3-cdd351934155	2025-12-05 07:07:49	\N	Validación por ticket	Validación desde welcome.php - Validación usuario	3	asistido	192.168.0.6	\N	2025-12-05 07:07:49	3	\N	\N
6	26	3	t	0	2025-12-03 21:12:06	2025-12-05 15:50:25	aprobada	2	37b16526-90af-4dc0-8a27-24a17a80b764	2025-12-05 15:50:25	\N	Validación por ticket	Validación desde welcome.php - Validación usuario	3	asistido	10.26.15.110	\N	2025-12-05 15:50:25	3	\N	\N
11	29	14	f	0	2025-12-09 03:54:08	2025-12-09 03:54:08	aprobada	\N	b8b89604-477b-48a5-93fa-06d2a4ff327a	\N	\N	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	\N
12	7	14	f	0	2025-12-09 03:55:10	2025-12-09 03:55:10	aprobada	\N	ced2dd47-dcbb-4999-b933-a7e484b3ac3a	\N	\N	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	\N
10	29	3	f	0	2025-12-05 15:35:48	2025-12-09 05:41:50	aprobada	\N	ceb0f97c-1168-4928-9ada-e9ba41383004	\N	\N	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	2025-12-09 05:41:50
13	35	3	f	0	2025-12-15 12:59:58	2025-12-15 12:59:58	aprobada	\N	855cd999-7018-40f1-be9d-4747f1d7bfba	\N	\N	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	\N
14	33	3	f	0	2025-12-15 13:09:45	2025-12-15 13:09:45	aprobada	\N	253c9bcd-ef85-4a3d-a127-f0fc72ac6b9b	\N	\N	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 5522 (class 0 OID 43954)
-- Dependencies: 277
-- Data for Name: evento_participantes_no_registrados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evento_participantes_no_registrados (id, evento_id, nombres, apellidos, email, telefono, estado, asistio, created_at, updated_at, ticket_codigo) FROM stdin;
2	7	La buena semilla	Meditaciones cotidianas	\N	\N	aprobada	f	2025-11-29 02:12:35	2025-11-29 02:12:56	\N
1	7	Jose luis	Perez	\N	\N	aprobada	f	2025-11-29 02:04:46	2025-11-29 02:13:01	\N
3	7	Pan	Cracio	\N	\N	aprobada	f	2025-11-29 02:28:41	2025-11-29 02:29:00	\N
4	5	Bam	Bino	\N	\N	aprobada	f	2025-11-29 04:10:25	2025-11-29 04:10:44	\N
5	7	Sante	Sport	\N	\N	aprobada	f	2025-11-29 04:19:50	2025-11-29 04:19:50	\N
6	6	Nutrex	Zoni	\N	\N	aprobada	f	2025-11-29 04:58:16	2025-11-29 04:58:16	\N
7	7	Edu	Pa	\N	\N	aprobada	f	2025-12-01 04:44:58	2025-12-01 04:44:58	\N
8	5	General	Lux	\N	\N	aprobada	f	2025-12-01 16:48:59	2025-12-01 16:48:59	\N
9	3	Hi	World	\N	\N	aprobada	f	2025-12-03 14:12:25	2025-12-03 14:12:25	\N
10	26	Pan	Pan	\N	\N	aprobada	f	2025-12-03 20:48:20	2025-12-03 20:48:20	\N
11	29	Josué Daniel	Antezana	\N	\N	aprobada	f	2025-12-05 14:29:45	2025-12-05 14:29:45	83c82e33-b3ee-4220-b446-add5154369da
12	29	Jorge	Claros	\N	\N	aprobada	f	2025-12-05 15:28:14	2025-12-05 15:28:14	9c846336-28e2-4be6-a512-e56c8fe583e1
13	7	Jorge	Claros	\N	\N	aprobada	f	2025-12-05 15:32:52	2025-12-05 15:32:52	39d33f6b-ada4-4ab8-95a6-38eefd6c8a37
14	29	Anghelo	Claros	\N	\N	aprobada	f	2025-12-05 16:14:27	2025-12-05 16:14:27	7b532cd1-ba85-400f-b497-fa37c57beda1
15	7	Leonardo	González	\N	\N	aprobada	f	2025-12-05 16:27:41	2025-12-05 16:27:41	eec4a7be-35b8-4ef8-8592-b479eddc25f4
16	7	Josué	Orellana	\N	\N	aprobada	f	2025-12-05 16:28:00	2025-12-05 16:28:00	98025304-7498-47eb-af0e-30df39ee6dc2
17	6	Mateo	González	\N	\N	aprobada	f	2025-12-05 16:38:07	2025-12-05 16:38:07	1a3dfaaa-309c-4c8c-8e58-85cb86972306
18	6	Ariel	Claros	\N	\N	aprobada	f	2025-12-05 16:38:53	2025-12-05 16:38:53	4c0afc85-4b17-4db7-b131-64e7b843ee16
19	6	Alejandro	Alderete	\N	\N	aprobada	f	2025-12-05 16:39:54	2025-12-05 16:39:54	8112b2e8-798e-4936-b9ee-f0e70cc46586
\.


--
-- TOC entry 5481 (class 0 OID 36217)
-- Dependencies: 236
-- Data for Name: evento_patrocinadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evento_patrocinadores (id, evento_id, empresa_id, tipo_aporte, monto, descripcion, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5498 (class 0 OID 36414)
-- Dependencies: 253
-- Data for Name: evento_reacciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evento_reacciones (id, evento_id, externo_id, created_at, updated_at, nombres, apellidos, email) FROM stdin;
4	6	6	2025-11-19 19:52:23	2025-11-19 19:52:23	\N	\N	\N
5	5	6	2025-11-20 14:33:14	2025-11-20 14:33:14	\N	\N	\N
6	7	6	2025-11-23 00:39:34	2025-11-23 00:39:34	\N	\N	\N
8	3	6	2025-11-23 00:39:50	2025-11-23 00:39:50	\N	\N	\N
10	14	4	2025-11-28 00:50:47	2025-11-28 00:50:47	\N	\N	\N
11	5	3	2025-11-28 00:52:02	2025-11-28 00:52:02	\N	\N	\N
12	6	\N	2025-11-29 04:58:20	2025-11-29 04:58:20	Nutrex	Zoni	\N
13	5	\N	2025-12-01 16:48:36	2025-12-01 16:48:36	General	Lux	\N
14	6	3	2025-12-01 23:25:21	2025-12-01 23:25:21	\N	\N	\N
15	3	\N	2025-12-03 14:12:22	2025-12-03 14:12:22	Hi	World	\N
16	26	\N	2025-12-03 20:48:18	2025-12-03 20:48:18	Pan	Pan	\N
17	26	3	2025-12-03 21:11:59	2025-12-03 21:11:59	\N	\N	\N
18	27	3	2025-12-04 01:52:07	2025-12-04 01:52:07	\N	\N	\N
19	29	\N	2025-12-05 14:30:02	2025-12-05 14:30:02	Josué Daniel	Antezana	\N
22	7	\N	2025-12-05 15:33:42	2025-12-05 15:33:42	Jorge	Claros	\N
23	7	\N	2025-12-05 16:28:25	2025-12-05 16:28:25	Josué	Orellana	\N
24	6	\N	2025-12-05 16:37:55	2025-12-05 16:37:55	Mateo	González	\N
\.


--
-- TOC entry 5479 (class 0 OID 36200)
-- Dependencies: 234
-- Data for Name: eventos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.eventos (id, ong_id, titulo, descripcion, tipo_evento, fecha_inicio, fecha_fin, fecha_limite_inscripcion, capacidad_maxima, inscripcion_abierta, estado, lat, lng, direccion, ciudad, imagenes, patrocinadores, auspiciadores, invitados, created_at, updated_at, tipo_evento_id, ciudad_id, lugar_id, estado_evento_id, fecha_finalizacion, visualizaciones) FROM stdin;
2	4	Clase de Proyectos	rrrrrrrrrrrr	taller	2025-11-19 14:30:00	2025-11-19 16:10:00	2025-11-18 23:59:00	50	t	publicado	\N	\N	Santa Cruz de la Sierra, Provincia Andrés Ibáñez, Santa Cruz, Bolivia	Santa Cruz de la Sierra	["\\/storage\\/eventos\\/2\\/fad7835d-2428-4d51-9ed2-e230a2816478.png","\\/storage\\/eventos\\/2\\/358098bc-5fff-4e16-ba8e-776320d9360d.png","\\/storage\\/eventos\\/2\\/2c9ab12e-d2f1-47fd-a018-a28f9b30e53c.png"]	["5"]	[]	[]	2025-11-19 00:41:21	2025-11-19 00:41:24	\N	\N	\N	\N	\N	0
4	4	Jornada de Reforestación Comunitaria	Actividad destinada a la siembra de árboles en zonas afectadas. Buscamos voluntarios comprometidos con el medio ambiente.	voluntariado	2025-11-19 09:00:00	2025-11-19 12:00:00	2025-11-19 07:00:00	\N	t	borrador	\N	\N	RN4: Vía Santa Cruz-Montero-Guabira, Naranjal, Municipio Warnes, Provincia Warnes, Santa Cruz, Bolivia	Municipio Warnes	["https:\\/\\/www.unanleon.edu.ni\\/wp-content\\/uploads\\/2025\\/06\\/REFORESTACION-1024x535.jpg","https:\\/\\/resources.diariolibre.com\\/images\\/binrepository\\/whatsapp-image-2021-10-29-at-8-56-13-pm_17529511_20211029225323-focus-0-0-375-240.jpg","https:\\/\\/www.quitoinforma.gob.ec\\/wp-content\\/uploads\\/2024\\/11\\/reforestacion2-800x445.jpg"]	[5]	[]	[]	2025-11-19 08:57:51	2025-11-19 08:57:51	\N	\N	\N	\N	\N	0
5	4	Feria de Salud Comunitaria 2025	Profesionales de la salud ofrecerán consultas básicas, charlas informativas y campañas preventivas gratuitas para el público.	Selecciona una categoría	2025-12-12 14:30:00	2025-12-12 16:10:00	2025-12-11 23:59:00	150	t	publicado	\N	\N	Riva Palacios, Municipio Cabezas, Provincia Cordillera, Santa Cruz, Bolivia	Municipio Cabezas	["https:\\/\\/i0.wp.com\\/gaceta.facmed.unam.mx\\/wp-content\\/uploads\\/2025\\/05\\/DSC_0001.jpg?resize=1024%2C683&ssl=1","https:\\/\\/www.sedeslapaz.gob.bo\\/wp-content\\/uploads\\/2025\\/05\\/FotoGrid_20250523_151532218-1024x741.jpg"]	[]	[]	[]	2025-11-19 09:13:42	2025-11-19 09:13:42	\N	\N	\N	\N	\N	0
6	4	Taller de Primeros Auxilios para la Comunidad	\N	voluntariado	2025-12-25 09:00:00	2025-12-25 18:00:00	2025-12-24 23:59:00	150	t	publicado	\N	\N	Municipio Charagua, Provincia Cordillera, Santa Cruz, Bolivia	Municipio Charagua	["https:\\/\\/www.cruzroja.gt\\/wp-content\\/uploads\\/2021\\/09\\/IMG_8427.jpg","https:\\/\\/www.eha.cl\\/upload\\/blog\\/galeria\\/normal\\/comunidades-de-establecimientos-parvularios-de-alerce-beneficiados-con-capacitacion-primeros-auxilios-e79e5c36a65773e4eee371b35bab5e56.webp","https:\\/\\/cruzrojapichincha.org\\/wp-content\\/uploads\\/2022\\/01\\/Servicios_-1-scaled.jpg"]	[]	[]	[]	2025-11-19 09:21:57	2025-11-19 09:21:57	\N	\N	\N	\N	\N	0
14	4	Wall-E	Este es mi proyecto de IoT es un mini sumo	otro	2025-11-24 00:12:00	2025-11-25 20:12:00	2025-11-23 12:13:00	1000	t	publicado	-17.3671631	-63.1136288	La Abrita, Municipio Warnes, Provincia Warnes, Santa Cruz, Bolivia	Municipio Warnes	["http:\\/\\/127.0.0.1:8000\\/storage\\/eventos\\/14\\/a366ece6-d5ff-4bce-8673-7a6c1688967f.jpeg"]	[]	[]	[]	2025-11-23 04:13:33	2025-11-23 04:13:41	\N	\N	\N	\N	\N	0
26	4	Alimentando animalitos	Alimentando animalitos de las calles	voluntariado	2025-12-04 14:30:00	2025-12-04 16:10:00	2025-12-03 23:59:00	150	t	publicado	-18.2242524	-63.1925326	San Isidro, Municipio La Guardia, Provincia Andrés Ibáñez, Santa Cruz, Bolivia	Municipio La Guardia	["http:\\/\\/192.168.0.6:8000\\/storage\\/eventos\\/26\\/1226c002-ea3b-4cd6-ba25-e3100823c298.png","http:\\/\\/192.168.0.6:8000\\/storage\\/eventos\\/26\\/214c0e65-483c-4c1e-a1af-569fc7c2b82a.png"]	[7]	[]	[]	2025-12-03 20:45:18	2025-12-03 20:45:22	\N	\N	\N	\N	\N	0
7	4	Taller de Manualidades para Niños	Evento educativo y recreativo para niños donde aprenderán técnicas de pintura y creación de figuras.	taller	2025-12-14 14:30:00	2025-12-14 16:10:00	2025-12-13 23:59:00	150	t	publicado	-18.1449036	-63.2756304	Municipio La Guardia, Provincia Andrés Ibáñez, Santa Cruz, Bolivia	Municipio La Guardia	["https:\\/\\/png.pngtree.com\\/thumb_back\\/fh260\\/background\\/20230518\\/pngtree-two-young-girls-making-paper-crafts-in-south-korea-at-home-image_2537292.jpg","https:\\/\\/img.freepik.com\\/fotos-premium\\/taller-manualidades-otono-ninos-edad-preescolar-creativos_290431-30374.jpg","https:\\/\\/noticiasdoloresdelcerro.wordpress.com\\/wp-content\\/uploads\\/2013\\/11\\/taller-de-manualidades.jpg"]	[]	[]	[]	2025-11-20 14:49:44	2025-12-14 01:19:46	\N	\N	\N	\N	\N	1
27	4	Clash Royale	Juego de batalla	deportivo	2025-12-04 14:30:00	2025-12-04 18:00:00	2025-12-03 23:59:00	100	t	publicado	-17.8447934	-62.7978516	Santa Cruz de la Sierra, Provincia Andrés Ibáñez, Santa Cruz, Bolivia	Santa Cruz de la Sierra	["http:\\/\\/192.168.0.6:8000\\/storage\\/eventos\\/27\\/67c409f0-ba58-4f59-bf37-3dfe89eb8cfb.png","http:\\/\\/192.168.0.6:8000\\/storage\\/eventos\\/27\\/a3340aa5-3c6d-48f2-8d1e-888a717df519.png"]	[7]	[]	[]	2025-12-04 01:51:16	2025-12-04 01:51:18	\N	\N	\N	\N	\N	0
30	4	Festival Cultural de la Chiquitania	Celebración que reúne música barroca, danza chiquitana, gastronomía típica y artesanías de las Misiones Jesuíticas. Participan comunidades de Concepción, San Javier, San Ignacio y más.	cultural	2025-12-08 08:00:00	2025-12-08 10:00:00	2025-12-07 23:59:00	150	t	publicado	-17.7832124	-63.2482910	Pesque y Pague, Camino a Buen Retiro, Buen Retiro, Municipio Porongo (Ayacucho), Provincia Andrés Ibáñez, Santa Cruz, Bolivia	Municipio Porongo (Ayacucho)	["http:\\/\\/192.168.0.6:8000\\/storage\\/eventos\\/30\\/f6b1b303-f461-45aa-9f2c-efe64294e649.jpg","http:\\/\\/192.168.0.6:8000\\/storage\\/eventos\\/30\\/d35fcfe7-af66-4132-af5a-d76f88d3ff21.jpg","http:\\/\\/192.168.0.6:8000\\/storage\\/eventos\\/30\\/ece4b122-d309-404a-9df7-a63ed0cfadaf.jpg"]	[7,"5"]	[]	[]	2025-12-07 02:49:42	2025-12-08 00:35:58	\N	\N	\N	\N	\N	0
29	4	Desarrollo Web para Principiantes 2025	Aprende los fundamentos de HTML, CSS y JavaScript en un taller práctico diseñado para quienes inician en el mundo del desarrollo web.	cultural	2025-12-12 08:00:00	2025-12-12 12:00:00	2025-12-11 23:59:00	150	t	publicado	-21.2599412	-63.4680176	Villa Montes, Gran Chaco, Tarija, Bolivia	Villa Montes	["\\/storage\\/eventos\\/29\\/d66d5716-8370-41a9-a55a-cbdb8060dc90.jpg","\\/storage\\/eventos\\/29\\/3fef7934-ace3-40c2-b56b-cb3889ca7a30.jpg","\\/storage\\/eventos\\/29\\/2f7c125d-9780-4352-8738-d56e5b10c0bc.jpg"]	[7,"5"]	[]	[]	2025-12-05 13:59:07	2025-12-11 20:24:09	\N	\N	\N	\N	\N	0
3	4	PRUEBAA1 2025...	aaaaaaaaaaaa	voluntariado	2025-12-14 14:30:00	2025-12-15 14:30:00	2025-12-13 23:59:00	120	t	publicado	\N	\N	Villa Karen, Municipio Warnes, Provincia Warnes, Santa Cruz, Bolivia	Municipio Warnes	["\\/storage\\/eventos\\/3\\/5c1bfedc-10e4-4e79-b8d7-74e69b528667.jpg","\\/storage\\/eventos\\/3\\/82112368-9230-4563-9cb4-dadd92df2145.jpg","\\/storage\\/eventos\\/3\\/24238d14-e35d-4b55-8cb9-4cd99a3c1ab0.jpeg"]	["5"]	[]	[]	2025-11-19 03:31:48	2025-12-15 12:14:20	\N	\N	\N	\N	\N	0
32	4	Danzas chiquitanas (nivel inicial)	Taller práctico para aprender pasos básicos, postura, ritmo y secuencias tradicionales. No se requiere experiencia previa. Recomendado traer ropa cómoda y botella de agua.	taller	2025-12-16 10:00:00	2025-12-16 12:00:00	2025-12-15 23:59:00	50	t	publicado	-17.7970137	-60.7424220	San José de Chiquitos, Chiquitos, Santa Cruz, Bolivia	San José de Chiquitos	["http:\\/\\/192.168.0.7:8000\\/storage\\/eventos\\/32\\/8587b515-aa7d-4316-b690-28ca041d3e93.jpg","http:\\/\\/192.168.0.7:8000\\/storage\\/eventos\\/32\\/789a7b58-50b6-4b5e-88f9-74d08d84c1e3.jpg","http:\\/\\/192.168.0.7:8000\\/storage\\/eventos\\/32\\/a35850e4-c59d-4972-ba61-e17740156336.JPG"]	[7]	[]	[]	2025-12-15 00:43:40	2025-12-15 00:43:40	\N	\N	\N	\N	\N	0
31	4	Alas Chiquitanas 2025	Presentación oficial del ciclo de actividades de Alas Chiquitanas. Se compartirá la visión del proyecto, objetivos, calendario de acciones y oportunidades para voluntariado/alianzas. Cierre con muestra cultural y espacio de networking.	conferencia	2025-12-15 14:30:00	2025-12-15 16:10:00	2025-12-14 23:59:00	150	t	publicado	-17.4400488	-63.3351767	Portachuelo, Sara, Santa Cruz, Bolivia	Portachuelo	["\\/storage\\/eventos\\/31\\/24d41de9-4580-4c5f-b4e7-702e74a7aecd.jpg","\\/storage\\/eventos\\/31\\/0c81c482-8363-41c1-87aa-b3e2b7ebf3a8.jpg","\\/storage\\/eventos\\/31\\/5f0ba69a-d94c-4062-92ef-bead673e85e0.jpg"]	[5,7]	[]	[]	2025-12-15 00:40:27	2025-12-15 00:44:39	\N	\N	\N	\N	\N	0
33	4	Historia, Patrimonio y Memoria Chiquitana	Espacio de diálogo con invitados/as para conversar sobre historia local, patrimonio cultural, tradiciones vivas y el rol de iniciativas como Alas Chiquitanas en la preservación y difusión.	conferencia	2025-12-16 14:30:00	2025-12-16 16:10:00	2025-12-15 23:59:00	80	t	publicado	-16.7609435	-61.7151958	Municipio San Antonio de Lomerio, Provincia Ñuflo de Chávez, Santa Cruz, Bolivia	Municipio San Antonio de Lomerio	["http:\\/\\/192.168.0.7:8000\\/storage\\/eventos\\/33\\/14f5fa44-53f9-4a13-b556-c346dd9207e6.jpg","http:\\/\\/192.168.0.7:8000\\/storage\\/eventos\\/33\\/9cfead6b-9882-41a8-9784-49eaf7045641.jpg","http:\\/\\/192.168.0.7:8000\\/storage\\/eventos\\/33\\/cad49c0b-8911-4cff-bcfb-6c6b3631d5e5.jpg"]	[5,7]	[]	[]	2025-12-15 00:47:12	2025-12-15 00:47:12	\N	\N	\N	\N	\N	0
34	4	Feria de Emprendimientos – Manos Chiquitanas (Alas Chiquitanas)	Feria para visibilizar y apoyar emprendimientos locales (artesanías, textiles, productos típicos, arte y servicios). Habrá stand por expositora/o, música ambiental y zona de degustación.	conferencia	2025-12-15 10:00:00	2025-12-15 12:00:00	2025-12-14 23:59:00	140	t	publicado	-18.4084610	-58.4028339	El Carmen Rivero Tórrez, Germán Busch, Santa Cruz, Bolivia	El Carmen Rivero Tórrez	["\\/storage\\/eventos\\/34\\/a3fee412-8f0d-48c1-81cc-d98b9782cb3e.jpg","\\/storage\\/eventos\\/34\\/34c863fd-6520-43d7-8305-12a67dac6227.jpg","\\/storage\\/eventos\\/34\\/5915d2b8-6977-4bbc-8ce9-63c447eeada2.jpg"]	[5,13,7]	[]	[]	2025-12-15 00:50:51	2025-12-15 00:58:47	\N	\N	\N	\N	\N	0
35	4	Evento Univalle	univalle univalle univalle univalle	taller	2025-12-15 08:00:00	2025-12-15 16:20:00	2025-12-14 23:59:00	150	t	publicado	-17.5372013	-63.1933594	Camino RN4-La Belgica, Municipio Warnes, Provincia Warnes, Santa Cruz, Bolivia	Municipio Warnes	["http:\\/\\/10.26.8.200:8000\\/storage\\/eventos\\/35\\/2de3c675-8eaa-4ffa-8ad1-78b216529932.jpg","http:\\/\\/10.26.8.200:8000\\/storage\\/eventos\\/35\\/19476b39-dee0-4682-94d5-33ed7e5fc62d.jpg","http:\\/\\/10.26.8.200:8000\\/storage\\/eventos\\/35\\/6fddd41a-d8e9-40f9-bf99-7facfba3d6dd.jpg"]	[7]	[]	[]	2025-12-15 12:58:54	2025-12-15 13:12:03	\N	\N	\N	\N	\N	0
\.


--
-- TOC entry 5470 (class 0 OID 36125)
-- Dependencies: 225
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- TOC entry 5477 (class 0 OID 36187)
-- Dependencies: 232
-- Data for Name: integrantes_externos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.integrantes_externos (user_id, nombres, apellidos, fecha_nacimiento, email, phone_number, descripcion, created_at, updated_at, foto_perfil) FROM stdin;
6	Angel	Pumari	2027-09-09	angel@gmail.com	+591 68839451	Hola	\N	\N	\N
3	Carmen	PA	2005-06-14	carmen@gmail.com	+591 76834132	Hola Mundo	\N	\N	perfil/externo/3/0ba4c039-3160-4687-adf4-c7c99a9dd1f2.jpg
9	Jorge Ariel	Claros	2004-12-15	jorge@gmail.com	+591 77022482	Hola es es una pruebaaaaa	\N	\N	\N
14	Brillos	Johnson's	2006-12-08	gotasdebrillo@gmail.com	+591 7020360	La línea jhonson's gotas de brillo	\N	\N	\N
\.


--
-- TOC entry 5483 (class 0 OID 36236)
-- Dependencies: 238
-- Data for Name: invitados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invitados (id, evento_id, nombre, correo, telefono, cargo, asistio, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5468 (class 0 OID 36117)
-- Dependencies: 223
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- TOC entry 5467 (class 0 OID 36108)
-- Dependencies: 222
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- TOC entry 5512 (class 0 OID 43748)
-- Dependencies: 267
-- Data for Name: lugares; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lugares (id, nombre, direccion, ciudad_id, lat, lng, capacidad, descripcion, telefono, email, sitio_web, activo, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 5526 (class 0 OID 44098)
-- Dependencies: 281
-- Data for Name: mega_evento_compartidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mega_evento_compartidos (id, mega_evento_id, externo_id, nombres, apellidos, email, metodo, created_at, updated_at, ip_address, user_agent) FROM stdin;
1	9	4	\N	\N	\N	qr	2025-12-01 20:01:14	2025-12-01 20:01:14	\N	\N
2	9	3	\N	\N	\N	qr	2025-12-01 20:40:38	2025-12-01 20:40:38	\N	\N
3	9	\N	\N	\N	\N	qr	2025-12-01 20:45:57	2025-12-01 20:45:57	\N	\N
4	9	\N	\N	\N	\N	link	2025-12-01 20:46:16	2025-12-01 20:46:16	\N	\N
6	7	\N	\N	\N	\N	qr	2025-12-01 21:04:23	2025-12-01 21:04:23	\N	\N
8	7	\N	\N	\N	\N	qr	2025-12-01 22:16:24	2025-12-01 22:16:24	\N	\N
9	7	\N	\N	\N	\N	link	2025-12-01 22:16:58	2025-12-01 22:16:58	\N	\N
10	7	\N	\N	\N	\N	qr	2025-12-01 22:20:08	2025-12-01 22:20:08	\N	\N
11	7	\N	\N	\N	\N	qr	2025-12-01 22:27:47	2025-12-01 22:27:47	\N	\N
12	4	\N	\N	\N	\N	link	2025-12-01 22:31:30	2025-12-01 22:31:30	\N	\N
13	4	\N	\N	\N	\N	link	2025-12-01 22:34:19	2025-12-01 22:34:19	\N	\N
15	10	\N	\N	\N	\N	qr	2025-12-05 14:18:04	2025-12-05 14:18:04	\N	\N
16	10	\N	\N	\N	\N	qr	2025-12-05 14:18:06	2025-12-05 14:18:06	\N	\N
17	10	\N	\N	\N	\N	link	2025-12-05 14:19:14	2025-12-05 14:19:14	\N	\N
18	10	\N	\N	\N	\N	link	2025-12-05 14:19:15	2025-12-05 14:19:15	\N	\N
19	11	\N	\N	\N	\N	qr	2025-12-09 03:44:53	2025-12-09 03:44:53	\N	\N
20	9	\N	\N	\N	\N	link	2025-12-13 22:12:28	2025-12-13 22:12:28	\N	\N
21	9	\N	\N	\N	\N	qr	2025-12-13 22:12:38	2025-12-13 22:12:38	\N	\N
22	9	\N	\N	\N	\N	link	2025-12-13 22:12:48	2025-12-13 22:12:48	\N	\N
23	9	\N	\N	\N	\N	link	2025-12-13 22:13:21	2025-12-13 22:13:21	\N	\N
\.


--
-- TOC entry 5490 (class 0 OID 36305)
-- Dependencies: 245
-- Data for Name: mega_evento_ongs_organizadoras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mega_evento_ongs_organizadoras (mega_evento_id, ong_id, rol_organizacion, fecha_union, activo) FROM stdin;
\.


--
-- TOC entry 5491 (class 0 OID 36322)
-- Dependencies: 246
-- Data for Name: mega_evento_participantes_externos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mega_evento_participantes_externos (mega_evento_id, integrante_externo_id, tipo_participacion, habilidades_ofrecidas, disponibilidad, estado_participacion, fecha_registro, comentarios, activo, asistio, modo_asistencia, observaciones, registrado_por, estado_asistencia, checkin_at, checkout_at, ticket_codigo, comentario_asistencia, ip_registro, ubicacion_aproximada, qr_descargado_at) FROM stdin;
3	3	\N	\N	\N	aprobada	2025-11-20 02:38:59	\N	t	f	\N	\N	\N	no_asistido	\N	\N	0aa482d8-f5e3-422d-aa7e-016f4b3a3b7d	\N	\N	\N	\N
9	3	\N	\N	\N	aprobada	2025-12-01 20:35:35	\N	t	f	\N	\N	\N	no_asistido	\N	\N	bfd00e1f-1e2b-4c7f-ba51-66c6eead3e51	\N	\N	\N	2025-12-09 06:11:40
\.


--
-- TOC entry 5530 (class 0 OID 44146)
-- Dependencies: 285
-- Data for Name: mega_evento_participantes_no_registrados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mega_evento_participantes_no_registrados (id, mega_evento_id, nombres, apellidos, email, telefono, estado, asistio, created_at, updated_at, modo_asistencia, observaciones, registrado_por, estado_asistencia, checkin_at, checkout_at, ticket_codigo, comentario_asistencia, ip_registro, ubicacion_aproximada) FROM stdin;
1	9	Clobe	Plus	clobeplus@gmail.com	\N	aprobada	f	2025-12-01 20:48:10	2025-12-01 20:48:10	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	\N
2	7	Hi	Hola	hijola@gmail.com	\N	aprobada	f	2025-12-01 21:05:45	2025-12-01 21:05:45	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	\N
3	4	ekvis	zaba	elviszaba@gmail.com	\N	aprobada	f	2025-12-01 22:32:11	2025-12-01 22:32:11	\N	\N	\N	no_asistido	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 5492 (class 0 OID 36342)
-- Dependencies: 247
-- Data for Name: mega_evento_patrocinadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mega_evento_patrocinadores (mega_evento_id, empresa_id, tipo_patrocinio, monto_contribucion, tipo_contribucion, descripcion_contribucion, fecha_compromiso, estado_compromiso, activo) FROM stdin;
13	7	\N	\N	\N	\N	2025-12-09 19:29:57	confirmado	t
14	5	\N	\N	\N	\N	2025-12-11 12:39:00	confirmado	t
14	7	\N	\N	\N	\N	2025-12-11 12:39:00	confirmado	t
15	5	\N	\N	\N	\N	2025-12-15 01:15:32	confirmado	t
15	7	\N	\N	\N	\N	2025-12-15 01:15:32	confirmado	t
16	5	\N	\N	\N	\N	2025-12-15 05:45:14	confirmado	t
16	7	\N	\N	\N	\N	2025-12-15 05:45:14	confirmado	t
17	7	\N	\N	\N	\N	2025-12-15 05:48:57	confirmado	t
18	7	\N	\N	\N	\N	2025-12-15 05:51:41	confirmado	t
19	7	\N	\N	\N	\N	2025-12-15 10:00:55	confirmado	t
\.


--
-- TOC entry 5528 (class 0 OID 44125)
-- Dependencies: 283
-- Data for Name: mega_evento_reacciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mega_evento_reacciones (id, mega_evento_id, externo_id, nombres, apellidos, email, created_at, updated_at) FROM stdin;
2	9	\N	Clobe	Plus	clobeplus@gmail.com	2025-12-01 20:48:15	2025-12-01 20:48:15
4	9	3	\N	\N	\N	2025-12-01 20:48:55	2025-12-01 20:48:55
5	7	\N	Hi	Hola	hijola@gmail.com	2025-12-01 21:05:43	2025-12-01 21:05:43
6	4	\N	ekvis	zaba	elviszaba@gmail.com	2025-12-01 22:32:15	2025-12-01 22:32:15
\.


--
-- TOC entry 5489 (class 0 OID 36286)
-- Dependencies: 244
-- Data for Name: mega_eventos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mega_eventos (mega_evento_id, titulo, descripcion, fecha_inicio, fecha_fin, ubicacion, fecha_creacion, fecha_actualizacion, activo, categoria, ong_organizadora_principal, capacidad_maxima, es_publico, estado, lat, lng, imagenes, categoria_id, estado_evento_id) FROM stdin;
4	a	a	2025-11-18 14:30:00	2025-11-18 20:30:00	Estación de Control, Medición y Compresión Villa Montes, Villa Montes, Gran Chaco, Tarija, Bolivia	2025-11-19 02:45:17	2025-11-19 02:46:02	t	social	4	100	t	planificacion	-21.3768830	-63.4885767	["\\/hubfs\\/7372825\\/53617176275_f4249d55ff_c.jpg","\\/wp-content\\/uploads\\/2023\\/11\\/que-es-un-evento-corporativo.jpg"]	\N	\N
1	Hola Mundo :)	aaaaaaaaaaa	2025-11-18 14:00:00	2025-11-18 20:00:00	Municipio Charagua, Provincia Cordillera, Santa Cruz, Bolivia	2025-11-18 21:29:08	2025-11-19 00:36:42	t	social	4	100	t	activo	-21.3694422	-63.4878138	[]	\N	\N
13	Clase de Proyectos 123	Esto es un prueba de la clase de proyectos	2025-12-10 04:00:00	2025-12-10 06:00:00	Colpa Bélgica, Sara, Santa Cruz, Bolivia	2025-12-09 19:29:55	2025-12-09 19:58:30	t	educativo	4	120	t	planificacion	-17.4761047	-63.2977295	"[]"	\N	\N
16	Semana Cultural Alas Chiquitanas	Mega evento de varios días con programación diaria (talleres, conversatorios, feria, presentaciones artísticas). Incluye registro por actividad, control de asistencia y resumen de impacto al cierre.	2025-12-15 12:00:00	2025-12-15 18:00:00	Municipio Warnes, Provincia Warnes, Santa Cruz, Bolivia	2025-12-15 05:45:13	2025-12-15 05:45:14	t	cultural	4	150	t	planificacion	-17.4579741	-62.9936474	["http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/16\\/836b5311-c63e-4aa5-8a74-1c98cfa458cd.jpg","http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/16\\/5f2de178-7285-4406-96f9-5869a43846b4.jpg","http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/16\\/73ac0ac8-4ac3-49ca-8e6c-178f44467af4.jpg"]	\N	\N
7	gg 1	gg 1231231	2025-11-24 14:30:00	2025-11-24 16:10:00	Calle Nanawa, Miraflores, Centro, La Paz, Pedro Domingo Murillo, La Paz, Bolivia	2025-11-23 01:39:49	2025-11-23 01:39:49	t	social	4	180	t	en_curso	-16.5008577	-68.1254482	["\\/storage\\/mega_eventos\\/7\\/1a1584dc-5a07-44bc-aa31-4825f1da70b2.png","\\/storage\\/mega_eventos\\/7\\/5917fcab-8234-4f73-bd04-f2805323aa15.png","\\/storage\\/mega_eventos\\/7\\/ee6dfdc9-a220-417b-9fab-d3ce33796d66.png"]	\N	\N
11	AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA	espera, momento, quien sabe	2025-12-08 08:00:00	2025-12-08 10:30:00	Cuta, Municipio Cabezas, Provincia Cordillera, Santa Cruz, Bolivia	2025-12-07 19:46:03	2025-12-07 20:29:08	t	deportivo	4	150	t	planificacion	\N	\N	["\\/storage\\/mega_eventos\\/11\\/d42d46dc-c39b-4370-a81b-f52cb1d83a3f.png","\\/storage\\/mega_eventos\\/11\\/8c77a256-4311-4d6e-a360-b8458d66994c.jpg","\\/storage\\/mega_eventos\\/11\\/127201a4-9f1c-4672-a40d-16d2cfebfe48.jpg"]	\N	\N
10	MUESTRA  ANUAL DE PROYECTOS	Las carreras de Ingeniería de Sistemas Informáticos e Ingeniería Industrial invitan cordialmente a toda la comunidad estudiantil, docente y público en general a participar de la Muestra Anual de Proyectos; un espacio creado para difundir el trabajo desarrollado por los estudiantes	2025-12-05 08:00:00	2025-12-05 13:30:00	Colpa Bélgica, Sara, Santa Cruz, Bolivia	2025-12-05 14:16:33	2025-12-07 16:26:01	t	cultural	4	\N	t	activo	\N	\N	["\\/storage\\/mega_eventos\\/10\\/a89d6804-1d27-47ee-abc7-1516b9d7f0c3.jpeg"]	\N	\N
9	hi	hi hi hi hi hi hi hi	2025-12-14 20:00:00	2025-12-14 22:00:00	Municipio Entre Rios, O'Connor, Tarija, Bolivia	2025-11-26 13:34:57	2025-12-08 22:53:11	t	educativo	4	\N	t	en_curso	\N	\N	["\\/storage\\/mega_eventos\\/9\\/a7d0944b-cea1-47c3-a7eb-25cba4923b02.png","\\/storage\\/mega_eventos\\/9\\/5758050e-55eb-444b-bbcd-297d26267a81.jpg","\\/storage\\/mega_eventos\\/9\\/83c4605f-e079-41d8-a1c8-a20e2a25d03f.png"]	\N	\N
17	Maratón Cultural Solidaria	Jornada continua con presentaciones, feria y puntos de donación. Se reporta el total recolectado, número de participantes y aliados involucrados	2025-12-16 14:30:00	2025-12-16 18:00:00	Municipio Cuatro Cañadas, Provincia Ñuflo de Chávez, Santa Cruz, Bolivia	2025-12-15 05:48:57	2025-12-15 05:48:57	t	deportivo	4	\N	t	planificacion	-17.4547582	-62.7059655	["http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/17\\/f5b60933-f8da-48e3-9202-2504b0485ae7.jpg","http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/17\\/e72eeb5a-468b-4903-81a1-bb7423de2559.jpg","http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/17\\/990fdac2-3144-4b4d-9017-f34f02ab5a16.jpg"]	\N	\N
14	PRUEBA 2025	describe la descripción de tu mega evento	2025-12-12 04:00:00	2025-12-12 06:30:00	Camino Pozo Colorado-Guenda Espejo, El Tucan, Pozo Colorado, Municipio Porongo (Ayacucho), Provincia Andrés Ibáñez, Santa Cruz, Bolivia	2025-12-11 12:38:57	2025-12-11 20:09:51	t	benefico	4	100	t	activo	-17.8393269	-63.3461661	["http:\\/\\/192.168.0.6:8000\\/storage\\/mega_eventos\\/14\\/cfe96cf4-05ed-4984-81a3-f7ea902f43a4.jpeg","http:\\/\\/192.168.0.6:8000\\/storage\\/mega_eventos\\/14\\/fa958b8b-ce8a-4be2-95ab-edd127d4bf77.png","http:\\/\\/192.168.0.6:8000\\/storage\\/mega_eventos\\/14\\/dc2a2fab-8a93-4cc6-8e7a-c590e9d3275a.jpg"]	\N	\N
3	Clase de Tecnologias	aaaaaaa	2025-11-18 20:00:00	2025-11-18 21:40:00	Municipio Warnes, Provincia Warnes, Santa Cruz, Bolivia	2025-11-19 01:08:20	2025-11-19 02:43:09	t	educativo	4	50	t	en_curso	-17.4669659	-63.0927626	["\\/imgs\\/d\\/8\\/4\\/d8424918c8807ea14cf41bd90e8513f6_fgraphic.png"]	\N	\N
15	Mega Festival “Alas Chiquitanas” – Cultura Viva	Festival masivo con presentaciones de danza y música chiquitana, feria de emprendimientos, gastronomía típica, artesanías, talleres cortos y espacios familiares. Incluye agenda por escenarios y actividades por franjas horarias.	2025-12-15 10:30:00	2025-12-15 12:30:00	Municipio San Antonio de Lomerio, Provincia Ñuflo de Chávez, Santa Cruz, Bolivia	2025-12-15 01:15:32	2025-12-15 01:15:32	t	cultural	4	\N	t	planificacion	-16.6152874	-61.8250781	["http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/15\\/2b385ce7-e380-4fc2-9620-52616bba76f5.png","http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/15\\/c69f4419-4830-4a8e-8944-5319f6b8d6df.jpeg","http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/15\\/81d5be64-6aec-4619-b3c6-49f6175d9bac.jpg"]	\N	\N
18	Encuentro Nacional de Voluntariado Cultural	Encuentro masivo para voluntarios con capacitación, paneles, roles por brigadas, entrega de acreditaciones y cierre con muestra cultural.	2025-12-17 10:00:00	2025-12-17 12:00:00	Municipio Charagua, Provincia Cordillera, Santa Cruz, Bolivia	2025-12-15 05:51:41	2025-12-15 05:51:41	t	social	4	150	t	planificacion	-18.4612553	-62.7079880	["http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/18\\/06945c08-9c94-4471-bbe5-baa9841f07a1.jpg","http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/18\\/38ad5414-d99c-4814-a49b-0e8b5f2c9353.jpg","http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/18\\/fecbd859-0e53-45ca-b8cc-c251ac1deb5a.jpg"]	\N	\N
19	Congreso de Cultura y Gestión Comunitaria	Congreso con ponencias, paneles, mesas de trabajo y conclusiones. Incluye memorias del evento y reporte consolidado de participación.	2025-12-16 14:30:00	2025-12-16 16:10:00	Barrial, Municipio Warnes, Provincia Warnes, Santa Cruz, Bolivia	2025-12-15 10:00:42	2025-12-15 10:00:55	t	social	4	150	t	planificacion	-17.4827434	-63.0375494	["http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/19\\/7590fe08-7a45-4208-8daf-107cbbbf4d75.jpeg","http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/19\\/5ab423bd-5976-4538-a9b5-bfbb952d7c18.jpg","http:\\/\\/192.168.0.7:8000\\/storage\\/mega_eventos\\/19\\/cd7906b3-be76-4aac-9e2d-bcb0bfad3fea.jpg"]	\N	\N
\.


--
-- TOC entry 5463 (class 0 OID 36087)
-- Dependencies: 218
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2025_11_16_040940_create_cache_tables	1
2	2025_11_16_040942_create_jobs_tables	1
3	2025_11_16_040942_create_personal_access_tokens_table	1
4	2025_11_16_040943_create_usuarios_table	1
5	2025_11_16_040944_create_ongs_table	1
6	2025_11_16_040945_create_empresas_table	1
7	2025_11_16_040946_create_integrantes_externos_table	1
8	2025_11_16_040947_create_eventos_table	1
9	2025_11_16_040948_create_evento_patrocinadores_table	1
10	2025_11_16_040948_create_invitados_table	1
11	2025_11_16_040949_create_evento_auspiciadores_table	1
12	2025_11_16_040950_create_evento_integrantes_externos_table	1
13	2025_11_16_040951_create_mega_eventos_table	1
14	2025_11_16_040952_create_mega_evento_ongs_organizadoras_table	1
15	2025_11_16_040953_create_mega_evento_participantes_externos_table	1
16	2025_11_16_040954_create_mega_evento_patrocinadores_table	1
17	2025_11_16_040954_create_super_admins_table	1
18	2025_11_16_040955_create_sessions_table	1
19	2025_11_16_040956_create_evento_participaciones_table	1
21	2025_11_18_211324_add_lat_lng_to_mega_eventos_table	2
22	2025_11_18_212629_add_imagenes_to_mega_eventos_table	3
23	2025_11_19_031659_add_estado_to_evento_participaciones_table	4
24	2025_11_19_040127_add_foto_perfil_to_usuarios_table	5
25	2025_11_19_040133_add_foto_perfil_to_ongs_table	5
26	2025_11_19_040204_add_foto_perfil_to_empresas_table	5
27	2025_11_19_040210_add_foto_perfil_to_integrantes_externos_table	5
28	2025_11_19_041344_create_evento_reacciones_table	6
29	2025_11_19_041417_create_notificaciones_table	6
30	2025_01_20_000000_create_evento_empresas_participantes_table	7
31	2025_11_19_054750_create_parametros_table	7
32	2025_11_19_062521_create_tipos_evento_table	7
33	2025_11_19_062527_create_categorias_mega_eventos_table	7
34	2025_11_19_062551_create_ciudades_table	7
35	2025_11_19_062556_create_lugares_table	7
36	2025_11_19_062601_create_estados_participacion_table	7
37	2025_11_19_062607_create_tipos_notificacion_table	7
38	2025_11_19_062613_create_estados_evento_table	7
39	2025_11_19_062618_create_tipos_usuario_table	7
40	2025_11_19_062749_add_tipo_evento_id_to_eventos_table	7
41	2025_11_19_062756_add_categoria_id_to_mega_eventos_table	7
42	2025_11_19_062803_add_ciudad_id_and_lugar_id_to_eventos_table	7
43	2025_11_19_062910_add_estado_participacion_id_to_evento_participaciones_table	7
44	2025_11_19_062916_add_tipo_notificacion_id_to_notificaciones_table	7
45	2025_11_19_062923_add_estado_evento_id_to_eventos_and_mega_eventos_table	7
46	2025_11_19_062932_add_tipo_usuario_id_to_usuarios_table	7
47	2025_11_19_070407_add_fecha_finalizacion_to_eventos_table	7
48	2025_11_28_005747_create_evento_participantes_no_registrados_table	8
49	2025_11_29_023243_create_evento_compartidos_table	9
50	2025_11_29_023245_modify_evento_reacciones_table_add_no_registrado_fields	9
51	2025_12_01_195440_create_mega_evento_compartidos_table	10
52	2025_12_01_202013_create_mega_evento_reacciones_table	11
53	2025_12_01_202200_create_mega_evento_participantes_no_registrados_table	11
54	2025_12_03_000001_add_ticket_and_checkin_to_evento_participaciones_table	12
55	2025_12_03_212623_add_asistencia_fields_to_evento_participaciones_table	13
56	2025_12_04_014301_fix_null_values_in_evento_participaciones_table	13
57	2025_12_04_120000_add_auditoria_fields_to_evento_participaciones_table	14
58	2025_12_04_130000_add_ticket_codigo_to_evento_participantes_no_registrados_table	15
59	2025_12_05_000000_add_comentario_asistencia_to_evento_participaciones_table	15
60	2025_12_06_000000_add_qr_descargado_at_to_evento_participaciones_table	16
61	2025_12_07_000000_add_asistencia_fields_to_mega_evento_participantes_externos_table	16
62	2025_12_07_000001_add_asistencia_fields_to_mega_evento_participantes_no_registrados_table	16
63	2025_12_09_000000_fix_add_qr_descargado_at_to_evento_participaciones_table	16
64	2025_12_09_000001_add_qr_descargado_at_to_mega_evento_participantes_externos_table	16
65	2025_12_11_191147_create_permission_tables	17
67	2025_12_13_040129_create_ong_exportaciones_pdf_table	18
68	2025_12_13_185312_add_performance_indexes_to_tables	18
69	2025_12_13_191028_add_indexes_for_performance	18
70	2025_12_13_221914_add_ip_user_agent_to_compartidos_tables	19
71	2025_12_14_002512_add_visualizaciones_to_eventos_table	20
72	2025_01_20_000000_create_ong_exportaciones_pdf_table	21
73	2025_12_14_113900_fix_ong_exportaciones_pdf_foreign_key	21
\.


--
-- TOC entry 5535 (class 0 OID 44682)
-- Dependencies: 290
-- Data for Name: model_has_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
\.


--
-- TOC entry 5536 (class 0 OID 44693)
-- Dependencies: 291
-- Data for Name: model_has_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
2	App\\Models\\User	1
4	App\\Models\\User	6
4	App\\Models\\User	3
3	App\\Models\\User	5
3	App\\Models\\User	8
4	App\\Models\\User	9
2	App\\Models\\User	10
2	App\\Models\\User	4
2	App\\Models\\User	11
3	App\\Models\\User	13
3	App\\Models\\User	7
4	App\\Models\\User	14
\.


--
-- TOC entry 5500 (class 0 OID 36435)
-- Dependencies: 255
-- Data for Name: notificaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notificaciones (id, ong_id, evento_id, externo_id, tipo, titulo, mensaje, leida, created_at, updated_at, tipo_notificacion_id) FROM stdin;
1	4	3	3	reaccion	Nueva reacción en tu evento	Carmen PA reaccionó con un corazón al evento "PRUEBAA1"	t	2025-11-19 04:22:49	2025-11-19 19:42:23	\N
2	4	3	3	reaccion	Nueva reacción en tu evento	Carmen PA reaccionó con un corazón al evento "PRUEBAA1"	t	2025-11-19 04:25:24	2025-11-19 19:42:25	\N
3	4	6	3	reaccion	Nueva reacción en tu evento	Carmen PA reaccionó con un corazón al evento "Taller de Primeros Auxilios para la Comunidad"	t	2025-11-19 19:29:36	2025-11-19 19:42:26	\N
4	4	6	6	reaccion	Nueva reacción en tu evento	Angel Pumari reaccionó con un corazón al evento "Taller de Primeros Auxilios para la Comunidad"	t	2025-11-19 19:52:23	2025-11-19 19:58:59	\N
5	4	6	6	participacion	Nueva inscripción en tu evento	Angel Pumari se inscribió al evento "Taller de Primeros Auxilios para la Comunidad"	t	2025-11-19 20:37:02	2025-11-23 05:02:40	\N
6	4	\N	3	participacion	Nueva participación en tu mega evento	Carmen PA se inscribió al mega evento "Clase de Tecnologias"	t	2025-11-20 02:38:59	2025-11-23 05:02:40	\N
7	4	5	6	reaccion	Nueva reacción en tu evento	Angel Pumari reaccionó con un corazón al evento "Feria de Salud Comunitaria 2025"	t	2025-11-20 14:33:14	2025-11-23 05:02:40	\N
8	4	7	6	reaccion	Nueva reacción en tu evento	Angel Pumari reaccionó con un corazón al evento "Taller de Manualidades para Niños"	t	2025-11-23 00:39:35	2025-11-23 05:02:40	\N
9	4	3	6	reaccion	Nueva reacción en tu evento	Angel Pumari reaccionó con un corazón al evento "PRUEBAA1"	t	2025-11-23 00:39:48	2025-11-23 05:02:40	\N
10	4	3	6	reaccion	Nueva reacción en tu evento	Angel Pumari reaccionó con un corazón al evento "PRUEBAA1"	t	2025-11-23 00:39:50	2025-11-23 05:02:40	\N
17	4	14	3	participacion	Nueva inscripción en tu evento	Carmen PA se inscribió al evento "Wall-E"	t	2025-11-25 22:59:43	2025-11-26 14:10:23	\N
18	4	5	3	reaccion	Nueva reacción en tu evento	Carmen PA reaccionó con un corazón al evento "Feria de Salud Comunitaria 2025"	t	2025-11-27 20:04:01	2025-12-01 20:52:20	\N
19	4	\N	3	participacion	Nueva participación en tu mega evento	Carmen PA se inscribió al mega evento "Festival Solidario por la Educación"	t	2025-11-27 22:12:51	2025-12-01 20:52:20	\N
20	4	14	4	reaccion	Nueva reacción en tu evento	manuel_jp reaccionó con un corazón al evento "Wall-E"	t	2025-11-28 00:50:47	2025-12-01 20:52:20	\N
21	4	5	3	reaccion	Nueva reacción en tu evento	Carmen PA reaccionó con un corazón al evento "Feria de Salud Comunitaria 2025"	t	2025-11-28 00:52:02	2025-12-01 20:52:20	\N
30	4	\N	3	participacion	Nueva participación en tu mega evento	Carmen PA se inscribió al mega evento "hi"	t	2025-12-01 20:35:35	2025-12-01 20:52:20	\N
34	4	6	3	reaccion	Nueva reacción en tu evento	Carmen PA reaccionó con un corazón al evento "Taller de Primeros Auxilios para la Comunidad"	t	2025-12-01 23:25:21	2025-12-08 03:53:25	\N
36	4	5	3	participacion	Nueva inscripción en tu evento	Carmen PA se inscribió al evento "Feria de Salud Comunitaria 2025"	t	2025-12-03 16:34:28	2025-12-08 03:53:25	\N
38	4	26	3	reaccion	Nueva reacción en tu evento	Carmen PA reaccionó con un corazón al evento "Alimentando animalitos"	t	2025-12-03 21:11:59	2025-12-08 03:53:25	\N
39	4	26	3	participacion	Nueva inscripción en tu evento	Carmen PA se inscribió al evento "Alimentando animalitos"	t	2025-12-03 21:12:06	2025-12-08 03:53:25	\N
40	4	7	3	participacion	Nueva inscripción en tu evento	Carmen PA se inscribió al evento "Taller de Manualidades para Niños"	t	2025-12-03 21:31:33	2025-12-08 03:53:25	\N
41	4	27	3	reaccion	Nueva reacción en tu evento	Carmen PA reaccionó con un corazón al evento "Clash Royale"	t	2025-12-04 01:52:07	2025-12-08 03:53:25	\N
42	4	27	3	participacion	Nueva inscripción en tu evento	Carmen PA se inscribió al evento "Clash Royale"	t	2025-12-04 01:52:11	2025-12-08 03:53:25	\N
43	4	6	3	participacion	Nueva inscripción en tu evento	Carmen PA se inscribió al evento "Taller de Primeros Auxilios para la Comunidad"	t	2025-12-05 06:43:26	2025-12-08 03:53:25	\N
47	4	29	3	participacion	Nueva inscripción en tu evento	Carmen PA se inscribió al evento "Desarrollo Web para Principiantes"	t	2025-12-05 15:35:48	2025-12-08 03:53:25	\N
54	4	29	\N	nuevo_patrocinador	Nuevo Patrocinador	Servicell Pumari ha decidido patrocinar tu evento "Desarrollo Web para Principiantes". ¡Gracias por el apoyo!	t	2025-12-08 00:46:38	2025-12-08 03:53:25	\N
55	4	29	14	participacion	Nueva inscripción en tu evento	Brillos Johnson's se inscribió al evento "Desarrollo Web para Principiantes"	f	2025-12-09 03:54:08	2025-12-09 03:54:08	\N
56	4	7	14	participacion	Nueva inscripción en tu evento	Brillos Johnson's se inscribió al evento "Taller de Manualidades para Niños"	f	2025-12-09 03:55:10	2025-12-09 03:55:10	\N
57	4	35	3	participacion	Nueva inscripción en tu evento	Carmen PA se inscribió al evento "Evento Univalle"	f	2025-12-15 12:59:58	2025-12-15 12:59:58	\N
58	4	33	3	participacion	Nueva inscripción en tu evento	Carmen PA se inscribió al evento "Historia, Patrimonio y Memoria Chiquitana"	f	2025-12-15 13:09:45	2025-12-15 13:09:45	\N
\.


--
-- TOC entry 5539 (class 0 OID 44860)
-- Dependencies: 294
-- Data for Name: ong_exportaciones_pdf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ong_exportaciones_pdf (id, ong_id, numero_exportacion, tipo_exportacion, fecha_generacion, metadata, created_at, updated_at, tipo, folio) FROM stdin;
\.


--
-- TOC entry 5475 (class 0 OID 36163)
-- Dependencies: 230
-- Data for Name: ongs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ongs (user_id, nombre_ong, "NIT", telefono, direccion, sitio_web, descripcion, created_at, updated_at, foto_perfil) FROM stdin;
1	Fundación Demo	1234567	70000000	Av. Siempre Viva 742	https://demo.org	ONG de prueba	\N	\N	\N
10	Fundación Esperanza Bolivia	123456789	+591 76543210	Primero de Mayo Dos, Municipio La Guardia, Provincia Andrés Ibáñez, Santa Cruz, Bolivia	https://fundacionesperanza.org	Organización sin fines de lucro dedicada a brindar apoyo educativo, salud y bienestar a comunidades vulnerables en Bolivia. \nTrabajamos en proyectos sociales, talleres formativos y programas de ayuda comunitaria.	2025-11-27 14:48:32	2025-11-27 14:48:32	\N
4	Crazy man loose	10631150	+591 76834132	Municipio Charagua, Provincia Cordillera, Santa Cruz, Bolivia	https://crazymanloose.org	Bienvenido a Crazy man loose	2025-11-18 19:33:09	2025-11-27 18:44:50	perfil/ong/4/fa05e916-0c35-4923-a10a-ea6aec0fc609.jpg
11	Dulcifarma	88880124	+591 3453933	Municipio Concepción, Provincia Ñuflo de Chávez, Santa Cruz, Bolivia	https://Dulcifarma.org	Toallitas Húmedas Marvel Spider-Man	2025-11-29 01:57:03	2025-11-29 01:57:03	\N
\.


--
-- TOC entry 5504 (class 0 OID 43683)
-- Dependencies: 259
-- Data for Name: parametros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parametros (id, codigo, nombre, descripcion, categoria, tipo, valor, valor_defecto, opciones, grupo, orden, editable, visible, requerido, validacion, ayuda, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 5532 (class 0 OID 44661)
-- Dependencies: 287
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
1	eventos.ver	web	2025-12-11 19:21:05	2025-12-11 19:21:05
2	eventos.crear	web	2025-12-11 19:21:05	2025-12-11 19:21:05
3	eventos.editar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
4	eventos.eliminar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
5	eventos.gestionar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
6	eventos.patrocinar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
7	eventos.inscribirse	web	2025-12-11 19:21:05	2025-12-11 19:21:05
8	eventos.reaccionar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
9	eventos.compartir	web	2025-12-11 19:21:05	2025-12-11 19:21:05
10	eventos.control-asistencia	web	2025-12-11 19:21:05	2025-12-11 19:21:05
11	eventos.ver-participantes	web	2025-12-11 19:21:05	2025-12-11 19:21:05
12	eventos.exportar-reportes	web	2025-12-11 19:21:05	2025-12-11 19:21:05
13	mega-eventos.ver	web	2025-12-11 19:21:05	2025-12-11 19:21:05
14	mega-eventos.crear	web	2025-12-11 19:21:05	2025-12-11 19:21:05
15	mega-eventos.editar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
16	mega-eventos.eliminar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
17	mega-eventos.gestionar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
18	mega-eventos.participar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
19	mega-eventos.reaccionar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
20	mega-eventos.compartir	web	2025-12-11 19:21:05	2025-12-11 19:21:05
21	mega-eventos.control-asistencia	web	2025-12-11 19:21:05	2025-12-11 19:21:05
22	mega-eventos.ver-participantes	web	2025-12-11 19:21:05	2025-12-11 19:21:05
23	mega-eventos.exportar-reportes	web	2025-12-11 19:21:05	2025-12-11 19:21:05
24	participaciones.ver	web	2025-12-11 19:21:05	2025-12-11 19:21:05
25	participaciones.gestionar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
26	participaciones.aprobar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
27	participaciones.rechazar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
28	participaciones.ver-mis-participaciones	web	2025-12-11 19:21:05	2025-12-11 19:21:05
29	reportes.ver	web	2025-12-11 19:21:05	2025-12-11 19:21:05
30	reportes.ver-basicos	web	2025-12-11 19:21:05	2025-12-11 19:21:05
31	reportes.ver-avanzados	web	2025-12-11 19:21:05	2025-12-11 19:21:05
32	reportes.exportar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
33	dashboard.ver-ong	web	2025-12-11 19:21:05	2025-12-11 19:21:05
34	dashboard.ver-empresa	web	2025-12-11 19:21:05	2025-12-11 19:21:05
35	dashboard.ver-externo	web	2025-12-11 19:21:05	2025-12-11 19:21:05
36	notificaciones.ver	web	2025-12-11 19:21:05	2025-12-11 19:21:05
37	notificaciones.gestionar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
38	configuracion.ver	web	2025-12-11 19:21:05	2025-12-11 19:21:05
39	configuracion.gestionar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
40	parametrizaciones.ver	web	2025-12-11 19:21:05	2025-12-11 19:21:05
41	parametrizaciones.gestionar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
42	usuarios.ver	web	2025-12-11 19:21:05	2025-12-11 19:21:05
43	usuarios.gestionar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
44	voluntarios.ver	web	2025-12-11 19:21:05	2025-12-11 19:21:05
45	voluntarios.gestionar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
46	perfil.ver	web	2025-12-11 19:21:05	2025-12-11 19:21:05
47	perfil.editar	web	2025-12-11 19:21:05	2025-12-11 19:21:05
\.


--
-- TOC entry 5472 (class 0 OID 36137)
-- Dependencies: 227
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
1	App\\Models\\User	3	auth_token	016be45a66f7708aa0dc40cf5daebfeef4d47a2b87f8c6547ae16906337a0ba7	["*"]	\N	\N	2025-11-18 19:32:27	2025-11-18 19:32:27
2	App\\Models\\User	4	auth_token	7c94bc7b10e1e1cb1376a51fd6c90bac48b83b211e04152db3f5f2672983ad78	["*"]	\N	\N	2025-11-18 19:33:09	2025-11-18 19:33:09
3	App\\Models\\User	5	auth_token	4fb47bfc747700896b2db454224215223e0a9c6d757499b32492472e4ade4eac	["*"]	\N	\N	2025-11-18 19:34:22	2025-11-18 19:34:22
4	App\\Models\\User	4	auth_token	717fa39b0dda2240c6f9f22415fc923ca8929ea59906f91a75fd181589c54c7a	["*"]	2025-11-18 19:34:42	\N	2025-11-18 19:34:37	2025-11-18 19:34:42
5	App\\Models\\User	3	auth_token	4a101672e8e263002ab7c84eab068883439be09f3cbab51e028368560247c369	["*"]	2025-11-18 19:35:00	\N	2025-11-18 19:34:54	2025-11-18 19:35:00
11	App\\Models\\User	3	auth_token	971c56fcaa5d209ae525d3a75da63bf9bd3c50b1f73060ed6d6ead187b3fc077	["*"]	2025-11-18 20:44:05	\N	2025-11-18 20:43:42	2025-11-18 20:44:05
12	App\\Models\\User	4	auth_token	fba88c08ee59ded363138b214a927ac2f43b217bd3258b6a8afc4fa7e47509c0	["*"]	2025-11-18 20:47:06	\N	2025-11-18 20:47:03	2025-11-18 20:47:06
17	App\\Models\\User	4	auth_token	d37f9d36ca910907b9c6a5858d77c83f77743c6cbe0db7e99bf60f4dee260341	["*"]	2025-11-18 21:24:31	\N	2025-11-18 20:57:00	2025-11-18 21:24:31
13	App\\Models\\User	5	auth_token	d3352cb7a736c338691303bb853b5aa161b19ef89b62b81a14d1f8bc66ffe7a2	["*"]	2025-11-18 20:49:21	\N	2025-11-18 20:47:25	2025-11-18 20:49:21
6	App\\Models\\User	4	auth_token	ffe26fad2d0ad101a14a93282d63fd79db8e84f9274c5e7c6da2fda3c2d6747e	["*"]	2025-11-18 19:38:19	\N	2025-11-18 19:35:20	2025-11-18 19:38:19
7	App\\Models\\User	3	auth_token	04ba22d4d229f0958b22985cd127e75f05259b5180b290f0c804c4d9e8e17c6b	["*"]	2025-11-18 19:38:40	\N	2025-11-18 19:38:29	2025-11-18 19:38:40
31	App\\Models\\User	3	auth_token	72af3f99ff8cf7f45731bf13a5eddcf86038b2601089c1d2f8d5f3e1af34a34b	["*"]	2025-11-19 04:05:08	\N	2025-11-19 03:32:20	2025-11-19 04:05:08
24	App\\Models\\User	4	auth_token	29486e680a413e50e7bee1eaf1bddd3bdd2d1c3e8e61b503eba9bd16d0ad15b7	["*"]	2025-11-19 00:20:17	\N	2025-11-19 00:20:06	2025-11-19 00:20:17
8	App\\Models\\User	4	auth_token	9630b31f5b30e4a713202022a79cd72d4cc0097682ac4892505704f7923cf940	["*"]	2025-11-18 19:39:14	\N	2025-11-18 19:39:03	2025-11-18 19:39:14
14	App\\Models\\User	3	auth_token	1511a89d84fc6dac88a2cbb429ca387f864a8c3b43a6bc48339f68e03a67847a	["*"]	2025-11-18 20:51:40	\N	2025-11-18 20:49:33	2025-11-18 20:51:40
20	App\\Models\\User	4	auth_token	bc6ecc9e4cc6e59acdc3849217b4cea75a4a20a8ee5e0ea11846137abd178233	["*"]	2025-11-18 22:29:16	\N	2025-11-18 22:10:20	2025-11-18 22:29:16
9	App\\Models\\User	3	auth_token	df7700ae1dd4cb15313becdfa21bf0002ee67b291245bd75d6ac87b4d2d14891	["*"]	2025-11-18 20:28:49	\N	2025-11-18 20:27:49	2025-11-18 20:28:49
15	App\\Models\\User	5	auth_token	fcac839d67314e7d81d6ff5be5549fd11db1a68a3b404522579ffd5c44f090db	["*"]	2025-11-18 20:56:32	\N	2025-11-18 20:51:53	2025-11-18 20:56:32
16	App\\Models\\User	3	auth_token	cb4b89963b21cb4e7a400e7d8d43b55d59a2ec41d5e9787c0aa54b9c9cd587c4	["*"]	2025-11-18 20:56:46	\N	2025-11-18 20:56:43	2025-11-18 20:56:46
19	App\\Models\\User	4	auth_token	c7cb3603bf696395e674b3392dc9f25dd54cfa9bda1232a0ab5f7fb8fa24f73a	["*"]	2025-11-18 21:56:27	\N	2025-11-18 21:55:32	2025-11-18 21:56:27
10	App\\Models\\User	4	auth_token	bfb10ff9c62b55aa98cfc78f1ace409b6193c5467b072b0a5a02dd66c913bc82	["*"]	2025-11-18 20:43:17	\N	2025-11-18 20:29:26	2025-11-18 20:43:17
29	App\\Models\\User	3	auth_token	c55ef4bc74a8b4d53652142ba062cbb9238a6110399ca7476d32e33b89c86f08	["*"]	2025-11-19 02:48:43	\N	2025-11-19 02:48:29	2025-11-19 02:48:43
25	App\\Models\\User	4	auth_token	05e6eaa6e1a877c4713eceea1085ae36463cd1887b29e4cc433898d74da92534	["*"]	2025-11-19 00:54:22	\N	2025-11-19 00:31:28	2025-11-19 00:54:22
21	App\\Models\\User	4	auth_token	f4a033079f42e8409950a43b8d6d831ae9925c7b79f1149526cc11bdae86d0c0	["*"]	2025-11-18 22:45:51	\N	2025-11-18 22:45:25	2025-11-18 22:45:51
26	App\\Models\\User	3	auth_token	daab92f3e47bc2ffbb068bcdab0c8339137c6198e14e864b0c981f52b4b062df	["*"]	2025-11-19 00:54:48	\N	2025-11-19 00:54:31	2025-11-19 00:54:48
30	App\\Models\\User	4	auth_token	a2d6b544e4bbf69a03942d314f2ddfdacf0a251127565eba72380282044a362a	["*"]	2025-11-19 03:32:10	\N	2025-11-19 02:49:07	2025-11-19 03:32:10
22	App\\Models\\User	4	auth_token	fd80dac37607ca646947e9bbabd073f7deb644433d93ef24397db489e83f036a	["*"]	2025-11-19 00:15:34	\N	2025-11-19 00:13:45	2025-11-19 00:15:34
36	App\\Models\\User	3	auth_token	7a335827670f66f7f3909920904d91dbf4f72a739d9331e18a372405513e2b08	["*"]	2025-11-19 04:27:26	\N	2025-11-19 04:24:44	2025-11-19 04:27:26
18	App\\Models\\User	4	auth_token	8cba700868e01c8dbb64b18c0be566a41bef1150267482ee695219c6cf0bdbcf	["*"]	2025-11-18 21:55:05	\N	2025-11-18 21:28:23	2025-11-18 21:55:05
27	App\\Models\\User	4	auth_token	a15e18399f8cef15007bf056be1fbda14856791ecaad985d6f73578d2d44c184	["*"]	2025-11-19 01:10:32	\N	2025-11-19 00:55:55	2025-11-19 01:10:32
23	App\\Models\\User	3	auth_token	29c02de72670d57a1a84e79c739c68d8c273dc43c2836df2ea87104a0e2d965a	["*"]	2025-11-19 00:19:42	\N	2025-11-19 00:19:30	2025-11-19 00:19:42
37	App\\Models\\User	4	auth_token	c5f2a0289471f2475e77dbb5b6d6500706c679b5b7aec5f6c4c52566ac3f79fc	["*"]	2025-11-19 04:28:01	\N	2025-11-19 04:27:37	2025-11-19 04:28:01
35	App\\Models\\User	4	auth_token	0beb7a6fb43f7af5078be152a01b59e84f42de9aa12f0e4f7e86d4afbe61e632	["*"]	2025-11-19 04:23:24	\N	2025-11-19 04:23:09	2025-11-19 04:23:24
34	App\\Models\\User	3	auth_token	14e24d7bd3a96953b6a68df67651458302d312360292d9c8b4ede1626a005253	["*"]	2025-11-19 04:22:56	\N	2025-11-19 04:22:38	2025-11-19 04:22:56
28	App\\Models\\User	4	auth_token	f2de20fdf1938300d22bbe2a577b414ec5ab72b406f1ce524f7e173f68314daa	["*"]	2025-11-19 02:46:25	\N	2025-11-19 02:42:48	2025-11-19 02:46:25
32	App\\Models\\User	4	auth_token	4a7833835f55d5e7fc7d80f37a5093efdfbfd340a35e2adc72e8727435fdd2ae	["*"]	2025-11-19 04:07:35	\N	2025-11-19 04:05:41	2025-11-19 04:07:35
33	App\\Models\\User	5	auth_token	9907597fe8399e08948338993e3c78c10dbe314346d90eeb6d923d6528de4f71	["*"]	2025-11-19 04:22:21	\N	2025-11-19 04:09:37	2025-11-19 04:22:21
38	App\\Models\\User	3	auth_token	dbe418da1a3bb997c3fd54a77657c11d628de99b6fcad297a5ad0dec44b9e11c	["*"]	2025-11-19 04:32:28	\N	2025-11-19 04:32:05	2025-11-19 04:32:28
39	App\\Models\\User	4	auth_token	105e50e4e292450653337db5f4863efe5ea9932c9f2167eddaec979319fc8d96	["*"]	2025-11-19 04:32:50	\N	2025-11-19 04:32:46	2025-11-19 04:32:50
40	App\\Models\\User	3	auth_token	4a0f4c0ce4efa5e9a63f60512c7078b70e85472c30eaad6596df8684facfaa02	["*"]	2025-11-19 04:33:36	\N	2025-11-19 04:33:26	2025-11-19 04:33:36
41	App\\Models\\User	4	auth_token	4f84a5a839b6733e664586fb1010e5e03ddfb672d342ad1b27ffa6c167157f4d	["*"]	2025-11-19 04:34:40	\N	2025-11-19 04:34:01	2025-11-19 04:34:40
43	App\\Models\\User	3	auth_token	fa28bd15d1af0a53ddd2303307f36ead4a4d7392833a80799ada97b1220cad8b	["*"]	2025-11-19 04:54:50	\N	2025-11-19 04:54:46	2025-11-19 04:54:50
42	App\\Models\\User	4	auth_token	43eb6732551c2fc19f20173941a2f0c521b7f92e80f1fb6be181b6f788d649d1	["*"]	2025-11-19 04:54:05	\N	2025-11-19 04:45:29	2025-11-19 04:54:05
73	App\\Models\\User	4	auth_token	49664c48a9277e1f6e79930d96734f669f5f8e1090432a3710cfa805f469a493	["*"]	2025-11-20 14:34:53	\N	2025-11-20 14:33:31	2025-11-20 14:34:53
49	App\\Models\\User	4	auth_token	2f28b791180ff73a11263186bc25aaed82daba3498807a63ec8889ab69e73287	["*"]	2025-11-19 07:54:39	\N	2025-11-19 06:54:50	2025-11-19 07:54:39
59	App\\Models\\User	4	auth_token	2340943907ab2f294b32bb8a4c7205c9cecfbd571de3b6a6c776df01baaabc45	["*"]	2025-11-19 19:50:23	\N	2025-11-19 19:29:48	2025-11-19 19:50:23
57	App\\Models\\User	4	auth_token	a54867a03115b957d015efe2dc536c9f76004cc653d44572c9473fb0990f6104	["*"]	2025-11-19 19:29:04	\N	2025-11-19 18:52:26	2025-11-19 19:29:04
44	App\\Models\\User	4	auth_token	f3b2cee0b57f81838afe165ded192e5e17794f2afaae927ce207e21dabd12d03	["*"]	2025-11-19 05:02:25	\N	2025-11-19 05:02:02	2025-11-19 05:02:25
50	App\\Models\\User	3	auth_token	67f72b2e07c88a033cd759a0285fd0e70fdaa62edaf7f742374b3b6fe400686c	["*"]	2025-11-19 07:56:50	\N	2025-11-19 07:54:51	2025-11-19 07:56:50
51	App\\Models\\User	5	auth_token	67d2b85356af7c9a8538d7ea558f77577ff990529e105117fcc668a7b1ee9f79	["*"]	2025-11-19 07:58:09	\N	2025-11-19 07:57:15	2025-11-19 07:58:09
45	App\\Models\\User	4	auth_token	8381b0a8f92ce8742858a3d09c968661271db832a410c54b78a885bc68641362	["*"]	2025-11-19 05:03:04	\N	2025-11-19 05:02:33	2025-11-19 05:03:04
81	App\\Models\\User	6	auth_token	1c21c7431d9e7431f4be2772306029b5ab3f038d1c1936c60016ce00de83cfb3	["*"]	2025-11-23 00:39:50	\N	2025-11-23 00:39:10	2025-11-23 00:39:50
54	App\\Models\\User	4	auth_token	13074adf86f39c927ee5a705083afb2934ca2507c6d15203efe61b50fdad48f8	["*"]	2025-11-19 17:32:22	\N	2025-11-19 09:18:40	2025-11-19 17:32:22
58	App\\Models\\User	3	auth_token	7340e7d1786fd601e96182c96bed33179bef74bed42896c5720360b91b5a798a	["*"]	2025-11-19 19:29:40	\N	2025-11-19 19:29:20	2025-11-19 19:29:40
46	App\\Models\\User	3	auth_token	e32e92ec0b23a1b77cd9333df582b111c78f69dcc9b7421c70ad8643b5e7051a	["*"]	2025-11-19 05:28:19	\N	2025-11-19 05:06:27	2025-11-19 05:28:19
74	App\\Models\\User	5	auth_token	d044922e53163814d214e1ec6712d0f21b149748f029146e2e4c0724661a5b54	["*"]	2025-11-20 14:35:25	\N	2025-11-20 14:35:12	2025-11-20 14:35:25
55	App\\Models\\User	4	auth_token	41675126b771d762d1167671253b58c34902d1fe071ab0e12dddf144e8bd5f10	["*"]	2025-11-19 18:48:00	\N	2025-11-19 18:47:54	2025-11-19 18:48:00
68	App\\Models\\User	4	auth_token	9b824534e38d9a7294df9c1730c6addadb434bfc996a69358501b4ff2b28ac38	["*"]	2025-11-19 21:14:16	\N	2025-11-19 21:14:06	2025-11-19 21:14:16
47	App\\Models\\User	3	auth_token	4bedbcabfe17f8206d9ea1c1934bbbcc45ab99e017bdb7e9b7b69f3decbba564	["*"]	2025-11-19 05:40:42	\N	2025-11-19 05:28:33	2025-11-19 05:40:42
52	App\\Models\\User	4	auth_token	cdb7efafcd658a2e9d388d06fa70b50b808fc7d8e1cc934ab9e7eb5eff39acbf	["*"]	2025-11-19 09:16:01	\N	2025-11-19 07:58:47	2025-11-19 09:16:01
48	App\\Models\\User	4	auth_token	e7a333289c057a169680fde6cf781212db04cc12c0a043788a81b57014594378	["*"]	2025-11-19 05:40:57	\N	2025-11-19 05:40:53	2025-11-19 05:40:57
56	App\\Models\\User	3	auth_token	b8db99db392254dfb32167425d850d51a9be3c96e73c2ce44ed3495a8db9a8da	["*"]	2025-11-19 18:51:48	\N	2025-11-19 18:51:31	2025-11-19 18:51:48
60	App\\Models\\User	3	auth_token	5c7f587b067dbb3ed6a97b1962f270efe59514a65911daedd7027ce1f17ff13b	["*"]	2025-11-19 19:50:48	\N	2025-11-19 19:50:32	2025-11-19 19:50:48
53	App\\Models\\User	3	auth_token	d44f45babe0bf4d66d460ed49a80f13e3b4477b71a83cea68d43d2e613fe8a28	["*"]	2025-11-19 09:17:05	\N	2025-11-19 09:16:36	2025-11-19 09:17:05
78	App\\Models\\User	4	auth_token	d0b99012c885cc025995faf39d871bf8d88fd868c488589641ef6705f2f24e5d	["*"]	2025-11-20 20:25:27	\N	2025-11-20 19:43:00	2025-11-20 20:25:27
76	App\\Models\\User	4	auth_token	289710e7fe5b78881a2ace6f922fd25869dcd206a6dae11e631be40b298823c9	["*"]	2025-11-20 18:39:46	\N	2025-11-20 18:37:55	2025-11-20 18:39:46
69	App\\Models\\User	3	auth_token	43ba40abec51f4468e8bbdb387a4638f96ed736cd7c1368ce47e59e9fdc564f8	["*"]	2025-11-20 02:56:27	\N	2025-11-20 02:36:41	2025-11-20 02:56:27
61	App\\Models\\User	4	auth_token	45b0af5b117aa4505b2371b00fc4170a3e05cb6a3a906bb019ef1df89a537528	["*"]	2025-11-19 19:51:00	\N	2025-11-19 19:50:57	2025-11-19 19:51:00
62	App\\Models\\User	6	auth_token	0ef7e1ded49cf9b94ecc65c3fa8397ab5a3c53f93f22e9bc2d5a505cd83786df	["*"]	\N	\N	2025-11-19 19:52:04	2025-11-19 19:52:04
64	App\\Models\\User	4	auth_token	ed81006ceeaa27190d44e3b91bb0fef27e141ecea47971fc55670aeff16bbd54	["*"]	2025-11-19 20:15:45	\N	2025-11-19 19:52:40	2025-11-19 20:15:45
70	App\\Models\\User	4	auth_token	5f6ab113ab901ff574c5e388955f63b505c48673194d032d589885e9b008725f	["*"]	2025-11-20 02:57:49	\N	2025-11-20 02:56:39	2025-11-20 02:57:49
63	App\\Models\\User	6	auth_token	6dfaae8afde2fa357d03c5337f0cd0897186ce22805b7718e96aeb9c81be4e66	["*"]	2025-11-19 19:52:30	\N	2025-11-19 19:52:12	2025-11-19 19:52:30
72	App\\Models\\User	6	auth_token	5056a88f247e44a7142ec7c673fa9326beed730e3809db9a980312bbb0075bbd	["*"]	2025-11-20 14:33:14	\N	2025-11-20 14:32:45	2025-11-20 14:33:14
66	App\\Models\\User	4	auth_token	1390f4920123623a6066c8640e3790577bcf63e61651f3bc80d4662e1b1e76db	["*"]	2025-11-19 20:40:03	\N	2025-11-19 20:37:18	2025-11-19 20:40:03
65	App\\Models\\User	6	auth_token	d9acaedd4329d902d0559c518c8d6bdfea4262902081011082c06866e2260bdd	["*"]	2025-11-19 20:37:02	\N	2025-11-19 20:36:32	2025-11-19 20:37:02
77	App\\Models\\User	4	auth_token	7363a90a67bc078db9928819aeac98a490a07c08e697a1195d485eff4785b961	["*"]	\N	\N	2025-11-20 19:42:22	2025-11-20 19:42:22
67	App\\Models\\User	6	auth_token	5cf0524e58c7c47cbac44d9bcc1f679907421b65e064f8616871130bbe7ca684	["*"]	2025-11-19 21:13:39	\N	2025-11-19 21:13:27	2025-11-19 21:13:39
71	App\\Models\\User	4	auth_token	b62470c71026cdda3e7398c03c55c8b826576bf76a79cb56c22d91f2dcbc457c	["*"]	2025-11-20 14:32:32	\N	2025-11-20 14:31:05	2025-11-20 14:32:32
79	App\\Models\\User	4	auth_token	149b8fd27f11e19185fce60b367a2ce3d3e02254a6df6e46efcc405d17fca709	["*"]	2025-11-23 00:30:46	\N	2025-11-23 00:24:30	2025-11-23 00:30:46
75	App\\Models\\User	4	auth_token	9e6f4d66260630b3a01412885c855b5973d189dd5e30a7693851d885f73975e5	["*"]	2025-11-20 14:55:52	\N	2025-11-20 14:37:25	2025-11-20 14:55:52
82	App\\Models\\User	4	auth_token	cc326af11a54cf4d1446445a56acf1d3a1fa63e96c677c13100e69df1fd3d81b	["*"]	2025-11-23 00:58:07	\N	2025-11-23 00:40:10	2025-11-23 00:58:07
80	App\\Models\\User	4	auth_token	98ed297afa988c5c942b4e462dfa6b6eda353d8a9b571b25e8c746ad67d6b35c	["*"]	2025-11-23 00:38:55	\N	2025-11-23 00:32:36	2025-11-23 00:38:55
83	App\\Models\\User	4	auth_token	df8c684f00721f1636501fe3e658e412adf2991d28b8ab471a304f81aea416ff	["*"]	2025-11-23 01:14:33	\N	2025-11-23 01:11:30	2025-11-23 01:14:33
84	App\\Models\\User	3	auth_token	be50f4113c0d1437a6a98f31f5795a8da3b1c2cebcf292c70677329a3a487a19	["*"]	2025-11-23 01:15:02	\N	2025-11-23 01:14:45	2025-11-23 01:15:02
85	App\\Models\\User	4	auth_token	c541c1ece4657ada1a28e20408b6358ea1289a47de30a8a8e994b313152c0c48	["*"]	2025-11-23 01:16:08	\N	2025-11-23 01:15:15	2025-11-23 01:16:08
86	App\\Models\\User	4	auth_token	aebfc3c461d7e9d465cf4f9c49afc819a0dcb5221ef9f2e47ba30175fadcfee9	["*"]	2025-11-23 01:35:08	\N	2025-11-23 01:26:41	2025-11-23 01:35:08
101	App\\Models\\User	4	auth_token	a306bbc4508bba97521742c2d3cce511ca483fde847419bd8c993ea2249152e7	["*"]	2025-11-24 16:34:43	\N	2025-11-24 16:32:30	2025-11-24 16:34:43
102	App\\Models\\User	4	auth_token	9f59f2e715c5c56b6a2157a705959e616653e3cc3d593d06237053d6624c58ef	["*"]	\N	\N	2025-11-25 03:32:59	2025-11-25 03:32:59
87	App\\Models\\User	4	auth_token	f1eb017187ef442923860671ec8228fac7aaa387e5b3e68224583d3ab088d535	["*"]	2025-11-23 04:51:59	\N	2025-11-23 01:35:20	2025-11-23 04:51:59
123	App\\Models\\User	4	auth_token	059ac2eea99ec183133d0819a25d3e534ca7621b6ee83c839f470e5299aff2b2	["*"]	2025-11-25 14:32:58	\N	2025-11-25 14:29:23	2025-11-25 14:32:58
114	App\\Models\\User	4	auth_token	85589df66851660d7ee804c51106dbe50e0cf2dbcce217935981f19f76567286	["*"]	2025-11-25 06:01:00	\N	2025-11-25 05:59:55	2025-11-25 06:01:00
103	App\\Models\\User	4	auth_token	1efc69e4e476894896c9c63e398517fea4326515ca9e5049ee22444c03ca3624	["*"]	2025-11-25 03:38:34	\N	2025-11-25 03:33:04	2025-11-25 03:38:34
97	App\\Models\\User	4	auth_token	4870a40de3f74a39ce3cba20a268c08270cd1240347bd0e25296594da3556729	["*"]	2025-11-23 04:48:25	\N	2025-11-23 04:48:23	2025-11-23 04:48:25
108	App\\Models\\User	4	auth_token	fbd819ead30fc319175b6b8e19b3849cfaf64abd373d7d24df18e447708fb26c	["*"]	2025-11-25 04:27:04	\N	2025-11-25 04:25:48	2025-11-25 04:27:04
95	App\\Models\\User	4	auth_token	102bf12a1e7371e34a357a7f209f56f9c54e8f83d2411d8179c473d36e4915c9	["*"]	2025-11-23 04:02:42	\N	2025-11-23 03:57:11	2025-11-23 04:02:42
109	App\\Models\\User	4	auth_token	29721c95d530013bf529df3f4aa74c6a7760968dfc67d1b05e2c5bd7723a90ce	["*"]	2025-11-25 04:29:03	\N	2025-11-25 04:29:02	2025-11-25 04:29:03
106	App\\Models\\User	4	auth_token	06927694839a517f689bced1f99dd77be193c56f3a515716f3ea97866a07f0ec	["*"]	2025-11-25 04:16:22	\N	2025-11-25 04:11:27	2025-11-25 04:16:22
110	App\\Models\\User	4	auth_token	e24906134295ece56d831b08cb64b1c7b639f3d70da959d141e5a5c533bf9e01	["*"]	2025-11-25 04:35:32	\N	2025-11-25 04:32:13	2025-11-25 04:35:32
104	App\\Models\\User	4	auth_token	2f830df954a3607bdb01ffbc395de380b187db2799b516cc5b8cfaf58afb2262	["*"]	2025-11-25 03:54:46	\N	2025-11-25 03:43:34	2025-11-25 03:54:46
93	App\\Models\\User	4	auth_token	bc514c34312b97b8c8eb9017fb7ace04d746ebaf3d0fcbf9da5792adc69289a8	["*"]	2025-11-23 03:54:05	\N	2025-11-23 03:48:32	2025-11-23 03:54:05
89	App\\Models\\User	4	auth_token	c4ef0c1182abead8e17e1db820e289b573b7c3e07073276686392e8e58162940	["*"]	2025-11-23 02:27:44	\N	2025-11-23 02:09:47	2025-11-23 02:27:44
92	App\\Models\\User	4	auth_token	237607ddc797b6d196b694c4741cb875500907efc71470da6ee256f1a13bdfaf	["*"]	2025-11-23 03:41:59	\N	2025-11-23 03:41:52	2025-11-23 03:41:59
91	App\\Models\\User	4	auth_token	a9e375cfc6c794ef571404f26d831f06d9cd63d9d1b4bb92176561b049f41aee	["*"]	2025-11-23 03:10:50	\N	2025-11-23 02:46:58	2025-11-23 03:10:50
90	App\\Models\\User	4	auth_token	6c0dbce25357b8cd50b9e027f5dcbeed2f1102157c987efc7740431993f29e28	["*"]	2025-11-23 02:40:14	\N	2025-11-23 02:33:22	2025-11-23 02:40:14
98	App\\Models\\User	4	auth_token	2870e47f2efc61c6371161f9a6f27c9e132d9e231d4ec8db22413a1e10dbe69b	["*"]	2025-11-23 05:02:49	\N	2025-11-23 05:02:29	2025-11-23 05:02:49
99	App\\Models\\User	4	auth_token	954b3ff235a0d2a20da4fa950aaa0a28792abdab49157cc92913130f0cb7326c	["*"]	2025-11-24 16:30:42	\N	2025-11-24 16:29:31	2025-11-24 16:30:42
88	App\\Models\\User	4	auth_token	d01a23075a8f29c2c061ddae4c7a53d2cdcec997e741b7c7586cbb32db7dd172	["*"]	\N	\N	2025-11-23 02:09:34	2025-11-23 02:09:34
119	App\\Models\\User	4	auth_token	d39e402dd7f920500d41a2bff5b2f16ff349b9654bbcd7e9fb9f108d4f001ddb	["*"]	2025-11-25 13:09:23	\N	2025-11-25 13:08:39	2025-11-25 13:09:23
113	App\\Models\\User	4	auth_token	fcdffd700ad46c5b4b1e21f9a36a4bb56b28877972deaf2c32fbd606967a4b15	["*"]	2025-11-25 05:43:27	\N	2025-11-25 05:42:51	2025-11-25 05:43:27
100	App\\Models\\User	3	auth_token	4b137e965c0635476689088b6da98e8a35ad2aca359d9641b9ce60f2b05ba0c4	["*"]	2025-11-24 16:31:04	\N	2025-11-24 16:30:52	2025-11-24 16:31:04
96	App\\Models\\User	4	auth_token	f2ae0c080ca6055c41d2462748060d76001ad4bed06b52c0eb842fcff5e8428f	["*"]	2025-11-23 04:39:42	\N	2025-11-23 04:10:00	2025-11-23 04:39:42
105	App\\Models\\User	4	auth_token	ae9118c2377efeb48fc6c6d45a0ef2414e09a47b3f824973c7e72e930fcd89c9	["*"]	2025-11-25 04:06:39	\N	2025-11-25 03:58:59	2025-11-25 04:06:39
118	App\\Models\\User	4	auth_token	b42f55b823f9c200650a9971edc7bc6e62d03be751de8d696d84e1be0d023d7b	["*"]	2025-11-25 13:07:29	\N	2025-11-25 13:04:15	2025-11-25 13:07:29
126	App\\Models\\User	4	auth_token	6214d981543db10717846d142113ac7d2aa42fbe678be7ec3f54b0138d2073aa	["*"]	2025-11-25 19:09:01	\N	2025-11-25 19:05:30	2025-11-25 19:09:01
107	App\\Models\\User	4	auth_token	98d8e87d08b18b773c5c778b35eba7d32b14ecd632990caeb9c07a0d53bc7b03	["*"]	2025-11-25 04:22:23	\N	2025-11-25 04:20:17	2025-11-25 04:22:23
115	App\\Models\\User	4	auth_token	dcc3b43b0dd29efef2cf9fff722fed8cb041a44f69ba5ea9a775bacb19231222	["*"]	2025-11-25 12:53:19	\N	2025-11-25 12:41:03	2025-11-25 12:53:19
116	App\\Models\\User	4	auth_token	5c30b4c435bda6210cde508b6b60c2a1a51ff5ebaad8118d1dd38e2ba5623f3f	["*"]	\N	\N	2025-11-25 13:01:24	2025-11-25 13:01:24
111	App\\Models\\User	4	auth_token	484bc210e308d735a96e719d42166ddf4a6a463c0706301d8bfeca29ee1048c9	["*"]	2025-11-25 05:24:37	\N	2025-11-25 04:36:35	2025-11-25 05:24:37
120	App\\Models\\User	4	auth_token	0a201eb27698c75cd738d153d54c4ec9aaee710679ecf593c9a787b9a18afd0c	["*"]	2025-11-25 14:01:59	\N	2025-11-25 13:59:08	2025-11-25 14:01:59
117	App\\Models\\User	4	auth_token	5177fa179303a9395b26f91bec34f64c0389b33c0f36d2b6e8376db13d67053e	["*"]	2025-11-25 13:01:35	\N	2025-11-25 13:01:32	2025-11-25 13:01:35
112	App\\Models\\User	4	auth_token	f402e44c441043958cb1cc2f2ce65a197cef3df05625fe092977224356677de3	["*"]	2025-11-25 05:25:22	\N	2025-11-25 05:23:36	2025-11-25 05:25:22
122	App\\Models\\User	4	auth_token	ed57603e8b99b1b5d84584c77f80eccb3a09edbb16b69ee198db29ea7eba546a	["*"]	2025-11-25 14:18:17	\N	2025-11-25 14:06:59	2025-11-25 14:18:17
121	App\\Models\\User	4	auth_token	f1f0ed0392eb1c8170870c68d03e8d053e2340be887c64290ceb69f3ad2d0b61	["*"]	2025-11-25 14:03:09	\N	2025-11-25 14:03:08	2025-11-25 14:03:09
125	App\\Models\\User	4	auth_token	ee1a26d3937c58994f9bbed148a0c2ebf4ab3693356319b51eed4c2b9a2ec952	["*"]	2025-11-25 19:03:04	\N	2025-11-25 19:02:39	2025-11-25 19:03:04
124	App\\Models\\User	4	auth_token	072ceefa2bfa00a882df4f313ae29bb61b446319f7aff40cf2fdc2a9adb2660d	["*"]	2025-11-25 14:35:39	\N	2025-11-25 14:35:02	2025-11-25 14:35:39
127	App\\Models\\User	4	auth_token	9518bea326eeaa8431c637ee047b79c6ee2b1f8eba17ced22c8a350a410256dd	["*"]	2025-11-25 19:25:31	\N	2025-11-25 19:19:01	2025-11-25 19:25:31
128	App\\Models\\User	4	auth_token	975e43d208b2e3b1ab497677432a15c9a4606f2c0de00d7ae09e940cfcb0df8a	["*"]	2025-11-25 19:33:03	\N	2025-11-25 19:30:50	2025-11-25 19:33:03
129	App\\Models\\User	5	auth_token	6c2eec96792f66a5ffb5b1a980cec1c19bdc00224ec224b04d366ea75b223c58	["*"]	2025-11-25 19:43:31	\N	2025-11-25 19:33:15	2025-11-25 19:43:31
130	App\\Models\\User	7	auth_token	0f5735938d7ab4ba669d777268705ff478433bdbb563b310aa7c15b243fd63cb	["*"]	\N	\N	2025-11-25 19:45:03	2025-11-25 19:45:03
147	App\\Models\\User	4	auth_token	3a5e60e1638cc77a5c58863f5228ecc5b06845080969a0104b6bb4c7f9983b16	["*"]	2025-11-25 22:10:25	\N	2025-11-25 22:02:51	2025-11-25 22:10:25
151	App\\Models\\User	4	auth_token	fe650ae4647b089ede130d27a789ec73fdb47fa29ee7c06c0372d289239f350c	["*"]	2025-11-26 04:31:14	\N	2025-11-26 04:29:22	2025-11-26 04:31:14
150	App\\Models\\User	7	auth_token	9f6e35654bcfd9a6ec47f85f80de91f5685a445000d9deda573661dc35a92fe1	["*"]	2025-11-26 00:11:40	\N	2025-11-26 00:11:05	2025-11-26 00:11:40
142	App\\Models\\User	7	auth_token	b28e0b895a38c2ae42bd190879310681dcfc5eeba40df7bed8f78a1a12e464bf	["*"]	2025-11-25 21:41:33	\N	2025-11-25 21:36:59	2025-11-25 21:41:33
131	App\\Models\\User	4	auth_token	c689c69709f072173594a67cf6cbe9a9ee066667ab69c614935dfd57e10fda8c	["*"]	2025-11-25 19:48:13	\N	2025-11-25 19:45:32	2025-11-25 19:48:13
143	App\\Models\\User	4	auth_token	c695c06fd9a74d298a577a57bf37628d4070ae6334ed47729480e831a0e0470f	["*"]	2025-11-25 21:44:15	\N	2025-11-25 21:41:48	2025-11-25 21:44:15
158	App\\Models\\User	4	auth_token	2ccd4fdf1d83c31931e9b8b2eb4cfa3e94774ba53aa04093c84796a9f9add1a7	["*"]	2025-11-27 03:36:10	\N	2025-11-27 02:49:11	2025-11-27 03:36:10
135	App\\Models\\User	4	auth_token	e353623b9ae5d2ee2de3d0245b2ce80145de4d6a459cc663b6c53367d9e44c86	["*"]	2025-11-25 20:01:14	\N	2025-11-25 19:56:14	2025-11-25 20:01:14
136	App\\Models\\User	7	auth_token	24bc1fbb128017aa7347cea9dbc7d3d2f24db36b157867c8a3096afd041dcee5	["*"]	\N	\N	2025-11-25 20:02:09	2025-11-25 20:02:09
137	App\\Models\\User	7	auth_token	429dc73e80aaa7cbd1727e8630b0ac9416778c52070bd0088dedfaec1296b401	["*"]	\N	\N	2025-11-25 20:21:19	2025-11-25 20:21:19
138	App\\Models\\User	7	auth_token	389306f880e603b904a104b5cc481508085d6204864559e0eb3ab8bc1b458358	["*"]	2025-11-25 21:00:37	\N	2025-11-25 20:54:35	2025-11-25 21:00:37
132	App\\Models\\User	7	auth_token	749115f4e66775fa7ba1cd2c3c877ab00dd945bf3481c73cad618f9f059291f3	["*"]	2025-11-25 19:52:16	\N	2025-11-25 19:48:23	2025-11-25 19:52:16
171	App\\Models\\User	4	auth_token	59a62ca492d30b01479aecdd802020ffcc3f5357287517a8d637c2fd0d7a94b0	["*"]	2025-11-27 13:58:54	\N	2025-11-27 13:38:15	2025-11-27 13:58:54
156	App\\Models\\User	4	auth_token	f27fbe060df572f3a7c77355d9d09bb73dd69c82f173d63ac1efe359565e7afb	["*"]	2025-11-27 02:35:17	\N	2025-11-27 02:12:30	2025-11-27 02:35:17
144	App\\Models\\User	7	auth_token	57d50a8a7f84d48efbc76e158c6c7dca0f1110f56e29c4a6c5cc1f9789492caa	["*"]	2025-11-25 21:49:02	\N	2025-11-25 21:44:30	2025-11-25 21:49:02
141	App\\Models\\User	4	auth_token	e26be59c61fb6d118e33133c9ee881ce89e6142feaa5869a86a55662f69452ff	["*"]	2025-11-25 21:36:50	\N	2025-11-25 21:34:35	2025-11-25 21:36:50
152	App\\Models\\User	4	auth_token	bbc6e6676944fca4adce29c1cf666b838c8b094faaf89218a2c3e0fe9ed173da	["*"]	2025-11-26 13:18:33	\N	2025-11-26 04:40:31	2025-11-26 13:18:33
139	App\\Models\\User	4	auth_token	6ead65cae01eb9ba65132355647331e3cbc53c949c845378ece5fcf75d9e91b7	["*"]	2025-11-25 21:03:24	\N	2025-11-25 21:00:50	2025-11-25 21:03:24
140	App\\Models\\User	7	auth_token	f5a8f39e3815aeaa63ebe18d57a261e29c1912a53159acc32a4c409473795222	["*"]	\N	\N	2025-11-25 21:04:45	2025-11-25 21:04:45
148	App\\Models\\User	4	auth_token	59d7d7ae201a3a7dfbaed6717e8cbee3084188fca109f04d3d675e055a499bb0	["*"]	2025-11-25 22:58:55	\N	2025-11-25 22:57:31	2025-11-25 22:58:55
133	App\\Models\\User	4	auth_token	617e8d0f2cf6aba46b6e6b966de93238d148912e13b0dc9e2d0693cdec1e3707	["*"]	2025-11-25 19:55:18	\N	2025-11-25 19:52:47	2025-11-25 19:55:18
145	App\\Models\\User	4	auth_token	630adb59f7dcf72de38961c4c00753aa51a3f0bf14336d23d8cfa41c9e4e1fe3	["*"]	2025-11-25 22:02:09	\N	2025-11-25 21:49:13	2025-11-25 22:02:09
134	App\\Models\\User	7	auth_token	d2fd14182e2278daf2a3545678a6eff1c6d8ac66e8e076f716fa627e4c6849c8	["*"]	2025-11-25 19:56:03	\N	2025-11-25 19:55:29	2025-11-25 19:56:03
146	App\\Models\\User	7	auth_token	5c11dfa964f73399aefb54d82c468ce79072cad30cec699c0ae553d41e786b4d	["*"]	2025-11-25 22:02:25	\N	2025-11-25 22:02:22	2025-11-25 22:02:25
166	App\\Models\\User	4	auth_token	5b3c70a61a05dc6b753d76af419d97cc6cf3c33af925bf56cf8dea55f60b5017	["*"]	2025-11-27 11:35:48	\N	2025-11-27 11:34:58	2025-11-27 11:35:48
164	App\\Models\\User	3	auth_token	ff6ecf452c0bf12222bbcd9dda89cec1d37f640411aa1bdeefbb14b2581abddb	["*"]	2025-11-27 11:00:05	\N	2025-11-27 10:48:29	2025-11-27 11:00:05
157	App\\Models\\User	4	auth_token	502a59a9dbd2e48a7624047e6c2234e4e27f7360b6712d62f1ef73e1131ec65c	["*"]	2025-11-27 02:40:45	\N	2025-11-27 02:40:21	2025-11-27 02:40:45
149	App\\Models\\User	3	auth_token	383b5ecc87cbcba9bc9e12eb4ffc4d7d8b5ed80b43a150cd6ca595e5ece7c129	["*"]	2025-11-25 22:59:43	\N	2025-11-25 22:59:05	2025-11-25 22:59:43
154	App\\Models\\User	4	auth_token	61cc88be213090287fd97b1854532a47f2a336d40c29d93c94a4f448a9b2f69c	["*"]	2025-11-27 01:40:11	\N	2025-11-27 01:38:31	2025-11-27 01:40:11
161	App\\Models\\User	4	auth_token	4dacd0789810e21da0b43ed90bfd2d2512a529748bd242ffed8dd72c3cb59c35	["*"]	2025-11-27 04:06:25	\N	2025-11-27 04:03:40	2025-11-27 04:06:25
153	App\\Models\\User	4	auth_token	6a1b9fa55247aa33119c004db03ea88103d80872743a6fa0f3fde6c039825ab1	["*"]	2025-11-26 14:33:14	\N	2025-11-26 13:19:26	2025-11-26 14:33:14
155	App\\Models\\User	4	auth_token	e10cd1184167389cfd42ac6dce8bb460b6e0c073b6d13aefc7b380ff25eb0b37	["*"]	2025-11-27 02:12:11	\N	2025-11-27 01:49:26	2025-11-27 02:12:11
162	App\\Models\\User	3	auth_token	fdb4e02326e35584312291799fe2d626508e072d4207c4873c604a854d436efb	["*"]	\N	\N	2025-11-27 04:06:35	2025-11-27 04:06:35
159	App\\Models\\User	4	auth_token	b4abc13fbf3d9da9b1a43df697ba0bd670e9257d98849d22f4cd681ece307888	["*"]	2025-11-27 03:49:11	\N	2025-11-27 03:47:59	2025-11-27 03:49:11
163	App\\Models\\User	3	auth_token	c1d254d1eafe6c4eebd48f32e02bed259b1d0cf39e5b076e3cd97283cb889682	["*"]	2025-11-27 10:27:54	\N	2025-11-27 10:17:28	2025-11-27 10:27:54
168	App\\Models\\User	4	auth_token	0265ba4d85b3a3ef1ac37c5a8cd65191ef6166c396148b6c949d055aaaac3143	["*"]	2025-11-27 12:50:36	\N	2025-11-27 12:49:54	2025-11-27 12:50:36
173	App\\Models\\User	4	auth_token	776be6272a717e319f23f3a4b3a29723d11589c63dd9baeadd2e1a51aacd7b6d	["*"]	2025-11-27 14:14:59	\N	2025-11-27 14:13:05	2025-11-27 14:14:59
175	App\\Models\\User	8	auth_token	7202687fa01b41e2321c3c3e6450ba28a4ca7e92be1a8201e4424b73bf0ee64f	["*"]	\N	\N	2025-11-27 14:42:44	2025-11-27 14:42:44
172	App\\Models\\User	4	auth_token	3dc59d7fa3d9dd7641c10638b1db92c96caa29db8fcffff78ecbaf2d239a1d09	["*"]	2025-11-27 14:08:12	\N	2025-11-27 13:59:12	2025-11-27 14:08:12
174	App\\Models\\User	4	auth_token	fe32fbd24e1e58eb2e1001e3d29de7d0d527ff6292ad7a900b60ab2e0d47b0e0	["*"]	2025-11-27 14:23:01	\N	2025-11-27 14:22:56	2025-11-27 14:23:01
177	App\\Models\\User	9	auth_token	7dbb049e00d692519a18741a34b3ffe0a46b8cbbd6efd50248ad5745d699fc1c	["*"]	\N	\N	2025-11-27 14:45:07	2025-11-27 14:45:07
178	App\\Models\\User	10	auth_token	5713a986f47badcaac83188e117b5b525f595ed81aee84a4d7e026616496a95a	["*"]	\N	\N	2025-11-27 14:48:32	2025-11-27 14:48:32
179	App\\Models\\User	10	auth_token	ee17b29b9d0a6e4ccf2ebc62afe2ed1c7114a3965cdbacbd7841b40bdbff2255	["*"]	2025-11-27 14:50:39	\N	2025-11-27 14:49:29	2025-11-27 14:50:39
183	App\\Models\\User	4	auth_token	44360b3e01a86c15f6a00eea8535df91932c595b9e39edc437dc453a97f74a18	["*"]	2025-11-27 19:20:23	\N	2025-11-27 18:57:52	2025-11-27 19:20:23
180	App\\Models\\User	4	auth_token	51d6aeff08bcb96e3afe6478d96c970df912fac84669f18a77797d9492abbbd4	["*"]	2025-11-27 18:44:51	\N	2025-11-27 18:43:51	2025-11-27 18:44:51
182	App\\Models\\User	4	auth_token	7ff602bfe8866537ddbddfd0855395975ce9d250f11b7f074de4970a65eb9f4b	["*"]	2025-11-27 18:57:35	\N	2025-11-27 18:50:26	2025-11-27 18:57:35
214	App\\Models\\User	4	auth_token	dc3b6e2a7be131592653f419f70a227d83ab1cdcc1abd0d88d3b6728852b7567	["*"]	2025-12-01 05:42:51	\N	2025-12-01 04:43:32	2025-12-01 05:42:51
211	App\\Models\\User	3	auth_token	20b35d50b7250ff4d97177ada880adcbed17c8f483582fe72cb3369f2b1e1420	["*"]	2025-12-01 04:03:57	\N	2025-11-30 18:47:00	2025-12-01 04:03:57
199	App\\Models\\User	3	auth_token	a9ed45b8ac1e73208bdbf2eac468237396c22c55b2a8d517cb2debeb856ff413	["*"]	2025-11-28 00:57:08	\N	2025-11-28 00:51:28	2025-11-28 00:57:08
189	App\\Models\\User	4	auth_token	ea6bb2d96f0b8ee299094754b42280f32bfc92a58240f1e66848e51b2d2365a1	["*"]	2025-11-27 21:52:45	\N	2025-11-27 21:35:32	2025-11-27 21:52:45
209	App\\Models\\User	5	auth_token	23952de2cab20bc95e202c7b763946b41fda40c81d02ef60b603e2cd9191dd42	["*"]	2025-11-30 03:49:13	\N	2025-11-30 03:48:20	2025-11-30 03:49:13
185	App\\Models\\User	4	auth_token	19760b638a4ac67ca59b62276206ab31ab755bfab911f90f4e76e48eb5c708b3	["*"]	2025-11-27 20:02:21	\N	2025-11-27 19:59:17	2025-11-27 20:02:21
200	App\\Models\\User	4	auth_token	11c8b4031f172119eff2d107389e3cd1ecb7c762f49eff12db97d68369fd9d95	["*"]	2025-11-29 01:52:04	\N	2025-11-29 01:33:42	2025-11-29 01:52:04
184	App\\Models\\User	4	auth_token	13192a1fbe98cef0f8d8318a38ba871c02d67331287776a0f6ff0d407e5e1f19	["*"]	2025-11-27 19:36:27	\N	2025-11-27 19:28:39	2025-11-27 19:36:27
201	App\\Models\\User	11	auth_token	cfda3265f1c63a6a67161cadc0ee2f527c00a9b6f9e59fc7dff0eb738621d0e4	["*"]	\N	\N	2025-11-29 01:57:03	2025-11-29 01:57:03
187	App\\Models\\User	4	auth_token	7b9553f02cac73b6c37dd19034f8f7266b43ce6130ca32164abdc5f36e1dcc46	["*"]	2025-11-27 20:06:19	\N	2025-11-27 20:04:20	2025-11-27 20:06:19
186	App\\Models\\User	3	auth_token	95861de2c98a87faf0e01efdb906b1b6cb9899cc0816fabb86f1be099b119ad6	["*"]	2025-11-27 20:04:01	\N	2025-11-27 20:03:49	2025-11-27 20:04:01
181	App\\Models\\User	4	auth_token	bf7e550238d252c3e13e5c4d55a91327964e5b7c802e97296cacbcdb2c1898db	["*"]	2025-11-27 18:46:38	\N	2025-11-27 18:45:14	2025-11-27 18:46:38
188	App\\Models\\User	4	auth_token	ab61d45b58f48e4402375aa03c49d9d79c0484377fd00ef941069480c1c57e9b	["*"]	2025-11-27 20:18:25	\N	2025-11-27 20:16:54	2025-11-27 20:18:25
193	App\\Models\\User	4	auth_token	29af8c5ca484e994b94530e8b6afc3fd3c4cf9f9a01c8da4770213b9ebfd08ad	["*"]	2025-11-27 22:23:16	\N	2025-11-27 22:13:04	2025-11-27 22:23:16
190	App\\Models\\User	3	auth_token	6ac68517060a17abd6a071ee1aab2f3c79d73156849490ff5a163557e338e89c	["*"]	2025-11-27 22:02:27	\N	2025-11-27 21:53:05	2025-11-27 22:02:27
212	App\\Models\\User	3	auth_token	404ba9f46cb7d2fe65eacb4a703241bde452480b175a8ee444a79afc3ab07215	["*"]	2025-12-01 04:27:42	\N	2025-12-01 04:08:28	2025-12-01 04:27:42
205	App\\Models\\User	4	auth_token	cd59a3de642db7ed0e49b46a578c629d927df86439fd3a5805314f501dab578b	["*"]	2025-11-30 02:03:03	\N	2025-11-30 01:59:45	2025-11-30 02:03:03
194	App\\Models\\User	4	auth_token	12a478de2f0ddccce392cf457c315184f9aa29fd86261cad002e44653be807b2	["*"]	2025-11-27 22:31:34	\N	2025-11-27 22:23:34	2025-11-27 22:31:34
191	App\\Models\\User	10	auth_token	6b0bb0346697a7317e800c20827fc223ee2a8fe252b57cee5f53cfc216b88d41	["*"]	2025-11-27 22:12:08	\N	2025-11-27 22:06:05	2025-11-27 22:12:08
204	App\\Models\\User	4	auth_token	5d16c4b056f6f6bfee33e9f331542ba70fd33e74db9069dcb36f403952c34e51	["*"]	2025-11-29 14:20:54	\N	2025-11-29 02:42:45	2025-11-29 14:20:54
195	App\\Models\\User	4	auth_token	e89187b104e41c80596e3eb9950591b2493a4a2a0c3c352597ca0ad885d22821	["*"]	2025-11-27 22:45:04	\N	2025-11-27 22:36:11	2025-11-27 22:45:04
198	App\\Models\\User	4	auth_token	ee0e02442eaa6bcd002ae9e5eb2b2eb215d713ce2e6f03fb425a03132e24ca08	["*"]	2025-11-28 00:51:18	\N	2025-11-28 00:45:44	2025-11-28 00:51:18
196	App\\Models\\User	4	auth_token	53d92ad1de5f5a04491aff2caac29e79234e17247e0aeeadff6d2b806db36ee1	["*"]	2025-11-28 00:38:07	\N	2025-11-28 00:20:22	2025-11-28 00:38:07
202	App\\Models\\User	4	auth_token	cb823e96c4585cae6f417cb3e623260e9b9511a37588bd98bf999df5de174c92	["*"]	2025-11-29 02:42:02	\N	2025-11-29 02:03:44	2025-11-29 02:42:02
207	App\\Models\\User	4	auth_token	0ff10fa881fa2cf2876403fa43ab01111ce8078c340bcbbb3ea8f3035212f3ac	["*"]	2025-11-30 03:16:04	\N	2025-11-30 03:11:42	2025-11-30 03:16:04
219	App\\Models\\User	4	auth_token	9e750f41e09e44589e7233d3aeaa623241ab25e5106156e9ba54ba80fa725139	["*"]	2025-12-01 20:29:49	\N	2025-12-01 19:52:19	2025-12-01 20:29:49
217	App\\Models\\User	4	auth_token	425c64cdbd7979e642f54a50c77f1eab6dcb7c258bfba7a0669005664499af85	["*"]	2025-12-01 17:25:55	\N	2025-12-01 14:50:22	2025-12-01 17:25:55
213	App\\Models\\User	3	auth_token	824b72d01fbe58dfb211d0a305ea891b6018821362d5597cc7407bc16a01326c	["*"]	2025-12-01 04:43:16	\N	2025-12-01 04:28:09	2025-12-01 04:43:16
210	App\\Models\\User	4	auth_token	43dd93815ff0c483854e48ada24b7697e8db9f0f2f2de45f939285bde8848994	["*"]	2025-11-30 18:46:50	\N	2025-11-30 18:15:45	2025-11-30 18:46:50
216	App\\Models\\User	4	auth_token	00e24a846c1b853548d55aa2d84c9a714df0e905ee8a4e82ecb272e89905a4c1	["*"]	2025-12-01 14:49:40	\N	2025-12-01 14:32:29	2025-12-01 14:49:40
222	App\\Models\\User	4	auth_token	c0c0a5cf415edf4c68d2044b4ee01ceabdecd7dd9169ad9c7c28fe4936655c47	["*"]	2025-12-01 22:14:28	\N	2025-12-01 20:51:02	2025-12-01 22:14:28
215	App\\Models\\User	4	auth_token	4a20628cac91ef6442663fcc7f427bcc3d759906a6a2f92591a7d26f00db8672	["*"]	2025-12-01 14:31:04	\N	2025-12-01 14:24:56	2025-12-01 14:31:04
220	App\\Models\\User	4	auth_token	195c54fa12b5662c1a89dbef982f67dad72db15659e913942cbc34885107a0b0	["*"]	2025-12-01 20:34:57	\N	2025-12-01 20:30:03	2025-12-01 20:34:57
224	App\\Models\\User	3	auth_token	3b85e2c290a9bb162b100c018c772bca20748fa1cacc31047b9d0d87945bb642	["*"]	\N	\N	2025-12-01 22:16:03	2025-12-01 22:16:03
225	App\\Models\\User	4	auth_token	e26e2a2c0b129bebc030c052390f0d2a9e7b3378469623e0a78f50143b51fc50	["*"]	2025-12-01 23:19:52	\N	2025-12-01 22:32:49	2025-12-01 23:19:52
226	App\\Models\\User	4	auth_token	18f29d29fcbe6d9a5e9f2c38e9d82015e66b82abc8dc33d889d396f866b4576f	["*"]	2025-12-01 23:24:55	\N	2025-12-01 23:22:00	2025-12-01 23:24:55
228	App\\Models\\User	4	auth_token	bbc37a6f43bc47519704a670ac7b41fd681143bb247518a41771bf8aa1a87855	["*"]	2025-12-02 03:12:37	\N	2025-12-02 01:28:25	2025-12-02 03:12:37
230	App\\Models\\User	4	auth_token	b6dae49052a29dbfc31f04801f976e87fba696a5d63b652ce199d8a478327c5f	["*"]	2025-12-02 13:43:37	\N	2025-12-02 13:32:31	2025-12-02 13:43:37
231	App\\Models\\User	4	auth_token	89da847c211e23da06a4cbd33595c594b7b5e0263465d5040bfd02b5b585d639	["*"]	2025-12-02 13:47:23	\N	2025-12-02 13:44:26	2025-12-02 13:47:23
232	App\\Models\\User	4	auth_token	903174938af55434532bca70688f709d2ca2d06dae120f28d1e2fc4416885311	["*"]	2025-12-02 18:29:00	\N	2025-12-02 13:49:38	2025-12-02 18:29:00
242	App\\Models\\User	4	auth_token	5ca13a1a68ce09ccc65cd1e228987583506903eb3818ce72ee212bf597aebc86	["*"]	2025-12-03 16:30:32	\N	2025-12-03 16:29:23	2025-12-03 16:30:32
235	App\\Models\\User	4	auth_token	d7948700c04823885378cf9597d3533183b73d9a5f8f19982628cb532b7ceba7	["*"]	2025-12-03 10:20:50	\N	2025-12-03 04:45:59	2025-12-03 10:20:50
241	App\\Models\\User	4	auth_token	c22434ca2b7474635cf653482538e4256899b877d6b97943e173e2cb75903737	["*"]	2025-12-03 16:22:05	\N	2025-12-03 16:20:38	2025-12-03 16:22:05
263	App\\Models\\User	4	auth_token	672155332bfe72addb5269b8d9045faf7fd7f03076a6cfed74da06c026243b96	["*"]	2025-12-03 22:18:48	\N	2025-12-03 21:39:41	2025-12-03 22:18:48
247	App\\Models\\User	4	auth_token	e885079274ec9af5051316d551f33744ebe9b708140a4bbd7f10d372219de912	["*"]	2025-12-03 17:01:27	\N	2025-12-03 17:00:16	2025-12-03 17:01:27
238	App\\Models\\User	4	auth_token	721e5c940fdff3ba8f475c11ec705a0eb6fd11b96e31a194fd5f38903d53752a	["*"]	2025-12-03 14:10:16	\N	2025-12-03 14:02:12	2025-12-03 14:10:16
254	App\\Models\\User	4	auth_token	7f62e77e39399f0785870f1b4914fa8caf12bf47b47fd17de3954ef48628967e	["*"]	2025-12-03 21:11:03	\N	2025-12-03 20:43:09	2025-12-03 21:11:03
250	App\\Models\\User	3	auth_token	23bc5ca2c7b1b36f46c9a098689327cfc666e5bbd370f1f142403adbbda6db25	["*"]	2025-12-03 17:12:37	\N	2025-12-03 17:07:43	2025-12-03 17:12:37
280	App\\Models\\User	4	auth_token	c06758c724eec46456c8cb87b1fe1467302add9e239b69fcb6b2b87600b75605	["*"]	2025-12-05 05:15:26	\N	2025-12-05 05:08:05	2025-12-05 05:15:26
274	App\\Models\\User	4	auth_token	39ee4550372da42a16b83112ff80317508e326aeb0e12c5cdae79ae21ec1b214	["*"]	2025-12-04 23:05:30	\N	2025-12-04 22:34:45	2025-12-04 23:05:30
248	App\\Models\\User	3	auth_token	8c9b00f8765385964dcd3ddcb006d00985c443d83f9a33eef56bc83b1af0b1dd	["*"]	2025-12-03 17:01:51	\N	2025-12-03 17:01:30	2025-12-03 17:01:51
239	App\\Models\\User	4	auth_token	1bfcd63f77f064834ac07b0b11048f33e320fc4ad3dcaa853b0fc03645f5238e	["*"]	2025-12-03 14:16:53	\N	2025-12-03 14:11:17	2025-12-03 14:16:53
236	App\\Models\\User	4	auth_token	fe30dd8ffb66cb93f99464d163c6354a0557ff17c114f28d1817d3aa1d8b90f2	["*"]	2025-12-03 11:53:40	\N	2025-12-03 10:22:08	2025-12-03 11:53:40
270	App\\Models\\User	4	auth_token	6bc21fcddbbceefa6c45ddbfbf21f887c9226c19e8f35b733c5221e807df5188	["*"]	2025-12-04 18:39:35	\N	2025-12-04 18:37:20	2025-12-04 18:39:35
234	App\\Models\\User	4	auth_token	cfc2daff97aef2eef7f8b1ecd0d59e712cd0a27ad780bb9c66d8de361c5da4a1	["*"]	2025-12-02 20:03:25	\N	2025-12-02 19:58:35	2025-12-02 20:03:25
237	App\\Models\\User	4	auth_token	5c2272d8a53cef88229f4df3155c6a8d20f48f18460622245e2e4e9e49d7cb34	["*"]	2025-12-03 13:59:15	\N	2025-12-03 11:53:59	2025-12-03 13:59:15
258	App\\Models\\User	4	auth_token	dd814f8ba22625b839cd38aa5dfed079fecaaf5c54d388e41ba3895e0a32a1bf	["*"]	2025-12-03 21:34:22	\N	2025-12-03 21:32:00	2025-12-03 21:34:22
251	App\\Models\\User	4	auth_token	0e4dd1ce31d3c62d995beddefb8f0bc1a17290ed48b65356ebd567fa0761876f	["*"]	2025-12-03 20:08:20	\N	2025-12-03 18:45:32	2025-12-03 20:08:20
252	App\\Models\\User	4	auth_token	24d070c46c83ec9e7e0d87c1ebb4bef11317c91ed52d019e54347129682bf729	["*"]	2025-12-03 20:29:35	\N	2025-12-03 20:12:10	2025-12-03 20:29:35
253	App\\Models\\User	4	auth_token	cea8d6b3e812fc8fd7cffb14710403dab014a5cf4bd2c1c14c51aee10b43b739	["*"]	2025-12-03 20:30:49	\N	2025-12-03 20:23:46	2025-12-03 20:30:49
233	App\\Models\\User	4	auth_token	7da44ad14f52a7951276e198a841afff490f8b1d19e6df6d5c1e32c957416114	["*"]	2025-12-02 19:50:50	\N	2025-12-02 18:34:43	2025-12-02 19:50:50
245	App\\Models\\User	4	auth_token	47b0bcd12ca52faed9118b0450b0613b9506148d5a55b414fa3d20ff1d6f0810	["*"]	2025-12-03 16:52:04	\N	2025-12-03 16:48:54	2025-12-03 16:52:04
243	App\\Models\\User	4	auth_token	0a63bf193ca8c7ed9756c4e626d10c5aa1e4fa45225ec30a94c7d8f9fbb55b6d	["*"]	2025-12-03 16:33:58	\N	2025-12-03 16:31:29	2025-12-03 16:33:58
240	App\\Models\\User	4	auth_token	5fc3af973b951f204a25ecf2c1e019818f578be4d3b7f0a1e9d2491f4a85fd8d	["*"]	2025-12-03 16:15:16	\N	2025-12-03 15:57:05	2025-12-03 16:15:16
266	App\\Models\\User	4	auth_token	e84a93ae9dee34544d3f63d54792c39ba6779a6ebfb800359406a681a3d99bab	["*"]	2025-12-04 01:51:44	\N	2025-12-04 01:29:32	2025-12-04 01:51:44
249	App\\Models\\User	4	auth_token	30d5f329d88de8b4b2bc34970fb97b2030fa7d1a6a3e4399aee9530003cd011e	["*"]	2025-12-03 17:07:30	\N	2025-12-03 17:02:08	2025-12-03 17:07:30
260	App\\Models\\User	4	auth_token	4cffa1a3a655e20421d41263eaf157b42bb0c04817bef6e96291dc62ed72d363	["*"]	2025-12-03 21:36:48	\N	2025-12-03 21:35:02	2025-12-03 21:36:48
268	App\\Models\\User	4	auth_token	dc3c1bdd986dd4587c79d53dcaf12dc57c6214f8085c589c99d316bc729f65bf	["*"]	2025-12-04 01:59:38	\N	2025-12-04 01:52:38	2025-12-04 01:59:38
256	App\\Models\\User	4	auth_token	c44b6e145f9e412844fd9b3383d03d57a687ff56378a82f4caeae658777a5ab6	["*"]	2025-12-03 21:30:51	\N	2025-12-03 21:13:10	2025-12-03 21:30:51
261	App\\Models\\User	4	auth_token	b23166b9af74a7893b57043e2e0d7b47009cd6ffabb3d32d0f75da1d758d9294	["*"]	2025-12-03 21:37:02	\N	2025-12-03 21:36:56	2025-12-03 21:37:02
272	App\\Models\\User	4	auth_token	065642492c6d899b6314c77a8da5eaa59e76bd52cff282c9625480734956813d	["*"]	2025-12-04 22:34:07	\N	2025-12-04 22:32:52	2025-12-04 22:34:07
264	App\\Models\\User	4	auth_token	f3fa6cabd1a4ab9ccea5c0bba34934cd9462d8e2242a45b3f42db0d2a49f2867	["*"]	2025-12-04 01:28:42	\N	2025-12-04 01:21:39	2025-12-04 01:28:42
275	App\\Models\\User	4	auth_token	917dbc69c4e5ff1760c73f9823021b41d134ae87495df7fb8e1450acaa372a01	["*"]	2025-12-05 03:51:46	\N	2025-12-05 03:33:20	2025-12-05 03:51:46
269	App\\Models\\User	4	auth_token	e3373283d111de33a3892d7e13bc9d2e9de41fe2e165fc9345e62c3156377726	["*"]	2025-12-04 02:57:52	\N	2025-12-04 02:00:42	2025-12-04 02:57:52
271	App\\Models\\User	4	auth_token	47a4cf66266e4a7d139738cc7923866f062dc93459213e743204053a2c07f963	["*"]	2025-12-04 19:55:48	\N	2025-12-04 18:59:05	2025-12-04 19:55:48
277	App\\Models\\User	4	auth_token	6d20deb259b9a88ceca4117499d170e5587ea207cf56b14a032644d7d5b8b71a	["*"]	2025-12-05 04:09:22	\N	2025-12-05 03:53:51	2025-12-05 04:09:22
276	App\\Models\\User	4	auth_token	7c45754ef000570e7c4b67014aca711de00848df68c7d863771b611b71ab1e80	["*"]	2025-12-05 03:43:02	\N	2025-12-05 03:33:44	2025-12-05 03:43:02
282	App\\Models\\User	3	auth_token	566b0ba53436511c03d28a19a3af517f0c4fb33470e6261fe2d03fd7a20a4041	["*"]	2025-12-05 05:18:46	\N	2025-12-05 05:16:59	2025-12-05 05:18:46
281	App\\Models\\User	3	auth_token	dcacf4072211f1f170e9c16428a16daebc65c9b4a97ea6aae7eb01969fbd6c54	["*"]	2025-12-05 05:19:46	\N	2025-12-05 05:15:32	2025-12-05 05:19:46
283	App\\Models\\User	4	auth_token	92a684ed54141858189e915bc2070cd66455c3870cb03cd6f9c069a872059316	["*"]	2025-12-05 05:25:14	\N	2025-12-05 05:23:21	2025-12-05 05:25:14
284	App\\Models\\User	3	auth_token	2cb57c287adf0801a872d6d784e3760c693f3eb952d9b7d864580cf7095d4ecf	["*"]	2025-12-05 05:26:18	\N	2025-12-05 05:25:25	2025-12-05 05:26:18
285	App\\Models\\User	3	auth_token	0df9abe5e756b4d054873c60bca026b1bd3be806426984854b67239c4d30d9fa	["*"]	2025-12-05 05:30:06	\N	2025-12-05 05:29:59	2025-12-05 05:30:06
288	App\\Models\\User	4	auth_token	9cd8b9130880435a15782cf15df7539ceda3c97bd835cf578ef79d901d879a15	["*"]	2025-12-05 10:43:23	\N	2025-12-05 07:08:22	2025-12-05 10:43:23
309	App\\Models\\User	4	auth_token	93d5e2ff497da71d8fca0e395a6758c9ca8015ece7212cd9beef83a3879f1aa1	["*"]	2025-12-05 16:44:55	\N	2025-12-05 16:35:30	2025-12-05 16:44:55
289	App\\Models\\User	4	auth_token	aee9edf7e22b3c5ef7d2b7bcef96bd581d031a4a624a4c59179e6c7cf0be5b4a	["*"]	2025-12-05 12:28:51	\N	2025-12-05 10:44:19	2025-12-05 12:28:51
294	App\\Models\\User	4	auth_token	51f6294a80f7e09688aa6e2deba9613ac8ecd62ad7783274d952daeab6ed9d5c	["*"]	2025-12-05 14:02:07	\N	2025-12-05 14:01:23	2025-12-05 14:02:07
318	App\\Models\\User	4	auth_token	a3e698c87fb3ee72e3a6bc1b4aa5d9b090d85dcfedbef4ff95768058fcf31d96	["*"]	2025-12-07 02:07:29	\N	2025-12-07 00:17:18	2025-12-07 02:07:29
291	App\\Models\\User	3	auth_token	e9595d9f273381614a4d1c9baf8059dc9f6664ba3f0cca3008d0b1753b85ff26	["*"]	2025-12-05 13:20:26	\N	2025-12-05 12:37:27	2025-12-05 13:20:26
316	App\\Models\\User	4	auth_token	a6f232a508b3fdda7ac501ecd88a60793614e9ee15ca88413a612a11ba337aa8	["*"]	2025-12-06 23:03:33	\N	2025-12-06 22:43:45	2025-12-06 23:03:33
297	App\\Models\\User	4	auth_token	d7a98a8fb6c98ecd171fbb8d190913e414fea92cd940f93cefd5c0777021dd5e	["*"]	2025-12-05 14:30:50	\N	2025-12-05 14:28:43	2025-12-05 14:30:50
315	App\\Models\\User	4	auth_token	7ad0a13ebb46c5ee54e180d0db4508f490f94a412be08ec74b6aff7077b7a170	["*"]	2025-12-06 22:43:20	\N	2025-12-06 21:51:57	2025-12-06 22:43:20
307	App\\Models\\User	4	auth_token	5a99c14b6326796f736afb9ab8d087cef805f0bc24a92896b86e4cba4c58465b	["*"]	2025-12-05 16:26:19	\N	2025-12-05 16:16:38	2025-12-05 16:26:19
305	App\\Models\\User	4	auth_token	ba27b6672597d3589849b69226d0dab0a2b7734fcab3f8690e9c879188b0d8c3	["*"]	2025-12-05 16:00:48	\N	2025-12-05 15:55:00	2025-12-05 16:00:48
290	App\\Models\\User	4	auth_token	3c529bd12e2d11630b214a8c20d4a7bc5b400d225884f1702d5e8626d8d65bb2	["*"]	2025-12-05 12:37:17	\N	2025-12-05 12:34:19	2025-12-05 12:37:17
302	App\\Models\\User	4	auth_token	0cd7e94b45dd04f72410eeab8b86a7c751366b5fbe8f73b75c923f2db0a26a59	["*"]	2025-12-05 15:41:07	\N	2025-12-05 15:37:12	2025-12-05 15:41:07
300	App\\Models\\User	4	auth_token	6122cf199d88beafbe302f1eb47ecd377c6949c40ceb41e0e6c4ee2982f4974c	["*"]	2025-12-05 15:35:20	\N	2025-12-05 15:31:25	2025-12-05 15:35:20
292	App\\Models\\User	4	auth_token	a0da56229276b783307fbc7159be4cc6e7034ba4f6fbc0d3f0a52448ee4f7a13	["*"]	2025-12-05 13:59:34	\N	2025-12-05 13:50:03	2025-12-05 13:59:34
293	App\\Models\\User	13	auth_token	51b0abf1bd96dcfe3ff62cc670d69c41703e1dd571a4d57875434f840c912220	["*"]	\N	\N	2025-12-05 14:01:08	2025-12-05 14:01:08
317	App\\Models\\User	4	auth_token	2b893725cd175a1d5dbd0ba50ed8cec979e143b79fca3d5812856f7be33492d4	["*"]	2025-12-07 00:07:50	\N	2025-12-06 23:04:01	2025-12-07 00:07:50
296	App\\Models\\User	4	auth_token	5862e913c1f8d3c161fece628204fbe4f9906ed6eef0ecca78abaea0c9dbabdd	["*"]	2025-12-05 14:26:27	\N	2025-12-05 14:08:36	2025-12-05 14:26:27
298	App\\Models\\User	4	auth_token	0f41a01a82d97cf49d09048e3dc31263163d96ac751814dcd302e852ba5550a0	["*"]	2025-12-05 15:30:01	\N	2025-12-05 15:26:57	2025-12-05 15:30:01
303	App\\Models\\User	3	auth_token	00961732cbe362e237f221970669921d9a4f02cab261bc8dddac8d191ff57559	["*"]	2025-12-05 15:41:51	\N	2025-12-05 15:40:47	2025-12-05 15:41:51
299	App\\Models\\User	3	auth_token	e4a11d66dad76ae006c18a878600a2e9fab3a5c054797a30d22b58ba522611db	["*"]	2025-12-05 15:33:37	\N	2025-12-05 15:30:49	2025-12-05 15:33:37
295	App\\Models\\User	4	auth_token	01ca56b6dc819454151aa129efc56787d0658bee173f6707714159d612c413ff	["*"]	2025-12-05 14:04:01	\N	2025-12-05 14:03:12	2025-12-05 14:04:01
322	App\\Models\\User	4	auth_token	7eae7765b03ef21b00bcf2a63bbe2e8697ed32d8132e5fa66fdbdee033658fb3	["*"]	2025-12-07 05:11:59	\N	2025-12-07 02:51:13	2025-12-07 05:11:59
313	App\\Models\\User	4	auth_token	9fefd21941363a76a5aee574cb1aa4101c3c96732542047fe41609df388fc308	["*"]	2025-12-06 21:24:34	\N	2025-12-06 21:18:34	2025-12-06 21:24:34
304	App\\Models\\User	3	auth_token	256150826f9fbd0740216145def9d8f8e8b141ac2aab7bf60ba43f4ab82dc265	["*"]	2025-12-05 15:50:41	\N	2025-12-05 15:48:46	2025-12-05 15:50:41
308	App\\Models\\User	4	auth_token	8899a8efc5dcff1bcc39c4e645fa5e74d239c5645d1ab60da3ea686245145e4e	["*"]	2025-12-05 16:34:34	\N	2025-12-05 16:26:41	2025-12-05 16:34:34
306	App\\Models\\User	4	auth_token	9b5bd34aec17048b93d205bf646fa10bb8e81e168e972d3eeba1955c656f5a36	["*"]	2025-12-05 16:15:47	\N	2025-12-05 16:13:06	2025-12-05 16:15:47
320	App\\Models\\User	4	auth_token	715a1e5a8cda316126995ba3f58d7b981f33fcce7665c91cf368daeaf8d5474c	["*"]	2025-12-07 02:50:07	\N	2025-12-07 02:44:15	2025-12-07 02:50:07
323	App\\Models\\User	3	auth_token	1719940939984cf2bd3677d634c5e40ba32760eb9914bd2d2cf5abf2dee10216	["*"]	2025-12-07 06:04:13	\N	2025-12-07 05:12:07	2025-12-07 06:04:13
321	App\\Models\\User	7	auth_token	23a37a27667d4e50e8713fbcfca760135e976dd33d6b2758490cc9a4696faf1a	["*"]	2025-12-07 02:50:55	\N	2025-12-07 02:50:31	2025-12-07 02:50:55
311	App\\Models\\User	4	auth_token	7105b59a6f161be7c2a853d2dfed62e299e582c6253d8da01f20c9d966b89398	["*"]	2025-12-05 17:21:24	\N	2025-12-05 16:45:52	2025-12-05 17:21:24
314	App\\Models\\User	4	auth_token	2262ce6f6b4f5089d4cabb6a922a385c68ea1c8cc0f4cc2c10254bb7e4009915	["*"]	2025-12-06 21:51:34	\N	2025-12-06 21:34:11	2025-12-06 21:51:34
326	App\\Models\\User	4	auth_token	3034492a8f6eef15275d0dfd26f755ef652dfec73734e88fb4e1eee31599db2e	["*"]	2025-12-07 20:34:12	\N	2025-12-07 19:06:33	2025-12-07 20:34:12
325	App\\Models\\User	4	auth_token	3ccace597b99953fd723c858a18051bdaf9fa4962e2080dbe6ae83aec29291b0	["*"]	2025-12-07 19:05:40	\N	2025-12-07 15:49:20	2025-12-07 19:05:40
324	App\\Models\\User	4	auth_token	354c80f0fa44cd080e0edd7f54dba3d7b8177310bd1005959f6812103c8136cf	["*"]	2025-12-07 06:07:20	\N	2025-12-07 06:06:09	2025-12-07 06:07:20
327	App\\Models\\User	4	auth_token	6546cd75f4d9e198274d4857081c1d5ea50a83c1447ede10d05d86ce34aa5fcc	["*"]	2025-12-07 20:38:54	\N	2025-12-07 20:38:48	2025-12-07 20:38:54
330	App\\Models\\User	3	auth_token	809b0c96f1134ebadc97a7a89f2a43196b2ce7697801dacf25c74b40c5d8e3d5	["*"]	2025-12-07 23:35:37	\N	2025-12-07 23:31:26	2025-12-07 23:35:37
329	App\\Models\\User	4	auth_token	83381440b15b719b6cb0c411ed60393a9843054477a38c82a92d681195df73c8	["*"]	2025-12-07 20:57:45	\N	2025-12-07 20:57:39	2025-12-07 20:57:45
328	App\\Models\\User	4	auth_token	97b9e1a41569947795d5075c0e88b8a6ba407e3eaecf019361dc02cb34ec8786	["*"]	2025-12-07 20:52:12	\N	2025-12-07 20:51:44	2025-12-07 20:52:12
331	App\\Models\\User	4	auth_token	2a0e5a7e4dee2674191214a0781780ae64f5c05e1ea79ed06a56460ce63bf674	["*"]	2025-12-07 23:52:21	\N	2025-12-07 23:40:31	2025-12-07 23:52:21
334	App\\Models\\User	4	auth_token	a82dbf0b413633c45a4be3ef4cddb94268985a1dbef860b410f3f092ab73c144	["*"]	2025-12-08 00:36:32	\N	2025-12-08 00:36:15	2025-12-08 00:36:32
335	App\\Models\\User	4	auth_token	37ae1b0643b16356239caba54ad64e3c6027135d7c40e816b1eb9e5919cc81b5	["*"]	2025-12-08 00:40:18	\N	2025-12-08 00:40:01	2025-12-08 00:40:18
338	App\\Models\\User	5	auth_token	12a1fae2d7c96891648ebc1ad5300cac37992c1c43c829828308f2cc6536dd79	["*"]	2025-12-08 01:29:34	\N	2025-12-08 00:48:33	2025-12-08 01:29:34
337	App\\Models\\User	4	auth_token	f3f00c10e2cf84df8a6577d057e671bef8e84ae4a4d51d2282bb69357a995e93	["*"]	2025-12-08 00:48:19	\N	2025-12-08 00:47:00	2025-12-08 00:48:19
365	App\\Models\\User	4	auth_token	76d72efdd5a5579234117a781ad1cae1480d02ee2f6e00bd6dd6fdf82895acb4	["*"]	2025-12-11 16:55:32	\N	2025-12-11 16:40:03	2025-12-11 16:55:32
351	App\\Models\\User	3	auth_token	3d1c191818196fb2ec779ef3d77567408dcfecd9637c1b4a04c08de492d180fa	["*"]	2025-12-09 12:03:28	\N	2025-12-09 11:45:06	2025-12-09 12:03:28
346	App\\Models\\User	14	auth_token	1721d89fc8d4af050f4c0a8e9cf6728ee75d6135a108ab73f9a78d34fc9ece16	["*"]	2025-12-09 04:27:12	\N	2025-12-09 04:01:21	2025-12-09 04:27:12
345	App\\Models\\User	14	auth_token	82a3dbc26ca61d7877ad46d8bc429fdfac03510a1e7fa26512da08107e41b731	["*"]	2025-12-09 03:55:10	\N	2025-12-09 03:51:08	2025-12-09 03:55:10
349	App\\Models\\User	3	auth_token	99f0370de44e0784b4076a91e6c1d77672d00d6b98cd2739469fd1d21bcccc1c	["*"]	2025-12-09 11:31:21	\N	2025-12-09 05:29:16	2025-12-09 11:31:21
342	App\\Models\\User	4	auth_token	bdd5f22353def2e9bf4aedbd71ab4f550490ef0738390e10aceb755dd3312cb9	["*"]	2025-12-08 23:10:14	\N	2025-12-08 21:14:25	2025-12-08 23:10:14
353	App\\Models\\User	4	auth_token	6a438da4aa6c92aa373d08ec8b7bc80acb40d8e91020ba51288615253e539acf	["*"]	2025-12-09 15:38:23	\N	2025-12-09 14:40:53	2025-12-09 15:38:23
350	App\\Models\\User	3	auth_token	fdfe54921b8bcbbc6fd2bf85cda1e7a572f85bace25688178ccabfb61dca9516	["*"]	2025-12-09 11:33:12	\N	2025-12-09 11:33:04	2025-12-09 11:33:12
377	App\\Models\\User	4	auth_token	f9247d44c03c7d85a01b593bc944fbcb53aa8eab2f321dd04adfe925c32dd907	["*"]	2025-12-13 02:44:01	\N	2025-12-12 21:26:32	2025-12-13 02:44:01
340	App\\Models\\User	4	auth_token	d44414ab7d9a7699b02217771f827cf726905439e9c6d7206ab724cb3900659d	["*"]	2025-12-08 14:52:47	\N	2025-12-08 03:40:20	2025-12-08 14:52:47
341	App\\Models\\User	4	auth_token	92e48aed4607013390871c8a25082e3b49ed13ad3a22f11284d85bbf79ae80e7	["*"]	2025-12-08 21:12:33	\N	2025-12-08 19:17:35	2025-12-08 21:12:33
372	App\\Models\\User	4	auth_token	800986a47dc32ddbb8325b69fa9d35fa7a8df0f8c1ddf9d7873b679f88498422	["*"]	2025-12-11 20:54:38	\N	2025-12-11 19:31:56	2025-12-11 20:54:38
366	App\\Models\\User	4	auth_token	adb3f55225f4e66b6b44786221f6c03bd1251986297852d963cbb70bb79ff98b	["*"]	2025-12-11 17:49:05	\N	2025-12-11 16:58:41	2025-12-11 17:49:05
357	App\\Models\\User	4	auth_token	301b4af36c346e9b66b93829c8700af7cc9ce89a0ce5896a59c3d44f45c7a739	["*"]	2025-12-09 20:23:48	\N	2025-12-09 18:41:37	2025-12-09 20:23:48
352	App\\Models\\User	4	auth_token	83874815f69764cd24d23706af0d221e1ed14d94a2c6713163cbbc2c0215ee82	["*"]	2025-12-09 14:40:25	\N	2025-12-09 12:03:51	2025-12-09 14:40:25
348	App\\Models\\User	3	auth_token	3b35194e6692af8c199d2ebad6882ca8a1cc547ac4545e2108c472fc483be57f	["*"]	2025-12-09 04:40:06	\N	2025-12-09 04:28:39	2025-12-09 04:40:06
358	App\\Models\\User	4	auth_token	8560418e95a720d921ca41327b8cc94d64601c50b75556c31c1c8d5b84a403d3	["*"]	2025-12-09 21:56:49	\N	2025-12-09 20:24:50	2025-12-09 21:56:49
361	App\\Models\\User	4	auth_token	70b2ef87d4e14bbeee7e491d73adb9b712477fa2699d8fdb808802fe5b7e3886	["*"]	2025-12-11 04:59:13	\N	2025-12-11 03:36:38	2025-12-11 04:59:13
359	App\\Models\\User	4	auth_token	b3be49a04f20525ce67744b85687fc6f697fe3508f72ba3663c46fa292d303e9	["*"]	2025-12-09 21:56:57	\N	2025-12-09 21:53:42	2025-12-09 21:56:57
344	App\\Models\\User	14	auth_token	bc3babae226f142a15010173806bf0a6c28e87f371d60c68ffcf3233779d4d0d	["*"]	\N	\N	2025-12-09 03:50:45	2025-12-09 03:50:45
355	App\\Models\\User	4	auth_token	3f137e93bd0187b85abd53b48ebe4d2ac936dc591ff703fdcd52542981758046	["*"]	2025-12-09 17:49:52	\N	2025-12-09 16:00:00	2025-12-09 17:49:52
343	App\\Models\\User	4	auth_token	2c0f8a6fa6eab2d754a5d12fda1527e869c6ff6bdacd98bc4977a3713550f2d9	["*"]	2025-12-09 04:27:43	\N	2025-12-08 23:18:05	2025-12-09 04:27:43
362	App\\Models\\User	4	auth_token	280e24841d79a3a4b2b3c3bf4e295600ee47f7ba13807b10ba21b8b7bcad6a17	["*"]	2025-12-11 15:45:19	\N	2025-12-11 05:12:03	2025-12-11 15:45:19
360	App\\Models\\User	4	auth_token	87b5e443b73c005713de1bb9cbdea70105bffe80c3f0db0a1865173a92907172	["*"]	2025-12-11 03:35:22	\N	2025-12-10 17:03:23	2025-12-11 03:35:22
373	App\\Models\\User	4	auth_token	b33fabbcd857ad9a8d6b9564713527c2c3cda94918d9d797ec115a9df89d189e	["*"]	2025-12-11 20:55:46	\N	2025-12-11 20:55:02	2025-12-11 20:55:46
371	App\\Models\\User	4	auth_token	7175e30a73e1128b734c49f0604c5ae2f679db3a644b68f89a68b98f04c4f4d3	["*"]	2025-12-11 19:03:40	\N	2025-12-11 18:41:00	2025-12-11 19:03:40
364	App\\Models\\User	4	auth_token	90db3fe497c5e9dc0b9caad09db02a9a48a5f2f798da5ad1e364c51b7c42d8d5	["*"]	2025-12-11 16:29:23	\N	2025-12-11 16:28:38	2025-12-11 16:29:23
356	App\\Models\\User	4	auth_token	e694cd24fac6d70ada5c72f80e46bde6a7fc3c62013b29f0da8cb3fd48067f18	["*"]	2025-12-09 18:06:51	\N	2025-12-09 17:51:50	2025-12-09 18:06:51
369	App\\Models\\User	4	auth_token	5a5bf7adeef8d09dc0542d7072651511a13658786cffc4ea127feda311a9fec8	["*"]	2025-12-11 18:08:34	\N	2025-12-11 18:08:22	2025-12-11 18:08:34
368	App\\Models\\User	4	auth_token	a0e43806133eef4c568265e067a1371cf324d6700a5100aa53613efde3d459b4	["*"]	2025-12-11 18:02:59	\N	2025-12-11 17:59:41	2025-12-11 18:02:59
367	App\\Models\\User	4	auth_token	a01eb57ba4b47a5c208ed301eb7392178abb58a9f163a8542987575c6a678103	["*"]	2025-12-11 17:58:50	\N	2025-12-11 17:58:21	2025-12-11 17:58:50
363	App\\Models\\User	4	auth_token	59e661af4e2119c2a8a7af410f6114026a69e9b88a9655fff609d39e992a4c8a	["*"]	2025-12-11 16:12:52	\N	2025-12-11 16:09:24	2025-12-11 16:12:52
370	App\\Models\\User	4	auth_token	38b28ccdbef1ab22df86fd90d0d1b0da8075d1092f810bb00b369d032f7c35d0	["*"]	2025-12-11 18:30:24	\N	2025-12-11 18:13:42	2025-12-11 18:30:24
376	App\\Models\\User	4	auth_token	7c749057f1de2013dfd6ea5fd7ab6fe983717608f1efab493f9c3c3d1acb70a1	["*"]	2025-12-12 21:26:01	\N	2025-12-12 20:58:52	2025-12-12 21:26:01
375	App\\Models\\User	4	auth_token	cadac5a38860cd471c4bc865e5d6d91194d9d3057687051a540d84b50db5d3c1	["*"]	2025-12-12 20:56:31	\N	2025-12-12 20:41:36	2025-12-12 20:56:31
374	App\\Models\\User	4	auth_token	589f6d306954930b2f70c0d5f767ba4e713e9a6a2ce5308d60e14edf07a7d350	["*"]	2025-12-11 21:33:22	\N	2025-12-11 21:00:13	2025-12-11 21:33:22
378	App\\Models\\User	4	auth_token	397e06ab53b18bb9820febc7b3994ac96b53184522e8dff967d95e2ef5806608	["*"]	2025-12-13 04:23:24	\N	2025-12-13 02:44:21	2025-12-13 04:23:24
379	App\\Models\\User	4	auth_token	3a1a237f26e999b8ad1712b55ff83023129dccb57b8bc3c87bdb4b9f452b08b3	["*"]	2025-12-13 13:09:41	\N	2025-12-13 04:30:56	2025-12-13 13:09:41
380	App\\Models\\User	4	auth_token	daec9298a6eb76178b713441e4e9c5db1e25ab6ed98efa8dfebb76fcae6413ad	["*"]	2025-12-13 13:38:28	\N	2025-12-13 13:10:49	2025-12-13 13:38:28
381	App\\Models\\User	4	auth_token	0405c808b8c4e83027939d873345134fc60eff8fa4fc3f282cba21de1e2e37cd	["*"]	2025-12-13 13:44:59	\N	2025-12-13 13:38:57	2025-12-13 13:44:59
382	App\\Models\\User	4	auth_token	0afd463f3427d2467c5b7274ad230c3274ae165b68c3e5a168bc08c329fe0d83	["*"]	2025-12-13 15:13:34	\N	2025-12-13 13:46:57	2025-12-13 15:13:34
383	App\\Models\\User	4	auth_token	79288ca2fd0b3bc794e257e17181f23c561ca535c9d9428804107cfe588ee2e5	["*"]	2025-12-13 17:31:22	\N	2025-12-13 17:06:13	2025-12-13 17:31:22
384	App\\Models\\User	4	auth_token	4066e3e7b05a32ca877dadd1285ade7be8adbdfa03bc0389fffa59a583781565	["*"]	2025-12-13 19:02:11	\N	2025-12-13 17:41:41	2025-12-13 19:02:11
393	App\\Models\\User	4	auth_token	b226210a22bc7cf9660bab59f340a2f073b9d963f149789b3416fcd3aae5dcd3	["*"]	2025-12-13 20:07:53	\N	2025-12-13 20:05:56	2025-12-13 20:07:53
391	App\\Models\\User	4	auth_token	40c79207c90016dae9a66960c51da8480b2016459af47b7cce6b3aeaef32f144	["*"]	2025-12-13 19:57:20	\N	2025-12-13 19:53:05	2025-12-13 19:57:20
397	App\\Models\\User	4	auth_token	adfa864067537b801ec4a5fdc20d2c156a427207d50f92a3974968a9aff6fcd4	["*"]	2025-12-13 18:09:55	\N	2025-12-13 17:59:43	2025-12-13 18:09:55
389	App\\Models\\User	4	auth_token	d1b854736208bdd84f11ad4ae44b8a7d3f5f519e47a2fa1907a462ba8e8d4f3d	["*"]	2025-12-13 19:46:59	\N	2025-12-13 19:46:16	2025-12-13 19:46:59
398	App\\Models\\User	4	auth_token	b1a6d23bc85494e2b69f1d0675bc5d002c6f2aab75f82ac2630f2e0fc7e08900	["*"]	2025-12-13 18:54:36	\N	2025-12-13 18:29:16	2025-12-13 18:54:36
401	App\\Models\\User	4	auth_token	c6b95365a37eda982b212409a7b0f1329bab1fd59beb8b3945ddcb9e6963da0e	["*"]	2025-12-13 21:45:11	\N	2025-12-13 20:39:40	2025-12-13 21:45:11
388	App\\Models\\User	4	auth_token	5330d1da3c12705ab5cec0a40be2c33001716859bdec597b2a2cbede380e1397	["*"]	2025-12-13 19:45:22	\N	2025-12-13 19:41:22	2025-12-13 19:45:22
387	App\\Models\\User	4	auth_token	8f1b2f2b0c5728b403de90355ac53660e53e974f8d84b2c63b9c8ccb059c03ce	["*"]	2025-12-13 19:40:20	\N	2025-12-13 19:28:27	2025-12-13 19:40:20
421	App\\Models\\User	4	auth_token	ae094c07f0671f0d85bdebe8e065eb2fe2517cfb8b12d21c2612f4c130f97a78	["*"]	2025-12-14 12:13:10	\N	2025-12-14 12:09:34	2025-12-14 12:13:10
402	App\\Models\\User	4	auth_token	76a9589ff4c4214790de7c9bdceea29ee932af546eda0713ed18027ca22fa893	["*"]	2025-12-13 21:44:17	\N	2025-12-13 20:58:40	2025-12-13 21:44:17
407	App\\Models\\User	4	auth_token	e718378bcb38468da8aeeb6885b863bcc893b0fbbba9926ae6d5e45bce803516	["*"]	2025-12-13 23:05:46	\N	2025-12-13 22:45:12	2025-12-13 23:05:46
394	App\\Models\\User	4	auth_token	fe035ee6215d117ee59431882dc64a2e8323da6d4c97b6de7f1a52f0ae2500e2	["*"]	2025-12-13 17:43:15	\N	2025-12-13 20:11:13	2025-12-13 17:43:15
392	App\\Models\\User	4	auth_token	ee9ac1125ba43d5c26ee427be017a981278b98ed43769ba68e435a7372ade62a	["*"]	2025-12-13 20:05:31	\N	2025-12-13 20:02:03	2025-12-13 20:05:31
385	App\\Models\\User	4	auth_token	ce3b1329710b724ccc114f2b3ac565df3d745e4854a0b809f1cf093e8f364678	["*"]	2025-12-13 19:06:02	\N	2025-12-13 19:02:49	2025-12-13 19:06:02
410	App\\Models\\User	4	auth_token	9511c223199d54197ea439d6079dd58229ab136afe3149b247bb54b8de4c63b7	["*"]	2025-12-14 00:59:03	\N	2025-12-14 00:57:50	2025-12-14 00:59:03
405	App\\Models\\User	4	auth_token	369f3b80454bf411d8dabbfc21c4eaee28b7d98eb5a81b1326db4c58a97f038d	["*"]	2025-12-13 22:41:05	\N	2025-12-13 22:33:17	2025-12-13 22:41:05
395	App\\Models\\User	4	auth_token	c551416120e9e71ff7dc378a9e36c51359d9e0cb7cc816de4be42f3fdd1cde0f	["*"]	2025-12-13 17:45:51	\N	2025-12-13 17:43:48	2025-12-13 17:45:51
386	App\\Models\\User	4	auth_token	d810b97f4ff69dcc9b4a37b0cb4d29e1fa2528b4537a51bd6c0c6c6afba15118	["*"]	2025-12-13 19:26:47	\N	2025-12-13 19:06:33	2025-12-13 19:26:47
400	App\\Models\\User	4	auth_token	a2b30beed9fc493539a022518ef0b1f76cd59c8c6157d56b8b04dae2d0c1ee5f	["*"]	2025-12-13 19:10:27	\N	2025-12-13 19:01:21	2025-12-13 19:10:27
396	App\\Models\\User	4	auth_token	bdfdda54d047c8f77cabe2bad8117ac4a3460eda57ccf0cf2f5bcaa478d00155	["*"]	2025-12-13 17:59:07	\N	2025-12-13 17:46:20	2025-12-13 17:59:07
390	App\\Models\\User	4	auth_token	0200507c866e1120db5ac0e606d6484f391717ba87bab28ec20e1497b685de71	["*"]	2025-12-13 19:47:59	\N	2025-12-13 19:47:14	2025-12-13 19:47:59
403	App\\Models\\User	4	auth_token	7f7fd1def96425e1d40a97ddd4142ca71fa9dc1d61b8e806c58c37e3a1a0ae9e	["*"]	2025-12-13 22:19:43	\N	2025-12-13 22:09:32	2025-12-13 22:19:43
399	App\\Models\\User	4	auth_token	fbc8dcf496d0160c471cf85cfb228ee4c906cf4440dd6f1e160047f702f1ea53	["*"]	2025-12-13 19:00:53	\N	2025-12-13 18:55:22	2025-12-13 19:00:53
413	App\\Models\\User	4	auth_token	0a6e913f18ae03cb8071975f400838db19775eaef48c0e4acaf859db24beb83d	["*"]	2025-12-14 01:42:08	\N	2025-12-14 01:14:58	2025-12-14 01:42:08
404	App\\Models\\User	4	auth_token	a63132c684cbd093f1166142b51b5c1245258625920401790a649d7543d57929	["*"]	2025-12-13 22:27:35	\N	2025-12-13 22:22:03	2025-12-13 22:27:35
412	App\\Models\\User	4	auth_token	3c68ac8e40f7a5b927f0dc247e2e0966a0736a822b8e15536bd2766ff109469b	["*"]	2025-12-14 01:14:22	\N	2025-12-14 01:01:33	2025-12-14 01:14:22
411	App\\Models\\User	4	auth_token	4f8fecd3e379d1b9f9dfcea90549f469ad0b641665c934e53e048f8185e80fde	["*"]	2025-12-14 01:01:03	\N	2025-12-14 00:59:47	2025-12-14 01:01:03
408	App\\Models\\User	4	auth_token	96a98273b27d75d02190becf169f1e7386220f375012336440c2e06c33eefc7d	["*"]	2025-12-13 23:17:48	\N	2025-12-13 23:09:21	2025-12-13 23:17:48
409	App\\Models\\User	4	auth_token	29033cd28f77d00246aaaa3c1c73495a48a7cc2e4825ef486abc185a389cd423	["*"]	2025-12-14 00:57:20	\N	2025-12-13 23:20:43	2025-12-14 00:57:20
419	App\\Models\\User	4	auth_token	c57cfb846715684668420c96032059970226c066af8f6970d2d684b87a90e6d9	["*"]	2025-12-14 11:46:13	\N	2025-12-14 11:06:31	2025-12-14 11:46:13
406	App\\Models\\User	4	auth_token	dbac714d8bceb6930b57c5af360ecf87037f651519a419d16f9c3ebfd31c32aa	["*"]	2025-12-13 22:44:22	\N	2025-12-13 22:41:30	2025-12-13 22:44:22
415	App\\Models\\User	3	auth_token	202d49435d7ec4393ab2f39b768df63fcafed9e6efc80b4238177e9405587616	["*"]	2025-12-14 01:47:12	\N	2025-12-14 01:46:40	2025-12-14 01:47:12
414	App\\Models\\User	3	auth_token	a8f0583c792474f5f0252a3429f9e4ad863422a888d50025143e06f61ce71b22	["*"]	2025-12-14 01:45:32	\N	2025-12-14 01:42:17	2025-12-14 01:45:32
417	App\\Models\\User	4	auth_token	07d1be0661348b9b16253b01aa096fd35c67a934ca04f33a4e41191e0bac940e	["*"]	2025-12-14 06:56:06	\N	2025-12-14 06:26:26	2025-12-14 06:56:06
416	App\\Models\\User	4	auth_token	e3ee7a1023dd4afce965bf6b0c8f552da8bd227925a770192210de0db0ce460b	["*"]	2025-12-14 06:20:17	\N	2025-12-14 06:11:25	2025-12-14 06:20:17
418	App\\Models\\User	4	auth_token	32566bde92454ddeafe15f3e2d63e3dbd9869b2fca4f1424381dc96490262bca	["*"]	2025-12-14 10:55:09	\N	2025-12-14 06:59:50	2025-12-14 10:55:09
422	App\\Models\\User	4	auth_token	821568e1ece5175ff46c8dacdd865b34fcb9812acfba9ebb79148f5691765a8c	["*"]	2025-12-14 12:46:10	\N	2025-12-14 12:19:07	2025-12-14 12:46:10
420	App\\Models\\User	4	auth_token	36cb6889772ed26e52fe3caf9ce05d452b83aef85f3678a8c858f93f08b4d20d	["*"]	2025-12-14 12:09:10	\N	2025-12-14 11:55:17	2025-12-14 12:09:10
423	App\\Models\\User	4	auth_token	241bf4a64afe4103fe2e0ec85347bddceb42b161becb8ee64648b254f9d86457	["*"]	2025-12-14 12:56:25	\N	2025-12-14 12:46:44	2025-12-14 12:56:25
424	App\\Models\\User	4	auth_token	eefd87388ae429d63d6e20520aff9a7ac356fd54ed9f86d019e39db1d30c2a5c	["*"]	2025-12-14 13:24:23	\N	2025-12-14 12:57:06	2025-12-14 13:24:23
425	App\\Models\\User	4	auth_token	fd594e2c20ce9fd6c8294d0267fc963b98dadc4256393f8987d398312fe2ece8	["*"]	2025-12-14 13:51:30	\N	2025-12-14 13:27:15	2025-12-14 13:51:30
426	App\\Models\\User	4	auth_token	eddad7d8bfce7ac652e12cdf92d78432e15ccbbdd5af2af3f2b15c211dcabd9f	["*"]	2025-12-14 16:04:20	\N	2025-12-14 13:53:44	2025-12-14 16:04:20
427	App\\Models\\User	4	auth_token	9f3a2df9333c8c08fce50bff3a2001ebba24df7ca4332240ec7fd48838ef78d1	["*"]	2025-12-14 16:55:09	\N	2025-12-14 16:04:44	2025-12-14 16:55:09
435	App\\Models\\User	4	auth_token	20ab44bc3e645897a475921cd324a6390a3ea419218b9fe63c2e361d0828b5e0	["*"]	2025-12-15 01:23:56	\N	2025-12-15 01:13:24	2025-12-15 01:23:56
445	App\\Models\\User	4	auth_token	246f2ef960f87be3fb1057be3064e54e25132d15d09efdb6eb9af1bcae717ee6	["*"]	2025-12-15 12:31:37	\N	2025-12-15 12:31:16	2025-12-15 12:31:37
429	App\\Models\\User	4	auth_token	b611ae273f4d35eb0089f484f94fe62893b59f55cfaa6dfd3238ab5c1060b7dc	["*"]	2025-12-14 17:38:54	\N	2025-12-14 17:38:24	2025-12-14 17:38:54
448	App\\Models\\User	4	auth_token	7b7292403066a7edb18ab205e09ae344b8df2d89b3b3721032f2cc85ba7a005c	["*"]	2025-12-15 12:59:16	\N	2025-12-15 12:54:45	2025-12-15 12:59:16
433	App\\Models\\User	4	auth_token	2bdac461e9c583c868ed66becdb3e42f259c11b9930fa045c013be17aef2c6ec	["*"]	2025-12-15 01:03:59	\N	2025-12-15 00:26:58	2025-12-15 01:03:59
432	App\\Models\\User	4	auth_token	d0e280b2a1a60261d19464d22979cf247e71797230d96867e2825877a6ec3ceb	["*"]	2025-12-15 00:25:36	\N	2025-12-15 00:20:22	2025-12-15 00:25:36
451	App\\Models\\User	5	auth_token	ecab7e6a4df91b84837c2555ae0c75dc0cdefcc9bb6729db33f45385cadcb378	["*"]	2025-12-15 13:15:45	\N	2025-12-15 13:04:26	2025-12-15 13:15:45
436	App\\Models\\User	4	auth_token	0ad3db0bf1db2d5adb79c7671f6f26b087c96b16ba64e08967e2758d8e3ec9df	["*"]	2025-12-15 01:54:46	\N	2025-12-15 01:24:19	2025-12-15 01:54:46
428	App\\Models\\User	4	auth_token	53020a4408f9149b07ffc3b447d469b56f37039236563fee54258d4f32e12a47	["*"]	2025-12-14 17:37:46	\N	2025-12-14 17:27:11	2025-12-14 17:37:46
431	App\\Models\\User	4	auth_token	9281771772dd801a379a913e48a8e5a8732d14cc0c69e4b841fa0246db609fd3	["*"]	2025-12-15 00:19:17	\N	2025-12-15 00:08:48	2025-12-15 00:19:17
434	App\\Models\\User	4	auth_token	88e14c384d8c86f82f36b6d007bc0ae785b0828f47e32c35940fe1124281f7c2	["*"]	2025-12-15 01:13:05	\N	2025-12-15 01:04:21	2025-12-15 01:13:05
430	App\\Models\\User	4	auth_token	c0af66c1976adcf0c00712fa413535dbf1bc7847b5ad52a2cd41f97891551638	["*"]	2025-12-14 18:38:12	\N	2025-12-14 17:40:56	2025-12-14 18:38:12
450	App\\Models\\User	4	auth_token	5c8b58eee9c67eea7e229b5346b5d9f525c702330360d5e6921933d9285326e1	["*"]	2025-12-15 13:04:24	\N	2025-12-15 13:00:19	2025-12-15 13:04:24
441	App\\Models\\User	4	auth_token	9923feb3af4c1f4d2c2910be872fac9ff1adbd6fb09950fad36f1c7e52c33d0f	["*"]	2025-12-15 09:50:38	\N	2025-12-15 09:47:21	2025-12-15 09:50:38
447	App\\Models\\User	4	auth_token	45df01706e7646dbf14f46773fad2cd3773bfa4191d84461a77dd8828ab3e586	["*"]	2025-12-15 12:52:16	\N	2025-12-15 12:50:08	2025-12-15 12:52:16
449	App\\Models\\User	3	auth_token	569f12dc963ef5738262ff93b9253202243592cae168321ae2cc4393373f7cf0	["*"]	2025-12-15 13:00:11	\N	2025-12-15 12:59:25	2025-12-15 13:00:11
454	App\\Models\\User	3	auth_token	dce2ef2366ebcc48a0bcdd004a59b18134d6b9816edb5ada266e438783162af9	["*"]	2025-12-15 13:15:26	\N	2025-12-15 13:13:01	2025-12-15 13:15:26
\.


--
-- TOC entry 5537 (class 0 OID 44704)
-- Dependencies: 292
-- Data for Name: role_has_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
1	1
2	1
3	1
4	1
5	1
6	1
7	1
8	1
9	1
10	1
11	1
12	1
13	1
14	1
15	1
16	1
17	1
18	1
19	1
20	1
21	1
22	1
23	1
24	1
25	1
26	1
27	1
28	1
29	1
30	1
31	1
32	1
33	1
34	1
35	1
36	1
37	1
38	1
39	1
40	1
41	1
42	1
43	1
44	1
45	1
46	1
47	1
1	2
2	2
3	2
4	2
5	2
10	2
11	2
12	2
13	2
14	2
15	2
16	2
17	2
21	2
22	2
23	2
24	2
25	2
26	2
27	2
29	2
30	2
31	2
32	2
33	2
36	2
37	2
44	2
45	2
46	2
47	2
1	3
6	3
8	3
9	3
13	3
19	3
20	3
28	3
30	3
34	3
36	3
46	3
47	3
1	4
7	4
8	4
9	4
13	4
18	4
19	4
20	4
28	4
30	4
35	4
36	4
46	4
47	4
\.


--
-- TOC entry 5534 (class 0 OID 44672)
-- Dependencies: 289
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
1	Super Admin	web	2025-12-11 19:21:05	2025-12-11 19:21:05
2	ONG	web	2025-12-11 19:21:05	2025-12-11 19:21:05
3	Empresa	web	2025-12-11 19:21:05	2025-12-11 19:21:05
4	Integrante Externo	web	2025-12-11 19:21:05	2025-12-11 19:21:05
\.


--
-- TOC entry 5494 (class 0 OID 36372)
-- Dependencies: 249
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
OzHDYfaar8YvFbOloNvxcNu2MSMJcxtB33vDuz2T	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiblZEazVBZkZVeEJBUnZ3YmJ1UTQyOWZxWE10aTJSMmNteG9RdXNQYSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2VtcHJlc2Evbm90aWZpY2FjaW9uZXMiO3M6NToicm91dGUiO3M6Mjg6ImVtcHJlc2Eubm90aWZpY2FjaW9uZXMuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765771993
ZjN904Gp5G1Qk5WsS31QPouKgRD8m6MUlx3QITkl	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnNBcHNLME90eGxKUFBURldHVWpUT054T0YzZXFEU3lVREl5NDJJMiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2VtcHJlc2Evbm90aWZpY2FjaW9uZXMiO3M6NToicm91dGUiO3M6Mjg6ImVtcHJlc2Eubm90aWZpY2FjaW9uZXMuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765772264
mmLxTfB0gRnlohg9tMly0mwYGzzN3RyX53RtYa0r	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkFXU1VsNHYxa1U4UVliYVlTaGdicjg0SlJwRHFzSDhtZlIwajc2biI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zL2VuLWN1cnNvIjtzOjU6InJvdXRlIjtzOjIwOiJvbmcuZXZlbnRvcy5lbi1jdXJzbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765777077
RCOX3BjOJKZp8Cocu0E0yMAn8v0i4w9C7Z0mFeih	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1pKM0U4SUFla1dFNWhNa0QyUWR2ZjVJVDRRVlc3cjg0ekhkRGZRZyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9tZWdhLWV2ZW50b3MvY3JlYXIiO3M6NToicm91dGUiO3M6MjM6Im9uZy5tZWdhLWV2ZW50b3MuY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765777760
flTTINXys7bDFBDawVz98mNQtoAnslBmONeGiHPq	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoidTVMb0wyNXVRWHBzSW5CQkpSWnZrcXg0UUltU3c3R0FQeGxaZVZ5diI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zLWRhc2hib2FyZCI7czo1OiJyb3V0ZSI7czoyNzoib25nLmV2ZW50b3MtZGFzaGJvYXJkLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792199
BNkVbSxTkQpp1TSoW9QpgbugXPkrVdJBXw58bsod	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTdJUnl6amc5N1ZCRjlLQWZWbVJjbW5BZ2pPZjdEcVdNUzZZbGp4TSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2dhY2V0YS5mYWNtZWQudW5hbS5teC93cC1jb250ZW50L3VwbG9hZHMvMjAyNS8wNS9EU0NfMDAwMS5qcGciO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765792343
YBjPnj2XsTiOL3voRhOMA3KMwBBJRG7yOT2XdbUF	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVdSblFKa1ZaTWFNbDZQRThMVHhXSThZd0lVVDc4cnpCbjhjQlhQVCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765793811
X8beb2wQv4EjVMBvZmEuxtNg1Lfwbvl8YKdYVxpi	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoic0VIdXlFS1ZHSElta05jWndIcHh5UVZNVkN0dXhSM25VMTFyWHMwYSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zLzMvZWRpdGFyIjtzOjU6InJvdXRlIjtzOjE2OiJvbmcuZXZlbnRvcy5lZGl0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765800850
UQ5LdsJ0Ckmrm4VG9EhXyQkIKLDAasHbTVNp7hNp	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1dRc3ZZbk9CMmNRQW9RS0hkc3hsYmJyUHJNVmlNQVVreG1nUFdUNSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zLzMzL2RldGFsbGUiO3M6NToicm91dGUiO3M6MTY6Im9uZy5ldmVudG9zLnNob3ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765803321
j6kZJ35dhZGJ6Zd5oymbqj8MyaeLgwcBgqctOqAh	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoialp0NFJ2MmpTTVYyVHJWZjlVZWJ2SlhBa3ZuNU5icDFwZ1RBVklNTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2V4dGVybm8vZXZlbnRvcy8zNS9kZXRhbGxlIjtzOjU6InJvdXRlIjtzOjIwOiJleHRlcm5vLmV2ZW50b3Muc2hvdyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765803585
drgxqQvPQuiPN38EI02SqhwYAgmpMTAJGb2D7bOn	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmNTZEJUWXc1OE1mNGhjc2xUT3hNYkMyZzJkeFRTSlYwS0FSN0txaCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6MTk6Im9uZy5kYXNoYm9hcmQuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765803838
ObVsqzhqzOvJgWzTi0o1D9aaONtWu6q4ynD3MRP4	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDlFbWFTc0NrcVRtc293MEpGRXFCamdlZFVCcVB0UFpwQ0I0UWdjRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2VtcHJlc2Evbm90aWZpY2FjaW9uZXMiO3M6NToicm91dGUiO3M6Mjg6ImVtcHJlc2Eubm90aWZpY2FjaW9uZXMuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765772009
mEkUu8yFzG8m0Gx19mH0nTpKYXPgmGPYKlh4BBwx	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZENKb25zNXlIN2dwT1JOcDZBV1VRUHdRZjAxVzFDbk8wdEttb1NrUCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2VtcHJlc2Evbm90aWZpY2FjaW9uZXMiO3M6NToicm91dGUiO3M6Mjg6ImVtcHJlc2Eubm90aWZpY2FjaW9uZXMuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765772508
hfY9bDCRgjWtl0wqqOdjgjsfEr3ELTvjjxxJgAoK	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkNVTmpTNUhZem1mUXhDeEd3eUY0Yk1UbTNtU2ZzSWpQTGEwQk1UWSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zL2hpc3RvcmlhbCI7czo1OiJyb3V0ZSI7czoyMToib25nLmV2ZW50b3MuaGlzdG9yaWFsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765777092
smapxP8giCwpE0hNGPpRghbcWmWYC631DHvWgRJv	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVJvcUZoUG5ackVWQ2s3OExSY1hOdjBKZ3hTSkFaNWwyZVA4Q3JVVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9tZWdhLWV2ZW50b3MiO3M6NToicm91dGUiO3M6MjI6Im9uZy5tZWdhLWV2ZW50b3MuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765777905
BfWuZ8VkmdIRoiZxOlNGI2Raxm87hVNeoYyQIK6S	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoidmNBbXJqMnNPR1F3QmlMeXFtcE9RZTZQRXZJc0QxMWZDVGhLR2Q1SiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zL2VuLWN1cnNvIjtzOjU6InJvdXRlIjtzOjIwOiJvbmcuZXZlbnRvcy5lbi1jdXJzbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765792206
EBVVobWIx5l3yZHU98LnKwWj3dBKgx0BTUmS7Vxr	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDdEdVFJZU05TmNYcnI2YnhFU1Mwdk5Kc09BT3lRbEhncVVwbndOaiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zLzI2L2RldGFsbGUiO3M6NToicm91dGUiO3M6MTY6Im9uZy5ldmVudG9zLnNob3ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765792349
PsrJ9PlkO3ms4UI1eEiSuNUThEtviElvMQ2CZ2C5	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTFTRjk0cHdIUDBYTXR3TjNtTWZYUGxaeFJNVlZqTHFkdjR3a2FOdSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwIjtzOjU6InJvdXRlIjtzOjY6ImluaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765798171
rF6q5xKnuv47Pb3kksOcDg7tndJSH9Bkn601lgEb	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGxFaXdGWWJ4UUZ6dXdDMzNkSnJDQzVicko5b0psdzVTR21sNVE0MCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zLzMvZGV0YWxsZSI7czo1OiJyb3V0ZSI7czoxNjoib25nLmV2ZW50b3Muc2hvdyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765800862
hrhvWQNZ8gUd6KVG7BPKnIcAAzVTccqvH2nlS7pV	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0NjTlZ1SmxxN2Vwc2U4RmZPNFZFdElhSVRyNXhnQmZldkhWaGtJRCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zLzMzL2Rhc2hib2FyZCI7czo1OiJyb3V0ZSI7czoyODoib25nLmV2ZW50b3MuZGFzaGJvYXJkLWV2ZW50byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765803346
6jiqZ6ao83uoPvBd174OxN5rFFLPPu0B7GBG6Bd9	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoia2FReWZ2WVQxbVlaU0NnTW9jQjdxejJjV2JxMDVYTGpwN2ZnOVN5byI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803610
QHvkpXFq6B7OUJwhXJHlsu1ImauW5CVBwFFChNIJ	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnV5Y3l5RnladVhDU3BSbTFFRTRNVzBMTFFPbld4S25HTmNJbHhkVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803858
1JCCfebHBlR9vCiRKgNlIkyE4aL5AcwJsL76Qrq1	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkN1blJwZzRxY0dTaGhMdWh3bmdDUkxoNHNMZnY0MkVBMVhxSHhBSyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2VtcHJlc2Evbm90aWZpY2FjaW9uZXMiO3M6NToicm91dGUiO3M6Mjg6ImVtcHJlc2Eubm90aWZpY2FjaW9uZXMuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765772563
pgxmrTqILeTmCyjHDUpyfvwOpqR5nuTQmDHGsPl0	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3hJa0RxY3ZUeWtEYlpmRVZwREdJSE5JcUFZamVnSG5HUzBHYVEySSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2dhY2V0YS5mYWNtZWQudW5hbS5teC93cC1jb250ZW50L3VwbG9hZHMvMjAyNS8wNS9EU0NfMDAwMS5qcGciO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765777099
0B4mui0vqj3prJxp73yzmVrMY9vq4oOc6aGvAq19	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3NZT2EwS0lqdzFnM1Q4TVh1aUxqdmFVYTl4MXpSSTZFWURGQlR4aSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2hvbWUtb25nIjtzOjU6InJvdXRlIjtzOjg6ImhvbWUub25nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765777933
qIngWpZKRy5uDdUR228Hu5TfhsWXGIP50o91iHDT	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNk83dUVEZmVTSTNtWHlFM0kzZWUwUVVtaDg2ZWRya29EUktSM2xCUCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792238
4vKgGHWM1wvj4ppDw6MkrOnsaGgAHtYbz0IQfJ9e	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiSno2bG5SdmV3SjhGRHYwNTdmcEppcm9rWm9MRDdMenIxVGU1d0xEUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zLzI2L2Rhc2hib2FyZCI7czo1OiJyb3V0ZSI7czoyODoib25nLmV2ZW50b3MuZGFzaGJvYXJkLWV2ZW50byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765792610
OfjxNruVI7gb62wZVLD4jC0yD4uMF0vOEDgZXXoW	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2c5UHpLTW90T1JVWWhxRzZUZ3VzMFdqdkVybU5wS0xkY3dyWG1kdyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765798181
FxewCm443dJlZgmCIUosz6LspOlCYR9h0IHvG9Tm	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiM29xUVVLY1kycUtvQnIxeEFpU1NKeGpqSFFsOWdiZE91SjFySkJSZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zLzMvZGFzaGJvYXJkIjtzOjU6InJvdXRlIjtzOjI4OiJvbmcuZXZlbnRvcy5kYXNoYm9hcmQtZXZlbnRvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765800897
DIjU9rLYyHff9h1i4VtwfEbZgOFQdKqa9PcUVVdj	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiMExBSzZmWGExRXBLa0pyNXJxdXl2OW9ZZFRuUWxZQ0lXMnMyUkg5bSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zLzMzL2RldGFsbGUiO3M6NToicm91dGUiO3M6MTY6Im9uZy5ldmVudG9zLnNob3ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765803367
KvWiYJtR3xhShruEqrNfrHE2TExEhjBmStpwhLSJ	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUW0yTjRNcEhRSmVha1Bjd1U4bklqUnJqVjFhYVFucG0xYTllVTRaTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2hvbWUtb25nIjtzOjU6InJvdXRlIjtzOjg6ImhvbWUub25nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803620
fwRULHks9RHHjaBqjriYpfvlJsSwS5IHtvkvtLsX	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoidVNTZEJOekxyNUlUUnNqWWd0TE1EMXd5Vng0Q0hWMkNOUlZ1MWZMMCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2hvbWUtZW1wcmVzYSI7czo1OiJyb3V0ZSI7czoxMjoiaG9tZS5lbXByZXNhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803867
Df3vHoATPdgQ2k5CLaTPPfxRLjbvnVZglkV4SfBI	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoidkg4STA0UW9zajRZOG5xSzc2VFNoQ0xZVU9HTzR6NHRSaGE1RUU0VCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL3BlcmZpbC9leHRlcm5vIjtzOjU6InJvdXRlIjtzOjE0OiJwZXJmaWwuZXh0ZXJubyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765770370
qHte24Bb7KpfTrYQgW3IHNws1lOBd7SW55bm1Pmn	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzFmU3ptOWRQalllUXFxc2FmYU9xZGhOSWdzS2pNOHdlYTY1UEJocSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2hvbWUtZW1wcmVzYSI7czo1OiJyb3V0ZSI7czoxMjoiaG9tZS5lbXByZXNhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765772633
wXRmFEFZCj5ATkjRAIu9oohqlaKeP8IblrX5TBl6	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzdhaG5TRmNGdGpoMHpFajc1OGI1OGFJZkowS0c2dkx4UllhQm13dCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTQ1OiJodHRwOi8vMTkyLjE2OC4wLjc6ODAwMC90aHVtYl9iYWNrL2ZoMjYwL2JhY2tncm91bmQvMjAyMzA1MTgvcG5ndHJlZS10d28teW91bmctZ2lybHMtbWFraW5nLXBhcGVyLWNyYWZ0cy1pbi1zb3V0aC1rb3JlYS1hdC1ob21lLWltYWdlXzI1MzcyOTIuanBnIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765777101
vu8Ur3fHMkgtOOHyPFI2wgGO0PxkwWu8QffmoWDu	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmRPNHRWWGRaZXFyTXl6dXlBSTFkOGs0UG9OSDk3SzdDMVd1aVI4YiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765777949
KSnFJY1Qw4922Uq4acHX0g0NbXqht0EyqJ9s80sI	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDQ4b2p2OTlLQUhvMzdiRWhIQ1hiQmNqb24zTGU1SU9KS2Q5cnc2VSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2hvbWUtZXh0ZXJubyI7czo1OiJyb3V0ZSI7czoxMjoiaG9tZS5leHRlcm5vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792249
wgmcpCgvjJpfJ1mGPSsnPv8yBRjsh9D7L5g5DcMk	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiYW8xcjVEZDB6UHg4VW1oQ1lhN3lFNFlJUzY2NGFXSnNiWXBrcW9oTCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zLzI2L2RldGFsbGUiO3M6NToicm91dGUiO3M6MTY6Im9uZy5ldmVudG9zLnNob3ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765792666
2H1B28YmSKztRXPAkfEBuWhkxyA2g5ddgQLKVVQc	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNEttdFZzNlZ6dW5zUm93NTYxVFo2TmRucm45SllaWFFRVmYxNVk2SCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2hvbWUtb25nIjtzOjU6InJvdXRlIjtzOjg6ImhvbWUub25nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765798203
E6jno4jRsAK6Wlk7LeSKU2TMEG44jGlIV8CFAum2	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzNpN210akRtRVNhaWU2QWNLMmo0UkdUSDlraTI4dVozTXhRUzduOSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zIjtzOjU6InJvdXRlIjtzOjE3OiJvbmcuZXZlbnRvcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765801038
cjALbaPWsZnp4NcYQVVU7hdaLaPw3eYfUWs8rg2L	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjN1QWNDSWI3TVJBbTdVeWxPN1o3MWZoaVgwSVFUemt4MHVqNGJ6ayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zIjtzOjU6InJvdXRlIjtzOjE3OiJvbmcuZXZlbnRvcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765803380
OaqXybgWR7dqyqNjC2xhCqvd7XZRtyPuJkan7xxR	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiMU9oSGZUTEJIdXZUb0dBWTlXUTNlWXo4TDJQSDhPSGg4RE1WQncyTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ub3RpZmljYWNpb25lcyI7czo1OiJyb3V0ZSI7czoyNDoib25nLm5vdGlmaWNhY2lvbmVzLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803629
93ih16WP3WLUrJCHTOdwHXWGuiyIZ48xPiRy7oIQ	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoibzJVbHgwSGRuS0hhYjd1bjBSdHJaMkkzVzlvOUZucDZQcndPTlNkcCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2VtcHJlc2EvZXZlbnRvcyI7czo1OiJyb3V0ZSI7czoyMToiZW1wcmVzYS5ldmVudG9zLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803884
DXmxG9Y5EtGMWe0o1BLJtSxvUVTXKEkUaL5J3qiG	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWFTeE9qTkQ5QkhYb2U5cEVrcjlXNXpmVWh2dkNoR2tNbjMzSEM4ciI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL3BlcmZpbC9leHRlcm5vIjtzOjU6InJvdXRlIjtzOjE0OiJwZXJmaWwuZXh0ZXJubyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765770610
AthdWibEYWcGUdMk8uaBLKPqg4GPYqI0pMKYajWe	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWlROVAxbHcxS2VSa0p6UXBFVHVqSDZRMncxTVlaUHpWZThsdWUzayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765772663
4x4k89NviLFBW1RaTgx9Twm5nYIxwe8VrNsfAvSo	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkF4Mk41ZG0yUExrRjNlQ1FkQ1R5Q1A3WjlNemxGaTBSTUVWd0NlSyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zLzUvZGV0YWxsZSI7czo1OiJyb3V0ZSI7czoxNjoib25nLmV2ZW50b3Muc2hvdyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765777121
gqVsI19E2qd2W8KXJ2YPvMO7f8UcCLltkdxZjlf4	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDgzZ1g0QnJqekpTcm0wNXdrazJVWnVDZ2lVanhYRXNPUGtFekk0ZCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwIjtzOjU6InJvdXRlIjtzOjY6ImluaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765791598
Og5uhsJg9JCKLwSwU3YYoXqqvrEA3NzTIcPkbaVZ	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHBaSnR4Q1NmUkthbzNCcjBtTzR4eFNJMjBjWjFFQkx2bm9QU2ZZOSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2V4dGVybm8vZXZlbnRvcyI7czo1OiJyb3V0ZSI7czoyMToiZXh0ZXJuby5ldmVudG9zLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792262
dv6bPMX7b5Xtyuwz1z3P5pVEBn7TdDM5FKay9kNx	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkZmMXV0cHJaYjhUdko2cGpqQTlhclk0dENORnY4d0lWVjlQVkVlcyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9tZWdhLWV2ZW50b3MiO3M6NToicm91dGUiO3M6MjI6Im9uZy5tZWdhLWV2ZW50b3MuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765792673
pISkl5hNefxOMLZ1PdG3HEOS0AKANQWuvTNfIbdF	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlo2MHhKVkZLNEZjemQwU2lFSUgxQzNYN3h0eERIM0Z2Wmo1Nno2ZCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2Zhdmljb25zL2Zhdmljb24uaWNvIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765798216
q7zCikvjzj7bc3ganR2DOb6VFM4vmTt7tij70lEL	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmRQNlgxdmlac2hqeGFlU0RtcTJjMHdiQ3ExSmMzTVdMM1dQWlVzUyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9tZWdhLWV2ZW50b3MiO3M6NToicm91dGUiO3M6MjI6Im9uZy5tZWdhLWV2ZW50b3MuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765801076
aYVqxKjviYgnKQnX3kJkHdpUk2D48J3Z3ek9JxJt	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3piTUpiWlBycjRGd1dhVUdMZmVVNmhuYUpHb0xyRGxJWlF6SDdJNCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zLzYvZGV0YWxsZSI7czo1OiJyb3V0ZSI7czoxNjoib25nLmV2ZW50b3Muc2hvdyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765803404
G8PHPcESQaaKjsv5MHLfrs07Aozku4hSeVJVcC6S	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoib2NSakVnUHJVejFjODJ0NUNGWUZqb2RLbWpKQ0FnU0ZIckVSeGFvciI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zLzM1L2RldGFsbGUiO3M6NToicm91dGUiO3M6MTY6Im9uZy5ldmVudG9zLnNob3ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765803643
ygHB8qVGPGZeXVmPicIYRn2QdFhnx7IERjUz4ZLB	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmdJNERxWkEwUXFZT2w0SVJlM2N3WWNqcDcxQ1BTQnZNRG50ZHBEZCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2VtcHJlc2EvZXZlbnRvcy9kaXNwb25pYmxlcyI7czo1OiJyb3V0ZSI7czoyNzoiZW1wcmVzYS5ldmVudG9zLmRpc3BvbmlibGVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803914
q9FJ08QPbmmle2XaBTIChuEXKP0wMY02vqEMaqFy	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmo0QTV2ME5lV1JkbVU4NUp0aEZMUTdGMk5nUkFNQ2J5M1pMTDgwbyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL3BlcmZpbC9leHRlcm5vIjtzOjU6InJvdXRlIjtzOjE0OiJwZXJmaWwuZXh0ZXJubyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765770813
zZDZHyIGXyks4BaMN3zv5drdnzrqfwuLvegpYQUm	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoibERlOFZxMXo1aHRuV2Z3bEtzSWxudG9RN2syY1VOUDRiVXI4eE5BNSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765772666
172Y4p6NpFx3yGnie5vmIutYz1Ci1K3oQFkFIpYm	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnh5ZGd6VUh2cHdLdXRJOHZHTzB4bm53ck51dWZYdlc5UkJnUVlBOSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zLzUvZGV0YWxsZSI7czo1OiJyb3V0ZSI7czoxNjoib25nLmV2ZW50b3Muc2hvdyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765777122
df9BJqCU5h90KiYz7eKxsSY1vBMcPuifP6oTupGF	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoieHViUWF3YkVEN3g1SnFWakN3TFBXTjhOMHNSVEFBVllzMGhIaENmSCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwIjtzOjU6InJvdXRlIjtzOjY6ImluaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765791958
w4uhpgTsEjdGRLFV0WJM0KQs3g4YxP3WCFwB3AiW	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjRleXpEM2tnbm9qM1JtUnJVbXJ1MGlNNlp1ZHFiWUNiWGs2cElPciI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2V4dGVybm8vbWlzLXBhcnRpY2lwYWNpb25lcyI7czo1OiJyb3V0ZSI7czoyNzoiZXh0ZXJuby5taXMtcGFydGljaXBhY2lvbmVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792271
6AtWu2MCWO3XHRTDQpubT18pZXkblsP1pMQ3dRNY	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0hnOFhwVjJXUkNXNEhqRGFFMDJIMGFEQk16RnR6RHhOOHlaZ2FCVyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9tZWdhLWV2ZW50b3MvY3JlYXIiO3M6NToicm91dGUiO3M6MjM6Im9uZy5tZWdhLWV2ZW50b3MuY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792693
z00IcHKSGNjWfG9JRmcV9pADzIixw3fX5ZsBoNcl	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1JFNTJRRTI4dFI1RjJpc1dqVmJHSkpIeHNIVXMzVnp6bkZrNUo0QSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zIjtzOjU6InJvdXRlIjtzOjE3OiJvbmcuZXZlbnRvcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765798229
vpP5rmp52iqVvrkeSdWrD4TEGPo1EPYRIukfCrVF	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDFSNXlnV01CMFJod2xoOWxFR2pWMmpzS2N4VERkSlFMSllUVUR2QSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2hvbWUtb25nIjtzOjU6InJvdXRlIjtzOjg6ImhvbWUub25nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765801758
NG7PlFKBpgmggWf88ErsS0I8p90fZiLhLmPmQeuS	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoic09NeU5qenFveWpadTVaaWYwZVBCQ21LQVVEUm01dGk1b09TVmc5RCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zLzYvZGFzaGJvYXJkIjtzOjU6InJvdXRlIjtzOjI4OiJvbmcuZXZlbnRvcy5kYXNoYm9hcmQtZXZlbnRvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803427
f8DmaVrP0mOrWFnD6CSFPGLf5jdLLbYjxl9nC5jw	\N	10.26.8.193	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWQ4Wmw3dzdSVG5ScFdXcHRpYnhUMmtRZnMwUk5DU0w3YmtNSDZIViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2V2ZW50by8zNS9xciI7czo1OiJyb3V0ZSI7czoxNzoiZXZlbnRvLnB1YmxpY28ucXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765803698
mwa3cUbExybXE8dyw4aRbAQs5daCGKrmSdgEGjMf	\N	10.26.8.193	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGFHbEg0cEEyU2hVbk1PQXBVYzc1eXlDTjVpYm9hMmRiWktGRVEyQyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2V2ZW50by8zMy9xciI7czo1OiJyb3V0ZSI7czoxNzoiZXZlbnRvLnB1YmxpY28ucXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765804131
27F52y9MG6ztHBkEw6Ot8ThV14JyRkLi9LrV9XDW	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHZlRGFPVzVkUEVRSUtaWlNmUjQ2Tnhvem9NQ3dka0tXUERnalczTCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765770829
2cQdEP6Fp5q398beh59L3vmND64i3r6lptsYP4S6	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTZid2h4dERQelZTUE1qMEtVOVVndHRqZ1hqY3g5RnpyVUJJNVVtNiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwIjtzOjU6InJvdXRlIjtzOjY6ImluaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765776726
2Z7UaJ5CdZYiMV9RzdjwLvbiSapwPLH1FFRSmg4i	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoibWQ2Y3gyOUVmREpmc3EwdTdpbVFTVWpVOElqVWhMMDJtU0ZQY1NKcCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zIjtzOjU6InJvdXRlIjtzOjE3OiJvbmcuZXZlbnRvcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765777143
lXoKtgVVv4eHM7LG5WUOhyLNs0htCmX4ST16FKOM	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTdYY01URnZxcXFMYklTYk9qODFWYmJ1Mm9GY0pBVk9obE9zb1dvNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792012
Y5mYeT1VjnBvjXzEbTM3CdQLcBuoqijpULGpRx87	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlRKd0JhVU1JYlpWYlc4b0w1QklIRWVxbkZKTFpuQlljbllWYmdKZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2V4dGVybm8vZXZlbnRvcy8yNi9kZXRhbGxlIjtzOjU6InJvdXRlIjtzOjIwOiJleHRlcm5vLmV2ZW50b3Muc2hvdyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765792285
YEKKqRQsxVQU5u9U1gT0mJirdbfTlv72bzVtsPk5	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoidEJBcmtHU215aWFEb3dJUTIyTzhHYUdLM3l1VTJPb0tMbzhDM0kwWSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9tZWdhLWV2ZW50b3MiO3M6NToicm91dGUiO3M6MjI6Im9uZy5tZWdhLWV2ZW50b3MuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765792859
lMszfISY1xsm6Fz5BnjAvv4qixddQChMh3gCuUqp	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVd4MHBPUWFYMHZDQzFRRW0yVVpQeEE3UFo3WkE4bVRGRkF5SXY2VyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6MTk6Im9uZy5kYXNoYm9hcmQuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765799602
7f329uSSjAyY0iK5bJNoGx4mQy82F7ftzAI28eWn	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoid0s1cHNvZjk5R0pZaFFMOHFqNGJoZG1zN3ZYaG1GSnVvVEhzTWowSCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765802710
0RcqbUY0mA31sdM68j7IdYl7ccrh7bRFrQ7nfDoN	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFlRbERMRXo3QnBMblhqcTVxaXRsTU9wSnBwV3ZUMHVjQm40U3pZZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zL2NyZWFyIjtzOjU6InJvdXRlIjtzOjE4OiJvbmcuZXZlbnRvcy5jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765803436
eoMi7NH7cIiyXCD13kwgYdSwDfipEm5hNEa2o7Tl	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGU2MDN3a3lrZzVuaHJBZWUwSHFuR1FZcHB5TkN0bUJSMmFVeGpmcCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zIjtzOjU6InJvdXRlIjtzOjE3OiJvbmcuZXZlbnRvcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765803715
mrqYq6p90CQJKznrcVcuUDXhRltKhaRSiEJOiH1q	\N	10.26.8.193	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFJEcTFwNVRsRGxmYmlMRUtNUlJXelV4ZG52Rzl4amhYVEpxQVk2aCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL3JlZ2lzdGVyLWV4dGVybm8/ZXZlbnRvSWQ9MzMiO3M6NToicm91dGUiO3M6MTY6InJlZ2lzdGVyLmV4dGVybm8iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765804136
digKGIEf4HA2mOm54e91A7WVNJUvGsZFA3RzeRCC	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGMxZ2pKdXRlelp1RGpUa2drNW5jaXpvdzI4OUZyUHdoQmU4S1IzbiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2hvbWUtZW1wcmVzYSI7czo1OiJyb3V0ZSI7czoxMjoiaG9tZS5lbXByZXNhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765770842
p724J1iBzdQNANgRB3Oeq87i9Oi4TYa47qN1iNKT	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTExekhqQmdFN0FkanhoVU1jVko5MG1UYlZUQzdFTjBxSHh6R0hNbiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765776741
xWXLVcwUOY5RIaBNQp0vV1v6PeW6j1soFfAndZJD	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVhtVWUzRmZzZm5QR2duVHZCMzFZQXZvZkMyVXMxZkFISzNST3lWdyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9tZWdhLWV2ZW50b3MiO3M6NToicm91dGUiO3M6MjI6Im9uZy5tZWdhLWV2ZW50b3MuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765777198
L5bP4nsqFhMCA3vsuao72m56A9muEmfD5dBVlkEW	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoid3oxSkVJaFM5SEJ5UkVSTzU3Slc1ajdvZUNqbHpTOGh0aHdNRGxPTCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2hvbWUtb25nIjtzOjU6InJvdXRlIjtzOjg6ImhvbWUub25nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792055
Y6JOcOXACY5MWeoWeuDNqwlRHzM9VV8zIzb9QPJC	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVBZdFlJYVpBQnZOR2Nva3hvSjZHb3UxcW1HNk5idmpEbHlMdUc2dyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2V4dGVybm8vZXZlbnRvcyI7czo1OiJyb3V0ZSI7czoyMToiZXh0ZXJuby5ldmVudG9zLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792311
F6Ebhvatb1VP3ebpWKQB7fUfSZmJoAatQhgnwCGG	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoicVVYRmZBZzhCRnAzR1N0bDdkOVJMZzZsNzR4VjNUam56em1nWEhxYiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9tZWdhLWV2ZW50b3MvZW4tY3Vyc28iO3M6NToicm91dGUiO3M6MjU6Im9uZy5tZWdhLWV2ZW50b3MuZW4tY3Vyc28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765792911
OQn5aC77mFhtV4va7d5nlDBUizB7d5KNskxSqSux	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoidzhJYVJ4VzdhVXdRaWhXc3NKWlIwZ1VoekpLQ0pSYW9aalpjWUJqUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2hvbWUtb25nIjtzOjU6InJvdXRlIjtzOjg6ImhvbWUub25nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765799983
1gLGgvzxtY0uNh8da4Ni2s51C82woNLcH9Z8aDL3	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoieDQ0OWhHMDVlMnhnOFBxZWExQWliMmZZSThlTFQyeHEyZFlweVdCMSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwIjtzOjU6InJvdXRlIjtzOjY6ImluaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765802715
glvW7GBTKsr38tpjrX40J2ASl5plBDEQaVFa4lvw	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiT041R0FYdU52OUFpaFFxUDZMWGw0cUhQUVQwblpiRW1iRlJqTUlHVCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zIjtzOjU6InJvdXRlIjtzOjE3OiJvbmcuZXZlbnRvcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765803539
tDEDrXUrlVinetnKRD1HtHpExO98jSMtVQRHb47O	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzJSTVNpQjhpOGlaajVlZ0sydkE5aExpWElQNWRDSnZZdEFZdnpOYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6MTk6Im9uZy5kYXNoYm9hcmQuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765803723
EuRHhnx4KTUdo2toaqak1UQ53XhmLXSJIUc0i3K6	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoidkhaWWpxNU04MnZzemltVmMwbWdiRnBWQW43NEk3WmU3MDRPTEFaYiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765804544
FZpd9jnYQ0jH8IIIazupaEmYPD2c5VwIgt2vzdS3	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoia2prRUJERElZWmJ3NzBNQnNMVUxjbFNFSlZld2JDaHd1SnlIMzVTbiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2VtcHJlc2EvZXZlbnRvcyI7czo1OiJyb3V0ZSI7czoyMToiZW1wcmVzYS5ldmVudG9zLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765770855
IjeUHGuyhSqSr5z4WuPNIhRzP7dJRnQSaZPceCu0	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzFPMEtSc2dZY2d4ZG56WG1FUUNYa29QUnJMdTRlZ3BvOGVJcVczTiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2hvbWUtb25nIjtzOjU6InJvdXRlIjtzOjg6ImhvbWUub25nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765776758
Jydv087SNSZ2DC19cErsGDzGeoEgDcnFO2hxk1he	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXM0aGhSNEpncm10MEhPeWY0Y1NXaVdJcDhhZ1VtSDVieEFJTlFKbiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9tZWdhLWV2ZW50b3MvY3JlYXIiO3M6NToicm91dGUiO3M6MjM6Im9uZy5tZWdhLWV2ZW50b3MuY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765777209
wY3jnKdh3HcnGtYw7zEoHcpzyx0AMRtkzhrcmwEh	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoib2w0YzNUSWlVRnlTT3pEZGtWM3pMeE1FQWJ0VFVNWHpVQm5LYU4zcyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2Zhdmljb25zL2Zhdmljb24uaWNvIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765792064
0wlgpJqy6SXhnRXM3NwUiWuxLrk701Fmq9BRe0yl	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUpLUFZnSk14SjRJN1EyWUpidEtFTnpETTRIVHM0WkU4cFpLangwVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792322
b8Pe1Jgd1xwEfj5KX5uTOSwfolACOikxizekBlu4	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlBWT1lKY1k1THoxU2RNZUM3WDE3UWI5YjVpcWF2enBTUEsxVzhCTSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9tZWdhLWV2ZW50b3MvaGlzdG9yaWFsIjtzOjU6InJvdXRlIjtzOjI2OiJvbmcubWVnYS1ldmVudG9zLmhpc3RvcmlhbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765792933
xD8sHsAWwGphLL9JuHuWMu8uB20H8lmIsOy7Y73q	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlVPdHc0bUhZWDJsc2Q4TmNUQ1lsbEc0ZkhxMzFKQmtJVWtNcmNjayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zIjtzOjU6InJvdXRlIjtzOjE3OiJvbmcuZXZlbnRvcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765800266
rv5NP3MWKCPu1JSzHnacUZvacRjgZ3Dl3UlZNAgy	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGFwNHpvYUpWY3UwMnRDOFgwbXNycE9LSHFZUlU3Q09YbEVyaUdjTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwIjtzOjU6InJvdXRlIjtzOjY6ImluaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765802726
WKorCmJjpedZBWCQMFY2zNe5ZtyMQQQ5odjkGyqI	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoicTFnUXRuTm8wczBxNlc1Y1lnTnNwc2JQSEVDbHdwVGtCQk0wYVMzeCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803555
LYz419jwJa3jYYYVaouANM5TLVPNNXberPTq2Y5U	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzRZSGg3OVI5NGEydGU4bEhYNFFqWERISVN3cXA1UEFMRjZ5V2hPbyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL3JlcG9ydGVzIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765803767
2xisMVlZVPVFwyAbOf4Kd2UpDuhq7Tr8XQ9OiBe4	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3N1bHVNMm16TkhIdXhleXI3NE43V0ZjMVJXd2F4eFJEOEhpZWdCaCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2VtcHJlc2EvZXZlbnRvcy9kaXNwb25pYmxlcyI7czo1OiJyb3V0ZSI7czoyNzoiZW1wcmVzYS5ldmVudG9zLmRpc3BvbmlibGVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765770913
g7gFj9zSBzFjXK0tClLQAoereVq8sxH9KJA3yluL	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoialNjMzFrbVVLQUx3S1ZKNnRMekNLc2l4WUJFU1hGNDNQekNjRGloeSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zIjtzOjU6InJvdXRlIjtzOjE3OiJvbmcuZXZlbnRvcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765776802
wK8RgEuoTFNhO8iAWDHdnR0szrlSQ2wtco761a7N	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoidjk3T3JQZVREc3RTZXZmazB4UUhhRkJUOXZNV0JucVVzRVdxNnJDcCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9tZWdhLWV2ZW50b3MiO3M6NToicm91dGUiO3M6MjI6Im9uZy5tZWdhLWV2ZW50b3MuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765777521
shhvUmJehDduPYcIDzv0hr3MNaNGvI0XtuMcdpyY	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNll1S1czMk9KOTg5aEtxN0ROQlkybTJsblRWT1htNzBScmJkSWVRWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zIjtzOjU6InJvdXRlIjtzOjE3OiJvbmcuZXZlbnRvcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765792076
EqE2XjWuE5aYDwr7bNJECOQSpMjsTZunCo7JFsSt	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDFxZjJ4dXJsdEZndDVHTkVtWUpZWFRqbXBpOW5ubkFyZVRwS05DNCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2hvbWUtb25nIjtzOjU6InJvdXRlIjtzOjg6ImhvbWUub25nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792328
FteutFvev6fT6KKGYmxO2CZLiMMv18FaCQnpJq8r	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoicHNhWjcwd3NGM2MydWdCaDdKRUxMZkpGOEo2bWRkcGNTTWhrc0gxWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL3ZvbHVudGFyaW9zIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765792947
GEjzN5VlywOxwaBNeOJLvAh99GR4dXW4kmeFzIxj	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3lGa2UyUGMzbkVsN2k3eEd3ODk1dkttTG9BWjhwd0RCZFVVQ2JMMSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2hvbWUtb25nIjtzOjU6InJvdXRlIjtzOjg6ImhvbWUub25nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765800812
77KBdMdXeveNXCk67IWUBorASI7HQsq8dCm4hQZs	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0NPZ2hBSXQxMnlQQnFSVFNERXYxUFhic0lXMnBFMGlIcmhZWUVrMCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803273
Sn7AQU7oX9T3TnpKtcuEGcDVIL9zD02lovVrExnS	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoibFd0WWd0N3IxUzV1MHpXWmx0WGNwak5xeVA2cUU4cGdWV3FHYVl3bSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2hvbWUtZXh0ZXJubyI7czo1OiJyb3V0ZSI7czoxMjoiaG9tZS5leHRlcm5vIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803567
9fb9EG6F9xk0aId5iapV93B8jz9Kab0nyKhh5kQx	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiVndDYzNZSWRRUDlIVFRMdWVBdGlHY0xZOVlyZU9mSzNPdlFsZUV6aSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9yZXBvcnRlcyI7czo1OiJyb3V0ZSI7czoxODoib25nLnJlcG9ydGVzLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803769
RKMDar4WwzE0friK41nRiNXIpGtGApdk6kS2wntD	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoibGl4akJKTFF6U0M4ZjFuY2lCbGo0a1FVdWdUUUVyY0RMWUxmdVZTRCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2VtcHJlc2EvZXZlbnRvcy9kaXNwb25pYmxlcyI7czo1OiJyb3V0ZSI7czoyNzoiZW1wcmVzYS5ldmVudG9zLmRpc3BvbmlibGVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765771622
V83KYkwfP2NENFYtXFOzrXwMISEej4Ld6RAorVzT	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGtKVmhGUG1mcWxDeGhVT1BlNGlVd2tNZndLaUowdExMZm01ZDBxUiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zLWRhc2hib2FyZCI7czo1OiJyb3V0ZSI7czoyNzoib25nLmV2ZW50b3MtZGFzaGJvYXJkLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765776861
38vPk7fGHYxARJFGmTNSkpgms8p5ZassoEKRnQPY	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiQk1lUDdaN2pPMGdNcllQRnJzamVUQ3dkYzI1RGZoQzdwUzA2TjdQYiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9tZWdhLWV2ZW50b3MvY3JlYXIiO3M6NToicm91dGUiO3M6MjM6Im9uZy5tZWdhLWV2ZW50b3MuY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765777537
Vz2lz8azr9WPL6KeiHVpvQjGOLZALA8Dyi4NE9EX	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGVveERxNHhoRzFHRkR0WXF5eXBYcE8yaDYxZlpEbzY3dnZ4REpiViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zLWRhc2hib2FyZCI7czo1OiJyb3V0ZSI7czoyNzoib25nLmV2ZW50b3MtZGFzaGJvYXJkLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792103
yZHCmSpMWLTNwvBC9EKJ0ndLuU05KCU4X0Yj17xA	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUswcVpxb0ZaY2JEQXQyUTJLNkJkRlJGTlNoU3U5TEpGR0hEZ1dheSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zL2hpc3RvcmlhbCI7czo1OiJyb3V0ZSI7czoyMToib25nLmV2ZW50b3MuaGlzdG9yaWFsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792338
VlZFqcQkVVgPGmd8wKKQdFQFo7qtvV9JOi6UET7r	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTAwdklycm1XdVlzVHN1SmMxVmF5SllTbU9PYnNZZ01nRjlrb0hqMCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy92b2x1bnRhcmlvcyI7czo1OiJyb3V0ZSI7czoyMToib25nLnZvbHVudGFyaW9zLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792948
Ob0nD6GWzhF76sg68JzdWhvu7fa5dRX9iy6NSB7L	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiMk9TTWZKWktjRFMwMkpnMU5oWkdKS2REdUUzOTA5bzVlanFESjR1TCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zIjtzOjU6InJvdXRlIjtzOjE3OiJvbmcuZXZlbnRvcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765800817
01nZRzygJpFJw4DUsEb3HxYKFGHuEvw2fULpwIcd	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoib3JLbUlFMVVqdjMxaXh0RGdvSlA4TE50N2UxdWp5WTlKbDZmU1FFeCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2hvbWUtb25nIjtzOjU6InJvdXRlIjtzOjg6ImhvbWUub25nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803287
LSRugVGSJzsMImCa7Dl9qgcnOgL5IFDp9sSnBdwV	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3lEQnVWaXBXck0ya3pFM0JXQTdkSEFacTBQUHlJRFU3ZHkzWFdFQSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL2V4dGVybm8vZXZlbnRvcyI7czo1OiJyb3V0ZSI7czoyMToiZXh0ZXJuby5ldmVudG9zLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803574
nPTj30ya72gLLKw1NPmLAR5uhBuMQic0bTfAyUBY	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiamJoRDlxbENUMmR6NHhuSjluNm9BUGxJOTF5YXVic3pMWVpoZ09OciI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9yZXBvcnRlcy9wYXJ0aWNpcGFjaW9uLWNvbGFib3JhY2lvbiI7czo1OiJyb3V0ZSI7czozOToib25nLnJlcG9ydGVzLnBhcnRpY2lwYWNpb24tY29sYWJvcmFjaW9uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765803800
cocelcfEc8tVMNnONDTlT3ry0X874elvGo7lwAPO	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoicWxBU1R4N1RsWEZZS2N4T0JrM203YWd2cUNTS21HTnJLT2hTMVVPVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zL2VuLWN1cnNvIjtzOjU6InJvdXRlIjtzOjIwOiJvbmcuZXZlbnRvcy5lbi1jdXJzbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765776923
Lv0dzBx1GkFSoLmD1i9pJpx2Im4LPrE0a6IVLjnT	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEF6UXQxa1dBaEJVcUJaTU1ldXYxR0RrUFFMOHhEaDl4U29TY1J4NiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9tZWdhLWV2ZW50b3MiO3M6NToicm91dGUiO3M6MjI6Im9uZy5tZWdhLWV2ZW50b3MuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765777743
eRwztUlWHWYRh8pFZFOOPKhhcwYcgXkn33PGIioY	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzZxTG1UY1pKOFpTUjVhclJFRkpqOE95bEdyNUZPN1lxMVJRendWciI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL2VtcHJlc2Evbm90aWZpY2FjaW9uZXMiO3M6NToicm91dGUiO3M6Mjg6ImVtcHJlc2Eubm90aWZpY2FjaW9uZXMuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765771648
10QI8UlXIFHKyyeRuAIjrTht68lWTKoqrixEwurf	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDdNZUVzWjkyQkZ5eUhMNzgzdDdzbDlJR1lVa0VuMmlRZ1k1MzdkRyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ldmVudG9zIjtzOjU6InJvdXRlIjtzOjE3OiJvbmcuZXZlbnRvcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765792179
4V6dE4cMBgmu9rouz1ifgm2G6T00n4HXtvQkbFCG	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoib0V5TVNSc0V1b2Judk9uVHRpVmlucGNHV3ZzYjJkN1g0OVNwckU1NCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTQ1OiJodHRwOi8vMTkyLjE2OC4wLjc6ODAwMC90aHVtYl9iYWNrL2ZoMjYwL2JhY2tncm91bmQvMjAyMzA1MTgvcG5ndHJlZS10d28teW91bmctZ2lybHMtbWFraW5nLXBhcGVyLWNyYWZ0cy1pbi1zb3V0aC1rb3JlYS1hdC1ob21lLWltYWdlXzI1MzcyOTIuanBnIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1765792342
VDpj9vgOFKJPNLrlcvIP4vsWCq1bY6ODsY0mnx2L	\N	192.168.0.7	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3pJYkQyZ3dLcUczRUs0TUZQUXJ4aXQxbk9ZeU4yQ3dTbkJORmZzMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjAuNzo4MDAwL29uZy9ub3RpZmljYWNpb25lcyI7czo1OiJyb3V0ZSI7czoyNDoib25nLm5vdGlmaWNhY2lvbmVzLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1765792973
MZDHkTfMMGzB6wRWXTCfXHXpVBbTl4fucsd6v6A3	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoielFobXJScWN2WWc4MkE1d1MzUGRqOEd2OUZsbFEwMk40SzFOVnNTdiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zLzMvZGV0YWxsZSI7czo1OiJyb3V0ZSI7czoxNjoib25nLmV2ZW50b3Muc2hvdyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765800830
Ned0dKdQJrW9mnytsSEZM502zPkSRWalNy529t8v	\N	10.26.8.200	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	YTozOntzOjY6Il90b2tlbiI7czo0MDoib0NZZkx5YUNrUE14aDVHU0pGMU9pT3pOWnpGeDdzQW5MdXJxNXJDVCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMC4yNi44LjIwMDo4MDAwL29uZy9ldmVudG9zIjtzOjU6InJvdXRlIjtzOjE3OiJvbmcuZXZlbnRvcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1765803303
\.


--
-- TOC entry 5493 (class 0 OID 36362)
-- Dependencies: 248
-- Data for Name: super_admins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.super_admins (user_id, nivel_acceso) FROM stdin;
\.


--
-- TOC entry 5506 (class 0 OID 43703)
-- Dependencies: 261
-- Data for Name: tipos_evento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipos_evento (id, codigo, nombre, descripcion, icono, color, orden, activo, created_at, updated_at, deleted_at) FROM stdin;
1	conferencia	Conferencia	Evento de conferencia o charla	fas fa-microphone	primary	1	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
2	taller	Taller	Taller práctico	fas fa-tools	info	2	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
3	seminario	Seminario	Seminario académico	fas fa-graduation-cap	success	3	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
4	voluntariado	Voluntariado	Actividad de voluntariado	fas fa-hands-helping	warning	4	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
5	cultural	Cultural	Evento cultural	fas fa-theater-masks	purple	5	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
6	deportivo	Deportivo	Evento deportivo	fas fa-running	danger	6	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
7	otro	Otro	Otro tipo de evento	fas fa-calendar	secondary	7	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
\.


--
-- TOC entry 5516 (class 0 OID 43782)
-- Dependencies: 271
-- Data for Name: tipos_notificacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipos_notificacion (id, codigo, nombre, descripcion, plantilla_mensaje, icono, color, activo, created_at, updated_at, deleted_at) FROM stdin;
1	reaccion_evento	Reacción a Evento	Notificación cuando un usuario reacciona a un evento	{usuario} reaccionó a tu evento "{evento}"	fas fa-heart	danger	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
2	nueva_participacion	Nueva Participación	Notificación cuando un usuario se inscribe a un evento	{usuario} se inscribió a tu evento "{evento}"	fas fa-user-plus	info	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
\.


--
-- TOC entry 5520 (class 0 OID 43816)
-- Dependencies: 275
-- Data for Name: tipos_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipos_usuario (id, codigo, nombre, descripcion, permisos_default, activo, created_at, updated_at, deleted_at) FROM stdin;
1	super_admin	Super Admin	Administrador del sistema	["*"]	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
2	ong	ONG	Organización No Gubernamental	["eventos.*","mega_eventos.*","participaciones.*","notificaciones.*"]	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
3	empresa	Empresa	Empresa patrocinadora	["eventos.ver","eventos.patrocinar"]	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
4	externo	Integrante Externo	Usuario externo o voluntario	["eventos.ver","eventos.inscribirse","eventos.reaccionar"]	t	2025-12-03 20:23:11	2025-12-03 20:23:11	\N
\.


--
-- TOC entry 5474 (class 0 OID 36150)
-- Dependencies: 229
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id_usuario, nombre_usuario, correo_electronico, contrasena, fecha_registro, tipo_usuario, activo, foto_perfil, tipo_usuario_id) FROM stdin;
1	ong_demo	ong@demo.com	$2y$12$R5Qp4KBY6vcmKuQqet4k9uvujjmmYDmhBibrweU5RNlo5dcr4zelK	2025-11-18 15:31:17	ONG	t	\N	\N
6	angel	angel@gmail.com	$2y$12$YfqJRFM8.i1.5AEK03XKn.g6x3ai4gAGSkwfh/OzWAM/nuyAtGPv6	2025-11-19 15:52:04	Integrante externo	t	\N	\N
3	carmen_paa	carmen@gmail.com	$2y$12$85WBRFyxBqPcWa75642eNu5ljOUcLfjF/i9xQHFuTa/Mkp3ExNC22	2025-11-18 15:32:27	Integrante externo	t	perfil/usuario/3/1940ab99-628d-4dde-8c65-01aa06a0802a.jpg	\N
5	ruben	ruben@gmail.com	$2y$12$Q7AFC/G.016pvy7mbSoV9uxrMUC6R6dtc5YoP3l0Olp7yDlltiLIi	2025-11-18 15:34:22	Empresa	t	perfil/usuario/5/ea5a9a2b-8c16-4735-a8a2-3a615bb04ff0.png	\N
8	elvis_mz	elvis@gmail.com	$2y$12$lJQjpk6TBBFcpF075b0iR.bmU/63I3fq/angMwySfpAGyiXlcCcM6	2025-11-27 10:42:45	Empresa	t	\N	\N
9	jorge_c	jorge@gmail.com	$2y$12$UzDCz8Nkfd0o7UXCP2m8fef4a3YGIvZl6O.zJ695LM2ZP6Qpg8wWO	2025-11-27 10:45:07	Integrante externo	t	\N	\N
10	fundacionEsperanza	contacto@fundacionesperanza.org	$2y$12$deFCIbE08N6RtZl17TQchu/SZtQD3kqa4SR29.vOEFdNTkpkUfPbG	2025-11-27 10:48:33	ONG	t	\N	\N
4	manuel_jp	manuel@gmail.com	$2y$12$znsIzs1z0qEeqC98xMLE2.zQYWHkXA.ECqsC127pA8DbuSrUa5pa6	2025-11-18 15:33:10	ONG	t	perfil/usuario/4/26d6ad7a-0106-43b4-8745-37d116fda1c5.jpg	\N
11	Dulcifarma	dulcifarma@gmail.com	$2y$12$C3.EJcRWjlxDMUacssj4N.vaevsXAtDcBN.ldkb.KtSI.R4ts9cZS	2025-11-28 21:57:03	ONG	t	\N	\N
13	deli_sweet	deli_sweet@gmail.com	$2y$12$N2sdzbkxvhxv42XYbSHYtudi5.OXIehwEYhIztAiv8O7fuddc05BO	2025-12-05 10:01:07	Empresa	t	\N	\N
7	Univalle	univalle@gmail.com	$2y$12$CxKsvIyrpI4T7A3TBSeOM.fVK1gb0qHQspipJrrFv9IedxfTbBoEy	2025-11-25 15:45:03	Empresa	t	perfil/usuario/7/d43ff819-8f5f-438b-bb8d-e6cb4c87943c.png	\N
14	Gotas de brillo	gotasdebrillo@gmail.com	$2y$12$L7h6clHhoVT6ek23CKBAM.5dEvIB5lVLFVt02Qta1W8rd0sV/kk.W	2025-12-08 23:50:45	Integrante externo	t	\N	\N
\.


--
-- TOC entry 5697 (class 0 OID 0)
-- Dependencies: 262
-- Name: categorias_mega_eventos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categorias_mega_eventos_id_seq', 7, true);


--
-- TOC entry 5698 (class 0 OID 0)
-- Dependencies: 264
-- Name: ciudades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ciudades_id_seq', 9, true);


--
-- TOC entry 5699 (class 0 OID 0)
-- Dependencies: 272
-- Name: estados_evento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estados_evento_id_seq', 8, true);


--
-- TOC entry 5700 (class 0 OID 0)
-- Dependencies: 268
-- Name: estados_participacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estados_participacion_id_seq', 3, true);


--
-- TOC entry 5701 (class 0 OID 0)
-- Dependencies: 239
-- Name: evento_auspiciadores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evento_auspiciadores_id_seq', 1, false);


--
-- TOC entry 5702 (class 0 OID 0)
-- Dependencies: 278
-- Name: evento_compartidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evento_compartidos_id_seq', 45, true);


--
-- TOC entry 5703 (class 0 OID 0)
-- Dependencies: 256
-- Name: evento_empresas_participantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evento_empresas_participantes_id_seq', 29, true);


--
-- TOC entry 5704 (class 0 OID 0)
-- Dependencies: 241
-- Name: evento_integrantes_externos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evento_integrantes_externos_id_seq', 1, false);


--
-- TOC entry 5705 (class 0 OID 0)
-- Dependencies: 250
-- Name: evento_participaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evento_participaciones_id_seq', 14, true);


--
-- TOC entry 5706 (class 0 OID 0)
-- Dependencies: 276
-- Name: evento_participantes_no_registrados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evento_participantes_no_registrados_id_seq', 19, true);


--
-- TOC entry 5707 (class 0 OID 0)
-- Dependencies: 235
-- Name: evento_patrocinadores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evento_patrocinadores_id_seq', 1, false);


--
-- TOC entry 5708 (class 0 OID 0)
-- Dependencies: 252
-- Name: evento_reacciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evento_reacciones_id_seq', 25, true);


--
-- TOC entry 5709 (class 0 OID 0)
-- Dependencies: 233
-- Name: eventos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.eventos_id_seq', 35, true);


--
-- TOC entry 5710 (class 0 OID 0)
-- Dependencies: 224
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 5711 (class 0 OID 0)
-- Dependencies: 237
-- Name: invitados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invitados_id_seq', 1, false);


--
-- TOC entry 5712 (class 0 OID 0)
-- Dependencies: 221
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- TOC entry 5713 (class 0 OID 0)
-- Dependencies: 266
-- Name: lugares_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lugares_id_seq', 1, false);


--
-- TOC entry 5714 (class 0 OID 0)
-- Dependencies: 280
-- Name: mega_evento_compartidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mega_evento_compartidos_id_seq', 23, true);


--
-- TOC entry 5715 (class 0 OID 0)
-- Dependencies: 284
-- Name: mega_evento_participantes_no_registrados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mega_evento_participantes_no_registrados_id_seq', 3, true);


--
-- TOC entry 5716 (class 0 OID 0)
-- Dependencies: 282
-- Name: mega_evento_reacciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mega_evento_reacciones_id_seq', 7, true);


--
-- TOC entry 5717 (class 0 OID 0)
-- Dependencies: 243
-- Name: mega_eventos_mega_evento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mega_eventos_mega_evento_id_seq', 19, true);


--
-- TOC entry 5718 (class 0 OID 0)
-- Dependencies: 217
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 73, true);


--
-- TOC entry 5719 (class 0 OID 0)
-- Dependencies: 254
-- Name: notificaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notificaciones_id_seq', 58, true);


--
-- TOC entry 5720 (class 0 OID 0)
-- Dependencies: 293
-- Name: ong_exportaciones_pdf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ong_exportaciones_pdf_id_seq', 1, false);


--
-- TOC entry 5721 (class 0 OID 0)
-- Dependencies: 258
-- Name: parametros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parametros_id_seq', 1, false);


--
-- TOC entry 5722 (class 0 OID 0)
-- Dependencies: 286
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permissions_id_seq', 47, true);


--
-- TOC entry 5723 (class 0 OID 0)
-- Dependencies: 226
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 454, true);


--
-- TOC entry 5724 (class 0 OID 0)
-- Dependencies: 288
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 4, true);


--
-- TOC entry 5725 (class 0 OID 0)
-- Dependencies: 260
-- Name: tipos_evento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_evento_id_seq', 8, true);


--
-- TOC entry 5726 (class 0 OID 0)
-- Dependencies: 270
-- Name: tipos_notificacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_notificacion_id_seq', 2, true);


--
-- TOC entry 5727 (class 0 OID 0)
-- Dependencies: 274
-- Name: tipos_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_usuario_id_seq', 4, true);


--
-- TOC entry 5728 (class 0 OID 0)
-- Dependencies: 228
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 14, true);


--
-- TOC entry 5061 (class 2606 OID 36106)
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- TOC entry 5059 (class 2606 OID 36099)
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- TOC entry 5173 (class 2606 OID 43733)
-- Name: categorias_mega_eventos categorias_mega_eventos_codigo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias_mega_eventos
    ADD CONSTRAINT categorias_mega_eventos_codigo_unique UNIQUE (codigo);


--
-- TOC entry 5175 (class 2606 OID 43729)
-- Name: categorias_mega_eventos categorias_mega_eventos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias_mega_eventos
    ADD CONSTRAINT categorias_mega_eventos_pkey PRIMARY KEY (id);


--
-- TOC entry 5181 (class 2606 OID 43742)
-- Name: ciudades ciudades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciudades
    ADD CONSTRAINT ciudades_pkey PRIMARY KEY (id);


--
-- TOC entry 5086 (class 2606 OID 36186)
-- Name: empresas empresas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT empresas_pkey PRIMARY KEY (user_id);


--
-- TOC entry 5202 (class 2606 OID 43814)
-- Name: estados_evento estados_evento_codigo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estados_evento
    ADD CONSTRAINT estados_evento_codigo_unique UNIQUE (codigo);


--
-- TOC entry 5204 (class 2606 OID 43809)
-- Name: estados_evento estados_evento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estados_evento
    ADD CONSTRAINT estados_evento_pkey PRIMARY KEY (id);


--
-- TOC entry 5190 (class 2606 OID 43780)
-- Name: estados_participacion estados_participacion_codigo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estados_participacion
    ADD CONSTRAINT estados_participacion_codigo_unique UNIQUE (codigo);


--
-- TOC entry 5192 (class 2606 OID 43776)
-- Name: estados_participacion estados_participacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estados_participacion
    ADD CONSTRAINT estados_participacion_pkey PRIMARY KEY (id);


--
-- TOC entry 5101 (class 2606 OID 36256)
-- Name: evento_auspiciadores evento_auspiciadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_auspiciadores
    ADD CONSTRAINT evento_auspiciadores_pkey PRIMARY KEY (id);


--
-- TOC entry 5223 (class 2606 OID 43990)
-- Name: evento_compartidos evento_compartidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_compartidos
    ADD CONSTRAINT evento_compartidos_pkey PRIMARY KEY (id);


--
-- TOC entry 5153 (class 2606 OID 43681)
-- Name: evento_empresas_participantes evento_empresas_participantes_evento_id_empresa_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_empresas_participantes
    ADD CONSTRAINT evento_empresas_participantes_evento_id_empresa_id_unique UNIQUE (evento_id, empresa_id);


--
-- TOC entry 5156 (class 2606 OID 43669)
-- Name: evento_empresas_participantes evento_empresas_participantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_empresas_participantes
    ADD CONSTRAINT evento_empresas_participantes_pkey PRIMARY KEY (id);


--
-- TOC entry 5103 (class 2606 OID 36274)
-- Name: evento_integrantes_externos evento_integrantes_externos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_integrantes_externos
    ADD CONSTRAINT evento_integrantes_externos_pkey PRIMARY KEY (id);


--
-- TOC entry 5132 (class 2606 OID 36406)
-- Name: evento_participaciones evento_participaciones_evento_id_externo_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_participaciones
    ADD CONSTRAINT evento_participaciones_evento_id_externo_id_unique UNIQUE (evento_id, externo_id);


--
-- TOC entry 5135 (class 2606 OID 36394)
-- Name: evento_participaciones evento_participaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_participaciones
    ADD CONSTRAINT evento_participaciones_pkey PRIMARY KEY (id);


--
-- TOC entry 5137 (class 2606 OID 44248)
-- Name: evento_participaciones evento_participaciones_ticket_codigo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_participaciones
    ADD CONSTRAINT evento_participaciones_ticket_codigo_unique UNIQUE (ticket_codigo);


--
-- TOC entry 5216 (class 2606 OID 43963)
-- Name: evento_participantes_no_registrados evento_participantes_no_registrados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_participantes_no_registrados
    ADD CONSTRAINT evento_participantes_no_registrados_pkey PRIMARY KEY (id);


--
-- TOC entry 5218 (class 2606 OID 44349)
-- Name: evento_participantes_no_registrados evento_participantes_no_registrados_ticket_codigo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_participantes_no_registrados
    ADD CONSTRAINT evento_participantes_no_registrados_ticket_codigo_unique UNIQUE (ticket_codigo);


--
-- TOC entry 5097 (class 2606 OID 36224)
-- Name: evento_patrocinadores evento_patrocinadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_patrocinadores
    ADD CONSTRAINT evento_patrocinadores_pkey PRIMARY KEY (id);


--
-- TOC entry 5142 (class 2606 OID 36419)
-- Name: evento_reacciones evento_reacciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_reacciones
    ADD CONSTRAINT evento_reacciones_pkey PRIMARY KEY (id);


--
-- TOC entry 5095 (class 2606 OID 36210)
-- Name: eventos eventos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eventos
    ADD CONSTRAINT eventos_pkey PRIMARY KEY (id);


--
-- TOC entry 5068 (class 2606 OID 36133)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 5070 (class 2606 OID 36135)
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- TOC entry 5088 (class 2606 OID 36198)
-- Name: integrantes_externos integrantes_externos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.integrantes_externos
    ADD CONSTRAINT integrantes_externos_pkey PRIMARY KEY (user_id);


--
-- TOC entry 5099 (class 2606 OID 36242)
-- Name: invitados invitados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invitados
    ADD CONSTRAINT invitados_pkey PRIMARY KEY (id);


--
-- TOC entry 5066 (class 2606 OID 36123)
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- TOC entry 5063 (class 2606 OID 36115)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 5186 (class 2606 OID 43756)
-- Name: lugares lugares_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lugares
    ADD CONSTRAINT lugares_pkey PRIMARY KEY (id);


--
-- TOC entry 5227 (class 2606 OID 44106)
-- Name: mega_evento_compartidos mega_evento_compartidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_compartidos
    ADD CONSTRAINT mega_evento_compartidos_pkey PRIMARY KEY (id);


--
-- TOC entry 5111 (class 2606 OID 36311)
-- Name: mega_evento_ongs_organizadoras mega_evento_ongs_organizadoras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_ongs_organizadoras
    ADD CONSTRAINT mega_evento_ongs_organizadoras_pkey PRIMARY KEY (mega_evento_id, ong_id);


--
-- TOC entry 5117 (class 2606 OID 36331)
-- Name: mega_evento_participantes_externos mega_evento_participantes_externos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_participantes_externos
    ADD CONSTRAINT mega_evento_participantes_externos_pkey PRIMARY KEY (mega_evento_id, integrante_externo_id);


--
-- TOC entry 5119 (class 2606 OID 44540)
-- Name: mega_evento_participantes_externos mega_evento_participantes_externos_ticket_codigo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_participantes_externos
    ADD CONSTRAINT mega_evento_participantes_externos_ticket_codigo_unique UNIQUE (ticket_codigo);


--
-- TOC entry 5236 (class 2606 OID 44155)
-- Name: mega_evento_participantes_no_registrados mega_evento_participantes_no_registrados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_participantes_no_registrados
    ADD CONSTRAINT mega_evento_participantes_no_registrados_pkey PRIMARY KEY (id);


--
-- TOC entry 5238 (class 2606 OID 44548)
-- Name: mega_evento_participantes_no_registrados mega_evento_participantes_no_registrados_ticket_codigo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_participantes_no_registrados
    ADD CONSTRAINT mega_evento_participantes_no_registrados_ticket_codigo_unique UNIQUE (ticket_codigo);


--
-- TOC entry 5121 (class 2606 OID 36351)
-- Name: mega_evento_patrocinadores mega_evento_patrocinadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_patrocinadores
    ADD CONSTRAINT mega_evento_patrocinadores_pkey PRIMARY KEY (mega_evento_id, empresa_id);


--
-- TOC entry 5231 (class 2606 OID 44130)
-- Name: mega_evento_reacciones mega_evento_reacciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_reacciones
    ADD CONSTRAINT mega_evento_reacciones_pkey PRIMARY KEY (id);


--
-- TOC entry 5109 (class 2606 OID 36299)
-- Name: mega_eventos mega_eventos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_eventos
    ADD CONSTRAINT mega_eventos_pkey PRIMARY KEY (mega_evento_id);


--
-- TOC entry 5057 (class 2606 OID 36092)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 5249 (class 2606 OID 44692)
-- Name: model_has_permissions model_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);


--
-- TOC entry 5252 (class 2606 OID 44703)
-- Name: model_has_roles model_has_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);


--
-- TOC entry 5150 (class 2606 OID 36443)
-- Name: notificaciones notificaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT notificaciones_pkey PRIMARY KEY (id);


--
-- TOC entry 5258 (class 2606 OID 44870)
-- Name: ong_exportaciones_pdf ong_exportaciones_pdf_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ong_exportaciones_pdf
    ADD CONSTRAINT ong_exportaciones_pdf_pkey PRIMARY KEY (id);


--
-- TOC entry 5084 (class 2606 OID 36174)
-- Name: ongs ongs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ongs
    ADD CONSTRAINT ongs_pkey PRIMARY KEY (user_id);


--
-- TOC entry 5160 (class 2606 OID 43701)
-- Name: parametros parametros_codigo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametros
    ADD CONSTRAINT parametros_codigo_unique UNIQUE (codigo);


--
-- TOC entry 5163 (class 2606 OID 43696)
-- Name: parametros parametros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parametros
    ADD CONSTRAINT parametros_pkey PRIMARY KEY (id);


--
-- TOC entry 5240 (class 2606 OID 44670)
-- Name: permissions permissions_name_guard_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_name_guard_name_unique UNIQUE (name, guard_name);


--
-- TOC entry 5242 (class 2606 OID 44668)
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5073 (class 2606 OID 36144)
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 5075 (class 2606 OID 36147)
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- TOC entry 5254 (class 2606 OID 44718)
-- Name: role_has_permissions role_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);


--
-- TOC entry 5244 (class 2606 OID 44681)
-- Name: roles roles_name_guard_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_guard_name_unique UNIQUE (name, guard_name);


--
-- TOC entry 5246 (class 2606 OID 44679)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 5126 (class 2606 OID 36383)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 5123 (class 2606 OID 36366)
-- Name: super_admins super_admins_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.super_admins
    ADD CONSTRAINT super_admins_pkey PRIMARY KEY (user_id);


--
-- TOC entry 5167 (class 2606 OID 43717)
-- Name: tipos_evento tipos_evento_codigo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_evento
    ADD CONSTRAINT tipos_evento_codigo_unique UNIQUE (codigo);


--
-- TOC entry 5169 (class 2606 OID 43713)
-- Name: tipos_evento tipos_evento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_evento
    ADD CONSTRAINT tipos_evento_pkey PRIMARY KEY (id);


--
-- TOC entry 5196 (class 2606 OID 43795)
-- Name: tipos_notificacion tipos_notificacion_codigo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_notificacion
    ADD CONSTRAINT tipos_notificacion_codigo_unique UNIQUE (codigo);


--
-- TOC entry 5198 (class 2606 OID 43791)
-- Name: tipos_notificacion tipos_notificacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_notificacion
    ADD CONSTRAINT tipos_notificacion_pkey PRIMARY KEY (id);


--
-- TOC entry 5209 (class 2606 OID 43828)
-- Name: tipos_usuario tipos_usuario_codigo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_usuario
    ADD CONSTRAINT tipos_usuario_codigo_unique UNIQUE (codigo);


--
-- TOC entry 5211 (class 2606 OID 43824)
-- Name: tipos_usuario tipos_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_usuario
    ADD CONSTRAINT tipos_usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 5144 (class 2606 OID 44012)
-- Name: evento_reacciones unique_evento_externo_email; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_reacciones
    ADD CONSTRAINT unique_evento_externo_email UNIQUE (evento_id, externo_id, email);


--
-- TOC entry 5260 (class 2606 OID 44873)
-- Name: ong_exportaciones_pdf unique_exportacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ong_exportaciones_pdf
    ADD CONSTRAINT unique_exportacion UNIQUE (ong_id, numero_exportacion, tipo_exportacion);


--
-- TOC entry 5233 (class 2606 OID 44132)
-- Name: mega_evento_reacciones unique_mega_evento_externo_email; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_reacciones
    ADD CONSTRAINT unique_mega_evento_externo_email UNIQUE (mega_evento_id, externo_id, email);


--
-- TOC entry 5078 (class 2606 OID 36161)
-- Name: usuarios usuarios_correo_electronico_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correo_electronico_unique UNIQUE (correo_electronico);


--
-- TOC entry 5080 (class 2606 OID 36159)
-- Name: usuarios usuarios_nombre_usuario_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_nombre_usuario_unique UNIQUE (nombre_usuario);


--
-- TOC entry 5082 (class 2606 OID 36157)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 5170 (class 1259 OID 43731)
-- Name: categorias_mega_eventos_activo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categorias_mega_eventos_activo_index ON public.categorias_mega_eventos USING btree (activo);


--
-- TOC entry 5171 (class 1259 OID 43730)
-- Name: categorias_mega_eventos_codigo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categorias_mega_eventos_codigo_index ON public.categorias_mega_eventos USING btree (codigo);


--
-- TOC entry 5176 (class 1259 OID 43746)
-- Name: ciudades_activo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ciudades_activo_index ON public.ciudades USING btree (activo);


--
-- TOC entry 5177 (class 1259 OID 43744)
-- Name: ciudades_departamento_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ciudades_departamento_index ON public.ciudades USING btree (departamento);


--
-- TOC entry 5178 (class 1259 OID 43743)
-- Name: ciudades_nombre_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ciudades_nombre_index ON public.ciudades USING btree (nombre);


--
-- TOC entry 5179 (class 1259 OID 43745)
-- Name: ciudades_pais_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ciudades_pais_index ON public.ciudades USING btree (pais);


--
-- TOC entry 5199 (class 1259 OID 43812)
-- Name: estados_evento_activo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX estados_evento_activo_index ON public.estados_evento USING btree (activo);


--
-- TOC entry 5200 (class 1259 OID 43810)
-- Name: estados_evento_codigo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX estados_evento_codigo_index ON public.estados_evento USING btree (codigo);


--
-- TOC entry 5205 (class 1259 OID 43811)
-- Name: estados_evento_tipo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX estados_evento_tipo_index ON public.estados_evento USING btree (tipo);


--
-- TOC entry 5187 (class 1259 OID 43778)
-- Name: estados_participacion_activo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX estados_participacion_activo_index ON public.estados_participacion USING btree (activo);


--
-- TOC entry 5188 (class 1259 OID 43777)
-- Name: estados_participacion_codigo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX estados_participacion_codigo_index ON public.estados_participacion USING btree (codigo);


--
-- TOC entry 5219 (class 1259 OID 44883)
-- Name: evento_compartidos_evento_created_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_compartidos_evento_created_index ON public.evento_compartidos USING btree (evento_id, created_at);


--
-- TOC entry 5220 (class 1259 OID 44001)
-- Name: evento_compartidos_evento_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_compartidos_evento_id_index ON public.evento_compartidos USING btree (evento_id);


--
-- TOC entry 5221 (class 1259 OID 44002)
-- Name: evento_compartidos_externo_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_compartidos_externo_id_index ON public.evento_compartidos USING btree (externo_id);


--
-- TOC entry 5151 (class 1259 OID 44885)
-- Name: evento_empresas_participantes_activo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_empresas_participantes_activo_index ON public.evento_empresas_participantes USING btree (activo);


--
-- TOC entry 5154 (class 1259 OID 44884)
-- Name: evento_empresas_participantes_evento_tipo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_empresas_participantes_evento_tipo_index ON public.evento_empresas_participantes USING btree (evento_id, tipo_colaboracion);


--
-- TOC entry 5128 (class 1259 OID 36409)
-- Name: evento_participaciones_estado_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_participaciones_estado_index ON public.evento_participaciones USING btree (estado);


--
-- TOC entry 5129 (class 1259 OID 44878)
-- Name: evento_participaciones_evento_created_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_participaciones_evento_created_index ON public.evento_participaciones USING btree (evento_id, created_at);


--
-- TOC entry 5130 (class 1259 OID 44877)
-- Name: evento_participaciones_evento_estado_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_participaciones_evento_estado_index ON public.evento_participaciones USING btree (evento_id, estado);


--
-- TOC entry 5133 (class 1259 OID 44879)
-- Name: evento_participaciones_externo_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_participaciones_externo_id_index ON public.evento_participaciones USING btree (externo_id);


--
-- TOC entry 5212 (class 1259 OID 44881)
-- Name: evento_participantes_no_registrados_evento_created_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_participantes_no_registrados_evento_created_index ON public.evento_participantes_no_registrados USING btree (evento_id, created_at);


--
-- TOC entry 5213 (class 1259 OID 44880)
-- Name: evento_participantes_no_registrados_evento_estado_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_participantes_no_registrados_evento_estado_index ON public.evento_participantes_no_registrados USING btree (evento_id, estado);


--
-- TOC entry 5214 (class 1259 OID 43969)
-- Name: evento_participantes_no_registrados_evento_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_participantes_no_registrados_evento_id_index ON public.evento_participantes_no_registrados USING btree (evento_id);


--
-- TOC entry 5138 (class 1259 OID 44882)
-- Name: evento_reacciones_evento_created_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_reacciones_evento_created_index ON public.evento_reacciones USING btree (evento_id, created_at);


--
-- TOC entry 5139 (class 1259 OID 36432)
-- Name: evento_reacciones_evento_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_reacciones_evento_id_index ON public.evento_reacciones USING btree (evento_id);


--
-- TOC entry 5140 (class 1259 OID 44005)
-- Name: evento_reacciones_externo_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evento_reacciones_externo_id_index ON public.evento_reacciones USING btree (externo_id);


--
-- TOC entry 5089 (class 1259 OID 44888)
-- Name: eventos_estado_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX eventos_estado_index ON public.eventos USING btree (estado);


--
-- TOC entry 5090 (class 1259 OID 44875)
-- Name: eventos_fecha_inicio_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX eventos_fecha_inicio_index ON public.eventos USING btree (fecha_inicio);


--
-- TOC entry 5091 (class 1259 OID 44876)
-- Name: eventos_ong_id_created_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX eventos_ong_id_created_at_index ON public.eventos USING btree (ong_id, created_at);


--
-- TOC entry 5092 (class 1259 OID 44874)
-- Name: eventos_ong_id_estado_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX eventos_ong_id_estado_index ON public.eventos USING btree (ong_id, estado);


--
-- TOC entry 5093 (class 1259 OID 44887)
-- Name: eventos_ong_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX eventos_ong_id_index ON public.eventos USING btree (ong_id);


--
-- TOC entry 5064 (class 1259 OID 36116)
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- TOC entry 5182 (class 1259 OID 43764)
-- Name: lugares_activo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lugares_activo_index ON public.lugares USING btree (activo);


--
-- TOC entry 5183 (class 1259 OID 43762)
-- Name: lugares_ciudad_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lugares_ciudad_id_index ON public.lugares USING btree (ciudad_id);


--
-- TOC entry 5184 (class 1259 OID 43763)
-- Name: lugares_nombre_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lugares_nombre_index ON public.lugares USING btree (nombre);


--
-- TOC entry 5224 (class 1259 OID 44118)
-- Name: mega_evento_compartidos_externo_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mega_evento_compartidos_externo_id_index ON public.mega_evento_compartidos USING btree (externo_id);


--
-- TOC entry 5225 (class 1259 OID 44117)
-- Name: mega_evento_compartidos_mega_evento_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mega_evento_compartidos_mega_evento_id_index ON public.mega_evento_compartidos USING btree (mega_evento_id);


--
-- TOC entry 5112 (class 1259 OID 44894)
-- Name: mega_evento_participantes_externos_activo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mega_evento_participantes_externos_activo_index ON public.mega_evento_participantes_externos USING btree (activo);


--
-- TOC entry 5113 (class 1259 OID 44896)
-- Name: mega_evento_participantes_externos_composite_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mega_evento_participantes_externos_composite_index ON public.mega_evento_participantes_externos USING btree (mega_evento_id, activo, estado_participacion);


--
-- TOC entry 5114 (class 1259 OID 44895)
-- Name: mega_evento_participantes_externos_estado_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mega_evento_participantes_externos_estado_index ON public.mega_evento_participantes_externos USING btree (estado_participacion);


--
-- TOC entry 5115 (class 1259 OID 44893)
-- Name: mega_evento_participantes_externos_mega_evento_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mega_evento_participantes_externos_mega_evento_id_index ON public.mega_evento_participantes_externos USING btree (mega_evento_id);


--
-- TOC entry 5234 (class 1259 OID 44161)
-- Name: mega_evento_participantes_no_registrados_mega_evento_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mega_evento_participantes_no_registrados_mega_evento_id_index ON public.mega_evento_participantes_no_registrados USING btree (mega_evento_id);


--
-- TOC entry 5228 (class 1259 OID 44144)
-- Name: mega_evento_reacciones_externo_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mega_evento_reacciones_externo_id_index ON public.mega_evento_reacciones USING btree (externo_id);


--
-- TOC entry 5229 (class 1259 OID 44143)
-- Name: mega_evento_reacciones_mega_evento_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mega_evento_reacciones_mega_evento_id_index ON public.mega_evento_reacciones USING btree (mega_evento_id);


--
-- TOC entry 5104 (class 1259 OID 44890)
-- Name: mega_eventos_es_publico_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mega_eventos_es_publico_index ON public.mega_eventos USING btree (es_publico);


--
-- TOC entry 5105 (class 1259 OID 44891)
-- Name: mega_eventos_estado_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mega_eventos_estado_index ON public.mega_eventos USING btree (estado);


--
-- TOC entry 5106 (class 1259 OID 44892)
-- Name: mega_eventos_fecha_creacion_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mega_eventos_fecha_creacion_index ON public.mega_eventos USING btree (fecha_creacion);


--
-- TOC entry 5107 (class 1259 OID 44889)
-- Name: mega_eventos_ong_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mega_eventos_ong_id_index ON public.mega_eventos USING btree (ong_organizadora_principal);


--
-- TOC entry 5247 (class 1259 OID 44685)
-- Name: model_has_permissions_model_id_model_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);


--
-- TOC entry 5250 (class 1259 OID 44696)
-- Name: model_has_roles_model_id_model_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);


--
-- TOC entry 5145 (class 1259 OID 36460)
-- Name: notificaciones_leida_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notificaciones_leida_index ON public.notificaciones USING btree (leida);


--
-- TOC entry 5146 (class 1259 OID 36459)
-- Name: notificaciones_ong_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notificaciones_ong_id_index ON public.notificaciones USING btree (ong_id);


--
-- TOC entry 5147 (class 1259 OID 36461)
-- Name: notificaciones_ong_id_leida_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notificaciones_ong_id_leida_index ON public.notificaciones USING btree (ong_id, leida);


--
-- TOC entry 5148 (class 1259 OID 44886)
-- Name: notificaciones_ong_leida_created_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notificaciones_ong_leida_created_index ON public.notificaciones USING btree (ong_id, leida, created_at);


--
-- TOC entry 5255 (class 1259 OID 45037)
-- Name: ong_exportaciones_pdf_ong_id_tipo_created_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ong_exportaciones_pdf_ong_id_tipo_created_at_index ON public.ong_exportaciones_pdf USING btree (ong_id, tipo, created_at);


--
-- TOC entry 5256 (class 1259 OID 44871)
-- Name: ong_exportaciones_pdf_ong_id_tipo_exportacion_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ong_exportaciones_pdf_ong_id_tipo_exportacion_index ON public.ong_exportaciones_pdf USING btree (ong_id, tipo_exportacion);


--
-- TOC entry 5157 (class 1259 OID 43698)
-- Name: parametros_categoria_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parametros_categoria_index ON public.parametros USING btree (categoria);


--
-- TOC entry 5158 (class 1259 OID 43697)
-- Name: parametros_codigo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parametros_codigo_index ON public.parametros USING btree (codigo);


--
-- TOC entry 5161 (class 1259 OID 43699)
-- Name: parametros_grupo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parametros_grupo_index ON public.parametros USING btree (grupo);


--
-- TOC entry 5071 (class 1259 OID 36148)
-- Name: personal_access_tokens_expires_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_expires_at_index ON public.personal_access_tokens USING btree (expires_at);


--
-- TOC entry 5076 (class 1259 OID 36145)
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- TOC entry 5124 (class 1259 OID 36385)
-- Name: sessions_last_activity_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);


--
-- TOC entry 5127 (class 1259 OID 36384)
-- Name: sessions_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);


--
-- TOC entry 5164 (class 1259 OID 43715)
-- Name: tipos_evento_activo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tipos_evento_activo_index ON public.tipos_evento USING btree (activo);


--
-- TOC entry 5165 (class 1259 OID 43714)
-- Name: tipos_evento_codigo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tipos_evento_codigo_index ON public.tipos_evento USING btree (codigo);


--
-- TOC entry 5193 (class 1259 OID 43793)
-- Name: tipos_notificacion_activo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tipos_notificacion_activo_index ON public.tipos_notificacion USING btree (activo);


--
-- TOC entry 5194 (class 1259 OID 43792)
-- Name: tipos_notificacion_codigo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tipos_notificacion_codigo_index ON public.tipos_notificacion USING btree (codigo);


--
-- TOC entry 5206 (class 1259 OID 43826)
-- Name: tipos_usuario_activo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tipos_usuario_activo_index ON public.tipos_usuario USING btree (activo);


--
-- TOC entry 5207 (class 1259 OID 43825)
-- Name: tipos_usuario_codigo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tipos_usuario_codigo_index ON public.tipos_usuario USING btree (codigo);


--
-- TOC entry 5263 (class 2606 OID 36180)
-- Name: empresas empresas_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT empresas_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 5273 (class 2606 OID 36262)
-- Name: evento_auspiciadores evento_auspiciadores_empresa_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_auspiciadores
    ADD CONSTRAINT evento_auspiciadores_empresa_id_foreign FOREIGN KEY (empresa_id) REFERENCES public.empresas(user_id) ON DELETE CASCADE;


--
-- TOC entry 5274 (class 2606 OID 36257)
-- Name: evento_auspiciadores evento_auspiciadores_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_auspiciadores
    ADD CONSTRAINT evento_auspiciadores_evento_id_foreign FOREIGN KEY (evento_id) REFERENCES public.eventos(id) ON DELETE CASCADE;


--
-- TOC entry 5304 (class 2606 OID 43991)
-- Name: evento_compartidos evento_compartidos_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_compartidos
    ADD CONSTRAINT evento_compartidos_evento_id_foreign FOREIGN KEY (evento_id) REFERENCES public.eventos(id) ON DELETE CASCADE;


--
-- TOC entry 5305 (class 2606 OID 43996)
-- Name: evento_compartidos evento_compartidos_externo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_compartidos
    ADD CONSTRAINT evento_compartidos_externo_id_foreign FOREIGN KEY (externo_id) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 5300 (class 2606 OID 43675)
-- Name: evento_empresas_participantes evento_empresas_participantes_empresa_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_empresas_participantes
    ADD CONSTRAINT evento_empresas_participantes_empresa_id_foreign FOREIGN KEY (empresa_id) REFERENCES public.empresas(user_id) ON DELETE CASCADE;


--
-- TOC entry 5301 (class 2606 OID 43670)
-- Name: evento_empresas_participantes evento_empresas_participantes_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_empresas_participantes
    ADD CONSTRAINT evento_empresas_participantes_evento_id_foreign FOREIGN KEY (evento_id) REFERENCES public.eventos(id) ON DELETE CASCADE;


--
-- TOC entry 5275 (class 2606 OID 36275)
-- Name: evento_integrantes_externos evento_integrantes_externos_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_integrantes_externos
    ADD CONSTRAINT evento_integrantes_externos_evento_id_foreign FOREIGN KEY (evento_id) REFERENCES public.eventos(id) ON DELETE CASCADE;


--
-- TOC entry 5276 (class 2606 OID 36280)
-- Name: evento_integrantes_externos evento_integrantes_externos_integrante_externo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_integrantes_externos
    ADD CONSTRAINT evento_integrantes_externos_integrante_externo_id_foreign FOREIGN KEY (integrante_externo_id) REFERENCES public.integrantes_externos(user_id) ON DELETE CASCADE;


--
-- TOC entry 5289 (class 2606 OID 43849)
-- Name: evento_participaciones evento_participaciones_estado_participacion_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_participaciones
    ADD CONSTRAINT evento_participaciones_estado_participacion_id_foreign FOREIGN KEY (estado_participacion_id) REFERENCES public.estados_participacion(id) ON DELETE SET NULL;


--
-- TOC entry 5290 (class 2606 OID 36395)
-- Name: evento_participaciones evento_participaciones_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_participaciones
    ADD CONSTRAINT evento_participaciones_evento_id_foreign FOREIGN KEY (evento_id) REFERENCES public.eventos(id) ON DELETE CASCADE;


--
-- TOC entry 5291 (class 2606 OID 36400)
-- Name: evento_participaciones evento_participaciones_externo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_participaciones
    ADD CONSTRAINT evento_participaciones_externo_id_foreign FOREIGN KEY (externo_id) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 5292 (class 2606 OID 44278)
-- Name: evento_participaciones evento_participaciones_registrado_por_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_participaciones
    ADD CONSTRAINT evento_participaciones_registrado_por_foreign FOREIGN KEY (registrado_por) REFERENCES public.usuarios(id_usuario) ON DELETE SET NULL;


--
-- TOC entry 5293 (class 2606 OID 44312)
-- Name: evento_participaciones evento_participaciones_usuario_modifico_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_participaciones
    ADD CONSTRAINT evento_participaciones_usuario_modifico_foreign FOREIGN KEY (usuario_modifico) REFERENCES public.usuarios(id_usuario) ON DELETE SET NULL;


--
-- TOC entry 5303 (class 2606 OID 43964)
-- Name: evento_participantes_no_registrados evento_participantes_no_registrados_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_participantes_no_registrados
    ADD CONSTRAINT evento_participantes_no_registrados_evento_id_foreign FOREIGN KEY (evento_id) REFERENCES public.eventos(id) ON DELETE CASCADE;


--
-- TOC entry 5270 (class 2606 OID 36230)
-- Name: evento_patrocinadores evento_patrocinadores_empresa_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_patrocinadores
    ADD CONSTRAINT evento_patrocinadores_empresa_id_foreign FOREIGN KEY (empresa_id) REFERENCES public.empresas(user_id) ON DELETE CASCADE;


--
-- TOC entry 5271 (class 2606 OID 36225)
-- Name: evento_patrocinadores evento_patrocinadores_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_patrocinadores
    ADD CONSTRAINT evento_patrocinadores_evento_id_foreign FOREIGN KEY (evento_id) REFERENCES public.eventos(id) ON DELETE CASCADE;


--
-- TOC entry 5294 (class 2606 OID 36422)
-- Name: evento_reacciones evento_reacciones_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_reacciones
    ADD CONSTRAINT evento_reacciones_evento_id_foreign FOREIGN KEY (evento_id) REFERENCES public.eventos(id) ON DELETE CASCADE;


--
-- TOC entry 5295 (class 2606 OID 44006)
-- Name: evento_reacciones evento_reacciones_externo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evento_reacciones
    ADD CONSTRAINT evento_reacciones_externo_id_foreign FOREIGN KEY (externo_id) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 5265 (class 2606 OID 43839)
-- Name: eventos eventos_ciudad_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eventos
    ADD CONSTRAINT eventos_ciudad_id_foreign FOREIGN KEY (ciudad_id) REFERENCES public.ciudades(id) ON DELETE SET NULL;


--
-- TOC entry 5266 (class 2606 OID 43859)
-- Name: eventos eventos_estado_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eventos
    ADD CONSTRAINT eventos_estado_evento_id_foreign FOREIGN KEY (estado_evento_id) REFERENCES public.estados_evento(id) ON DELETE SET NULL;


--
-- TOC entry 5267 (class 2606 OID 43844)
-- Name: eventos eventos_lugar_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eventos
    ADD CONSTRAINT eventos_lugar_id_foreign FOREIGN KEY (lugar_id) REFERENCES public.lugares(id) ON DELETE SET NULL;


--
-- TOC entry 5268 (class 2606 OID 36211)
-- Name: eventos eventos_ong_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eventos
    ADD CONSTRAINT eventos_ong_id_foreign FOREIGN KEY (ong_id) REFERENCES public.ongs(user_id) ON DELETE CASCADE;


--
-- TOC entry 5269 (class 2606 OID 43829)
-- Name: eventos eventos_tipo_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eventos
    ADD CONSTRAINT eventos_tipo_evento_id_foreign FOREIGN KEY (tipo_evento_id) REFERENCES public.tipos_evento(id) ON DELETE SET NULL;


--
-- TOC entry 5264 (class 2606 OID 36192)
-- Name: integrantes_externos integrantes_externos_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.integrantes_externos
    ADD CONSTRAINT integrantes_externos_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 5272 (class 2606 OID 36243)
-- Name: invitados invitados_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invitados
    ADD CONSTRAINT invitados_evento_id_foreign FOREIGN KEY (evento_id) REFERENCES public.eventos(id) ON DELETE CASCADE;


--
-- TOC entry 5302 (class 2606 OID 43757)
-- Name: lugares lugares_ciudad_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lugares
    ADD CONSTRAINT lugares_ciudad_id_foreign FOREIGN KEY (ciudad_id) REFERENCES public.ciudades(id) ON DELETE SET NULL;


--
-- TOC entry 5306 (class 2606 OID 44112)
-- Name: mega_evento_compartidos mega_evento_compartidos_externo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_compartidos
    ADD CONSTRAINT mega_evento_compartidos_externo_id_foreign FOREIGN KEY (externo_id) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 5307 (class 2606 OID 44107)
-- Name: mega_evento_compartidos mega_evento_compartidos_mega_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_compartidos
    ADD CONSTRAINT mega_evento_compartidos_mega_evento_id_foreign FOREIGN KEY (mega_evento_id) REFERENCES public.mega_eventos(mega_evento_id) ON DELETE CASCADE;


--
-- TOC entry 5280 (class 2606 OID 36312)
-- Name: mega_evento_ongs_organizadoras mega_evento_ongs_organizadoras_mega_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_ongs_organizadoras
    ADD CONSTRAINT mega_evento_ongs_organizadoras_mega_evento_id_foreign FOREIGN KEY (mega_evento_id) REFERENCES public.mega_eventos(mega_evento_id) ON DELETE CASCADE;


--
-- TOC entry 5281 (class 2606 OID 36317)
-- Name: mega_evento_ongs_organizadoras mega_evento_ongs_organizadoras_ong_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_ongs_organizadoras
    ADD CONSTRAINT mega_evento_ongs_organizadoras_ong_id_foreign FOREIGN KEY (ong_id) REFERENCES public.ongs(user_id) ON DELETE CASCADE;


--
-- TOC entry 5282 (class 2606 OID 36337)
-- Name: mega_evento_participantes_externos mega_evento_participantes_externos_integrante_externo_id_foreig; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_participantes_externos
    ADD CONSTRAINT mega_evento_participantes_externos_integrante_externo_id_foreig FOREIGN KEY (integrante_externo_id) REFERENCES public.integrantes_externos(user_id) ON DELETE CASCADE;


--
-- TOC entry 5283 (class 2606 OID 36332)
-- Name: mega_evento_participantes_externos mega_evento_participantes_externos_mega_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_participantes_externos
    ADD CONSTRAINT mega_evento_participantes_externos_mega_evento_id_foreign FOREIGN KEY (mega_evento_id) REFERENCES public.mega_eventos(mega_evento_id) ON DELETE CASCADE;


--
-- TOC entry 5284 (class 2606 OID 44533)
-- Name: mega_evento_participantes_externos mega_evento_participantes_externos_registrado_por_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_participantes_externos
    ADD CONSTRAINT mega_evento_participantes_externos_registrado_por_foreign FOREIGN KEY (registrado_por) REFERENCES public.usuarios(id_usuario) ON DELETE SET NULL;


--
-- TOC entry 5310 (class 2606 OID 44156)
-- Name: mega_evento_participantes_no_registrados mega_evento_participantes_no_registrados_mega_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_participantes_no_registrados
    ADD CONSTRAINT mega_evento_participantes_no_registrados_mega_evento_id_foreign FOREIGN KEY (mega_evento_id) REFERENCES public.mega_eventos(mega_evento_id) ON DELETE CASCADE;


--
-- TOC entry 5311 (class 2606 OID 44541)
-- Name: mega_evento_participantes_no_registrados mega_evento_participantes_no_registrados_registrado_por_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_participantes_no_registrados
    ADD CONSTRAINT mega_evento_participantes_no_registrados_registrado_por_foreign FOREIGN KEY (registrado_por) REFERENCES public.usuarios(id_usuario) ON DELETE SET NULL;


--
-- TOC entry 5285 (class 2606 OID 36357)
-- Name: mega_evento_patrocinadores mega_evento_patrocinadores_empresa_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_patrocinadores
    ADD CONSTRAINT mega_evento_patrocinadores_empresa_id_foreign FOREIGN KEY (empresa_id) REFERENCES public.empresas(user_id) ON DELETE CASCADE;


--
-- TOC entry 5286 (class 2606 OID 36352)
-- Name: mega_evento_patrocinadores mega_evento_patrocinadores_mega_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_patrocinadores
    ADD CONSTRAINT mega_evento_patrocinadores_mega_evento_id_foreign FOREIGN KEY (mega_evento_id) REFERENCES public.mega_eventos(mega_evento_id) ON DELETE CASCADE;


--
-- TOC entry 5308 (class 2606 OID 44138)
-- Name: mega_evento_reacciones mega_evento_reacciones_externo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_reacciones
    ADD CONSTRAINT mega_evento_reacciones_externo_id_foreign FOREIGN KEY (externo_id) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 5309 (class 2606 OID 44133)
-- Name: mega_evento_reacciones mega_evento_reacciones_mega_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_evento_reacciones
    ADD CONSTRAINT mega_evento_reacciones_mega_evento_id_foreign FOREIGN KEY (mega_evento_id) REFERENCES public.mega_eventos(mega_evento_id) ON DELETE CASCADE;


--
-- TOC entry 5277 (class 2606 OID 43834)
-- Name: mega_eventos mega_eventos_categoria_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_eventos
    ADD CONSTRAINT mega_eventos_categoria_id_foreign FOREIGN KEY (categoria_id) REFERENCES public.categorias_mega_eventos(id) ON DELETE SET NULL;


--
-- TOC entry 5278 (class 2606 OID 43864)
-- Name: mega_eventos mega_eventos_estado_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_eventos
    ADD CONSTRAINT mega_eventos_estado_evento_id_foreign FOREIGN KEY (estado_evento_id) REFERENCES public.estados_evento(id) ON DELETE SET NULL;


--
-- TOC entry 5279 (class 2606 OID 36300)
-- Name: mega_eventos mega_eventos_ong_organizadora_principal_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mega_eventos
    ADD CONSTRAINT mega_eventos_ong_organizadora_principal_foreign FOREIGN KEY (ong_organizadora_principal) REFERENCES public.ongs(user_id) ON DELETE CASCADE;


--
-- TOC entry 5312 (class 2606 OID 44686)
-- Name: model_has_permissions model_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5313 (class 2606 OID 44697)
-- Name: model_has_roles model_has_roles_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- TOC entry 5296 (class 2606 OID 36449)
-- Name: notificaciones notificaciones_evento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT notificaciones_evento_id_foreign FOREIGN KEY (evento_id) REFERENCES public.eventos(id) ON DELETE CASCADE;


--
-- TOC entry 5297 (class 2606 OID 36454)
-- Name: notificaciones notificaciones_externo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT notificaciones_externo_id_foreign FOREIGN KEY (externo_id) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 5298 (class 2606 OID 36444)
-- Name: notificaciones notificaciones_ong_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT notificaciones_ong_id_foreign FOREIGN KEY (ong_id) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 5299 (class 2606 OID 43854)
-- Name: notificaciones notificaciones_tipo_notificacion_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT notificaciones_tipo_notificacion_id_foreign FOREIGN KEY (tipo_notificacion_id) REFERENCES public.tipos_notificacion(id) ON DELETE SET NULL;


--
-- TOC entry 5316 (class 2606 OID 45032)
-- Name: ong_exportaciones_pdf ong_exportaciones_pdf_ong_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ong_exportaciones_pdf
    ADD CONSTRAINT ong_exportaciones_pdf_ong_id_foreign FOREIGN KEY (ong_id) REFERENCES public.ongs(user_id) ON DELETE CASCADE;


--
-- TOC entry 5262 (class 2606 OID 36168)
-- Name: ongs ongs_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ongs
    ADD CONSTRAINT ongs_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 5314 (class 2606 OID 44707)
-- Name: role_has_permissions role_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5315 (class 2606 OID 44712)
-- Name: role_has_permissions role_has_permissions_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- TOC entry 5288 (class 2606 OID 36377)
-- Name: sessions sessions_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 5287 (class 2606 OID 36367)
-- Name: super_admins super_admins_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.super_admins
    ADD CONSTRAINT super_admins_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 5261 (class 2606 OID 43869)
-- Name: usuarios usuarios_tipo_usuario_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_tipo_usuario_id_foreign FOREIGN KEY (tipo_usuario_id) REFERENCES public.tipos_usuario(id) ON DELETE SET NULL;


-- Completed on 2025-12-15 11:25:48

--
-- PostgreSQL database dump complete
--

\unrestrict QSIMDJbeyimwECWewTHvFRWbGCdKXvQiSZrqXOHghg0NhH6ptwmOOmdlSnA6Bdw

