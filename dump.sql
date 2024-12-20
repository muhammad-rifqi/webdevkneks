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
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    id_province integer DEFAULT 0,
    images character varying(255)
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
-- Name: api_meta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_meta (
    id integer NOT NULL,
    api character varying(255),
    statistic_id integer,
    statistic_name character varying(100)
);


ALTER TABLE public.api_meta OWNER TO postgres;

--
-- Name: api_meta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_meta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_meta_id_seq OWNER TO postgres;

--
-- Name: api_meta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.api_meta_id_seq OWNED BY public.api_meta.id;


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
-- Name: custom_page; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custom_page (
    id integer NOT NULL,
    name character varying(100),
    path character varying(100)
);


ALTER TABLE public.custom_page OWNER TO postgres;

--
-- Name: custom_page_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.custom_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_page_id_seq OWNER TO postgres;

--
-- Name: custom_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.custom_page_id_seq OWNED BY public.custom_page.id;


--
-- Name: db_event; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.db_event (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE public.db_event OWNER TO postgres;

--
-- Name: db_event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.db_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.db_event_id_seq OWNER TO postgres;

--
-- Name: db_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.db_event_id_seq OWNED BY public.db_event.id;


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
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    images character varying(255),
    directiorat_banner character varying(255)
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
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    hot_issue_category integer,
    tag character varying(100)
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
-- Name: khas_zone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.khas_zone (
    id integer NOT NULL,
    khas_zone integer NOT NULL,
    city integer NOT NULL,
    province integer NOT NULL,
    inauguration integer NOT NULL,
    tenant integer NOT NULL,
    inaugurated integer NOT NULL
);


ALTER TABLE public.khas_zone OWNER TO postgres;

--
-- Name: khas_zone_city_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.khas_zone_city_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.khas_zone_city_seq OWNER TO postgres;

--
-- Name: khas_zone_city_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.khas_zone_city_seq OWNED BY public.khas_zone.city;


--
-- Name: khas_zone_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.khas_zone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.khas_zone_id_seq OWNER TO postgres;

--
-- Name: khas_zone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.khas_zone_id_seq OWNED BY public.khas_zone.id;


--
-- Name: khas_zone_inaugurated_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.khas_zone_inaugurated_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.khas_zone_inaugurated_seq OWNER TO postgres;

--
-- Name: khas_zone_inaugurated_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.khas_zone_inaugurated_seq OWNED BY public.khas_zone.inaugurated;


--
-- Name: khas_zone_inauguration_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.khas_zone_inauguration_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.khas_zone_inauguration_seq OWNER TO postgres;

--
-- Name: khas_zone_inauguration_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.khas_zone_inauguration_seq OWNED BY public.khas_zone.inauguration;


--
-- Name: khas_zone_khas_zone_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.khas_zone_khas_zone_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.khas_zone_khas_zone_seq OWNER TO postgres;

--
-- Name: khas_zone_khas_zone_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.khas_zone_khas_zone_seq OWNED BY public.khas_zone.khas_zone;


--
-- Name: khas_zone_province_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.khas_zone_province_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.khas_zone_province_seq OWNER TO postgres;

--
-- Name: khas_zone_province_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.khas_zone_province_seq OWNED BY public.khas_zone.province;


--
-- Name: khas_zone_tenant_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.khas_zone_tenant_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.khas_zone_tenant_seq OWNER TO postgres;

--
-- Name: khas_zone_tenant_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.khas_zone_tenant_seq OWNED BY public.khas_zone.tenant;


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
-- Name: menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.menu (
    id integer NOT NULL,
    "menu_name	" character varying(100),
    menu_link character varying(100),
    orders integer
);


ALTER TABLE public.menu OWNER TO postgres;

--
-- Name: menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_id_seq OWNER TO postgres;

--
-- Name: menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.menu_id_seq OWNED BY public.menu.id;


--
-- Name: menu_sub; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.menu_sub (
    id integer NOT NULL,
    menu_id integer,
    submenu_name character varying(100),
    submenu_link character varying(100),
    orders integer
);


ALTER TABLE public.menu_sub OWNER TO postgres;

--
-- Name: menu_sub_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.menu_sub_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_sub_id_seq OWNER TO postgres;

--
-- Name: menu_sub_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.menu_sub_id_seq OWNED BY public.menu_sub.id;


--
-- Name: naration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.naration (
    id integer NOT NULL,
    statistic_id integer,
    statistic_name character varying(100),
    description text,
    description_en text
);


ALTER TABLE public.naration OWNER TO postgres;

--
-- Name: naration_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.naration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.naration_id_seq OWNER TO postgres;

--
-- Name: naration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.naration_id_seq OWNED BY public.naration.id;


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
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    tag character varying(100),
    directorat character varying(255)
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
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    tag character varying(100)
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
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    tag character varying(100)
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
    content_en text,
    web_identity character varying(100)
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
-- Name: province; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.province (
    id integer NOT NULL,
    province_name character varying(100)
);


ALTER TABLE public.province OWNER TO postgres;

--
-- Name: province_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.province_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.province_id_seq OWNER TO postgres;

--
-- Name: province_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.province_id_seq OWNED BY public.province.id;


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
-- Name: sourcedata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sourcedata (
    id integer NOT NULL,
    dataset character varying(255),
    source character varying(255),
    date_created timestamp without time zone
);


ALTER TABLE public.sourcedata OWNER TO postgres;

--
-- Name: sourcedata_detail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sourcedata_detail (
    id integer NOT NULL,
    "id_sourcedata	" integer,
    description text
);


ALTER TABLE public.sourcedata_detail OWNER TO postgres;

--
-- Name: sourcedata_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sourcedata_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sourcedata_detail_id_seq OWNER TO postgres;

--
-- Name: sourcedata_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sourcedata_detail_id_seq OWNED BY public.sourcedata_detail.id;


--
-- Name: sourcedata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sourcedata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sourcedata_id_seq OWNER TO postgres;

--
-- Name: sourcedata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sourcedata_id_seq OWNED BY public.sourcedata.id;


--
-- Name: statistic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.statistic (
    id integer NOT NULL,
    title character varying(255),
    title_en character varying(255),
    amount integer,
    date_created timestamp without time zone
);


ALTER TABLE public.statistic OWNER TO postgres;

--
-- Name: statistic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.statistic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statistic_id_seq OWNER TO postgres;

--
-- Name: statistic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.statistic_id_seq OWNED BY public.statistic.id;


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
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    description text
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
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    roles_user integer,
    active integer,
    approve character varying(50),
    ip_address character varying(50)
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
-- Name: web_identity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_identity (
    id integer NOT NULL,
    name character varying(191),
    active integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.web_identity OWNER TO postgres;

--
-- Name: web_identity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_identity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_identity_id_seq OWNER TO postgres;

--
-- Name: web_identity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.web_identity_id_seq OWNED BY public.web_identity.id;


--
-- Name: web_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_profile (
    id integer NOT NULL,
    web_title character varying(100),
    web_logo character varying(100),
    web_header character varying(100),
    web_color character varying(100)
);


ALTER TABLE public.web_profile OWNER TO postgres;

--
-- Name: web_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_profile_id_seq OWNER TO postgres;

--
-- Name: web_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.web_profile_id_seq OWNED BY public.web_profile.id;


--
-- Name: abouts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abouts ALTER COLUMN id SET DEFAULT nextval('public.abouts_id_seq'::regclass);


--
-- Name: agendas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas ALTER COLUMN id SET DEFAULT nextval('public.agendas_id_seq'::regclass);


--
-- Name: api_meta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_meta ALTER COLUMN id SET DEFAULT nextval('public.api_meta_id_seq'::regclass);


--
-- Name: banners id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Name: custom_page id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_page ALTER COLUMN id SET DEFAULT nextval('public.custom_page_id_seq'::regclass);


--
-- Name: db_event id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.db_event ALTER COLUMN id SET DEFAULT nextval('public.db_event_id_seq'::regclass);


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
-- Name: khas_zone id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.khas_zone ALTER COLUMN id SET DEFAULT nextval('public.khas_zone_id_seq'::regclass);


--
-- Name: khas_zone khas_zone; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.khas_zone ALTER COLUMN khas_zone SET DEFAULT nextval('public.khas_zone_khas_zone_seq'::regclass);


--
-- Name: khas_zone city; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.khas_zone ALTER COLUMN city SET DEFAULT nextval('public.khas_zone_city_seq'::regclass);


--
-- Name: khas_zone province; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.khas_zone ALTER COLUMN province SET DEFAULT nextval('public.khas_zone_province_seq'::regclass);


--
-- Name: khas_zone inauguration; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.khas_zone ALTER COLUMN inauguration SET DEFAULT nextval('public.khas_zone_inauguration_seq'::regclass);


--
-- Name: khas_zone tenant; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.khas_zone ALTER COLUMN tenant SET DEFAULT nextval('public.khas_zone_tenant_seq'::regclass);


--
-- Name: khas_zone inaugurated; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.khas_zone ALTER COLUMN inaugurated SET DEFAULT nextval('public.khas_zone_inaugurated_seq'::regclass);


--
-- Name: map id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.map ALTER COLUMN id SET DEFAULT nextval('public.map_id_seq'::regclass);


--
-- Name: menu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu ALTER COLUMN id SET DEFAULT nextval('public.menu_id_seq'::regclass);


--
-- Name: menu_sub id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_sub ALTER COLUMN id SET DEFAULT nextval('public.menu_sub_id_seq'::regclass);


--
-- Name: naration id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.naration ALTER COLUMN id SET DEFAULT nextval('public.naration_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: news_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_categories ALTER COLUMN id SET DEFAULT nextval('public.news_categories_id_seq'::regclass);


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
-- Name: province id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.province ALTER COLUMN id SET DEFAULT nextval('public.province_id_seq'::regclass);


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
-- Name: sourcedata id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sourcedata ALTER COLUMN id SET DEFAULT nextval('public.sourcedata_id_seq'::regclass);


--
-- Name: sourcedata_detail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sourcedata_detail ALTER COLUMN id SET DEFAULT nextval('public.sourcedata_detail_id_seq'::regclass);


--
-- Name: statistic id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statistic ALTER COLUMN id SET DEFAULT nextval('public.statistic_id_seq'::regclass);


--
-- Name: structure_assets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.structure_assets ALTER COLUMN id SET DEFAULT nextval('public.structure_assets_id_seq'::regclass);


--
-- Name: tagging id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tagging ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: web_identity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_identity ALTER COLUMN id SET DEFAULT nextval('public.web_identity_id_seq'::regclass);


--
-- Name: web_profile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_profile ALTER COLUMN id SET DEFAULT nextval('public.web_profile_id_seq'::regclass);


--
-- Data for Name: abouts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.abouts (id, title, title_en, tag, content, content_en, created_at, updated_at, deleted_at, web_identity, id_province, images) FROM stdin;
\.


--
-- Data for Name: agendas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agendas (id, title, title_en, url, "agenda_datetime	", created_at, updated_at, deleted_at, place, organizer, web_identity, link, project, description, agenda_endtime, manager, contributor, indicator, impact, opening, participants, area, loc, priority_participants, kbli, age, gender, province) FROM stdin;
\.


--
-- Data for Name: api_meta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.api_meta (id, api, statistic_id, statistic_name) FROM stdin;
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
-- Data for Name: custom_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custom_page (id, name, path) FROM stdin;
\.


--
-- Data for Name: db_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.db_event (id, name) FROM stdin;
\.


--
-- Data for Name: hot_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hot_categories (id, title, title_en, description, description_en, created_at, updated_at, deleted_at, web_identity, images, directiorat_banner) FROM stdin;
\.


--
-- Data for Name: hot_issues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hot_issues (id, title, title_en, excerpt, excerpt_en, content, content_en, image, is_publish, "hot_issue_datetime	", created_at, updated_at, deleted_at, hot_subcategory_id, web_identity, hot_issue_category, tag) FROM stdin;
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
-- Data for Name: khas_zone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.khas_zone (id, khas_zone, city, province, inauguration, tenant, inaugurated) FROM stdin;
\.


--
-- Data for Name: map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.map (id, embed, created_at, updated_at, web_identity) FROM stdin;
\.


--
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menu (id, "menu_name	", menu_link, orders) FROM stdin;
\.


--
-- Data for Name: menu_sub; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menu_sub (id, menu_id, submenu_name, submenu_link, orders) FROM stdin;
\.


--
-- Data for Name: naration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.naration (id, statistic_id, statistic_name, description, description_en) FROM stdin;
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news (id, title, excerpt, content, image, news_datetime, is_publish, created_at, updated_at, deleted_at, title_en, excerpt_en, content_en, "category_id	", web_identity, tag, directorat) FROM stdin;
\.


--
-- Data for Name: news_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_categories (id, title, created_at, updated_at, deleted_at, description, title_en, "description_en	", web_identity) FROM stdin;
\.


--
-- Data for Name: news_photos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_photos (id, title, photo, content, created_at, updated_at, deleted_at, news_datetime, title_en, content_en, web_identity, tag) FROM stdin;
\.


--
-- Data for Name: news_videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_videos (id, title, video, duration, content, created_at, updated_at, deleted_at, news_datetime, title_en, content_en, web_identity, tag) FROM stdin;
\.


--
-- Data for Name: opini; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.opini (id, title, title_en, content, content_en, web_identity) FROM stdin;
\.


--
-- Data for Name: province; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.province (id, province_name) FROM stdin;
1	Aceh
2	Sumatera Utara
3	Sumatera Barat
4	Riau
5	Jambi
6	Bengkulu
7	Sumatera Selatan
8	Bangka Belitung
9	Lampung
10	Banten
11	DKI Jakarta
12	Jawa Barat
13	Jawa Tengah
14	DI Yogyakarta
15	Jawa Timur
16	Bali 
17	Nusa Tenggara Barat
18	Nusa Tenggara Timur
19	Kalimantan Barat
20	Kalimantan Tengah
21	Kalimantan Selatan
22	Kalimantan Timur
23	Kalimantan Utara
24	Sulawesi Utara
25	Sulawesi Tengah
26	Sulawesi Selatan
27	Sulawesi Barat
28	Sulawesi Tenggara
29	Gorontalo
30	Maluku 
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
1	Super Admin	2019-05-09 08:05:42	2019-05-09 08:05:42	kneks
2	Admin	2019-05-09 08:05:42	2019-05-09 08:05:42	kneks
3	Contributor	2019-05-09 08:05:42	2019-05-09 08:05:42	kneks
4	Redaktur	2019-05-09 08:05:42	2019-05-09 08:05:42	kneks
5	Multimedia	2019-05-09 08:05:42	2019-05-09 08:05:42	kneks
6	KDEKS	2019-05-09 08:05:42	2019-05-09 08:05:42	kneks
7	Anggota	2019-05-09 08:05:42	2019-05-09 08:05:42	kneks
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
-- Data for Name: sourcedata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sourcedata (id, dataset, source, date_created) FROM stdin;
\.


--
-- Data for Name: sourcedata_detail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sourcedata_detail (id, "id_sourcedata	", description) FROM stdin;
\.


--
-- Data for Name: statistic; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.statistic (id, title, title_en, amount, date_created) FROM stdin;
\.


--
-- Data for Name: structure_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.structure_assets (id, name, "position", photo, tag, created_at, updated_at, deleted_at, web_identity, description) FROM stdin;
\.


--
-- Data for Name: tagging; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tagging (id, tagging) FROM stdin;
2	kneks
3	kdeks
4	syariah
1	indonesia
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, "email_verified_at	", password, remember_token, created_at, updated_at, role_id, web_identity, roles_user, active, approve, ip_address) FROM stdin;
1	Administrator	admin@admin.com	muhammad45rifki@gmail.com	827ccb0eea8a706c4c34a16891f84e7b		2019-05-09 08:05:42	2024-08-12 13:30:00	1	kneks	1	1	Y	140.213.21.237
\.


--
-- Data for Name: web_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_identity (id, name, active, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: web_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_profile (id, web_title, web_logo, web_header, web_color) FROM stdin;
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
-- Name: api_meta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_meta_id_seq', 1, false);


--
-- Name: banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banners_id_seq', 1, false);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacts_id_seq', 1, false);


--
-- Name: custom_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.custom_page_id_seq', 1, false);


--
-- Name: db_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.db_event_id_seq', 1, false);


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
-- Name: khas_zone_city_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.khas_zone_city_seq', 1, false);


--
-- Name: khas_zone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.khas_zone_id_seq', 1, false);


--
-- Name: khas_zone_inaugurated_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.khas_zone_inaugurated_seq', 1, false);


--
-- Name: khas_zone_inauguration_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.khas_zone_inauguration_seq', 1, false);


--
-- Name: khas_zone_khas_zone_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.khas_zone_khas_zone_seq', 1, false);


--
-- Name: khas_zone_province_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.khas_zone_province_seq', 1, false);


--
-- Name: khas_zone_tenant_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.khas_zone_tenant_seq', 1, false);


--
-- Name: map_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.map_id_seq', 1, false);


--
-- Name: menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_id_seq', 1, false);


--
-- Name: menu_sub_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_sub_id_seq', 1, false);


--
-- Name: naration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.naration_id_seq', 1, false);


--
-- Name: news_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_categories_id_seq', 1, false);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_id_seq', 1, false);


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
-- Name: province_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.province_id_seq', 30, true);


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

SELECT pg_catalog.setval('public.roles_id_seq', 7, true);


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
-- Name: sourcedata_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sourcedata_detail_id_seq', 1, false);


--
-- Name: sourcedata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sourcedata_id_seq', 1, false);


--
-- Name: statistic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.statistic_id_seq', 1, false);


--
-- Name: structure_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.structure_assets_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tags_id_seq', 5, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: web_identity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_identity_id_seq', 1, false);


