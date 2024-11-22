--
-- PostgreSQL database dump
--

-- Dumped from database version 12.19
-- Dumped by pg_dump version 12.19

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
-- Name: abouts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.abouts (
    id integer NOT NULL,
    title character varying(100),
    title_en character varying(100),
    tag character varying(100),
    content text,
    content_en text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.abouts OWNER TO postgres;

--
-- Name: abouts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.abouts_id_seq OWNER TO postgres;

--
-- Name: abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.abouts_id_seq OWNED BY public.abouts.id;


--
-- Name: agendas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agendas (
    id integer NOT NULL,
    title character varying(100),
    title_en character varying(100),
    url character varying(255),
    "agenda_datetime	" timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    place character varying(100),
    organizer character varying(100),
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    link character varying(100),
    project character varying(100),
    description character varying(100),
    agenda_endtime timestamp without time zone,
    manager character varying(100),
    contributor character varying(100),
    indicator character varying(100),
    impact character varying(100),
    opening character varying(100),
    participants character varying(100),
    area text,
    loc character varying(100),
    priority_participants character varying(100),
    kbli character varying(100),
    age character varying(100),
    gender character varying(100),
    province character varying(100)
);


ALTER TABLE public.agendas OWNER TO postgres;

--
-- Name: agendas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agendas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agendas_id_seq OWNER TO postgres;

--
-- Name: agendas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agendas_id_seq OWNED BY public.agendas.id;


--
-- Name: banners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banners (
    id integer NOT NULL,
    image character varying(100),
    title character varying(100),
    title_en character varying(100),
    content text,
    content_en text,
    "order" integer,
    is_publish integer,
    created_at timestamp without time zone,
    "updated_at	" timestamp without time zone,
    deleted_at timestamp without time zone,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.banners OWNER TO postgres;

--
-- Name: banners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banners_id_seq OWNER TO postgres;

--
-- Name: banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banners_id_seq OWNED BY public.banners.id;


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts (
    id integer NOT NULL,
    address_building text,
    address character varying(255),
    phone_number character varying(100),
    fax_number character varying(100),
    email character varying(100),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.contacts OWNER TO postgres;

--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_id_seq OWNER TO postgres;

--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;


--
-- Name: hot_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hot_categories (
    id integer NOT NULL,
    title character varying(255),
    title_en character varying(255),
    description text,
    description_en text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.hot_categories OWNER TO postgres;

--
-- Name: hot_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hot_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hot_categories_id_seq OWNER TO postgres;

--
-- Name: hot_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hot_categories_id_seq OWNED BY public.hot_categories.id;


--
-- Name: hot_issues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hot_issues (
    id integer NOT NULL,
    title character varying(255),
    title_en character varying(255),
    excerpt character varying(255),
    excerpt_en character varying(100),
    content text,
    content_en text,
    image character varying(255),
    is_publish integer,
    "hot_issue_datetime	" timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    hot_subcategory_id integer,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.hot_issues OWNER TO postgres;

--
-- Name: hot_issues_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hot_issues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hot_issues_id_seq OWNER TO postgres;

--
-- Name: hot_issues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hot_issues_id_seq OWNED BY public.hot_issues.id;


--
-- Name: hot_subcategories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hot_subcategories (
    id integer NOT NULL,
    title character varying(100),
    title_en character varying(100),
    description text,
    description_en text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    hot_category_id integer,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.hot_subcategories OWNER TO postgres;

--
-- Name: hot_subcategories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hot_subcategories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hot_subcategories_id_seq OWNER TO postgres;

--
-- Name: hot_subcategories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hot_subcategories_id_seq OWNED BY public.hot_subcategories.id;


--
-- Name: institutions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.institutions (
    id integer NOT NULL,
    tag character varying(100),
    name character varying(100),
    logo character varying(100),
    link text,
    created_at timestamp without time zone,
    "updated_at	" timestamp without time zone,
    deleted_at timestamp without time zone,
    "order" integer,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.institutions OWNER TO postgres;

--
-- Name: institutions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.institutions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.institutions_id_seq OWNER TO postgres;

--
-- Name: institutions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.institutions_id_seq OWNED BY public.institutions.id;


--
-- Name: map; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.map (
    id integer NOT NULL,
    embed text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.map OWNER TO postgres;

--
-- Name: map_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.map_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.map_id_seq OWNER TO postgres;

--
-- Name: map_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.map_id_seq OWNED BY public.map.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(100),
    batch integer
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news (
    id integer NOT NULL,
    title character varying(100),
    excerpt character varying(100),
    content text,
    image character varying(100),
    news_datetime timestamp without time zone,
    is_publish integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    title_en character varying(100),
    excerpt_en character varying(100),
    content_en text,
    "category_id	" integer,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.news OWNER TO postgres;

--
-- Name: news_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_categories (
    id integer NOT NULL,
    title character varying(100),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    description text,
    title_en character varying(100),
    "description_en	" text,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.news_categories OWNER TO postgres;

--
-- Name: news_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_categories_id_seq OWNER TO postgres;

--
-- Name: news_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_categories_id_seq OWNED BY public.news_categories.id;


--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO postgres;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: news_news_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_news_category (
    news_id integer NOT NULL,
    "news_category_id	" integer
);


ALTER TABLE public.news_news_category OWNER TO postgres;

--
-- Name: news_news_category_news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_news_category_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_news_category_news_id_seq OWNER TO postgres;

--
-- Name: news_news_category_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_news_category_news_id_seq OWNED BY public.news_news_category.news_id;


--
-- Name: news_photos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_photos (
    id integer NOT NULL,
    title character varying(100),
    photo character varying(100),
    content text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    news_datetime timestamp without time zone,
    title_en character varying(100),
    content_en text,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.news_photos OWNER TO postgres;

--
-- Name: news_photos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_photos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_photos_id_seq OWNER TO postgres;

--
-- Name: news_photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_photos_id_seq OWNED BY public.news_photos.id;


--
-- Name: news_videos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_videos (
    id integer NOT NULL,
    title character varying(100),
    video character varying(100),
    duration timestamp without time zone,
    content text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    news_datetime timestamp without time zone,
    title_en character varying(100),
    content_en text,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.news_videos OWNER TO postgres;

--
-- Name: news_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_videos_id_seq OWNER TO postgres;

--
-- Name: news_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_videos_id_seq OWNED BY public.news_videos.id;


--
-- Name: opini; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.opini (
    id integer NOT NULL,
    title character varying(100),
    title_en character varying(100),
    content text,
    content_en text
);


ALTER TABLE public.opini OWNER TO postgres;

--
-- Name: opini_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.opini_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.opini_id_seq OWNER TO postgres;

--
-- Name: opini_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.opini_id_seq OWNED BY public.opini.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    id integer NOT NULL,
    email character varying(100),
    token character varying(100),
    created_at timestamp without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- Name: password_resets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.password_resets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.password_resets_id_seq OWNER TO postgres;

--
-- Name: password_resets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.password_resets_id_seq OWNED BY public.password_resets.id;


--
-- Name: pdes_menu_temp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pdes_menu_temp (
    id integer NOT NULL,
    value integer
);


ALTER TABLE public.pdes_menu_temp OWNER TO postgres;

--
-- Name: pdes_menu_temp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pdes_menu_temp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pdes_menu_temp_id_seq OWNER TO postgres;

--
-- Name: pdes_menu_temp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pdes_menu_temp_id_seq OWNED BY public.pdes_menu_temp.id;


--
-- Name: questbook; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questbook (
    id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    phone_number character varying(100),
    subjek character varying(100),
    pesan text
);


ALTER TABLE public.questbook OWNER TO postgres;

--
-- Name: questbook_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questbook_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questbook_id_seq OWNER TO postgres;

--
-- Name: questbook_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questbook_id_seq OWNED BY public.questbook.id;


--
-- Name: report_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.report_categories (
    id integer NOT NULL,
    title character varying(100),
    orders integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    title_en character varying(100),
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.report_categories OWNER TO postgres;

--
-- Name: report_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.report_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.report_categories_id_seq OWNER TO postgres;

--
-- Name: report_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.report_categories_id_seq OWNED BY public.report_categories.id;


--
-- Name: reports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reports (
    id integer NOT NULL,
    title character varying(100),
    date date,
    file character varying(100),
    content text,
    is_publish integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    report_category_id integer,
    title_en character varying(100),
    content_en text,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.reports OWNER TO postgres;

--
-- Name: reports_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reports_id_seq OWNER TO postgres;

--
-- Name: reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reports_id_seq OWNED BY public.reports.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    title character varying(100),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: scopes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.scopes (
    id integer NOT NULL,
    title character varying(100),
    icon character varying(100),
    image character varying(100),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    title_en character varying(100),
    "description_en	" text,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.scopes OWNER TO postgres;

--
-- Name: scopes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.scopes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scopes_id_seq OWNER TO postgres;

--
-- Name: scopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.scopes_id_seq OWNED BY public.scopes.id;


--
-- Name: sk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sk (
    id integer NOT NULL,
    title character varying(100),
    title_en character varying(100),
    content text,
    content_en text,
    doc_link character varying(255)
);


ALTER TABLE public.sk OWNER TO postgres;

--
-- Name: sk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sk_id_seq OWNER TO postgres;

--
-- Name: sk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sk_id_seq OWNED BY public.sk.id;


--
-- Name: social_medias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_medias (
    id integer NOT NULL,
    name character varying(100),
    logo character varying(100),
    link text,
    created_at timestamp without time zone,
    "updated_at	" timestamp without time zone,
    deleted_at timestamp without time zone,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.social_medias OWNER TO postgres;

--
-- Name: social_medias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_medias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_medias_id_seq OWNER TO postgres;

--
-- Name: social_medias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_medias_id_seq OWNED BY public.social_medias.id;


--
-- Name: structure_assets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.structure_assets (
    id integer NOT NULL,
    name character varying(100),
    "position" character varying(100),
    photo character varying(100),
    tag character varying(100),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.structure_assets OWNER TO postgres;

--
-- Name: structure_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.structure_assets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.structure_assets_id_seq OWNER TO postgres;

--
-- Name: structure_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.structure_assets_id_seq OWNED BY public.structure_assets.id;


--
-- Name: structures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.structures (
    id integer NOT NULL,
    xml text,
    svg text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.structures OWNER TO postgres;

--
-- Name: structures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.structures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.structures_id_seq OWNER TO postgres;

--
-- Name: structures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.structures_id_seq OWNED BY public.structures.id;


--
-- Name: syariah; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.syariah (
    id integer NOT NULL,
    name character varying(100),
    link character varying(100),
    menu_id integer,
    submenu_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    "order" character varying(100)
);


ALTER TABLE public.syariah OWNER TO postgres;

--
-- Name: syariah_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.syariah_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.syariah_id_seq OWNER TO postgres;

--
-- Name: syariah_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.syariah_id_seq OWNED BY public.syariah.id;


--
-- Name: syariah_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.syariah_menu (
    id integer NOT NULL,
    name character varying(100),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    is_single integer,
    "order" character varying(100)
);


ALTER TABLE public.syariah_menu OWNER TO postgres;

--
-- Name: syariah_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.syariah_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.syariah_menu_id_seq OWNER TO postgres;

--
-- Name: syariah_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.syariah_menu_id_seq OWNED BY public.syariah_menu.id;


--
-- Name: syariah_overview; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.syariah_overview (
    id integer NOT NULL,
    image character varying(100),
    title character varying(100),
    is_publish integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    "order" character varying(100),
    link character varying(100)
);


ALTER TABLE public.syariah_overview OWNER TO postgres;

--
-- Name: syariah_overview_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.syariah_overview_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.syariah_overview_id_seq OWNER TO postgres;

--
-- Name: syariah_overview_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.syariah_overview_id_seq OWNED BY public.syariah_overview.id;


--
-- Name: syariah_submenu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.syariah_submenu (
    id integer NOT NULL,
    name character varying(100),
    menu_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    "order" character varying(100)
);


ALTER TABLE public.syariah_submenu OWNER TO postgres;

--
-- Name: syariah_submenu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.syariah_submenu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.syariah_submenu_id_seq OWNER TO postgres;

--
-- Name: syariah_submenu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.syariah_submenu_id_seq OWNED BY public.syariah_submenu.id;


--
-- Name: tagging; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tagging (
    id integer NOT NULL,
    tagging character varying(100)
);


ALTER TABLE public.tagging OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tagging.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    "email_verified_at	" character varying(100),
    password character varying(100),
    remember_token character varying(100),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    role_id integer,
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: abouts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abouts ALTER COLUMN id SET DEFAULT nextval('public.abouts_id_seq'::regclass);


--
-- Name: agendas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas ALTER COLUMN id SET DEFAULT nextval('public.agendas_id_seq'::regclass);


--
-- Name: banners id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Name: hot_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hot_categories ALTER COLUMN id SET DEFAULT nextval('public.hot_categories_id_seq'::regclass);


--
-- Name: hot_issues id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hot_issues ALTER COLUMN id SET DEFAULT nextval('public.hot_issues_id_seq'::regclass);


--
-- Name: hot_subcategories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hot_subcategories ALTER COLUMN id SET DEFAULT nextval('public.hot_subcategories_id_seq'::regclass);


--
-- Name: institutions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institutions ALTER COLUMN id SET DEFAULT nextval('public.institutions_id_seq'::regclass);


--
-- Name: map id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.map ALTER COLUMN id SET DEFAULT nextval('public.map_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: news_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_categories ALTER COLUMN id SET DEFAULT nextval('public.news_categories_id_seq'::regclass);


--
-- Name: news_news_category news_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_news_category ALTER COLUMN news_id SET DEFAULT nextval('public.news_news_category_news_id_seq'::regclass);


--
-- Name: news_photos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photos ALTER COLUMN id SET DEFAULT nextval('public.news_photos_id_seq'::regclass);


--
-- Name: news_videos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_videos ALTER COLUMN id SET DEFAULT nextval('public.news_videos_id_seq'::regclass);


--
-- Name: opini id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opini ALTER COLUMN id SET DEFAULT nextval('public.opini_id_seq'::regclass);


--
-- Name: password_resets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_resets ALTER COLUMN id SET DEFAULT nextval('public.password_resets_id_seq'::regclass);


--
-- Name: pdes_menu_temp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pdes_menu_temp ALTER COLUMN id SET DEFAULT nextval('public.pdes_menu_temp_id_seq'::regclass);


--
-- Name: questbook id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questbook ALTER COLUMN id SET DEFAULT nextval('public.questbook_id_seq'::regclass);


--
-- Name: report_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_categories ALTER COLUMN id SET DEFAULT nextval('public.report_categories_id_seq'::regclass);


--
-- Name: reports id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: scopes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scopes ALTER COLUMN id SET DEFAULT nextval('public.scopes_id_seq'::regclass);


--
-- Name: sk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sk ALTER COLUMN id SET DEFAULT nextval('public.sk_id_seq'::regclass);


--
-- Name: social_medias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_medias ALTER COLUMN id SET DEFAULT nextval('public.social_medias_id_seq'::regclass);


--
-- Name: structure_assets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.structure_assets ALTER COLUMN id SET DEFAULT nextval('public.structure_assets_id_seq'::regclass);


--
-- Name: structures id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.structures ALTER COLUMN id SET DEFAULT nextval('public.structures_id_seq'::regclass);


--
-- Name: syariah id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.syariah ALTER COLUMN id SET DEFAULT nextval('public.syariah_id_seq'::regclass);


--
-- Name: syariah_menu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.syariah_menu ALTER COLUMN id SET DEFAULT nextval('public.syariah_menu_id_seq'::regclass);


--
-- Name: syariah_overview id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.syariah_overview ALTER COLUMN id SET DEFAULT nextval('public.syariah_overview_id_seq'::regclass);


--
-- Name: syariah_submenu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.syariah_submenu ALTER COLUMN id SET DEFAULT nextval('public.syariah_submenu_id_seq'::regclass);


--
-- Name: tagging id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tagging ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: abouts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.abouts (id, title, title_en, tag, content, content_en, created_at, updated_at, deleted_at, web_identity) FROM stdin;
\.


--
-- Data for Name: agendas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agendas (id, title, title_en, url, "agenda_datetime	", created_at, updated_at, deleted_at, place, organizer, web_identity, link, project, description, agenda_endtime, manager, contributor, indicator, impact, opening, participants, area, loc, priority_participants, kbli, age, gender, province) FROM stdin;
\.


--
-- Data for Name: banners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banners (id, image, title, title_en, content, content_en, "order", is_publish, created_at, "updated_at	", deleted_at, web_identity) FROM stdin;
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts (id, address_building, address, phone_number, fax_number, email, created_at, updated_at, deleted_at, web_identity) FROM stdin;
\.


--
-- Data for Name: hot_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hot_categories (id, title, title_en, description, description_en, created_at, updated_at, deleted_at, web_identity) FROM stdin;
\.


--
-- Data for Name: hot_issues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hot_issues (id, title, title_en, excerpt, excerpt_en, content, content_en, image, is_publish, "hot_issue_datetime	", created_at, updated_at, deleted_at, hot_subcategory_id, web_identity) FROM stdin;
\.


--
-- Data for Name: hot_subcategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hot_subcategories (id, title, title_en, description, description_en, created_at, updated_at, deleted_at, hot_category_id, web_identity) FROM stdin;
\.


--
-- Data for Name: institutions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.institutions (id, tag, name, logo, link, created_at, "updated_at	", deleted_at, "order", web_identity) FROM stdin;
\.


--
-- Data for Name: map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.map (id, embed, created_at, updated_at, web_identity) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news (id, title, excerpt, content, image, news_datetime, is_publish, created_at, updated_at, deleted_at, title_en, excerpt_en, content_en, "category_id	", web_identity) FROM stdin;
\.


--
-- Data for Name: news_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_categories (id, title, created_at, updated_at, deleted_at, description, title_en, "description_en	", web_identity) FROM stdin;
\.


--
-- Data for Name: news_news_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_news_category (news_id, "news_category_id	") FROM stdin;
\.


--
-- Data for Name: news_photos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_photos (id, title, photo, content, created_at, updated_at, deleted_at, news_datetime, title_en, content_en, web_identity) FROM stdin;
\.


--
-- Data for Name: news_videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_videos (id, title, video, duration, content, created_at, updated_at, deleted_at, news_datetime, title_en, content_en, web_identity) FROM stdin;
\.


--
-- Data for Name: opini; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.opini (id, title, title_en, content, content_en) FROM stdin;
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (id, email, token, created_at) FROM stdin;
\.


--
-- Data for Name: pdes_menu_temp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pdes_menu_temp (id, value) FROM stdin;
\.


--
-- Data for Name: questbook; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questbook (id, name, email, phone_number, subjek, pesan) FROM stdin;
\.


--
-- Data for Name: report_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.report_categories (id, title, orders, created_at, updated_at, deleted_at, title_en, web_identity) FROM stdin;
\.


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reports (id, title, date, file, content, is_publish, created_at, updated_at, deleted_at, report_category_id, title_en, content_en, web_identity) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, title, created_at, updated_at, web_identity) FROM stdin;
\.


--
-- Data for Name: scopes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.scopes (id, title, icon, image, description, created_at, updated_at, deleted_at, title_en, "description_en	", web_identity) FROM stdin;
\.


--
-- Data for Name: sk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sk (id, title, title_en, content, content_en, doc_link) FROM stdin;
\.


--
-- Data for Name: social_medias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_medias (id, name, logo, link, created_at, "updated_at	", deleted_at, web_identity) FROM stdin;
\.


--
-- Data for Name: structure_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.structure_assets (id, name, "position", photo, tag, created_at, updated_at, deleted_at, web_identity) FROM stdin;
\.


--
-- Data for Name: structures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.structures (id, xml, svg, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: syariah; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.syariah (id, name, link, menu_id, submenu_id, created_at, updated_at, deleted_at, "order") FROM stdin;
\.


--
-- Data for Name: syariah_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.syariah_menu (id, name, created_at, updated_at, deleted_at, is_single, "order") FROM stdin;
\.


--
-- Data for Name: syariah_overview; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.syariah_overview (id, image, title, is_publish, created_at, updated_at, deleted_at, "order", link) FROM stdin;
\.


--
-- Data for Name: syariah_submenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.syariah_submenu (id, name, menu_id, created_at, updated_at, deleted_at, "order") FROM stdin;
\.


--
-- Data for Name: tagging; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tagging (id, tagging) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, "email_verified_at	", password, remember_token, created_at, updated_at, role_id, web_identity) FROM stdin;
\.


--
-- Name: abouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.abouts_id_seq', 2, true);


--
-- Name: agendas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agendas_id_seq', 1, false);


--
-- Name: banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banners_id_seq', 1, false);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacts_id_seq', 1, false);


--
-- Name: hot_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hot_categories_id_seq', 1, false);


--
-- Name: hot_issues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hot_issues_id_seq', 1, false);


--
-- Name: hot_subcategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hot_subcategories_id_seq', 1, false);


--
-- Name: institutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.institutions_id_seq', 1, false);


--
-- Name: map_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.map_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 1, false);


--
-- Name: news_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_categories_id_seq', 1, false);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_id_seq', 1, false);


--
-- Name: news_news_category_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_news_category_news_id_seq', 1, false);


--
-- Name: news_photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_photos_id_seq', 1, false);


--
-- Name: news_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_videos_id_seq', 1, false);


--
-- Name: opini_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.opini_id_seq', 1, false);


--
-- Name: password_resets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.password_resets_id_seq', 1, false);


--
-- Name: pdes_menu_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pdes_menu_temp_id_seq', 1, false);


--
-- Name: questbook_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questbook_id_seq', 1, false);


--
-- Name: report_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.report_categories_id_seq', 1, false);


--
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reports_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- Name: scopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.scopes_id_seq', 1, false);


--
-- Name: sk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sk_id_seq', 1, false);


--
-- Name: social_medias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_medias_id_seq', 1, false);


--
-- Name: structure_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.structure_assets_id_seq', 1, false);


--
-- Name: structures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.structures_id_seq', 1, false);


--
-- Name: syariah_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.syariah_id_seq', 1, false);


--
-- Name: syariah_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.syariah_menu_id_seq', 1, false);


--
-- Name: syariah_overview_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.syariah_overview_id_seq', 1, false);


--
-- Name: syariah_submenu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.syariah_submenu_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: abouts abouts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);


--
-- Name: agendas agendas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas
    ADD CONSTRAINT agendas_pkey PRIMARY KEY (id);


--
-- Name: banners banners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: hot_categories hot_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hot_categories
    ADD CONSTRAINT hot_categories_pkey PRIMARY KEY (id);


--
-- Name: hot_issues hot_issues_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hot_issues
    ADD CONSTRAINT hot_issues_pkey PRIMARY KEY (id);


--
-- Name: hot_subcategories hot_subcategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hot_subcategories
    ADD CONSTRAINT hot_subcategories_pkey PRIMARY KEY (id);


--
-- Name: institutions institutions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_pkey PRIMARY KEY (id);


--
-- Name: map map_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.map
    ADD CONSTRAINT map_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: news_categories news_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_categories
    ADD CONSTRAINT news_categories_pkey PRIMARY KEY (id);


--
-- Name: news_news_category news_news_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_news_category
    ADD CONSTRAINT news_news_category_pkey PRIMARY KEY (news_id);


--
-- Name: news_photos news_photos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photos
    ADD CONSTRAINT news_photos_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: news_videos news_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_videos
    ADD CONSTRAINT news_videos_pkey PRIMARY KEY (id);


--
-- Name: password_resets password_resets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_resets
    ADD CONSTRAINT password_resets_pkey PRIMARY KEY (id);


--
-- Name: pdes_menu_temp pdes_menu_temp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pdes_menu_temp
    ADD CONSTRAINT pdes_menu_temp_pkey PRIMARY KEY (id);


--
-- Name: report_categories report_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_categories
    ADD CONSTRAINT report_categories_pkey PRIMARY KEY (id);


--
-- Name: reports reports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: scopes scopes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scopes
    ADD CONSTRAINT scopes_pkey PRIMARY KEY (id);


--
-- Name: social_medias social_medias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_medias
    ADD CONSTRAINT social_medias_pkey PRIMARY KEY (id);


--
-- Name: structure_assets structure_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.structure_assets
    ADD CONSTRAINT structure_assets_pkey PRIMARY KEY (id);


--
-- Name: structures structures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.structures
    ADD CONSTRAINT structures_pkey PRIMARY KEY (id);


--
-- Name: syariah_menu syariah_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.syariah_menu
    ADD CONSTRAINT syariah_menu_pkey PRIMARY KEY (id);


--
-- Name: syariah_overview syariah_overview_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.syariah_overview
    ADD CONSTRAINT syariah_overview_pkey PRIMARY KEY (id);


--
-- Name: syariah syariah_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.syariah
    ADD CONSTRAINT syariah_pkey PRIMARY KEY (id);


--
-- Name: syariah_submenu syariah_submenu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.syariah_submenu
    ADD CONSTRAINT syariah_submenu_pkey PRIMARY KEY (id);


--
-- Name: tagging tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tagging
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