--
-- Name: web_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_profile_id_seq', 1, false);


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
-- Name: api_meta api_meta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_meta
    ADD CONSTRAINT api_meta_pkey PRIMARY KEY (id);


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
-- Name: custom_page custom_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_page
    ADD CONSTRAINT custom_page_pkey PRIMARY KEY (id);


--
-- Name: db_event db_event_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.db_event
    ADD CONSTRAINT db_event_pkey PRIMARY KEY (id);


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
-- Name: menu menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id);


--
-- Name: menu_sub menu_sub_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_sub
    ADD CONSTRAINT menu_sub_pkey PRIMARY KEY (id);


--
-- Name: naration naration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.naration
    ADD CONSTRAINT naration_pkey PRIMARY KEY (id);


--
-- Name: news_categories news_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_categories
    ADD CONSTRAINT news_categories_pkey PRIMARY KEY (id);


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
-- Name: province province_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.province
    ADD CONSTRAINT province_pkey PRIMARY KEY (id);


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
-- Name: sourcedata_detail sourcedata_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sourcedata_detail
    ADD CONSTRAINT sourcedata_detail_pkey PRIMARY KEY (id);


--
-- Name: sourcedata sourcedata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sourcedata
    ADD CONSTRAINT sourcedata_pkey PRIMARY KEY (id);


--
-- Name: statistic statistic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statistic
    ADD CONSTRAINT statistic_pkey PRIMARY KEY (id);


--
-- Name: structure_assets structure_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.structure_assets
    ADD CONSTRAINT structure_assets_pkey PRIMARY KEY (id);


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
-- Name: web_identity web_identity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_identity
    ADD CONSTRAINT web_identity_pkey PRIMARY KEY (id);


--
-- Name: web_profile web_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_profile
    ADD CONSTRAINT web_profile_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

