--
-- PostgreSQL database dump
--

-- Dumped from database version 12.19
-- Dumped by pg_dump version 12.19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
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
    about character varying(100) DEFAULT 'null'::character varying,
    about_en character varying(100) DEFAULT 'null'::character varying,
    tag character varying(100),
    history text DEFAULT 'null'::text,
    history_en text DEFAULT 'null'::text,
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    id_province integer DEFAULT 0,
    images character varying(255),
    about_content text DEFAULT 'null'::text,
    about_content_en text DEFAULT 'null'::text,
    history_content text DEFAULT 'null'::text,
    history_content_en text DEFAULT 'null'::text,
    legal_foundation character varying(255) DEFAULT 'null'::character varying,
    legal_foundation_en character varying(255) DEFAULT 'null'::character varying,
    legal_foundation_content text DEFAULT 'null'::text,
    legal_foundation_content_en text DEFAULT 'null'::text,
    logo_philosophy character varying(255) DEFAULT 'null'::character varying,
    logo_philosophy_en character varying(255) DEFAULT 'null'::character varying,
    logo_philosophy_content text DEFAULT 'null'::text,
    logo_philosophy_content_en text DEFAULT 'null'::text,
    kneks_task character varying(255) DEFAULT 'null'::character varying,
    kneks_task_en character varying(255) DEFAULT 'null'::character varying,
    kneks_task_content text DEFAULT 'null'::text,
    kneks_task_content_en text DEFAULT 'null'::text,
    function character varying(255) DEFAULT 'null'::character varying,
    function_en character varying(255) DEFAULT 'null'::character varying,
    function_content text DEFAULT 'null'::text,
    function_content_en text DEFAULT 'null'::text
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
    title text,
    title_en text,
    url text,
    agenda_datetime timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    place text,
    organizer text,
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    link text,
    project text,
    description text,
    agenda_endtime timestamp without time zone,
    manager text,
    contributor text,
    indicator text,
    impact text,
    opening text,
    participants text,
    area text,
    loc text,
    priority_participants text,
    kbli character varying(255),
    age character varying(255),
    gender character varying(255),
    province character varying(255)
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
-- Name: data_dashboard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.data_dashboard (
    id integer NOT NULL,
    api character varying(255),
    statistic_id integer,
    statistic_name character varying(100),
    short_name character varying(255) DEFAULT 'null'::character varying,
    long_name character varying(255) DEFAULT 'null'::character varying,
    sub_statistic character varying(255) DEFAULT 'null'::character varying,
    short_name_en character varying(255) DEFAULT 'null'::character varying,
    long_name_en character varying(255) DEFAULT 'null'::character varying,
    naration text,
    tagging character varying(255) DEFAULT 'null'::character varying,
    directorat character varying(255) DEFAULT 'null'::character varying,
    kdeks character varying(255) DEFAULT 'null'::character varying,
    publish character varying(255) DEFAULT NULL::character varying,
    dataset character varying DEFAULT 'null'::character varying,
    month character varying DEFAULT 'null'::character varying
);


ALTER TABLE public.data_dashboard OWNER TO postgres;

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

ALTER SEQUENCE public.api_meta_id_seq OWNED BY public.data_dashboard.id;


--
-- Name: banner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banner (
    id integer NOT NULL,
    name character varying(100),
    path character varying(100),
    flag character varying(100) DEFAULT 'null'::character varying,
    date_created date,
    status character varying(255) DEFAULT 'null'::character varying
);


ALTER TABLE public.banner OWNER TO postgres;

--
-- Name: slideshow; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.slideshow (
    id integer NOT NULL,
    image character varying(100),
    title character varying(100),
    title_en character varying(100),
    content text,
    content_en text,
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    status character varying(100) DEFAULT 'null'::character varying,
    date_created date
);


ALTER TABLE public.slideshow OWNER TO postgres;

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

ALTER SEQUENCE public.banners_id_seq OWNED BY public.slideshow.id;


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

ALTER SEQUENCE public.custom_page_id_seq OWNED BY public.banner.id;


--
-- Name: data_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.data_menu (
    id integer NOT NULL,
    title character varying(255),
    title_en character varying(255),
    long_title character varying(255) DEFAULT 'null'::character varying,
    long_title_en character varying(255) DEFAULT 'null'::character varying
);


ALTER TABLE public.data_menu OWNER TO postgres;

--
-- Name: data_slider; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.data_slider (
    id integer NOT NULL,
    title character varying(255) DEFAULT 'null'::character varying,
    title_en character varying(255) DEFAULT 'null'::character varying,
    amount integer DEFAULT 0,
    date_created character varying(255) DEFAULT 'null'::character varying,
    image character varying(255) DEFAULT 'null'::character varying,
    link character varying(255) DEFAULT 'null'::character varying,
    publish integer DEFAULT 0
);


ALTER TABLE public.data_slider OWNER TO postgres;

--
-- Name: data_submenu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.data_submenu (
    id integer NOT NULL,
    short_name character varying(100) DEFAULT 'NULL'::character varying,
    long_name character varying(100) DEFAULT 'NULL'::character varying,
    id_statistic integer DEFAULT 0,
    short_name_en character varying(255) DEFAULT 'null'::character varying,
    long_name_en character varying(255) DEFAULT 'null'::character varying,
    statistic_name character varying(255) DEFAULT 'null'::character varying
);


ALTER TABLE public.data_submenu OWNER TO postgres;

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
-- Name: devisi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.devisi (
    id integer NOT NULL,
    title character varying(255),
    description text,
    directorats_id integer DEFAULT 0,
    directorats_name character varying(255) DEFAULT 'null'::character varying,
    title_en character varying(255) DEFAULT 'null'::character varying,
    description_en character varying(255) DEFAULT 'null'::character varying
);


ALTER TABLE public.devisi OWNER TO postgres;

--
-- Name: devisi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.devisi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.devisi_id_seq OWNER TO postgres;

--
-- Name: devisi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.devisi_id_seq OWNED BY public.devisi.id;


--
-- Name: directorats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.directorats (
    id integer NOT NULL,
    title character varying(255) DEFAULT 'null'::character varying,
    title_en character varying(255) DEFAULT 'null'::character varying,
    description text DEFAULT 'NULL'::text,
    description_en text DEFAULT 'NULL'::text,
    web_identity character varying(255) DEFAULT 'kneks'::character varying,
    images character varying(255) DEFAULT 'null'::character varying,
    directiorat_banner character varying(255) DEFAULT 'null'::character varying,
    id_province integer DEFAULT 0,
    province_name character varying(255) DEFAULT 'null'::character varying
);


ALTER TABLE public.directorats OWNER TO postgres;

--
-- Name: TABLE directorats; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.directorats IS 'direktorats';


--
-- Name: directorats_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.directorats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directorats_id_seq OWNER TO postgres;

--
-- Name: directorats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.directorats_id_seq OWNED BY public.directorats.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files (
    id integer NOT NULL,
    title character varying(255),
    date date,
    file character varying(255),
    content text,
    is_publish character varying(255) DEFAULT 'null'::character varying,
    report_category_id integer,
    title_en character varying(255),
    content_en text,
    web_identity character varying(255) DEFAULT 'kneks'::character varying,
    writer character(255) DEFAULT 'null'::bpchar,
    publisher character varying(255) DEFAULT 'null'::character varying,
    synopsis text,
    isbn character varying(255) DEFAULT 'null'::character varying,
    number_of_pages integer DEFAULT 0,
    width integer DEFAULT 0,
    height integer DEFAULT 0,
    tagging character varying(255) DEFAULT 'null'::character varying,
    directorat character varying(255) DEFAULT 'null'::character varying,
    id_province character varying(255) DEFAULT 'null'::character varying,
    report_category_name character varying(255) DEFAULT 'null'::character varying,
    users_id integer DEFAULT 0,
    users_name character varying(255) DEFAULT 'null'::character varying,
    passcode character varying(255) DEFAULT 'null'::character varying,
    downloadable character varying(50) DEFAULT 'null'::character varying
);


ALTER TABLE public.files OWNER TO postgres;

--
-- Name: files_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_categories (
    id integer NOT NULL,
    title character varying(100),
    title_en character varying(100),
    web_identity character varying(100) DEFAULT 'kneks'::character varying
);


ALTER TABLE public.files_categories OWNER TO postgres;

--
-- Name: hot_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hot_categories (
    id integer NOT NULL,
    title character varying(255),
    title_en character varying(255),
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
    is_publish character varying(255) DEFAULT 'null'::character varying,
    hot_issue_datetime timestamp without time zone,
    hot_subcategory_id integer,
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    hot_issue_category integer,
    tag character varying(100),
    id_province character varying(255) DEFAULT NULL::character varying,
    hot_subcategory_name character varying(255) DEFAULT 'null'::character varying,
    directorat character varying(255) DEFAULT 'null'::character varying
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
    hot_category_id integer,
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    hot_category_name character varying(255) DEFAULT 'null'::character varying
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
    "order" integer DEFAULT 0,
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
-- Name: ip_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ip_address (
    id integer NOT NULL,
    approve character varying(255) DEFAULT 'N'::character varying,
    approve_by character varying(255) DEFAULT 'NULL'::character varying,
    approve_date timestamp without time zone,
    ip character varying(100),
    email character varying(255)
);


ALTER TABLE public.ip_address OWNER TO postgres;

--
-- Name: ip_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ip_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ip_address_id_seq OWNER TO postgres;

--
-- Name: ip_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ip_address_id_seq OWNED BY public.ip_address.id;


--
-- Name: kdeks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kdeks (
    id integer NOT NULL,
    title character varying(255) DEFAULT 'null'::character varying,
    title_en character varying(255) DEFAULT 'null'::character varying,
    abouts text DEFAULT 'null'::text,
    abouts_en text DEFAULT 'null'::text,
    web_identity character varying(255) DEFAULT 'kdeks'::character varying,
    id_province integer DEFAULT 0,
    images character varying(255) DEFAULT 'null'::character varying,
    historys text DEFAULT 'null'::text,
    historys_en text DEFAULT 'null'::text,
    province_name character varying(255) DEFAULT 'null'::character varying,
    structure character varying(255) DEFAULT 'null'::character varying,
    sk character varying(255) DEFAULT 'null'::character varying,
    twitter character varying(255) DEFAULT 'null'::character varying,
    facebook character varying(255) DEFAULT 'null'::character varying,
    linkedin character varying(255) DEFAULT 'null'::character varying,
    instagram character varying(255) DEFAULT 'null'::character varying,
    youtube character varying(255) DEFAULT 'null'::character varying,
    address text DEFAULT 'null'::text,
    phone_number character varying(255) DEFAULT 'null'::character varying,
    fax character varying(255) DEFAULT 'null'::character varying,
    email character varying(255) DEFAULT 'null'::character varying,
    maps text DEFAULT 'null'::text
);


ALTER TABLE public.kdeks OWNER TO postgres;

--
-- Name: TABLE kdeks; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.kdeks IS 'kdeks';


--
-- Name: kdeks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kdeks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kdeks_id_seq OWNER TO postgres;

--
-- Name: kdeks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kdeks_id_seq OWNED BY public.kdeks.id;


--
-- Name: khas_zone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.khas_zone (
    id integer NOT NULL,
    khas_zone character varying(100),
    city character varying(100),
    province character varying(100),
    inauguration character varying(100),
    tenant integer,
    inaugurated character varying(100)
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
    menu_name character varying(100),
    menu_link character varying(100),
    orders integer,
    menu_name_en character varying(255) DEFAULT 'null'::character varying
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
    orders integer,
    submenu_name_en character varying(255) DEFAULT 'null'::character varying,
    menu_name character varying(255) DEFAULT 'null'::character varying
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
    dashboard_id integer DEFAULT 0,
    dashboard_name character varying(100) DEFAULT 'null'::character varying,
    description text,
    month character varying(255) DEFAULT 'null'::character varying
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
    title text,
    excerpt text,
    content text,
    image text,
    news_datetime timestamp without time zone,
    is_publish character varying(255) DEFAULT 'null'::character varying,
    title_en text,
    excerpt_en text,
    content_en text,
    category_id integer DEFAULT 0,
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    tag text,
    directorat text,
    users_id integer DEFAULT 0,
    id_province character varying(255) DEFAULT 'null'::character varying,
    users_name character varying(255) DEFAULT 'null'::character varying
);


ALTER TABLE public.news OWNER TO postgres;

--
-- Name: news_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_categories (
    id integer NOT NULL,
    title character varying(100),
    description text,
    title_en character varying(100),
    description_en text,
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
    photo character varying(255),
    content text,
    photos_datetime timestamp without time zone,
    title_en character varying(100),
    content_en text,
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    tag character varying(100),
    directorat character varying(255) DEFAULT 'null'::character varying,
    id_province character varying(255) DEFAULT 'null'::character varying,
    is_publish character varying(255) DEFAULT 'null'::character varying,
    users_id integer DEFAULT 0,
    users_name character varying(255) DEFAULT 'null'::character varying
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
    duration time without time zone,
    content text,
    videos_datetime timestamp without time zone,
    title_en character varying(100),
    content_en text,
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    tag character varying(100),
    directorat character varying(255) DEFAULT 'null'::character varying,
    id_province character varying(255) DEFAULT 'null'::character varying,
    is_publish character varying(255) DEFAULT 'null'::character varying,
    users_id integer DEFAULT 0,
    users_name character varying(255) DEFAULT 'null'::character varying
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
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    tagging character varying(255) DEFAULT 'null'::character varying,
    directorat character varying(255) DEFAULT 'null'::character varying,
    is_publish character varying(255) DEFAULT NULL::character varying,
    date_created date,
    users_id integer DEFAULT 0,
    users_name character varying(255) DEFAULT 'null'::character varying,
    id_province character varying(255) DEFAULT NULL::character varying
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
-- Name: pejabat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pejabat (
    id integer NOT NULL,
    name character varying(100),
    "position" character varying(100),
    photo character varying(255),
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    description text,
    is_publish character varying(255) DEFAULT 'null'::character varying,
    position_en character varying(255) DEFAULT 'null'::character varying,
    description_en character varying(255) DEFAULT 'null'::character varying,
    organization character varying(255) DEFAULT 'null'::character varying,
    directorat character varying(255) DEFAULT 'null'::character varying,
    head character varying(255) DEFAULT 'null'::character varying
);


ALTER TABLE public.pejabat OWNER TO postgres;

--
-- Name: province; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.province (
    id integer NOT NULL,
    province_name character varying(100),
    code integer DEFAULT 0
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

ALTER SEQUENCE public.report_categories_id_seq OWNED BY public.files_categories.id;


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

ALTER SEQUENCE public.reports_id_seq OWNED BY public.files.id;


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
    date_created timestamp without time zone,
    dataset_en character varying(255) DEFAULT 'null'::character varying,
    description text DEFAULT 'null'::text,
    produsen_data character varying(255) DEFAULT 'null'::character varying,
    tanggal_update date,
    api_data character varying(255) DEFAULT 'null'::character varying
);


ALTER TABLE public.sourcedata OWNER TO postgres;

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

ALTER SEQUENCE public.statistic_id_seq OWNED BY public.data_menu.id;


--
-- Name: statistic_slide_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.statistic_slide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statistic_slide_id_seq OWNER TO postgres;

--
-- Name: statistic_slide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.statistic_slide_id_seq OWNED BY public.data_slider.id;


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

ALTER SEQUENCE public.structure_assets_id_seq OWNED BY public.pejabat.id;


--
-- Name: sub_slide_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sub_slide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sub_slide_id_seq OWNER TO postgres;

--
-- Name: sub_slide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sub_slide_id_seq OWNED BY public.data_submenu.id;


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
    email_verified_at character varying(100),
    password character varying(100),
    remember_token character varying(100),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    role_id integer,
    web_identity character varying(100) DEFAULT 'kneks'::character varying,
    roles_user integer DEFAULT 1,
    active integer DEFAULT 1,
    approve character varying(50) DEFAULT 'N'::character varying,
    ip_address character varying(255) DEFAULT 'null'::character varying,
    directorat_id integer DEFAULT 0,
    id_province integer DEFAULT 0,
    approve_by character varying(255) DEFAULT 'null'::character varying,
    approve_date timestamp without time zone
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
-- Name: banner id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banner ALTER COLUMN id SET DEFAULT nextval('public.custom_page_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Name: data_dashboard id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_dashboard ALTER COLUMN id SET DEFAULT nextval('public.api_meta_id_seq'::regclass);


--
-- Name: data_menu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_menu ALTER COLUMN id SET DEFAULT nextval('public.statistic_id_seq'::regclass);


--
-- Name: data_slider id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_slider ALTER COLUMN id SET DEFAULT nextval('public.statistic_slide_id_seq'::regclass);


--
-- Name: data_submenu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_submenu ALTER COLUMN id SET DEFAULT nextval('public.sub_slide_id_seq'::regclass);


--
-- Name: db_event id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.db_event ALTER COLUMN id SET DEFAULT nextval('public.db_event_id_seq'::regclass);


--
-- Name: devisi id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devisi ALTER COLUMN id SET DEFAULT nextval('public.devisi_id_seq'::regclass);


--
-- Name: directorats id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directorats ALTER COLUMN id SET DEFAULT nextval('public.directorats_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: files_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_categories ALTER COLUMN id SET DEFAULT nextval('public.report_categories_id_seq'::regclass);


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
-- Name: ip_address id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ip_address ALTER COLUMN id SET DEFAULT nextval('public.ip_address_id_seq'::regclass);


--
-- Name: kdeks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kdeks ALTER COLUMN id SET DEFAULT nextval('public.kdeks_id_seq'::regclass);


--
-- Name: khas_zone id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.khas_zone ALTER COLUMN id SET DEFAULT nextval('public.khas_zone_id_seq'::regclass);


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
-- Name: pejabat id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pejabat ALTER COLUMN id SET DEFAULT nextval('public.structure_assets_id_seq'::regclass);


--
-- Name: province id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.province ALTER COLUMN id SET DEFAULT nextval('public.province_id_seq'::regclass);


--
-- Name: questbook id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questbook ALTER COLUMN id SET DEFAULT nextval('public.questbook_id_seq'::regclass);


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
-- Name: slideshow id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slideshow ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);


--
-- Name: social_medias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_medias ALTER COLUMN id SET DEFAULT nextval('public.social_medias_id_seq'::regclass);


--
-- Name: sourcedata id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sourcedata ALTER COLUMN id SET DEFAULT nextval('public.sourcedata_id_seq'::regclass);


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

COPY public.abouts (id, about, about_en, tag, history, history_en, web_identity, id_province, images, about_content, about_content_en, history_content, history_content_en, legal_foundation, legal_foundation_en, legal_foundation_content, legal_foundation_content_en, logo_philosophy, logo_philosophy_en, logo_philosophy_content, logo_philosophy_content_en, kneks_task, kneks_task_en, kneks_task_content, kneks_task_content_en, function, function_en, function_content, function_content_en) FROM stdin;
1	Tentang KNEKS	About KNEKS	about	Sejarah KNEKS	history KNEKS	kneks	0	\N	null	null	<p>Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) merupakan perubahan dari KNKS untuk peningkatan pembangunan ekosistem ekonomi dan keuangan syariah serta menjadikan Indonesia sebagai Pusat Halal Dunia.</p>\n\n<p>Pencanangan titik awal untuk memposisikan Indonesia sebagai salah satu pelaku utama dan hub ekonomi syariah dunia dilakukan seiring dengan peluncuran Masterplan Ekonomi Syariah Indonesia pada bulan Mei 2019.</p>	null	Landasan Hukum	Legal Foundation	null	null	Filosopi Logo	Logo Philosophy	null	null	Tugas KNEKS	KNEKS Task	null	null	Fungsi	Function	null	null
65	Tentang KDEKS	About KNEKS	about	Sejarah KDEKS	History KDEKS	kdeks	0	NULL	null	null	<p>Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) merupakan perubahan dari KNKS untuk peningkatan pembangunan ekosistem ekonomi dan keuangan syariah serta menjadikan Indonesia sebagai Pusat Halal Dunia.</p>\n\n<p>Pencanangan titik awal untuk memposisikan Indonesia sebagai salah satu pelaku utama dan hub ekonomi syariah dunia dilakukan seiring dengan peluncuran Masterplan Ekonomi Syariah Indonesia pada bulan Mei 2019.</p>	null	Landasan Hukum	Legal Foundation	null	null	Filosofi Logo	Logo Philosophy	null	null	Tugas KDEKS	KDEKS Task	null	null	Fungsi	Function	null	null
67	Tentang EKONOMI Syariah	About EKONOMI Syariah	about	Sejarah EKONOMI Syariah	History Sharia ECONOMIC	ekonomi_syariah	0		null	null	<p>Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) merupakan perubahan dari KNKS untuk peningkatan pembangunan ekosistem ekonomi dan keuangan syariah serta menjadikan Indonesia sebagai Pusat Halal Dunia.</p>\n\n<p>Pencanangan titik awal untuk memposisikan Indonesia sebagai salah satu pelaku utama dan hub ekonomi syariah dunia dilakukan seiring dengan peluncuran Masterplan Ekonomi Syariah Indonesia pada bulan Mei 2019.</p>	null	Landasan Hukum	Legal Foundation	null	null	Logo Filosofi	Logo Philosophy	null	null	Tugas KNEKS	KNEKS TASK	null	null	Fungsi 	Function	null	null
\.


--
-- Data for Name: agendas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agendas (id, title, title_en, url, agenda_datetime, created_at, updated_at, deleted_at, place, organizer, web_identity, link, project, description, agenda_endtime, manager, contributor, indicator, impact, opening, participants, area, loc, priority_participants, kbli, age, gender, province) FROM stdin;
71	ToT Pasar Modal Syariah	\N	https://www.instagram.com/p/BvbhHAXlbB1/	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Bogor	MES Bogor-IDX	kneks	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
72	Investor Gathering Syariah 2019	\N	https://www.instagram.com/p/BwBGRZNliUX/	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Pekalongan	MES Pekalongan-IDX	kneks	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
73	Temu Ilmiah Nasional	\N	http://fossei.org/temilnas-2019/	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Jakarta	FoSSEI	kneks	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
74	Topi Diksi Edisi Digital Millenial	\N	https://www.instagram.com/p/BwTVeABFdBy/	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Jakarta	MES-BNIS	kneks	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
75	Kuliah Umum EKIS UNPAD	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Bandung	Prodi EKIS FEB UNPAD	kneks	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
76	Roadshow Multifinance Syariah 2019	\N	https://www.instagram.com/p/BwKZRBbFeMd/	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Jawa Timur	MES Jatim-BFI Syariah	kneks	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
77	Indonesia Islamic Economy Festival	\N	https://www.eventbrite.com/e/indonesia-islamic-economy-festival-tickets-59939129550	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Jakarta	KNKS	kneks	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
78	Peluncuran Wakaf Saham	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Jakarta	IDX-BWI	kneks	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
79	Temu Ilmiah Nasional	\N	http://fossei.org/temilnas-2019/	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Jakarta	FoSSEI	kneks	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
169	Road to FESyar Sumatera	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42		BI	kneks	\N	\N	Rangkaian kegiatan di berbagai kantor perwakilan BI wilayah Sumatera	\N	\N	KNEKS	SNLIEKSI 1 Literasi (Ekonomi Syariah)		Eselon II/Pejabat Setingkat		Regional	\N					\N
170	IN2MF in Paris	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Luar Negeri	BI	kneks	\N	\N	Rangkaian awareness, promosi perdagangan, fashion show dan trade showproduk modest fashion di wilayah Eropa	\N	\N	Kemendag	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Tinggi	Eselon III/Pejabat Setingkat	200-300 orang	Internasional	\N	Tinggi	C - Industri Pengolahan	36-55 Tahun	Semua	\N
171	IN2MF in Kuala Lumpur	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Luar Negeri	BI	kneks	\N	\N	Rangkaian awareness, promosi perdagangan, fashion show dan trade showproduk modest fashion di wilayah asia tenggara	\N	\N	kemendag	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Tinggi	Eselon I/Pejabat Setingkat	200-300 orang	Internasional	\N	Tinggi	C - Industri Pengolahan	36-55 Tahun	Semua	\N
172	Road to FESyar KTI 2024	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42			kneks	\N	\N	Rangkaian kegiatan di berbagai kantor perwakilan BI wilayah KTI	\N	\N							\N					\N
173	Festival Ekonomi Syariah Jawa	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42			kneks	\N	\N	Rangkaian agenda Fesyar Jawa	\N	\N			#N/A				\N	#N/A				\N
174	Training of Trainer Eksyar bagi Dai dan Daiyah Wilayah Jawa Barat, Jawa Tengah dan DKI Jakarta	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	BI	kneks	\N	\N	Pelatihan bagi Dai dan Daiyah dalam rangka akselerasi peningkatan literasi ekonomi syariah	\N	\N	MUI	SNLIEKSI 1 Literasi (Ekonomi Syariah)	Rendah	Eselon III/Pejabat Setingkat	75	Regional	\N	Rendah	J - Informasi dan Komunikasi	36-55 Tahun	Semua	\N
175	Sharia Economic and Financial Outlook	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42		BI	kneks	\N	\N	Peluncuran Kajian Ekonomi dan Keuangan Syariah 2023 dan Seminar Nasional untuk mendiseminasikan kinerja, tantangan dan arah kebijakan pengembangan ekonomi dan keuangan syariah	\N	\N	KNEKS	SNLIEKSI 1 Literasi (Ekonomi Syariah)	Menengah	Eselon I/Pejabat Setingkat		Nasional	\N	Menengah				\N
176	Festival Ekonomi Syariah KTI	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42			kneks	\N	\N	Rangkaian agenda Fesyar KTI	\N	\N			#N/A				\N	#N/A				\N
128	Bootcamp Coaching anggota IKRA 2024	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	BI	kneks	\N	\N	Capacity Bulding anggota IKRA 2024 menuju ISEF, IN2MF dan IN2HCC 2024	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Menengah	Eselon III/Pejabat Setingkat	136	Nasional	\N	Menengah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
132	International Conference on Women and Sharia Community Empowerment	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	BI	kneks	\N	\N	Capacity Bulding pelaku usaha syariah binaan Komunitas perempuan menuju ISEF 2024	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Rendah	Eselon III/Pejabat Setingkat		Nasional	\N	Rendah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
134	Pelatihan Komunitas Perempuan Sektor Makanan dan Minuman Halal	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	BI	kneks	\N	\N	Capacity Bulding pelaku usaha syariah binaan Komunitas perempuan menuju ISEF 2024	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Rendah	Eselon III/Pejabat Setingkat		Nasional	\N	Rendah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
138	IN2HCC competition di Fesyar Jawa	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Jawa Timur	BI	kneks	\N	\N	Kompetisi halal chef wilayah Jawa	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Rendah	Eselon III/Pejabat Setingkat	39	Regional	\N	Rendah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
142	Modest Fashion designer competition pada rangkaian Fesyar wilayah Jawa	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Jawa Timur	BI	kneks	\N	\N	Kompetisi modest fashion designer wilayah Jawa	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Rendah	Eselon III/Pejabat Setingkat	26	Regional	\N	Rendah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
127	Diseminasi Panduan Fasilitasi Desa Peduli Pendidikan	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	PMK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
129	Kick Off Bootcamp anggota IKRA 2024	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	BI	kneks	\N	\N	Capacity Bulding anggota IKRA 2024 menuju ISEF, IN2MF dan IN2HCC 2024	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Menengah	Eselon III/Pejabat Setingkat	136	Nasional	\N	Menengah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
133	Pelatihan Komunitas Perempuan Sektor Modest Fashion	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	BI	kneks	\N	\N	Capacity Bulding pelaku usaha syariah binaan Komunitas perempuan menuju ISEF 2024	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Rendah	Eselon III/Pejabat Setingkat		Nasional	\N	Rendah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
135	Kick Off Kolaborasi BI dengan Komunitas Perempuan	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	BI	kneks	\N	\N	Capacity Bulding pelaku usaha syariah binaan Komunitas perempuan menuju ISEF 2024	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Rendah	Eselon III/Pejabat Setingkat		Nasional	\N	Rendah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
139	Modest Fashion designer competition pada rangkaian Fesyar wilayah KTI	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Sulawesi Barat	BI	kneks	\N	\N	Kompetisi modest fashion designer wilayah KTI	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Rendah	Eselon III/Pejabat Setingkat	38	Regional	\N	Rendah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
143	Seleksi Calon Anggota IKRA 2024 wilayah KTI	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Sulawesi Selatan	BI	kneks	\N	\N	Seleksi pelaku usaha syariah wilayah KTI terhadap binaan BI, binaan komunitas perempuan, dan umum untuk mempersiapkan seluruh kegiatan yang akan diselenggarakan dan yang akan diikuti oleh BI baiuk di dalam maupun di luar negeri.	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Tinggi	Eselon III/Pejabat Setingkat	91	Nasional	\N	Tinggi	C - Industri Pengolahan	36-55 Tahun	Semua	\N
130	Ekosistem Pondok Pesantren Inklusif Keuangan Syariah (EPIKS)	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Banten	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
136	IN2HCC competition di Fesyar KTI	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Sulawesi Barat	BI	kneks	\N	\N	Kompetisi halal chef wilayah KTI	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Rendah	Eselon III/Pejabat Setingkat	57	Regional	\N	Rendah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
141	Modest Fashion designer competition pada rangkaian Fesyar wilayah Sumatera	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Kepulauan Riau	BI	kneks	\N	\N	Kompetisi modest fashion designer wilayah Sumatera	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Rendah	Eselon III/Pejabat Setingkat	26	Regional	\N	Rendah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
144	Seleksi Calon Anggota IKRA 2024 wilayah Sumatera	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Sumatera Selatan	BI	kneks	\N	\N	Seleksi pelaku usaha syariah wilayah Sumatera terhadap binaan BI, binaan komunitas perempuan, dan umum untuk mempersiapkan seluruh kegiatan yang akan diselenggarakan dan yang akan diikuti oleh BI baiuk di dalam maupun di luar negeri.	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Tinggi	Eselon III/Pejabat Setingkat	92	Nasional	\N	Tinggi	C - Industri Pengolahan	36-55 Tahun	Semua	\N
131	Santri Cakap Keuangan Syariah (SAKINAH)	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Sulawesi Selatan	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
137	IN2HCC competition di Fesyar Sumatera	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Kepulauan Riau	BI	kneks	\N	\N	Kompetisi halal chef wilayah Sumatera	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Rendah	Eselon III/Pejabat Setingkat	39	Regional	\N	Rendah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
140	Duta Keuangan melalui Program Merdeka \vBelajar - Kampus Merdeka (MBKM)	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
145	Santri Cakap Keuangan Syariah (SAKINAH)	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Banten	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
146	Gebyar Ramadan Keuangan Syariah (GERAK Syariah)	Gebyar Ramadan Keuangan Syariah (GERAK Syariah)	https://mukisi.com/	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	OJK	kneks	https://www.ekon.go.id/	Gebyar Ramadhan Keuangan Syariah	Merupakan kampanye nasional keuangan syariah yang terdiri dari rangkaian kegiatan edukasi dan kompetisi. Kegiatan ini diselenggarakan selama bulan Ramadan dan menyasar target masyarakat umum	\N	OJK	OJK	SNLIEKSI 8 Inklusi (Penggunaan Keuangan Syariah)	Impact	Menteri/Pejabat Setingkat	3000	https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d253868.62250444127!2d106.53315569453123!3d-6.171279399999983!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5cbd72035e3%3A0x78a3dc4ef4719cb8!2sKementerian%20Keuangan%20Republik%20Indonesia!5e0!3m2!1sid!2sid!4v1731637418355!5m2!1sid!2sid	100%	Priority	7 - Keuangan Syariah	Semua Usia	Semua	DKI Jakarta
147	Indonesia Sharia Financial Olympiad  (ISFO)	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
148	Sahabat Ibu Cakap Literasi Keuangan Syariah (SICANTIKS)	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Aceh	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
149	Ekosistem Pondok Pesantren Inklusif Keuangan Syariah (EPIKS)	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Sulawesi Selatan	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
150	IN2MF in Istanbul x Istanbul Fashion Connection	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Luar Negeri	BI	kneks	\N	\N	Rangkaian awareness, promosi perdagangan, fashion show dan trade showproduk modest fashion di wilayah Eropa dan Asia (rank 1 dalam SGIE)	\N	\N	Kemendag	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Tinggi	Eselon III/Pejabat Setingkat	200-300 orang	Internasional	\N	Tinggi	C - Industri Pengolahan	36-55 Tahun	Semua	\N
152	Festival Ekonomi Syariah Sumatera	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42			kneks	\N	\N	Rangkaian agenda Fesyar Sumatera	\N	\N			#N/A				\N	#N/A				\N
153	Lelang Wakaf	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Jawa Timur	BI	kneks	\N	\N	Lelang wakaf pada kegiatan FESyar Jawa 2024	\N	\N	KemenkopUKM; BWI; Kemenko Perekonomian; Kemenperin	SNLIEKSI 3 Literasi (Produk dan Jasa Halal); SNLIEKSI 5 Literasi (Kemampuan Numerik Ekonomi Syariah)	Menengah	Eselon I/Pejabat Setingkat	150	Nasional	\N	Menengah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
156	Sertifikasi Kompetensi Nazir	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Jawa Timur	BI	kneks	\N	\N	Pelatihan dan sertifikasi kompetensi nazir wakaf pada rangkaian kegiatan FESyar Jawa 2024	\N	\N	BWI	SNLIEKSI 2 Literasi (Lembaga Pengelola Dana Sosial Syariah)	Rendah	Eselon II/Pejabat Setingkat	40	Regional	\N	Rendah	B - Pertambangan dan Penggalian	24-35 Tahun	Semua	\N
157	Opening Ceremony	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	BI	kneks	\N	\N	Pembukaan rangkaian kegiatan ISEF 2024	\N	\N	Kemenko Maritim; Kemenko Perekonomian; Kemenko PMK; Kementerian PPN/Bappenas; Kemenag; LPS	SNLIEKSI 1 Literasi (Ekonomi Syariah)	Tinggi	Presiden/Wakil Presiden	1000	Internasional	\N	Tinggi	A - Pertanian, Kehutanan, dan Perikanan; B - Pertambangan dan Penggalian	Semua Usia	Semua	\N
160	Syariah Capital Market Goes to Office kepada Komunitas Aisyiyah	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
162	Workshop terkait penerbitan Sukuk	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
163	Roadshow Pasar Modal Syariah dengan diaspora	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
166	Dialog Percepatan Pertumbuhan Ekonomi Syariah melalui HVC Project	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	Kadin	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
168	ssss	sss	sss	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	sss	sss	kdeks	sss	Kurang alert pada form pertama yaitu title ID	Kurang alert pada form pertama yaitu title ID	2024-12-17 23:42:00	Kurang alert pada form pertama yaitu title ID	Kurang alert pada form pertama yaitu title ID	Kurang alert pada form pertama yaitu title ID	Kurang alert pada form pertama yaitu title ID	0	0	0	Kurang alert pada form pertama yaitu title ID\tUndone	0	0	0	0	0
151	Kurasi IN2MF Global 2024	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	BI	kneks	\N	\N	Rangkaian persiapan calon anggota IKRA menuju IN2MF Global	\N	\N	BI	SNLIEKSI 3 Literasi (Produk dan Jasa Halal)	Menengah	Eselon III/Pejabat Setingkat	89	Nasional	\N	Menengah	C - Industri Pengolahan	36-55 Tahun	Semua	\N
154	Bulan Pembiayaan Syariah	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42		BI	kneks	\N	\N	Rangkaian business meeting, matching dan linkage	\N	\N			#N/A				\N	#N/A				\N
155		\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42		BI	kneks	\N	\N	Pelatihan dan sertifikasi kompetensi nazir wakaf pada rangkaian kegiatan FESyar Jawa 2024	\N	\N	BWI; Kemenag		#N/A				\N	#N/A				\N
158	Gebyar Ramadan Keuangan Syariah (GERAK Syariah)	Main Agenda ISEF 2024	https://mukisi.com/	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	DKI Jakarta	BI	kneks	https://www.ekon.go.id/	Gebyar Ramadhan Keuangan Syariah	Merupakan kampanye nasional keuangan syariah yang terdiri dari rangkaian kegiatan edukasi dan kompetisi. Kegiatan ini diselenggarakan selama bulan Ramadan dan menyasar target masyarakat umum	\N	OJK	OJK	SNLIEKSI 8 Inklusi (Penggunaan Keuangan Syariah)	Impact	Menteri/Pejabat Setingkat	3000	https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d253739.48794953182!2d106.5807456!3d-6.4351966!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5cbd72035e3%3A0x78a3dc4ef4719cb8!2sKementerian%20Keuangan%20Republik%20Indonesia!5e0!3m2!1sid!2sid!4v1731639217808!5m2!1sid!2sid	100%	Priority	7 - Keuangan Syariah	Semua Usia	Semua	DKI Jakarta
159	Publikasi Podcast Pasar Modal Syariah	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
161	ToT Pasar Modal Syariah bagi Guru dan Tenaga Pendidik Pondok Pesantren	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
164	Coaching Clinic terkait penerbitan Sukuk	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
165	Workshop Optimalisasi Peran Perbankan Syariah Pada Program Pemerintah Daerah	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	OJK	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
167	Optimalisasi Dana Sosial Islam dalam Pengembangan Sektor Industri Halal dan Implementasi Undang Undang Halal	\N		2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	Kadin	kneks	\N	\N	\N	\N	\N	\N	\N	Impact	\N	\N	\N	\N	\N	\N	\N	\N	\N
177	tes	test	2	2025-01-09 10:35:00	2025-01-09 03:37:00	2025-01-09 03:37:00	\N	12	12	kneks	12	12	12	2025-01-09 10:35:00	12	12	12	12	0	0	0	12	0	0	0	0	0
\.


--
-- Data for Name: banner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banner (id, name, path, flag, date_created, status) FROM stdin;
2	Opening Ceremony	https://webdev.rifhandi.com/uploads/custompage/Iklan.svg	welcome	2025-12-12	on
1	Login Page Web Kneks	https://webdev.rifhandi.com/uploads/custompage/gbr-login.png	login	2025-12-12	on
3	Struktur Organisasi	https://webdev.rifhandi.com/uploads/banner/struktur1.svg	s_logo	2025-01-12	on
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts (id, address_building, address, phone_number, fax_number, email, created_at, updated_at, deleted_at, web_identity) FROM stdin;
1	Komplek Kementerian Keuangan Indonesia	Gedung Sutikno Slamet DJA Lantai 18 Jalan Wahidin Nomor 1 Jakarta 10710, Indonesia	-	NaN	humas@kneks.go.id	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	kneks
\.


--
-- Data for Name: data_dashboard; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.data_dashboard (id, api, statistic_id, statistic_name, short_name, long_name, sub_statistic, short_name_en, long_name_en, naration, tagging, directorat, kdeks, publish, dataset, month) FROM stdin;
2	https://metabase.kneks.go.id/public/dashboard/76abbee6-24af-43e5-96ea-8c6bfdee48c7	1	RPH	ASAAAA	null	null	null	null	simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem	null	null	0	on	null	2025-07
\.


--
-- Data for Name: data_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.data_menu (id, title, title_en, long_title, long_title_en) FROM stdin;
1	RPH	RPH	null	null
2	IPH	IPH	null	null
3	JKS	JKS	null	null
4	KSS	KSS	null	null
5	BIWIS	BIWIS	BIWISSSSS	BIWISSSSSS
\.


--
-- Data for Name: data_slider; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.data_slider (id, title, title_en, amount, date_created, image, link, publish) FROM stdin;
2	IPH	IPH	100	2019-05-09	https://webdev.rifhandi.com/uploads/data/abc.jpg	https://metabase.kneks.go.id/public/dashboard/7caec5a5-4e6f-45c2-8d38-00286d5dc3ed	1
3	JKS	JKS	100	2019-05-09	https://webdev.rifhandi.com/uploads/data/abc.jpg	https://metabase.kneks.go.id/public/dashboard/7caec5a5-4e6f-45c2-8d38-00286d5dc3ed	1
4	KSS	KSS	100	2019-05-09	https://webdev.rifhandi.com/uploads/data/abc.jpg	https://metabase.kneks.go.id/public/dashboard/7caec5a5-4e6f-45c2-8d38-00286d5dc3ed	1
5	BIWIS	BIWIS	100	2019-05-09	https://webdev.rifhandi.com/uploads/data/abc.jpg	https://metabase.kneks.go.id/public/dashboard/7caec5a5-4e6f-45c2-8d38-00286d5dc3ed	1
1	Marketshare	Marketshare	6	2025-01-14	https://webdev.rifhandi.com/uploads/data/abc.jpg	https://metabase.kneks.go.id/public/dashboard/7caec5a5-4e6f-45c2-8d38-00286d5dc3ed	1
\.


--
-- Data for Name: data_submenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.data_submenu (id, short_name, long_name, id_statistic, short_name_en, long_name_en, statistic_name) FROM stdin;
2	ASAAAA	Submenu_Panjang_1	1	ASAAAA	Submenu_Panjang_2	RPH
\.


--
-- Data for Name: db_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.db_event (id, name) FROM stdin;
1	BI
2	KNEKS
3	KEU
4	MARVES
5	KEKO
6	PMK
7	PN
8	AGAMA
9	BUMN
10	PERIN
11	DAG
12	PAR
13	KUKM
14	OJK
15	LPS
16	KADIN
17	MUI
\.


--
-- Data for Name: devisi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.devisi (id, title, description, directorats_id, directorats_name, title_en, description_en) FROM stdin;
1	Divisi Baru	Test divisi baru	3	Keuangan Sosial Syariah	null	null
2	Test Divisi Baru Lagi	Test Divisi Baru Lagi	3	Keuangan Sosial Syariah	null	null
\.


--
-- Data for Name: directorats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.directorats (id, title, title_en, description, description_en, web_identity, images, directiorat_banner, id_province, province_name) FROM stdin;
2	Jasa Keuangan Syariah	Sharia Financial Service	Pengembangan Jasa Keuangan Syariah	Sharia Financial Service	kneks	https://webdev.rifhandi.com/uploads/directorat/images/jasa.svg	https://webdev.rifhandi.com/uploads/directorat/images/direk.png	15	Jawa Timur
3	Keuangan Sosial Syariah	Sharia Social Finance	Pengembangan Keuangan Sosial Syariah	Sharia Social Finance	kneks	https://webdev.rifhandi.com/uploads/directorat/images/sosial.svg	https://webdev.rifhandi.com/uploads/directorat/images/1.png	19	Kalimantan Barat
5	Infrastruktur Ekosistem Syariah	Sharia Ecosystem Infrastructure	Infrastruktur Ekosistem Syariah	Sharia Ecosystem Infrastructure	kneks	https://webdev.rifhandi.com/uploads/directorat/images/infra.svg	https://webdev.rifhandi.com/uploads/directorat/images/2.png	11	DKI Jakarta
1	Industri Produk Halal	Halal Product Industry	Pengembangan Produk Industri Halal	Halal Product Industry	kneks	https://webdev.rifhandi.com/uploads/directorat/images/halal.svg	https://webdev.rifhandi.com/uploads/directorat/images/4.png	17	Nusa Tenggara Barat
4	Bisnis dan Wirausaha Syariah	Sharia Business and Entrepreneur	Bisnis dan Kewirausahaan Syariah	Sharia Business and Entrepreneur	kneks	https://webdev.rifhandi.com/uploads/directorat/images/sme.svg	https://webdev.rifhandi.com/uploads/directorat/images/3.png	10	Banten
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files (id, title, date, file, content, is_publish, report_category_id, title_en, content_en, web_identity, writer, publisher, synopsis, isbn, number_of_pages, width, height, tagging, directorat, id_province, report_category_name, users_id, users_name, passcode, downloadable) FROM stdin;
1	Masterplan Arsitektur Keuangan Syariah Indonesia.	2019-04-01	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Masterplan Arsitektur Keuangan Syariah Indonesia.</p>	1	1	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
9	Paparan Keynote Menteri PPN - IIEFest	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Paparan Keynote Menteri PPN - IIEFest</p>	1	2	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
10	Kumpulan Kultum Ekonomi Syariah	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Buku Kumpulan Kultum Ekonomi Syariah merupakan kumpulan kultum bertemakan ekonomi syariah yang ditulis oleh 20 relawan kontributor.</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
15	Masterplan Ekonomi Syariah Indonesia 2019-2024	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Masterplan Ekonomi Syariah Indonesia 2019-2024</p>	1	1	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
17	Ekonomi dan Keuangan Syariah Dalam Rencana Kerja Pemerintah	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Penyampaian paparan oleh Muhammad Cholifihani, Ph.D (Direktur Jasa Keuangan &amp; BUMN) dalam Diskusi KNKS : Pengembangan Ekonomi dan Keuangan Syariah di Indonesia, di Solo.</p>	1	2	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
18	Peran Ekonomi dan Keuangan Syariah dalam Pembangunan Nasional	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p style="margin-left:0px; margin-right:0px; text-align:left">Penyampaian paparan oleh Ir. Bambang Prijambodo (Deputi Bidang Ekonomi BAPPENAS) dalam Diskusi KNKS : Pengembangan Ekonomi dan Keuangan Syariah di Indonesia, di Solo.</p>	1	2	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
19	Strategi KNKS dalam Pengembangan Ekonomi dan Keuangan Syariah	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p style="margin-left:0px; margin-right:0px; text-align:left">Penyampaian paparan oleh Dr. Taufik Hidayat (Direktur Hubungan Eksternal, Promosi dan Hukum) dalam Diskusi KNKS : Pengembangan Ekonomi dan Keuangan Syariah di Indonesia, di Solo.</p>	1	2	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
24	Boosting Financial Inclusion through  Sharia Economy in Indonesia	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Boosting Financial Inclusion through&nbsp;Sharia Economy in Indonesia</p>	1	3	Boosting Financial Inclusion through  Sharia Economy in Indonesia	<p>Boosting Financial Inclusion through &nbsp;Sharia Economy in Indonesia</p>	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
222	Tes Pustaka	2025-02-06	https://webdev.rifhandi.com/uploads/filesupload/LaporanPengkinian Data Ekonomi Syariah pada PDESpdf.pdf	<strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>	on	2	Test Pustaka	<strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>	kneks	Blabla                                                                                                                                                                                                                                                         	Blabla	Lorem ipsum	012345	45	10	20	[{"value":"kneks"},{"value":"kdeks"},{"value":"syariah"},{"value":"indonesia"}]	1	1	Pidato/Paparan	15	Co-Admin	123456	\N
32	Islamic Finance Development Indicator (IFDI) Report 2019	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	\N	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
35	Islamic Finance Country Index (IFCI) 2019	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	\N	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
40	Islamic Business Case Study - Halal Tourism Development: Case of Nusa Tenggara Barat (NTB) Province	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Islamic Business Case Study (IBCS)&nbsp;in this edition is themed &quot;Halal Tourism Development: The Case Study of Nusa Tenggara Barat (NTB)&quot;. Tourism development in the province of Nusa Tenggara Barat (NTB) began in the 1970s when tourists started to visit three small islands: Gili Air, Gili Meno, and Gili Trawangan, as well as Lombok Island as a side trip from their main destination of Bali province. Since then, the government of NTB had been looking at ways to make NTB a tourist destination to rival its world-famous neighbour island, Bali province.</p>\r\n\r\n<p>IBCS aims&nbsp;to adapt&nbsp;the success story and the uniqueness of the development of Islamic business and economics practice in Indonesia. IBCS can be used by government, practitioner, and academicians to develop their knowledge about various Islamic business case in Indonesia.</p>	1	7	Islamic Business Case Study - Halal Tourism Development: Case of Nusa Tenggara Barat (NTB) Province	<p>Islamic Business Case Study (IBCS)&nbsp;in this edition is themed &quot;Halal Tourism Development: The Case Study of Nusa Tenggara Barat (NTB)&quot;. Tourism development in the province of Nusa Tenggara Barat (NTB) began in the 1970s when tourists started to visit three small islands: Gili Air, Gili Meno, and Gili Trawangan, as well as Lombok Island as a side trip from their main destination of Bali province. Since then, the government of NTB had been looking at ways to make NTB a tourist destination to rival its world-famous neighbour island, Bali province.</p>\r\n\r\n<p>IBCS aims&nbsp;to adapt&nbsp;the success story and the uniqueness of the development of Islamic business and economics practice in Indonesia. IBCS can be used by government, practitioner, and academicians to develop their knowledge about various Islamic business case in Indonesia.</p>	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
22	Islamic Digital Day Komitmen Pengembangan Ekosistem Ekonomi Syariah Digital	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Siaran Pers KNKS tentang penyelenggaraan Islamic Digital Day sebagai pendorong tumbuhnya inovasi, teknologi dan digital platform sebagai bagian yang terintegrasi dengan gaya hidup masa kini yang menuntut pelayanan prima, cepat, mudah, nyaman dan berkah.</p>	1	6	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
25	Pers Rilis Penghargaan GIFR 2019	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Dalam Global Islamic Finance Report (GIFR) 2019 terbaru, Indonesia berhasil mencatat skor 81,93 pada&nbsp;Islamic Finance Country Index (IFCI) 2019</p>	1	6	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
27	Siaran Pers Sayembara Jurnalistik 2019	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Sayembara Jurnalistik KNKS 2019 mengangkat tema besar Menjadikan Ekonomi dan Keuangan Syariah sebagai Pendorong Utama bagi Pertumbuhan Ekonomi Indonesia dan Dunia</p>	1	6	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
34	The State of Global Islamic Economy Report 2019/2020	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	\N	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
39	Islamic Business Case Study - The Conversion of Regional Development Bank to Islamic Bank: Case of Bank Aceh Syariah and Bank NTB Syariah	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Islamic Business Case Study (IBCS)&nbsp;in this edition is themed &quot;The Conversion of Regional Development Bank to Islamic Bank: Case of Bank Aceh Syariah and Bank NTB Syariah&quot;. IBCS aims to adapt the success story and the uniqueness of the development of islamic business and economics practice in Indonesia. IBCS can be used by government, practitioner, and academicians to develop their knowledge about various islamic business case in Indonesia.</p>	1	7	Islamic Business Case Study - The Conversion of Regional Development Bank to Islamic Bank: Case of Bank Aceh Syariah and Bank NTB Syariah	<p>Islamic Business Case Study (IBCS)&nbsp;in this edition is themed &quot;The Conversion of Regional Development Bank to Islamic Bank: Case of Bank Aceh Syariah and Bank NTB Syariah&quot;. IBCS aims to adapt the success story and the uniqueness of the development of islamic business and economics practice in Indonesia. IBCS can be used by government, practitioner, and academicians to develop their knowledge about various islamic business case in Indonesia.</p>	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
41	Islamic Business Case Study - Baitul Maal Wat Tamwil (BMT): A Faith and Community-based Microfinance	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Islamic Business Case Study (IBCS)&nbsp;in this edition is themed &quot;Baitul Maal Wat-Tamwil (BMT): A Faith and Community based Microfinance&quot;. IBCS aims to adapt the success story and the uniqueness of the development of islamic business and economics practice in Indonesia. IBCS can be used by government, practitioner, and academicians to develop their knowledge about various islamic business case in Indonesia,</p>	1	7	Islamic Business Case Study - Baitul Maal Wat Tamwil (BMT): A Faith and Community-based Microfinance	<p>Islamic Business Case Study (IBCS)&nbsp;in this edition is themed &quot;Baitul Maal Wat-Tamwil (BMT): A Faith and Community based Microfinance&quot;. IBCS aims to adapt the success story and the uniqueness of the development of islamic business and economics practice in Indonesia. IBCS can be used by government, practitioner, and academicians to develop their knowledge about various islamic business case in Indonesia.</p>\r\n\r\n<p>&nbsp;</p>	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
42	Strategi Nasional Pengembangan Materi Edukasi untuk Peningkatan Literasi Ekonomi dan Keuangan Syariah	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Kajian Strategi Nasional Pengembangan Materi Edukasi untuk Peningkatan Literasi Ekonomi dan Keuangan Syariah Indonesia ini merupakan sebuah kajian yang dilakukan untuk memetakan dan mengembangkan materi edukasi berdasarkan klasifikasi tertentu guna untuk meningkatkan literasi ekonomi dan keuangan syariah masyarakat Indonesia.</p>	1	3	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
43	Buku Panduan Kuliah Kerja Nyata Tematik (KKN-T) Ekonomi Syariah	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Buku Panduan Kuliah Kerja Nyata Tematik (KKN-T) merupakan sebuah buku yang dapat dijadikan pedoman bagi perguruan tinggi beserta mahasiswa dalam menyelenggarakan dan melaksanakan kegiatan KKN-T khususnya di bidang ekonomi dan keuangan syariah. Banyak tema-tema program yang dapat dijadikan referensi dalam melaksanakan program-program yang berkaitan dengan pengembangan ekonomi dan keuangan syariah di berbagai daerah.</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
223	Tes Pustaka	2025-02-10	https://webdev.rifhandi.com/uploads/filesupload/STATISTIKREKSA DANA SYARIAH OKTOBER 2024.pdf	<strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>	on	5	Test Pustaka	<strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>	kneks	Blabla                                                                                                                                                                                                                                                         	Blabla	Lorem ipsum	012345	78	67	34	[{"value":"kneks"},{"value":"kdeks"},{"value":"syariah"},{"value":"indonesia"}]	1	1	Regulasi	18	SuperAdmin	123456	on
44	Buku Kerangka Acuan Akademik Program Studi S1 Ekonomi Syariah	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Buku Kerangka Acuan&nbsp;Akademik Program Studi S1 Ekonomi Syariah adalah acuan standard minimal kurikulum program studi S1 Ekonomi Syariah yang berisi tinjauan kurikulum prodi ekonomi syariah dari 10 Perguruan Tinggi, RPS 10 Mata Kuliah Inti Ekonomi Syariah, dan Capaian Pembelajaran Lulusan. Penyusunan ini melibatkan 10 Perguruan Tinggi yang termasuk dalam <em>working group</em> KNKS dalam penyusunan kerangka acuan kurikulum prodi S1 Ekonomi Syariah. Buku ini dapat dijadikan referensi untuk diimplementasikan oleh&nbsp;perguruan tinggi dalam menyusun kurikulum prodi S1 ekonomi syariah.</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
45	Rekomendasi Kebijakan: Strategi Pengembangan Keuangan Mikro Syariah di Indonesia	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Buku rekomendasi kebijakan yang disusun oleh KNKS berisi tentang gambaran yang jelas mengenai lanskap dan kelembagaan keuangan mikro syariah secara umum di Indonesia, serta strategi pengembangan dan penguatan keuangan mikro syariah yang merupakan jawaban dari berbagai tantangan yang selama ini dihadapi dalam mendorong pertumbuhan dan peran serta keuangan mikro syariah dalam penanggulangan kemiskinan dan menjaga sustainabilitas atau keberlanjutan institusi keuangan mikro syariah di Indonesia.</p>	1	3	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
47	Kajian Pemetaan Potensi Pengembangan Aset Wakaf dan Analisis Proses SIWAK Kemenag di DKI Jakarta, Kota Bandung, dan Kabupaten Bogor	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Kajian ini memaparkan kondisi data aset wakaf, konsep metodologi pendataan, dan pemetaan pengembangan aset wakaf yang tersebar di tiga wilayah, yaitu Provinsi DKI Jakarta, Kota Bandung dan Kabupaten Bogor. Analisis hasil temuan lapangan berupa proses pendataan dan pemetaan pengembangan aset wakaf, khususnya yang ada pada SIWAK Kemenag, menjadi salah satu aspek yang dipresentasikan di dalam dokumen kajian. Di dalam kajian ini juga telah disusun&nbsp;rekomendasi pengembangan aset wakaf menjadi produktif serta rekomendasi atas pengembangan aplikasi SIWAK dan ekosistem wakaf produktif di Indonesia secara umum.</p>	1	3	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
187	Panduan Pendamping PPH (Proses Produk Halal)	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Buku ini bertujuan untuk memberikan informasi, khsususnya kepada Pendamping PPH, terkait prosedur dan persyaratan untuk memperoleh Sertifikasi Halal bagi UMK melalui jalur self-declare. Buku ini memuat petunjuk teknis bagi Pendamping PPH dalam melaksanakan verifikasi dan validasi pernyataan kehalalan produk yang dibuat oleh pelaku usaha mikro dan kecil. Panduan ini memandu pendamping PPH melaksanakan tugas di tempat proses produksi. Penggunaan panduan praktis ini akan memudahkan Pendamping PPH menilai penerapan kehalalan produk pelaku usaha sehingga proses pelaksaaan sertifikasi halal melalui pernyataan pelaku usaha (self-declare) dapat berjalan dengan baik.&nbsp;</p>	0	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
188	Rekomendasi Kebijakan Pengembangan dan Pendalaman Pasar BPRS	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Rekomendasi Kebijakan Pengembangan dan Pendalaman Pasar BPRS</p>	1	3	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
189	Kajian Pengembangan Fungsi Sosial Pada Institusi Keuangan Mikro Syariah	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Kajian Pengembangan Fungsi Sosial Pada Institusi Keuangan Mikro Syariah&nbsp;</p>	1	3	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
192	Acuan Pembelajaran MBKM Industri Halal Perguruan Tinggi	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Acuan Kegiatan Pembelajaran Merdeka Belajar Kampus Merdeka Industri Halal Untuk Perguruan Tinggi</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
197	Padamu Negeri (Pedoman Usaha Mulia Bagi Yang Mau Gesit dan Lesatari)	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Buku Padamu Negeri merupakan pedoman praktis dan strategi kiat bisnis yang ditulis oleh para expert terbaik KNEKS, KemnkopUKM dan PUM Belanda&nbsp;</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
199	Sertifikasi Halal Fasilitas Produksi Rumah Produksi Halal Bersama	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>KNEKS membuat sebuah pedoman atau template yang bisa digunakan oleh Pemangku Kepentingan yang memiliki jenis fasilitas yang serupa dalam memberikan pemahaman proses penerbitan sertifikasi halal lewat BPJPH.&nbsp;</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
186	Modul Dasar Pemasaran Syariah - UMKM Industri Halal	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Modul dasar pemasaran Islami ini adalah salah satu dari rangkaian kegiatan pengembangan usaha skala kecil dan menengah dengan basis syariah. Kegiatan pelatihan ini diharapkan dapat memberikan wawasan baru kepada para peserta terhadap pentingnya strategi dan perencanaan pemasaran berbasis syariah untuk kemajuan bisnis yang dibangun oleh para pelaku usaha.</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
190	Rekomendasi Kebijakan Digitalisasi Institusi Keuangan Mikro Syariah (IKMS)	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Rekomendasi Kebijakan Digitalisasi Institusi Keuangan Mikro Syariah (IKMS)</p>	1	3	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
200	Modul 1 Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Modul 1&nbsp;Pelatihan Berbasis Kompetensi (PBK)&nbsp;- Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
206	Modul 7 Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Modul 7 Pelatihan Berbasis Kompetensi (PBK) - Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
184	Modul Prinsip & Etika Bisnis Syariah - UMKM Industri Halal	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Modul dasar prinsip dan etika dasar islami ini adalah salah satu rangkaian kegiatan pengembangan unit skala kecil dan menengah dengan basis syariah. Kegiatan pelatihan ini diharapkan dapat memberikan wawasan baru kepada para peserta terhadap pentingnya penerapan prinsip dan etika Islam dalam berbisnis untuk kemajuan bisnis yang dibangun oleh para pelaku usaha.</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
185	Modul Akuntansi Berbasis Syariah - UMKM Industri Halal	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Modul dasar akuntansi berbasis Syraiah ini adalah salah satu dari rangkaian kegiatan pengembangan unit skala kecil dan menengah dengan basis Syariah. Kegiatan pelatihan ini diharapkan dapat memberikan wawasan baru kepada para peserta pencatatan keuangan transaksi bisnis dengan menggunakan pendekatan konsep bisnis Syariah untuk kemajuan bisnis yang dibangun oleh&nbsp;para pelaku usaha.&nbsp;</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
191	Kajian Pengembangan dan Pendalaman Pasar Bank Perekonomian Rakyat Syariah (BPRS)	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Kajian Pengembangan dan Pendalaman Pasar Bank Perekonomian Rakyat Syariah (BPRS)</p>	1	3	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
194	Master Plan Industri Halal (MPIH) 2023-2029	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Penyusunan MPIHI 2023-2029 ini merupakan hasil kolaborasi dari kementerian / lembaga yang merupakan anggota KNEKS, diantaranya Kementerian PPN / Bappenas, Kementerian Perindustrian, Bank Indonesia, Kementerian Agama melalui Badan Penyelenggara Jaminan Produk Halal (BPJPH), Kementerian Keuangan, serta beberapa kementerian / lembaga lainnya di bawah koordinasi 3 Kementerian Koordinator, Bidang Perekonomian, Bidang Pembangunan Manusia dan Kebudayaan, serta Bidang Kemaritiman dan Investasi. Dari waktu ke waktu, pengembangan industri halal di Indonesia akan diselaraskan juga dengan program kementerian / lembaga yang terkait dengan pengembangan industri halal, yang tertuang pada Prioritas Nasional (PN), Program Prioritas (PP), dan Kegiatan Prioritas (KP).</p>\r\n\r\n<p>MPIHI 2023-2029 mengusung tagline &ldquo;Industri Halal untuk Ekonomi Berkelanjutan&rdquo;, sesuai dengan perkembangan kondisi dunia dan arah transformasi ekonomi Indonesia, sebagai bagian dari partisipasi global di masa depan, untuk mencapai visi &ldquo;Menjadikan Indonesia sebagai Pusat Industri Halal Dunia&rdquo;.</p>\r\n\r\n<p>Pelaksanaan MPIHI 2023-2029 digambarkan melalui road map pengembangan industri halal dari tahun 2023 sampai dengan tahun 2029, dengan 4 strategi utama, yaitu 1) peningkatan produktivitas dan daya saing; 2) penerapan serta penguatan kebijakan dan regulasi; 3) penguatan keuangan dan infrastruktur; serta 4) penguatan halal brand and awareness, yang didukung juga dengan 11 program utama, dan 8 indikator yang akan dipantau perkembangannya secara berkala.</p>\r\n\r\n<p>Adapun industri halal yang menjadi cakupan MPIHI 2023-2029 terbagi dua, yaitu industri halal inti dan industri halal berkembang. Industri halal inti terdiri dari makanan dan minuman, farmasi, dan kosmetik, beserta jasa yang terkait. Sedangkan industri halal berkembang terdiri dari modest fashion, pariwisata ramah Muslim, dan ekonomi kreatif syariah.</p>	1	1	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
195	Master Plan Industri Halal Indonesia 2023-2029 (Summary)	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Master Plan Industri Halal Indonesia 2023-2029 (Summary)</p>	1	1	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
201	Modul 2 Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Modul 2 Pelatihan Berbasis Kompetensi (PBK) - Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
203	Modul 4 Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Modul 4 Pelatihan Berbasis Kompetensi (PBK) - Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
204	Modul 5 Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Modul 5 Pelatihan Berbasis Kompetensi (PBK) - Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
202	Modul 3 Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Modul 3 Pelatihan Berbasis Kompetensi (PBK) - Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
205	Modul 6 Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Modul 6 Pelatihan Berbasis Kompetensi (PBK) - Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
207	Modul 8 Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>Modul 8 Pelatihan Berbasis Kompetensi (PBK) - Melaksanakan Prinsip-Prinsip Syariah dalam Pembiayaan dan Pendanaan</p>	1	7	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
208	Masterplan Industri Halal Indonesia 2023-2029	2019-05-09	https://webdev.rifhandi.com/uploads/filesupload/sample.pdf	<p>MPIHI 2023-2029 merupakan road map pengembangan industri halal dari tahun 2023 sampai dengan tahun 2029, dengan 4 strategi utama, yaitu 1) peningkatan produktivitas dan daya saing; 2) penerapan serta penguatan kebijakan dan regulasi; 3) penguatan keuangan dan infrastruktur; serta 4) penguatan halal brand and awareness, yang didukung juga dengan 11 program utama, dan 8 indikator yang akan dipantau perkembangannya secara berkala.</p>	1	1	\N	\N	kneks	null                                                                                                                                                                                                                                                           	null	\N	null	0	0	0	null	null	0	null	0	null	null	0
221	ss	2222-02-12	https://webdev.rifhandi.com/uploads/filesupload/aribiya@gmail.com.pdf	ss	on	9	ss	ss	kneks	sss                                                                                                                                                                                                                                                            	ss	ss	ss	22	2	33	[{"value":"kneks"},{"value":"kdeks"},{"value":"syariah"},{"value":"indonesia"}]	5	3	avce	15	Co-Admin	null	0
\.


--
-- Data for Name: files_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_categories (id, title, title_en, web_identity) FROM stdin;
2	Pidato/Paparan	Speech	kneks
7	Publikasi	Publication	kneks
1	Roadmap/Masterplan	Roadmap/Masterplan	kneks
3	Kajian/Penelitian	Kajian/Penelitian	kneks
4	Data Statistik	Data Statistik	kneks
5	Regulasi	Regulasi	kneks
6	Siaran Pers	Siaran Pers	kneks
9	avce	avcc	kneks
10	Tes Kategori	Test Kategori	kneks
\.


--
-- Data for Name: hot_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hot_categories (id, title, title_en, web_identity) FROM stdin;
2	Pengembangan Jasa Keuangan Syariah	Pengembangan Jasa Keuangan Syariah	kneks
3	Pengembangan Keuangan Sosial Syariah	Pengembangan Keuangan Sosial Syariah	kneks
1	Pengembangan Industri Produk Halal	Pengembangan Produk Industri Halal	kneks
6	ss	ss	kneks
7	Tes Kategori Baru	Tes Kategori Baru	kneks
\.


--
-- Data for Name: hot_issues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hot_issues (id, title, title_en, excerpt, excerpt_en, content, content_en, image, is_publish, hot_issue_datetime, hot_subcategory_id, web_identity, hot_issue_category, tag, id_province, hot_subcategory_name, directorat) FROM stdin;
2	KNKS Menjajaki Pendirian Bank Investasi Syariah	\N	\N	\N	<p>Pemerintah saat ini tengah mengupayakan ketersediaan infrastruktur Indonesia dalam rangka meningkatkan konektivitas dan menopang aktivitas ekonomi. Walaupun telah menunjukkan perbaikan, kondisi infrastruktur Indonesia masih belum sebaik negara-negara maju. Padahal, pembangunan infrastruktur diharapkan dapat memberikan dampak yang signifikan terhadap pertumbuhan perekonomian daerah dan pemerataan kesejahteraan.<br />\n<br />\nPemerintah telah mengalokasikan anggaran untuk kebutuhan pendanaan pembangunan infrastruktur. Akan tetapi, masih dibutuhkan sumber dana lain untuk memenuhi kebutuhan tersebut. Sebagai gambaran, Rencana Pembangunan Jangka Menengah Nasional (RPJMN) 2015-2019 memperkirakan kebutuhan pendanaan pembangunan infrastruktur selama periode 2015-2019 mencapai Rp5.519,4 triliun. Anggaran dari pemerintah pusat dan pemerintah daerah hanya dapat menutup 50,02% kebutuhan dana tersebut. Oleh karena itu, untuk memenuhi kesenjangan pendanaan, pemerintah mendorong peran BUMN dan swasta untuk ikut terlibat baik secara penuh maupun melalui kerja sama dengan pemerintah.<br />\n<br />\nKebutuhan pendanaan untuk infrastruktur menjadi peluang bagi industri keuangan syariah untuk dapat berkembang dan berkontribusi terhadap pembangunan nasional. Untuk itu, sejalan dengan rekomendasi Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI), KNKS tengah menjajaki kemungkinan pendirian bank investasi syariah di Indonesia. Keberadaan bank investasi syariah ini menjadi penting karena hingga saat ini belum ada lembaga keuangan komersial khusus yang fokus mengembangkan pasar modal syariah dan memfasilitasi kebutuhan pendanaan untuk pembangunan infrastruktur yang berasal dari keuangan syariah baik di dalam dan di luar negeri.<br />\n<br />\nHingga saat ini, KNKS telah bertemu dan berdiskusi dengan berbagai stakeholders baik perusahaan efek, perbankan syariah, maupun regulator untuk membahas hal tersebut. Secara umum, model bank investasi syariah ini dapat berupa:<br />\n<br />\n1.Unit Usaha Syariah pada perusahaan efek yang sudah ada<br />\n<br />\n2.Anak usaha (subsidiary) syariah pada perusahaan efek yang sudah ada<br />\n<br />\n3.Direktorat investasi pada bank syariah yang sudah ada<br />\n<br />\n4.Anak usaha (subsidiary) perusahaan efek pada bank syariah yang sudah ada<br />\n<br />\n5.Bank syariah baru yang fokus pada fungsi investasi dan digitalisasi<br />\n<br />\nUntuk mendirikan bank investasi syariah, hal-hal yang perlu disiapkan antara lain SDM yang dibekali keahlian pasar modal syariah, infrastruktur teknologi informasi yang dibutuhkan untuk menjalankan fungsi-fungsi bank investasi, proyek-proyek yang sesuai untuk dijadikan underlying asset produk investasi syariah, dan insentif serta dorongan dari pemerintah kepada emiten untuk menerbitkan instrumen pembiayaan syariah. Selain itu, literasi investasi syariah juga perlu terus ditingkatkan agar basis investor dapat diperluas. Apabila kondisi-kondisi tersebut dapat dipenuhi, diharapkan akan terwujud bank investasi syariah yang dapat meningkatkan kontribusi sektor keuangan syariah terhadap pembangunan nasional.</p>	\N	1557470125-foto-isu-2_resized.png	1	2019-04-01 01:01:01	2	kneks	\N	\N	0	null	null
3	Sosialisasi industri halal	\N	\N	\N	<p>Jakarta (Kemenag) -- Menteri Agama Lukman Hakim Saifuddin menerima kunjungan Manajemen Eksekutif Komite Nasional Keuangan Syariah (KNKS).&nbsp;Pertemuan berlangsung di Kantor Kemenag Jalan Lapangan Banteng Barat No 3-4 Jakarta Pusat, Jumat (08/03).<br />\n<br />\nJajaran Manajemen Eksekutif KNKS yang hadir dipimpin Direktur Eksekutif KNKS, Ventje Rahardjo Soedigno.&nbsp;Pertemuan Manajemen Eksekutif KNKS bersama Menag membahas tugas dan misi yang diemban pasca dilantik pada 3 Januari 2019.<br />\n<br />\nMenag Lukman Hakim dalam kesempatan tersebut mengatakan Presiden dan Wakil Presiden sangat konsen dengan KNKS, yaitu bagaimana agar potensi ekonomi syariah yang begitu besar ini bisa mewujud.<br />\n<br />\n&quot;Apalagi Indonesia adalah negara dengan umat muslim terbesar di dunia. Mungkin perlu sosialisasi secara masif dari manajemen Eksekutif KNKS terkait apa itu keuangan dan ekonomi syariah,&quot; harap Menag.<br />\n<br />\n&quot;Informasi ini tidak hanya buat umat muslim saja namun juga bagi saudara kita yang lain. Mereka juga perlu sosialisasi dan ini perlu digencarkan,&quot; sambungnya.<br />\n<br />\nMenag juga berharap manajemen Eksekutif KNKS memiliki database peta penyaluran zakat. &quot;Saya tertarik dengan zakat. Kita punya Unit Pengelola Zakat (UPZ) yang begitu banyak selain Baznas. Ada baiknya KNKS punya peta penyaluran zakat. Ini kaitannya dengan skala prioritas agar tidak ada tumpang tindih, sehingga KNKS ada arahan kepada Baznas,&quot; kata Menag.<br />\n<br />\nMenurut Menag manajemen Zakat adalah dengan membangun kepercayaan dan transparansi.<br />\n<br />\n&quot;Kalau KNKS masuk ke sana maka semangat orang berzakat akan bergairah tentunya untuk kemaslahatan bersama, &quot; tutur Menag.<br />\n<br />\nSementara itu Direktur Eksekutif KNKS, Ventje Rahardjo Soedigno menyatakan usai dilantik pada 3 Januari 2019 pihaknya langsung mengemban tugas mengawal arsitektur keuangan syariah, ekonomi syariah, zakat dan industri halal.<br />\n<br />\nTurut mendampingi Menag, Direktur Zakat dan Wakaf Fuad Nazar, Direktur&nbsp;Kurais, Kabag TU Pimpinan Khoirul Huda Basyir dan Staf Khusus Menag, Hadi Rahman.<br />\n<br />\nPemerintah melantik lima direktur Komite Nasional Keuangan Syariah atau KNKS sebagai Manajemen Eksekutif KNKS pada Kamis (3/1/2019). Manajemen Eksekutif KNKS akan melaksanakan tugas-tugas harian yang sebelumnya dilakukan oleh Dewan Pengarah KNKS.<br />\n<br />\nBerikut jajaran Direksi Manajemen eksekutif KNKS: 1.Ventje Rahardjo Soedigno sebagai Direktur Eksekutif,&nbsp;2.Taufiq Hidayat sebagai Direktur Bidang Hukum dan Standar Pengelolaan Keuangan Syariah, 3. Ronald Rulindo sebagai Direktur Bidang Inovasi Produk, Pendalaman Pasar, dan Pengembangan Infrastruktur Sistem Keuangan Syariah, 4. Ahmad Juwaini sebagai Direktur Bidang Keuangan Inklusif, Dana Sosial Keagamaan, dan Keuangan Mikro Syariah serta 5. Afdhal Aliasar sebagai Direktur Bidang Promosi dan hubungan Eksternal.<br />\n<br />\nPelantikan Manajemen Eksekutif KNKS diharapkan dapat menjadikan Indonesia sebagai global hub dari global islamic finance. Artinya, seluruh stakeholder harus berbenah diri untuk mensejajarkan diri agar menjadi global hub dari global islamic finance.</p>	\N	1557470144-foto-isu-3_resized.jpg	1	2019-04-01 01:01:01	1	kneks	\N	\N	0	null	null
4	Tantangan Aspel Legal Keuangan Syariah	\N	\N	\N	<p>Indonesia memiliki lebih banyak peraturan yang terkait dengan keuangan syariah dibandingkan negara-negara lain. Peraturan-peraturan ini tersebar dan terbagi di antara banyak regulator. Segmen industri keuangan syariah yang terdiri dari institusi formal dan informal merupakan tantangan tersendiri dalam membuat peraturan keuangan syariah yang komprehensif. Struktur pasar keuangan syariah Indonesia yang terdiri dari beberapa lapisan juga menjadikan segmen yang tumpang tindih dan saling bergantung, sehingga berdampak pada inefektifitas dan inefisiensi hukum ekonomi syariah Indonesia. Hal ini berpangaruh signifikan pada peraturan turunan yang dipakai oleh lembaga-lembaga pemangku kepentingan terkait dan berimplikasi pada teknis implementasi industri keuangan syariah itu sendiri.<br />\n<br />\nMunculnya sengketa-sengketa hukum yang ditangani oleh Pengadilan Agama Indonesia menunjukkan besarnya tantangan dalam mengembangkan instrumen-instrumen keuangan syariah di Indonesia yang mencakup industri perbankan maupun non perbankan. Seiring berkembangnya inovasi-inovasi produk keuangan di Indonesia serta pengembangan pada sektor ril maka dibutuhkan payung-payung hukum yang dapat mendukung dan mendorong Indonesia untuk menjadi pemain utama pengembangan ekonomi syariah di Indonesia.<br />\n<br />\nDengan demikian diperlukan konsolidasi dan harmonisasi pada peraturan-peraturan terkait keuangan syariah, serta meningkatkan kerangka peraturan umum ataupun kebijakan khusus dan standar pengelolaan keuangan syariah untuk mendukung pengembangan ekonomi dan keuangan syariah di<br />\n<br />\nSebelumnya pemerintah melantik lima direktur Komite Nasional Keuangan Syariah atau KNKS sebagai Manajemen Eksekutif KNKS pada Kamis (3/1/2018). Manajemen Eksekutif KNKS akan melaksanakan tugas-tugas harian yang sebelumnya dilakukan oleh Dewan Pengarah KNKS.<br />\n<br />\nBerikut jajaran Direksi Manajemen eksekutif KNKS:<br />\n<br />\n1.Ventje Rahardjo Soedigno sebagai Direktur Eksekutif,<br />\n<br />\n2.Taufiq Hidayat sebagai Direktur Bidang Hukum dan Standar Pengelolaan Keuangan Syariah,<br />\n<br />\n3. Ronald Rulindo sebagai Direktur Bidang Inovasi Produk, Pendalaman Pasar, dan Pengembangan Infrastruktur Sistem Keuangan Syariah,<br />\n<br />\n4. Ahmad Juwaini sebagai Direktur Bidang Keuangan Inklusif, Dana Sosial Keagamaan, dan Keuangan Mikro Syariah serta 5.<br />\n<br />\nAfdhal Aliasar sebagai Direktur Bidang Promosi dan hubungan Eksternal. Pelantikan Manajemen Eksekutif KNKS diharapkan dapat menjadikan Indonesia sebagai global hub dari global&nbsp;Islamic finance.<br />\n<br />\n(R/R10/P1) (sumber : minanews.net)</p>	\N	1557470172-foto-isu-4_resized.png	1	2019-04-01 01:01:01	2	kneks	\N	\N	0	null	null
5	Upaya Membentuk Sharing Platform Zakat Nasional	\N	\N	\N	<p>Perkembangan zakat nasional mengalami perkembangan yang cukup baik. Namun di sisi lainnya, masih banyak permasalahan yang perlu dibenahi bersama. Salah satu masalah tersebut adalah belum adanya integrasi data zakat nasional. Saat ini belum ada database zakat terpadu dan menyeluruh yang mencakup statistik data muzakki, amil dan mustahik secara nasional. Hal ini berdampak pada kurang akuratnya perhitungan data zakat nasional. Selain masalah data zakat nasional, saat ini banyak amil yang masih mengelola zakat dengan cara sederhana; melakukan transaksi secara manual dan belum menggunakan teknologi yang memadai sehingga menyebabkan rendahnya akuntabilitas, transparansi, dan profesionalisme lembaga amil zakat.<br />\n<br />\nKomite Nasional Keuangan Syariah (KNKS) melalui divisi Dana Sosial Keagamaan telah menyadari masalah tersebut. Pembentukan Sharing Platform Zakat nasional dimasukan ke dalam program prioritas KNKS tahun 2019. Beberapa upaya sudah dilakukan oleh KNKS. Pada bulan Maret 2019, KNKS telah melakukan audiensi dan Focus Group Discussion (FGD) dengan beberapa stakeholder zakat nasional seperti BAZNAS, Forum Zakat, perwakilan Lembaga Amil Zakat Nasional, Kementerian Agama, Bank Indonesia, hingga UNDP. KNKS sedang berupaya me-mapping masalah dan potensi yang ada di lapangan. Ke depan, KNKS akan merumuskan sebuah solusi sehingga bisa mewujudkan cita-cita kita bersama memiliki integrasi data zakat nasional dan sekaligus dapat meningkatkan akuntabilitas dan transparansi pelaporan lembaga amil zakat.<br />\n<br />\nKonsep sharing platform zakat yang disusun dengan memenuhi standar PSAK 109 dan Zakat Core Principles ini akan dihubungan dengan data kependudukan dan pencatatan sipil (Dukcapil) dari Kementerian Dalam Negeri (Kemendagri). Selain itu, platform zakat ini juga dihubungkan dengan data kelompok masyarakat miskin secara nasional seperti Program Keluarga Harapan (PKH) dari Kementerian Sosial. Dengan database terintegrasi tersebut akan didapatkan data muzakki, data mustahik, data pengelola zakat (BAZNAS dan LAZ), jumlah zakat terkumpul, jumlah mustahik yang terbantu dengan zakat, jumlah mustahik yang sudah berubah menjadi muzakki, dan masih banyak data-data lainnya yang diperlukan.<br />\n<br />\nSharing platform zakat juga diharapkan dapat mencegah penumpukan bantuan zakat pada seorang mustahik, dan menghindari menumpuknya bantuan zakat di suatu daerah, sementara masih banyak mustahik atau daerah lain yang sangat memerlukan. Dengan database zakat nasional, proses panyelarasan program pembangunan secara nasional yang dilakukan pemerintah dengan program pemanfataan zakat akan lebih mudah dilakukan sehingga dapat mewujudkan pengurangan angka kemiskinan dan tentu dapat meningkatkan kesejahteraan umat.</p>	\N	1557470187-foto-isu-5_resized.png	1	2019-04-01 01:01:01	7	kneks	1	\N	0	null	null
6	Penyusunan Roadmap Pengembangan Baitul Maal Wat Tamwil (BMT) di Indonesia	\N	\N	\N	<p>Indonesia hingga saat ini telah menjadi salah satu negara yang memiliki perkembangan penerapan ekonomi syariah yang baik. Hal ini tentu saja didorong oleh faktor populasi Muslim yang mayoritas di Indonesia dan menjadi yang terbesar di dunia. Dua aspek yang berkontribusi penting akan tumbuh dan berkembangnya ekonomi syariah di Indonesia adalah pada sektor sosial dan keuangan mikronya.<br />\n<br />\nWorld Giving Index menyebutkan bahwa Indonesia menjadi salah satu negara yang paling dermawan dalam menyumbangkan donasi berbentuk tunai, bahkan praktik pengelolaan dana sosial Islam melalui lembaga filantropi Islam dan masjid-masjid sudah sangat menyebar dan menjadi bagian penting dari pembangunan dan penciptaan kesejahateraan di Indonesia. Pada sisi lainnya, sektor keuangan mikro syariah juga terus tumbuh melalui koperasi-koperasi dan lembaga pembiayaan mikro syariah, khususnya BMT, lembaga keuangan mikro syariah yang murni lahir dengan kekhasan Indonesia yang memiliki dua fungsi, yaitu fungsi amil (Baitul Maal) dan fungsi pembiayaan (Baitut Tamwil). Akan tetapi, meski perkembangan dan praktik BMT sudah sangat meluas di Indonesia, ditandai dengan sudah berdirinya sekitar 4.500 unit BMT di seluruh Indonesia (PBMT, 2018), masih banyak masalah dan tantangan yang dihadapi oleh sektor ini, khususnya terkait sustainability lembaga, sehingga kebermanfaatannya dalam mengentaskan kemiskinan dan memandirikan ekonomi masyarakat menjadi tidak optimal.<br />\n<br />\nDidasari oleh latar belakang tersebut, Komite Nasional Keuangan Syariah (KNKS) saat ini sedang bekerja untuk secara komprehensif memetakan seluruh permasalahan dan tantangan yang dihadapi BMT, mengkaji ulang praktiknya di lapangan, untuk kemudian menyusun strategi yang tepat dalam mengembangkan sektor keuangan mikro syariah melalui peran BMT agar terjadi perbaikan dan menjadi lebih kuat. Berbagai proses tersebut nantinya akan disusun menjadi sebuah dokumen Roadmap Pengembangan BMT di Indonesia. Direncanakan roadmap ini akan menjadi acuan KNKS bersama dengan seluruh stakeholder ekonomi syariah dalam mengembangkan keuangan mikro syariah sebagai bagian dari upaya peningkatan inklusifitas keuangan syariah yang berujung pada peningkatan kesejahteraan masyarakat.</p>	\N	1557470200-foto-isu-6_resized.jpg	1	2019-04-01 01:01:01	3	kneks	1	\N	0	null	null
7	Pengembangan Ekonomi Masjid	\N	\N	\N	<p>Indonesia hingga saat ini telah menjadi salah satu negara yang memiliki perkembangan penerapan ekonomi syariah yang baik. Hal ini tentu saja didorong oleh faktor populasi Muslim yang mayoritas di Indonesia dan menjadi yang terbesar di dunia. Dua aspek yang berkontribusi penting akan tumbuh dan berkembangnya ekonomi syariah di Indonesia adalah pada sektor sosial dan keuangan mikronya.<br />\n<br />\nWorld Giving Index menyebutkan bahwa Indonesia menjadi salah satu negara yang paling dermawan dalam menyumbangkan donasi berbentuk tunai, bahkan praktik pengelolaan dana sosial Islam melalui lembaga filantropi Islam dan masjid-masjid sudah sangat menyebar dan menjadi bagian penting dari pembangunan dan penciptaan kesejahateraan di Indonesia. Pada sisi lainnya, sektor keuangan mikro syariah juga terus tumbuh melalui koperasi-koperasi dan lembaga pembiayaan mikro syariah, khususnya BMT, lembaga keuangan mikro syariah yang murni lahir dengan kekhasan Indonesia yang memiliki dua fungsi, yaitu fungsi amil (Baitul Maal) dan fungsi pembiayaan (Baitut Tamwil). Akan tetapi, meski perkembangan dan praktik BMT sudah sangat meluas di Indonesia, ditandai dengan sudah berdirinya sekitar 4.500 unit BMT di seluruh Indonesia (PBMT, 2018), masih banyak masalah dan tantangan yang dihadapi oleh sektor ini, khususnya terkait sustainability lembaga, sehingga kebermanfaatannya dalam mengentaskan kemiskinan dan memandirikan ekonomi masyarakat menjadi tidak optimal.<br />\n<br />\nDidasari oleh latar belakang tersebut, Komite Nasional Keuangan Syariah (KNKS) saat ini sedang bekerja untuk secara komprehensif memetakan seluruh permasalahan dan tantangan yang dihadapi BMT, mengkaji ulang praktiknya di lapangan, untuk kemudian menyusun strategi yang tepat dalam mengembangkan sektor keuangan mikro syariah melalui peran BMT agar terjadi perbaikan dan menjadi lebih kuat. Berbagai proses tersebut nantinya akan disusun menjadi sebuah dokumen Roadmap Pengembangan BMT di Indonesia. Direncanakan roadmap ini akan menjadi acuan KNKS bersama dengan seluruh stakeholder ekonomi syariah dalam mengembangkan keuangan mikro syariah sebagai bagian dari upaya peningkatan inklusifitas keuangan syariah yang berujung pada peningkatan kesejahteraan masyarakat.</p>	\N	1557470222-foto-isu-7_resized.png	1	2019-04-01 01:01:01	3	kneks	1	\N	0	null	null
8	Sharing Platform Keuangan Mikro Syariah Berbasis Baitul Maal Wat Tamwil (BMT)	\N	\N	\N	<p>Sektor keuangan mikro syariah dapat dibilang menjadi aspek penting dan unggul dari perkembangan ekonomi syariah di Indonesia. BMT sebagai bentuk lembaga keuangan mikro syariah yang terlahir murni dari masyarakat Indonesia, telah menjadi primadona ekonomi syariah nasional yang kini juga telah dikenal di dunia.<br />\n<br />\nProgresifnya perkembangan BMT di Indonesia tidak terlepas dari besarnya porsi masyarakat kelas menengah dan bawah di Indonesia. Dari total sekitar 265 juta penduduk, 40% merupakan masyarakat kelas menengah dan 20% digolongkan sebagai kelas bawah, ditambah sebanyak kurang lebih 25,67 juta jiwa dikategorikan sebagai penduduk miskin atau 9,66% jumlah penduduk. Berdasarkan angka tersebut maka diperlukan pengembangan ekonomi umat yang sesuai untuk mayoritas masyarakat, yaitu melalui KUMKM dan optimalisasi dana sosial Islam. Inilah yang menjadikan keberadaan BMT relevan dan sangat diterima oleh masyarakat Indonesia.<br />\n<br />\nPertumbuhan jumlah BMT saat ini bisa dibilang cukup pesat, dimana saat ini sudah berdiri sekitar 4.500 unit, meskipun angka tersebut masih diragukan faktanya di lapangan. Pertumbuhan dan persebaran BMT yang luas tidak diimbangi dengan pendataan yang baik. Hal ini berawal dari belum jelasnya pengaturan BMT di Indonesia, dimana regulasi dan pengawasannya masih tumpang tindih antara antar regulator terkait. Lebih jauh terkait hal tersebut, tidak ada kesesuaian data jumlah BMT yang ada di seluruh Indonesia, baik yang aktif maupun yang sudah tidak aktif, termasuk mengenai posisi keuangannya masing-masing. Selain itu, banyak juga ditemukan BMT yang tidak dapat mempertahankan performa dan eksistensinya.<br />\n<br />\nBerdasarkan latar belakang tersebut, Komite Nasional Keuangan Syariah (KNKS) sedang berupaya mendorong pembenahan BMT agar menjadi lebih profesional dan terkelola dengan baik. Langkah awal yang akan dilakukan adalah dengan mengembangkan platform digital berupa core system BMT. Strategi ini diambil oleh KNKS karena faktanya di lapangan masih banyak BMT yang keuangan dan operasionalnya belum menggunakan digital core system padahal dapat memudahkan dan menjadikannya lebih efisien. Harapannya, dengan teraplikasinya sistem tersebut di seluruh BMT di Indonesia, pendataan pun akan jauh lebih baik dan terintegrasi satu sama lain.<br />\n<br />\nHingga saat ini, KNKS sedang beraudiensi dengan berbagai pemangku kepentingan sektor keuangan mikro syariah khususnya BMT untuk mematangkan dan merealisasikan rencana tersebut.</p>	\N	1557470241-foto-isu-4_resized.png	1	2019-04-01 01:01:01	3	kneks	1	\N	0	null	null
9	Standardisasi Kurikulum Pendidikan Ekonomi Syariah	\N	\N	\N	<p>Ekonomi syariah di Indonesia menunjukkan perkembangan yang positif selama lebih dari 3 dekade. Dewasa ini, banyak perguruan tinggi negeri maupun swasta yang membuka departemen atau program studi ekonomi syariah dan terkait. Namun kurikulum ekonomi syariah dan terkait di Indonesia masih belum terstandardisasi terutama antara perguruan tinggi umum dengan perguruan tinggi berbasis keagamaan. Direktorat Pendidikan dan Riset mempunyaai program untuk menjadi coordinator dalam standardisasi kurikulum pembelajaran ekonomi syariah baik untuk Vokasi (D3), S1, dan S2. KNKS akan berkoordinasi dengan DIKTI (di bawah Kemenristek Dikti), DIKTIS (di bawah Kementerian Agama), berbagai universitas dan stakeholder lainnya untuk merealisasikan program ini.</p>	\N	1557470260-foto-isu-9_resized.png	1	2019-04-01 01:01:01	4	kneks	1	\N	0	null	null
10	One Data Center	\N	\N	\N	<p>Pada tanggal 26 Februari 2019 telah dilaksanakan Diskusi Awal Pembentukkan Indonesian Network for Islamic Economic Studies (INIES) di Hotel Le Meridien Jakarta. KNKS mengundang berbagai stakeholder mulai dari regulator, praktisi, akademisi, dan asosiasi untuk mengumpulkan gagasan mengenai pendirian INIES dan berdiskusi mengenai riset, pendidikan, dan SDM ekonomi syariah. Dalam diskusi tersebut, disepakati bahwa masalah dan tantangan utama dalam riset ekonomi syariah adalah ketersediaan dan akses data. Untuk mengatasi permasalahan tersebut Direktorat Pendidikan dan Riset Keuangan Syariah KNKS akan mendirikan One Data Center.<br />\n<br />\nOne Data Center akan menjadi platform pusat data ekonomi dan sosial Indonesia yang dikompilasi dari berbagai macam institusi penyedia data terkait. Hal ini kedepannya dapat memudahkan masyarakat untuk meneliti khususnya mengenai ekonomi syariah. Sehingga publikasi ataupun karya ilmiah ekonomi syariah Indonesia dapat meningkat dan akan semakin mengembangkan ilmu pengetahuan ekonomi syariah Indonesia. Dampak jangka panjang lainnya adalah eksposur mengenai perkembangan ekonomi syariah Indonesia semakin meningkat terutama di kancah internasional, sehingga hal tersebut dapat menarik banyak stakeholder asing untuk berkolaborasi dengan Indonesia bahkan berinvestasi di Indonesia. Hal ini tentu akan mendukung pengembangan ekonomi syariah dalam meningkatkan perekonomian nasional.<br />\n<br />\nKNKS sedang dalam proses pembuatan otomasi Management Information System (MIS) untuk One Data Center. KNKS juga sedang mengidentifikasi kebutuhan data di bidang ekonomi syariah. Selain itu KNKS mulai menginisiasi hubungan dengan BPS sebagai pusat data terbesar dan terlengkap di Indonesia. Selanjutnya KNKS akan membuka kerja sama dengan institusi penyedia data lainnya seperti BI, OJK, Bursa Efek Indonesia, Bursa Efek Jakarta, hingga World Bank. Harapannya One Data Center KNKS akan menjadi pusat dan rujukan data bagi masyarakat Indonesia dan dunia.</p>	\N	1557470283-foto-isu-10_resized.jpg	1	2019-04-01 01:01:01	5	kneks	2	\N	0	null	null
11	KNKS Mendorong Hadirnya Halal Marketplace	\N	\N	\N	<p>Komite Nasional Keuangan Syariah (KNKS) mendorong hadirnya Halal Marketplace untuk memudahkan masyarakat berbelanja produk halal terutama secara online. Dengan maraknya perkembangan industri e-commerce di Indonesia diperlukan sebuah sistem penanda halal pada produk-produk yang dijual pada marketplace yang sudah ada saat ini maupun pada marketplace baru yang mengkhususkan diri pada produk halal.<br />\n<br />\nUntuk mewujudkan hal tersebut, beberapa agenda dan kegiatan telah dilaksanakan. Antara lain, Focus Group Discussion dan In-depth Interview telah dilaksanakan pada 14 Maret 2019 dengan beberapa pelaku industri e-commerce seperti Bukalapak, Tokopedia, Shopee; serta lembaga negara dan pemerintah seperti Bank Indonesia dan BPJPH (Badan Pelaksana Jaminan Produk Halal), dan lembaga pendukung seperti DSN-MUI (Dewan Syariah Nasional Majelis Ulama Indonesia), LPPOM MUI (Lembaga Pengkajian Pangan, Obat-obatan dan Kosmetika Majelis Ulama Indonesia), organisasi profesi seperti GAPMMI (Gabungan Pengusaha Makanan dan Minuman Seluruh Indonesia), dan YLKI (Yayasan Lembaga Konsumen Indonesia).<br />\n<br />\nDalam pelaksanaanya, KNKS dan Lembaga-Lembaga Pemeriksa Halal (LPH) berencana untuk melakukan sharing data sertifikasi halal untuk dapat dimanfaatkan oleh industri-industri terkait. KNKS juga tengah mengusulkan alternatif proses labelisasi halal yang lebih mudah bagi pelaku UMKM. Pada tahap terdekat, KNKS dan Bukalapak akan menandatangani kesepakatan untuk memperkuat kerjasama dalam pengembangan konsep halal marketplace. Diharapkan Bukalapak akan menjadi pelopor di industri e-commerce dalam membumikan konsep halal marketplace.</p>	\N	1557470295-foto-isu-11_resized.jpg	1	2019-04-01 01:01:01	10	kneks	2	\N	0	null	null
12	Kebutuhan Digital Payment Syariah Sangat Mendesak	\N	\N	\N	<p>Perkembangan digital payment di Indonesia sangat cepat, baik yang diselenggarakan oleh perbankan maupun oleh perusahaan start up. Menurut laporan Fintech 2018 DailySocial&nbsp;Bersama dengan OJK, Go-Pay dan OVO merupakan layanan e-payment dengan pengguna terbesar di Indonesia. Hasil survei tersebut menyebutkan 79,4% dari 1.419 responden menggunakan Go-Pay, sementara, 58,4% dari total responden menggunakan OVO. Adapun jumlah total transaksi Go-Pay di tahun 2018 mencapai Rp 87 Triliun. Sementara OVO mengaku mengalami kenaikan total jumlah pengguna 400% dan kenaikan total transaksi sebesar 75 kali lipat atau sekitar satu miliar transaksi.<br />\n<br />\nKeberadaan digital payment menjadi daya tarik bagi masyarakat oleh karena kemudahan dan kenyamanan yang dihadirkannya. Dalam dunia perbankan, daya tarik digital payment dapat mendatangkan keuntungan dengan menjadi nasabah bank tersebut. Fasilitas ini menyediakan dana murah bagi perbankan sehingga secara tidak langsung mendorong laba bagi bank tersebut. Sayangnya, fasilitas ini belum dimiliki oleh perbankan syariah di Indonesia. Keberadaan digital payment syariah dapat menjadi solusi untuk menurunkan cost of fund perbankan syariah sehingga KNKS memandang industri perbankan syariah di Indonesia memerlukan dan harus menyediakan jasa ini untuk para nasabahnya. Selain itu, digital payment berbasis syariah tentunya juga dibutuhkan untuk mengakomodir kebutuhan masyarakat muslim yang berjumlah 85% dari total populasi di Indonesia.<br />\n<br />\nUntuk mewujudkan digital payment syariah ini, KNKS pada 18 dan 29 Maret 2019 telah melaksanakan beberapa kegiatan diskusi dengan stakeholder seperti Bank Mandiri Syariah, BNI Syariah, BRI Syariah, serta BTN Syariah. Audiensi dengan PT Finarya selaku pelaksana satu-satunya digital payment milik BUMN yaitu LinkAja juga dilakukan pada 22 Maret 2019. Ke depannya, KNKS, Bank Syariah, serta LinkAja diharapkan dapat berkerjasama untuk menghadirkan aplikasi digital payment berbasis syariah yang didukung oleh Bank-Bank Syariah sebagai Bank Kustodian-nya. Kerjasama ini diharapkan dapat meningkatkan pelayanan keuangan syariah dimasa yang akan dating dan mendukung berkembangnya halal lifestyle di masyarakat Indonesia dalam bidang financial.</p>	\N	1557470305-foto-isu-12_resized.png	1	2019-04-01 01:01:01	1	kneks	2	\N	0	null	null
13	KNKS Berkomitmen untuk Turut Kembangkan Kawasan Industri Halal di Indonesia	\N	<p>KNKS sebagai katalisator pengembangan ekonomi syariah, berkomitmen&nbsp;kembangkan kawasan industri halal</p>	\N	<p>Pengembangan kawasan industri halal oleh Kementerian Perindustrian merupakan respon atas lahirnya Undang-Undang No 33 Tahun 2014 tentang Jaminan Produk Halal di Indonesia. Kawasan Industri Halal merupakan seluruh atau sebagian kawasan industri yang dibentuk dengan tujuan untuk menghasilkan produk-produk halal sesuai dengan sistem jaminan produk halal. Kementerian Perindustrian telah menunjuk empat wilayah prioritas untuk pengembangan kawasan industri halal, yaitu Batamindo Industrial Estate, Bintan Industrial Park, Jakarta Industrial Estate Pulogadung, dan Modern Cikande Industrial Estate.</p>\n\n<p>Hingga saat ini, Kementerian Perindustrian sudah mengeluarkan empat kriteria yang perlu dipenuhi dalam membangun suatu Kawasan industri antara lain; (1) Manajemen kawasan industri halal, (2) Laboratorium pengujian halal, (3) Sistem pengelolaan air bersih halal, (4) Auditor untuk Lembaga Penjamin Halal, (5) Pembatas Kawasan industri halal .</p>\n\n<p>Sebagai langkah mengatalisasi&nbsp;ekonomi syariah, salah satu langkah strategis&nbsp;adalah pengembangan Kawasan Industri Halal sebagaimana&nbsp;dicantumkan di dalam Masterplan Ekonomi Syariah Indonesia 2019-2024. Beberapa strategi yang disebutkan antara lain melakukan riset dan pengembangan terkait industri halal, menyediakan&nbsp;<em>training&nbsp;</em>sumber daya manusia, mendukung proses standardisasi dan sertifikasi halal beserta prosesnya, membentuk inkubator untuk perusahaan&nbsp;<em>startup&nbsp;</em>dalam bidang industri halal, membangun ekosistem&nbsp;<em>digital&nbsp;</em>dan&nbsp;<em>integrated information system&nbsp;</em>untuk&nbsp;<em>traceability&nbsp;</em>produk halal, sosialisasi mengenai literasi digital dan&nbsp;<em>halal lifestyle</em>, serta memfasilitasi koordinasi antar&nbsp;<em>stakeholders&nbsp;</em>industri halal.</p>\n\n<p>Pengembangan kawasan ini tentunya akan menghadapi isu dan tantangan penting. Untuk itu, KNKS melalui Direktorat Pengembangan Ekonomi Syariah dan Industri Halal, mendorong penguatan&nbsp;<em>halal value chain</em>. Hal ini ditempuh melalui pemetaan klaster industri halal sebagai strategi dalam menjadikan Indonesia pemain&nbsp;<em>global halal hub</em>. Dalam mengupayakan hal tersebut, akan dilakukan kajian dan analisis yang mencakup peninjauan aspek ekonomi dan preferensi konsumen. Melalui kajian dan analisa ini, diharapkan adanya strategi baik berupa rekomendasi kebijakan/insentif yang dapat menarik para pelaku industri dan investor, untuk berpartisipasi dan berinvestasi di kawasan tersebut. Selain itu melalui survei preferensi konsumen, diharapkan mampu menghasilkan strategi yang dapat mendorong pertumbuhan permintaan produk halal dari konsumen dalam negeri. Dengan kata lain, upaya penyusunan strategi nasional ini diharapkan mampu meningkatkan permintaan produk halal dan pengembangan industri halal di Indonesia.&nbsp;</p>\n\n<p>Berkaitan dengan upaya pengembangan Kawasan Industri Halal, kawasan ini dianggap perlu menyediakan fasilitas pendukung untuk mempermudah pelaku industri selama proses memproduksi produk halalnya.&nbsp;Fasilitas tersebut bisa dalam bentuk kemudahan koordinasi dan perizinan dengan menggunakan integrasi sistem&nbsp;<em>Online Single Submisson</em>, percepatan dan kemudahan proses sertifikasi halal, akses langsung ke pelabuhan, dan sebagainya. Selain itu, untuk investor dan pelaku industri, pemerintah dapat memberikan insentif pajak untuk mendorong pertumbuhan industri halal dalam kawasan tersebut, dan menarik partisipasi para pelaku industri di dalam kawasan ini.</p>\n\n<p>Strategi-strategi diatas dapat membantu percepatan pembangunan kawasan industri halal Indonesia. Dengan adanya kawasan ini, diharapkan dapat berkontribusi bagi peningkatan pertumbuhan PDB Indonesia, serta membuat Indonesia bisa menjadi&nbsp;<em>role model&nbsp;</em>Industri halal di dunia.&nbsp;</p>	\N	1561502189-kawasan industri halal.jpg	0	2019-06-21 05:03:12	11	kneks	2	\N	0	null	null
14	KNKS Berkomitmen untuk Dukung Kawasan Industri Halal di Indonesia	\N	<p>KNKS dukung Pengembangan Kawasan Industri Halal di Indonesia&nbsp;</p>	\N	<p>Pengembangan kawasan industri halal yang akan dilakukan oleh Kementerian Perindustrian merupakan respon atas lahirnya Undang-Undang No 33 Tahun 2014 tentang Jaminan Produk Halal di Indonesia. Kawasan Industri Halal merupakan seluruh atau sebagian kawasan industri yang dibentuk dengan tujuan untuk menghasilkan produk-produk halal sesuai dengan sistem jaminan produk halal. Kementerian Perindustrian menetapkan target empat wilayah prioritas untuk pengembangan kawasan industri halal, yaitu Batamindo Industrial Estate, Bintan Industrial Park, Jakarta Industrial Estate Pulogadung, dan Modern Cikande Industrial Estate.</p>\n\n<p>Hingga saat ini, Kementerian Perindustrian mengusungkan empat kriteria yang perlu dipenuhi dalam membangun suatu Kawasan industri antara lain; (1) Manajemen kawasan industri halal, (2) Laboratorium pengujian halal, (3) Sistem pengelolaan air bersih halal, (4) Auditor untuk Lembaga Penjamin Halal, (5) Pembatas Kawasan industri halal .</p>\n\n<p>Mengacu pada Masterplan Ekonomi Syariah Indonesia 2019-2024, penguatan rantai nilai halal merupakan bagian dari strategi utama dalam mewujudkan Indonesia&nbsp;yang Mandiri, Makmur, dan Madani dengan menjadi Pusat Ekonomi Syariah Terkemuka Dunia .&nbsp;Komite Nasional Keuangan Syariah sebagai mediator dan katalisator dari seluruh kegiatan ekonomi syariah berkomitmen untuk mendukung realisasi penguatan rantai nilai halal melalui inisiatif-inisatif strategis, salah satunya dalam hal pengembangan kawasan industri halal.&nbsp;</p>\n\n<p>KNKS melalui Direktorat Pengembangan Ekonomi Syariah dan Industri Halal, memiliki inisiatif program yaitu strategi nasional pengembangan industri halal yang bertujuan untuk menjadikan Indonesia sebagai pemain utama regional dan&nbsp;<em>global halal hub&nbsp;</em>dalam hal perdagangan maupun produksi.&nbsp;&nbsp;Inisiatif program ini merupakan upaya pemetaan klaster industri halal melalui kajian dan analisis yang mencakup tinjauan aspek ekonomi dan preferensi konsumen. Diharapkan, keluaran dari program ini ialah strategi baik berupa rekomendasi kebijakan maupun insentif yang dapat menarik para pelaku industri dan investor untuk berpartisipasi dan berinvestasi dalam mengembangkan kawasan industri halal. Tidak hanya itu, melalui survei preferensi konsumen, akan lahirnya strategi yang dapat mendorong pertumbuhan permintaan lokal terhadap produk halal dalam negeri.&nbsp;</p>\n\n<p>Berkaitan dengan upaya pengembangan Kawasan Industri Halal, Ketersediaan fasilitas pendukung diperlukan untuk mempermudah pelaku industri selama proses produksi produk halalnya. Fasilitas tersebut bisa dalam bentuk kemudahan koordinasi dan perizinan dengan menggunakan integrasi sistem&nbsp;<em>Online Single Submisson</em>, percepatan dan kemudahan proses sertifikasi halal, akses langsung ke pelabuhan, dan sebagainya. Selain itu, untuk investor dan pelaku industri, pemerintah dapat memberikan insentif pajak untuk mendorong pertumbuhan industri halal dalam kawasan tersebut serta menarik partisipasi para pelaku industri di dalam kawasan ini.</p>\n\n<p>Strategi-strategi diatas dapat membantu percepatan pembangunan kawasan industri halal Indonesia. Dengan adanya kawasan ini, diharapkan dapat berkontribusi bagi peningkatan pertumbuhan PDB Indonesia, serta membuat Indonesia bisa menjadi&nbsp;<em>role model&nbsp;</em>Industri halal di dunia.&nbsp;</p>\n\n<p>Penulis : Khairana Izzati</p>	\N	1562233122-pasar_halal.jpg	1	2019-07-01 10:39:21	11	kneks	2	\N	0	null	null
15	SRIA: Variasi Baru Produk Keuangan Syariah	\N	<p>KNKS bekerja sama dengan OJK mendorong penerapan SRIA</p>	\N	<p style="text-align:justify">KNKS bersama dengan Otoritas Jasa Keuangan (OJK) tengah mendorong perbankan syariah di Indonesia untuk mengembangkan produk investasi dengan akad <em>mudharabah muqayyadah</em>. Akad ini dinilai dapat memberikan keunikan pada produk perbankan syariah dibandingkan dengan produk perbankan konvensional. Dengan akad ini, investor dapat memilih proyek atau aset produktif yang ingin dibiayai secara langsung sesuai dengan kriteria yang ditentukan masing-masing investor.</p>\n\n<p style="text-align:justify">Kriteria ini mencakup di antaranya preferensi tingkat risiko dan imbal hasil yang diinginkan oleh investor, karena risiko dari penyaluran pembiayaan ini akan ditanggung oleh investor. Selama ini, bank syariah mengalami keterbatasan untuk masuk ke proyek-proyek besar pemerintah karena minimnya modal untuk menanggung risiko dari pembiayaan dengan nominal besar. Dengan ditanggungnya risiko oleh investor, bank syariah dapat memiliki keleluasaan lebih untuk menyalurkan pembiayaan dan memperbesar asetnya.</p>\n\n<p style="text-align:justify">Pada tahun 2018, OJK telah melakukan kajian terkait inovasi produk investasi ini yang dikenal sebagai <em>Sharia Restricted Intermediary Account (SRIA).</em> Tahun ini, KNKS menyusun <em>concept note</em> pengembangan produk SRIA dan melakukan diskusi serta koordinasi dengan <em>stakeholder</em> untuk mengupayakan realisasi <em>pilot project</em> implementasi produk SRIA oleh bank syariah.</p>\n\n<p style="text-align:justify">Sejauh ini, KNKS telah mengadakan <em>Focus Group Discussion</em> dengan OJK, Bank Indonesia (BI), Badan Kebijakan Fiskal (BKF) Kementerian Keuangan, Bursa Efek Indonesia (BEI), Dewan Syariah Nasional Majelis Ulama Indonesia (DSN-MUI), Dewan Standar Akuntansi Syariah Ikatan Akuntansi Indonesia (DSAS IAI), Asosiasi Bank Syariah Indonesia (ASBISINDO), Asosiasi Manajer Investasi Indonesia (AMII), dan Badan Ekonomi Kreatif (Bekraf).</p>\n\n<p style="text-align:justify">Umumnya, <em>stakeholder </em>memberi tanggapan cukup baik seperti yang diungkapkan oleh perwakilan ASBISINDO bahwa SRIA merupakan produk yang dibutuhkan oleh perbankan Syariah. SRIA dapat menjadi salah satu solusi kurangnya keunikan produk perbankan Syariah dibandingkan konvensional. Hal senada disampaikan pula oleh perwakilan Direktorat Pengaturan dan Perizinan Perbankan Syariah (DPPS) OJK. Menurut perhitungan yang telah dilakukan oleh salah satu bank syariah, fitur-fitur SRIA memungkinkan bank untuk berhemat sekitar 0,8% sampai 1% dalam penghimpunan dan penyaluran dananya.</p>\n\n<p style="text-align:justify">Atas dana investasi SRIA, bank tidak perlu membayarkan premi Lembaga Penjamin Simpanan (LPS) karena tidak ada <em>capital guarantee </em>pada produk investasi. Bank juga hanya perlu membentuk cadangan kerugian dan menghitung bobot risiko Aset Tertimbang Menurut Risiko (ATMR) atas aset yang dibiayai dana SRIA sebesar 1%.</p>\n\n<p style="text-align:justify">Terkait dengan penerapannya, KNKS dan beberapa <em>stakeholder</em> akan menyelesaikan ketentuan prudensial yang perlu disesuaikan untuk menerapkan SRIA. Ketentuan ini di antaranya seperti ketentuan mengenai penghitungan Batas Maksimum Penyaluran Dana (BMPD), Penyisihan Penghapusan Aktiva Produktif (PPAP), <em>non performing financing </em>(NPF), Rasio Intermediasi Makroprudensial (RIM) dan ketentuan lainnya.</p>\n\n<p style="text-align:justify">Diharapkan tarif pajak atas imbal hasil investasi SRIA juga bisa diperlakukan sama dengan tarif pajak atas imbal hasil produk investasi lainnya yang lebih rendah daripada tarif pajak atas imbal hasil produk perbankan.</p>\n\n<p style="text-align:justify">Ke depan, selain membiayai aset produktif bank syariah, SRIA juga diharapkan dapat menghubungkan antara produk investasi di perbankan syariah dengan pasar modal syariah dimana efek-efek syariah dapat menjadi <em>underlying asset</em> yang dibiayai melalui SRIA. Hal ini sesuai dengan rekomendasi dari Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) untuk menyusun produk baru pada perbankan syariah yang dapat menjadi instrumen penempatan dana yang secara khusus akan disalurkan pada sukuk yang diterbitkan pemerintah untuk membiayai proyek-proyek infrastruktur, pendidikan, dan pertanian tertentu dengan profit tinggi dan berdampak besar pada perekonomian.</p>\n\n<p style="text-align:justify">KNKS bersama dengan Otoritas Jasa Keuangan (OJK) tengah mendorong perbankan syariah di Indonesia untuk mengembangkan produk investasi dengan akad <em>mudharabah muqayyadah</em>. Akad ini dinilai dapat memberikan keunikan pada produk perbankan syariah dibandingkan dengan produk perbankan konvensional. Dengan akad ini, investor dapat memilih proyek atau aset produktif yang ingin dibiayai secara langsung sesuai dengan kriteria yang ditentukan masing-masing investor.</p>\n\n<p style="text-align:justify">Kriteria ini mencakup di antaranya preferensi tingkat risiko dan imbal hasil yang diinginkan oleh investor, karena risiko dari penyaluran pembiayaan ini akan ditanggung oleh investor. Selama ini, bank syariah mengalami keterbatasan untuk masuk ke proyek-proyek besar pemerintah karena minimnya modal untuk menanggung risiko dari pembiayaan dengan nominal besar. Dengan ditanggungnya risiko oleh investor, bank syariah dapat memiliki keleluasaan lebih untuk menyalurkan pembiayaan dan memperbesar asetnya.</p>\n\n<p style="text-align:justify">Pada tahun 2018, OJK telah melakukan kajian terkait inovasi produk investasi ini yang dikenal sebagai <em>Sharia Restricted Intermediary Account (SRIA).</em> Tahun ini, KNKS menyusun <em>concept note</em> pengembangan produk SRIA dan melakukan diskusi serta koordinasi dengan <em>stakeholder</em> untuk mengupayakan realisasi <em>pilot project</em> implementasi produk SRIA oleh bank syariah.</p>\n\n<p style="text-align:justify">Sejauh ini, KNKS telah mengadakan <em>Focus Group Discussion</em> dengan OJK, Bank Indonesia (BI), Badan Kebijakan Fiskal (BKF) Kementerian Keuangan, Bursa Efek Indonesia (BEI), Dewan Syariah Nasional Majelis Ulama Indonesia (DSN-MUI), Dewan Standar Akuntansi Syariah Ikatan Akuntansi Indonesia (DSAS IAI), Asosiasi Bank Syariah Indonesia (ASBISINDO), Asosiasi Manajer Investasi Indonesia (AMII), dan Badan Ekonomi Kreatif (Bekraf).</p>\n\n<p style="text-align:justify">Umumnya, <em>stakeholder </em>memberi tanggapan cukup baik seperti yang diungkapkan oleh perwakilan ASBISINDO bahwa SRIA merupakan produk yang dibutuhkan oleh perbankan Syariah. SRIA dapat menjadi salah satu solusi kurangnya keunikan produk perbankan Syariah dibandingkan konvensional. Hal senada disampaikan pula oleh perwakilan Direktorat Pengaturan dan Perizinan Perbankan Syariah (DPPS) OJK. Menurut perhitungan yang telah dilakukan oleh salah satu bank syariah, fitur-fitur SRIA memungkinkan bank untuk berhemat sekitar 0,8% sampai 1% dalam penghimpunan dan penyaluran dananya.</p>\n\n<p style="text-align:justify">Atas dana investasi SRIA, bank tidak perlu membayarkan premi Lembaga Penjamin Simpanan (LPS) karena tidak ada <em>capital guarantee </em>pada produk investasi. Bank juga hanya perlu membentuk cadangan kerugian dan menghitung bobot risiko Aset Tertimbang Menurut Risiko (ATMR) atas aset yang dibiayai dana SRIA sebesar 1%.</p>\n\n<p style="text-align:justify">Terkait dengan penerapannya, KNKS dan beberapa <em>stakeholder</em> akan menyelesaikan ketentuan prudensial yang perlu disesuaikan untuk menerapkan SRIA. Ketentuan ini di antaranya seperti ketentuan mengenai penghitungan Batas Maksimum Penyaluran Dana (BMPD), Penyisihan Penghapusan Aktiva Produktif (PPAP), <em>non performing financing </em>(NPF), Rasio Intermediasi Makroprudensial (RIM) dan ketentuan lainnya.</p>\n\n<p style="text-align:justify">Diharapkan tarif pajak atas imbal hasil investasi SRIA juga bisa diperlakukan sama dengan tarif pajak atas imbal hasil produk investasi lainnya yang lebih rendah daripada tarif pajak atas imbal hasil produk perbankan.</p>\n\n<p style="text-align:justify">Ke depan, selain membiayai aset produktif bank syariah, SRIA juga diharapkan dapat menghubungkan antara produk investasi di perbankan syariah dengan pasar modal syariah dimana efek-efek syariah dapat menjadi <em>underlying asset</em> yang dibiayai melalui SRIA. Hal ini sesuai dengan rekomendasi dari Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) untuk menyusun produk baru pada perbankan syariah yang dapat menjadi instrumen penempatan dana yang secara khusus akan disalurkan pada sukuk yang diterbitkan pemerintah untuk membiayai proyek-proyek infrastruktur, pendidikan, dan pertanian tertentu dengan profit tinggi dan berdampak besar pada perekonomian.</p>\n\n<p style="text-align:justify">&nbsp;</p>\n\n<p style="text-align:justify">Penulis: Farah R. Ariyana<br />\nEditor:&nbsp;Cindhi Cintokowati</p>	\N	1565595208-dices-over-newspaper-2656028_640.jpg	1	2019-08-12 14:28:21	6	kneks	3	\N	0	null	null
16	SRIA: Variasi Baru Produk Keuangan Syariah	\N	<p>KNKS dorong penerapan SRIA</p>	\N	<p style="text-align: justify;"><a name="_Hlk17122263">KNKS bersama dengan Otoritas Jasa Keuangan (OJK) tengah mendorong perbankan syariah di Indonesia</a><span style="background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:sans-serif,arial,verdana,trebuchet ms; font-size:13px"> </span>untuk mengembangkan produk investasi dengan akad <a name="_Hlk17122307"><em>mudharabah muqayyadah</em></a>. Akad ini dinilai dapat memberikan keunikan pada produk perbankan syariah dibandingkan dengan produk perbankan konvensional. Dengan akad ini, investor dapat memilih proyek atau aset produktif yang ingin dibiayai secara langsung sesuai dengan kriteria yang ditentukan masing-masing investor.</p>\n\n<p style="text-align: justify;">Kriteria ini mencakup preferensi tingkat risiko dan imbal hasil yang diinginkan karena risiko dari penyaluran pembiayaan ini akan ditanggung oleh investor. Selama ini, bank syariah mengalami keterbatasan untuk masuk ke proyek-proyek besar pemerintah karena minimnya modal untuk menanggung risiko dari pembiayaan dengan nominal besar. Dengan ditanggungnya risiko oleh investor, bank syariah dapat memiliki keleluasaan lebih untuk menyalurkan pembiayaan dan memperbesar asetnya.</p>\n\n<p style="text-align: justify;">Pada tahun 2018, OJK telah melakukan kajian terkait inovasi produk investasi ini yang dikenal sebagai <em>Sharia Restricted Intermediary Account (SRIA).</em> Tahun ini, KNKS menyusun <em>concept note</em> pengembangan produk SRIA dan melakukan diskusi serta koordinasi dengan <em>stakeholder</em> untuk mengupayakan realisasi <em>pilot project</em> implementasi produk SRIA oleh bank syariah.</p>\n\n<p style="text-align: justify;">Sejauh ini, KNKS telah mengadakan <em>Focus Group Discussion</em> dengan OJK, Bank Indonesia (BI), Badan Kebijakan Fiskal (BKF) Kementerian Keuangan, Bursa Efek Indonesia (BEI), Dewan Syariah Nasional Majelis Ulama Indonesia (DSN-MUI), Dewan Standar Akuntansi Syariah Ikatan Akuntansi Indonesia (DSAS IAI), Asosiasi Bank Syariah Indonesia (ASBISINDO), Asosiasi Manajer Investasi Indonesia (AMII), dan Badan Ekonomi Kreatif (Bekraf).</p>\n\n<p style="text-align: justify;">Umumnya, <em>stakeholder </em>memberi tanggapan cukup baik seperti yang diungkapkan oleh perwakilan ASBISINDO bahwa SRIA merupakan produk yang dibutuhkan oleh perbankan Syariah. SRIA dapat menjadi salah satu solusi kurangnya keunikan produk perbankan Syariah dibandingkan konvensional. Hal senada disampaikan pula oleh perwakilan Direktorat Pengaturan dan Perizinan Perbankan Syariah (DPPS) OJK. Menurut perhitungan yang telah dilakukan oleh salah satu bank syariah, fitur-fitur SRIA memungkinkan bank untuk berhemat sekitar 0,8% sampai 1% dalam penghimpunan dan penyaluran dananya.</p>\n\n<p style="text-align: justify;">Atas dana investasi SRIA, bank tidak perlu membayarkan premi Lembaga Penjamin Simpanan (LPS) karena tidak ada <em>capital guarantee </em>pada produk investasi. Bank juga hanya perlu membentuk cadangan kerugian dan menghitung bobot risiko Aset Tertimbang Menurut Risiko (ATMR) atas aset yang dibiayai dana SRIA sebesar 1%.</p>\n\n<p style="text-align: justify;">Terkait dengan penerapannya, KNKS dan beberapa <em>stakeholder</em> akan menyelesaikan ketentuan prudensial yang perlu disesuaikan untuk menerapkan SRIA. Ketentuan ini di antaranya seperti ketentuan mengenai penghitungan Batas Maksimum Penyaluran Dana (BMPD), Penyisihan Penghapusan Aktiva Produktif (PPAP), <em>non performing financing </em>(NPF), Rasio Intermediasi Makroprudensial (RIM) dan ketentuan lainnya.</p>\n\n<p style="text-align: justify;">Diharapkan tarif pajak atas imbal hasil investasi SRIA juga bisa diperlakukan sama dengan tarif pajak atas imbal hasil produk investasi lainnya yang lebih rendah daripada tarif pajak atas imbal hasil produk perbankan.</p>\n\n<p style="text-align: justify;">Ke depan, selain membiayai aset produktif bank syariah, SRIA juga diharapkan dapat menghubungkan antara produk investasi di perbankan syariah dengan pasar modal syariah dimana efek-efek syariah dapat menjadi <em>underlying asset</em> yang dibiayai melalui SRIA. Hal ini sesuai dengan rekomendasi dari Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) untuk menyusun produk baru pada perbankan syariah yang dapat menjadi instrumen penempatan dana yang secara khusus akan disalurkan pada sukuk yang diterbitkan pemerintah untuk membiayai proyek-proyek infrastruktur, pendidikan, dan pertanian tertentu dengan profit tinggi dan berdampak besar pada perekonomian.</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;">Penulis: Farah R. Ariyana<br />\nEditor: Cindhi Cintokowati</p>	\N	1566205053-dices-over-newspaper-2656028_640.jpg	0	2019-08-19 15:55:26	6	kneks	3	\N	0	null	null
17	KNKS Dorong Penyusunan Indikator Kemajuan Ekonomi Syariah Indonesia	\N	<p>Indonesia menjadi konsumen makanan halal terbesar di dunia dengan menghabiskan 170 miliar USD</p>	\N	<p>Menurut Laporan Thomson Reuters (2018), penduduk muslim dunia menghabiskan 1,30 triliun USD pada tahun 2017 untuk makanan halal serta Indonesia menjadi konsumen makanan halal terbesar di dunia dengan menghabiskan 170 miliar USD.</p>\n\n<p>Potensi ini menjadi kesempatan sekaligus tantangan yang besar bagi Indonesia untuk meningkatkan investasi dan produk makanan tersertifikasi halal. Tujuannya, agar Indonesia tidak lagi hanya menjadi konsumen terbesar, namun dapat menjadi salah satu produsen makanan halal terbesar di dunia.</p>\n\n<p>Suatu kajian atau penelitian dibutuhkan untuk memberikan justifikasi dalam pengambilan keputusan dan pembuatan kebijakan. Perkembangan ekonomi dan keuangan syariah di Indonesia tidak terlepas dari peran pemerintah daerah. Penambahan indikator daerah yang sudah ada sebelumnya dengan indikator penilaian kemajuan ekonomi syariah merupakan salah satu cara untuk mempercepat pengembangan ekonomi syariah daerah.</p>\n\n<p>Komite Nasional Keuangan Syariah (KNKS) mendorong penyusunan indikator kemajuan ekonomi syariah untuk makanan dan minuman halal di Indonesia. Langkah yang dilakukan oleh KNKS adalah dengan melakukan <em>Focus Group Discussion </em>(FGD) untuk mengidentifikasi, mengevaluasi, memverifikasi, dan menyusun dimensi, variable, dan elemen-elemen berkaitan. Hal tersebut selanjutnya akan disepakati dan ditindaklanjuti sebagai indikator detil untuk mengukur kemajuan ekonomi dan keuangan syariah di tingkat daerah atau provinsi di Indonesia dalam sektor makanan dan minuman halal.</p>\n\n<p>Beberapa <em>stakeholders</em> yang mendukung kegiatan ini diantaranya Halal Center LPPM IPB, LPPOM MUI, Indonesia Halal Watch, LPPM IPB, BPJPH (Badan Penyelenggara Jaminan Produk Halal), GAPMMI (Gabungan Pengusaha Makanan dan Minuman Seluruh Indonesia), ALI (Asosiasi Logistik Indonesia), BPS Jawa Barat, Dinas Koperasi dan UKM Jawa Barat, Dinas Ketahanan Pangan dan Peternakan Jawa Barat, dan Dinas Tanaman Pangan dan Hortikultura Jawa Barat.</p>\n\n<p>Direktur Pendidikan dan Riset Keuangan Syariah KNKS, Sutan Emir Hidayat, mengharapkan hal ini dapat menjadi cikal bakal pengembangan ekonomi syariah daerah di Indonesia. Melalui kesepakatan mengenai dimensi pengukuran kinerja ekonomi syariah daerah, diharapkan setiap daerah dapat mengembangkan ekonomi syariah sesuai dengan indikator yang telah disepakati.</p>\n\n<p>Kegiatan penyusunan indikator kemajuan ekonomi syariah juga tidak hanya dilakukan untuk sektor makanan dan minuman halal saja, tetapi juga nantinya akan berlanjut kepada sektor <em>fashion </em>muslim dan berbagai sektor lain di industri halal.</p>\n\n<p>&nbsp;</p>\n\n<p>Penulis: Nadiah Hidayati<br />\nEditor:&nbsp;Annissa Permata</p>	\N	1569243175-1569159245-pak emir.jpg	1	2019-09-20 20:33:50	5	kneks	3	\N	0	null	null
18	Is the Halal Industry Becoming More Attractive than Before?	\N	<p>Indonesia made a significant move with the launch of its Halal Economy Masterplan 2019-24 and the establishment of KNKS</p>	\N	<p>It has been fascinating to witness how the Halal industry has evolved over the past few years. There has clearly been a lot of activities as companies, organizations and even countries strategize to position themselves in this growing marketplace.&nbsp;The global Halal market of 1.8 billion Muslims is no longer narrowed to food and food-related products. The industry has expanded beyond the food sector, comprising cosmetics, health products, pharmaceuticals and medical devices, as well as service sector components such as marketing, logistics print and media, packaging and financing.&nbsp;</p>\n\n<p>Furthermore, with the increase of the Muslim population, the Halal industry has extended further into lifestyle offerings including Halal travel, fashion and hospitality.&nbsp;</p>\n\n<p>Halal food and beverage leads Muslim spending by category at US$1.37 trillion, followed by clothing at US$283 billion, media and recreation expenditure at US$220 billion, and the tourism expenditure and consumer pharmaceuticals and cosmetics at US$189 billion and US$156 billion respectively.&nbsp;</p>\n\n<p>Several countries have taken the lead in the development of the Halal industry including Malaysia, followed by the UAE, Bahrain, Saudi Arabia and Indonesia. These countries took serious action in the development of the Halal industry. Malaysia is introducing new initiatives to accredit Halal certifiers worldwide, issuing the first Islamic fintech crowdfunding license and launching a new certification scheme for Muslim-friendly hospitality.&nbsp;</p>\n\n<p>Meanwhile, the UAE announced a new banking law that came into force in September 2018, stating that each Islamic financial institution will have to establish an approved internal Shariah supervisory committee and internal Shariah auditing processes. The UAE also introduced new regulations in May 2019 regulating Takaful and Sukuk issuance both inside and outside the country.&nbsp;</p>\n\n<p>Bahrain has pushed the Islamic finance sector toward digitization, supported by the launch of Bahrain Fintech Bay and Bahrain Islamic Bank as the first full-fledged digital bank. Saudi Arabia carried transformational phases last year to fully open itself to international tourism and invest largely to develop the kingdom for tourism while announcing an e-visa system for 49 countries.</p>\n\n<p>At the same time, Indonesia made a significant move with the launch of its Halal Economy Masterplan 2019-24 and the establishment of the National Shariah Finance Committee, with&nbsp;the main goal of pushing the role of the Islamic economy in driving economic growth. This masterplan strengthens collective efforts to push Halal tourism in the country, and further develop a robust and strong ecosystem of business across Halal food, Muslim fashion and Islamic finance.&nbsp;</p>\n\n<p>The Halal market is not exclusive to Muslims and has gained increasing acceptance among non-Muslim consumers who associate Halal with ethical consumerism. Many non-Muslim countries such as Japan, Australia and Thailand have recognized the emerging global trend in consumerism towards Halal products and services, and now try to tap into the Halal industry.&nbsp;</p>\n\n<p>Japan is one of a few countries focused on attracting 1 million Muslim travellers a year. The upcoming 2020 Olympic Games to be held in Japan is an opportunity to attract Muslim tourists, and Japan is offering free visas for Muslim tourists, particularly from Indonesia, Malaysia and Thailand.&nbsp;Meanwhile, Australia, the largest meat exporter, is recognized as a world leader in Halal meat production. The country targets to export its Halal meat to the Organization Islamic Committee (OIC) countries, where the value of the export has reached AUD1.42 billion (US$823.46 million) in 2013-2014 (Australian Government Department of Agriculture, 2015).&nbsp;In addition, Thailand has become one of the largest Halal food exporters in the global market due to the Thai government&rsquo;s urge to develop Thai Halal food products to help push the country&rsquo;s exports.&nbsp;</p>\n\n<p>Opportunities in the Halal industry are attractive, particularly the revenue developments from technology evolvement in each sector. Halal traceability platforms in the food industry, for instance, is able to connect the entire supply chain from producers to auditors and certifying bodies, while fintech companies are considering Shariah-compliant products as financing alternatives for businesses. In the Halal lifestyle sector, app-based Islamic lifestyle services can be one of the significant investments for investors, governments and businesses.</p>\n\n<p>&nbsp;</p>\n\n<p>Source:&nbsp;<a href="https://www.islamicfinancenews.com/supplements/ifn-15th-anniversary-special">https://www.islamicfinancenews.com/supplements/ifn-15th-anniversary-special</a>.</p>	\N	1581325051-AAAAAAAA.jpg	1	2020-02-10 15:56:51	11	kneks	3	\N	0	null	null
19	Pengembangan Industri Produk Halal melalui Riset dan Inovasi Bidang Sains Halal	\N	\N	\N	<p>q</p>	\N	1626424390-professional-bacteriologist-putting-blood-sample-microscope-expertise-covid-19-vaccine-creation-concept1.png	0	2021-07-08 15:27:54	4	kneks	3	\N	0	null	null
20	Riset dan Inovasi Bidang Sains Halal untuk Industri Produk Halal	\N	\N	\N	<p>Berdasarkan Laporan State of the Global Islamic Economy Indicator 2020/2021, Indonesia adalah negara pengimpor makanan halal terbesar di dunia, diikuti oleh Turki, Pakistan, Mesir, dan Bangladesh berturut-turut. Di sisi lain masih sangat banyak perusahaan manufaktur yang menggunakan babi serta derivatnya sebagai bahan baku atau bahan tambahan pada makanan, obat-obatan, dan kosmetik di seluruh dunia.</p>\n\n<p>Menurut laporan USDA (2020) terdapat lima negara eksportir babi terbesar di dunia yakni (1) Cina, (2) Uni Eropa, (3) Amerika, (4) Brazil, dan (5) Rusia. Negara-negara tersebut juga menjadi penyumbang ekspor makanan, obat obatan dan kosmetika halal ke negara-negara OKI termasuk Indonesia. Indonesia sebagai negara dengan penduduk Muslim terbesar di dunia harus mempunyai perhatian yang besar terhadap kehalalan produk baik makanan, obat-obatan, maupun kosmetik.</p>\n\n<p>Indonesia sebagai negara agraris mempunyai keunggulan komparatif tersendiri. Rempah rempah dan komoditas unggulan Indonesia baik hewani maupun nabati dapat menjadi sumber potensial yang dikembangkan untuk memenuhi kebutuhan industri produk halal dalam negeri. Apalagi pandemi COVID-19 berkontribusi dalam pembatasan kegiatan ekspor dan impor bahan baku industri. Dibutuhkan terobosan dalam optimalisasi bahan baku lokal yang halal untuk memenuhi kebutuhan industri produk halal dalam negeri.</p>\n\n<p>KNEKS sebagai koordinator pengembangan ekonomi syariah dan industri halal Indonesia berusaha menjawab tantangan tersebut. Salah satunya adalah berkoordinasi dengan berbagai pemangku kepentingan terkait industri halal, baik dengan berbagai Kementerian/Lembaga, swasta, maupun akademisi. Salah satu langkah strategis KNEKS dalam mengembangkan industri produk halal adalah melakukan pertemuan dan berkoordinasi dengan Badan Riset dan Inovasi Nasional (BRIN) untuk bersinergi dalam memperkuat riset dan inovasi nasional di bidang sains halal pada Kamis, 7 Juli 2021.</p>\n\n<p>Adapun hasil dari diskusi adalah sebagai berikut:</p>\n\n<ul>\n\t<li>BRIN sudah mendapatkan arahan Bapak Wakil Presiden, Prof. K.H. Ma&rsquo;ruf Amin yang juga sebagai Ketua Harian KNEKS untuk BRIN mendukung pengembangan riset ekonomi syariah dan industri halal.</li>\n\t<li>BRIN berkomitmen untuk mendukung dan bersinergi dalam pengembangan riset serta inovasi ekonomi syariah dan sains halal untuk menjadikan Indonesia sebagai pusat ekonomi syariah dunia.</li>\n\t<li>Direncanakan riset di bidang sains halal akan dimasukkan dalam Prioritas Riset Nasional (PRN) mulai tahun 2022 dan dibuat <em>section </em>khusus.</li>\n\t<li>Fokus riset BRIN dalam jangka pendek sejalan dengan program pengembangan riset sains halal KNEKS diantaranya: (i) riset tentang bahan baku substitusi non-halal di sektor makanan, farmasi, dan kosmetik; (ii) Pengembangan teknologi alat deteksi bahan kritis halal; dan (3) Pembuatan standardisasi halal bagi Lembaga-Lembaga Penjamin Halal (LPH) di seluruh Indonesia.</li>\n\t<li>Balai Penelitian Teknologi Bahan Alam LIPI (BPTBA-LIPI) yang berada di bawah naungan BRIN akan dijadikan sebagai pusat riset pangan nasional dan BRIN sedang membangun laboratorium berskala nasional yang nantinya bisa digunakan oleh berbagai perguruan tinggi, pelaku usaha, dan pemerintah untuk kepentingan riset salah satunya terkait sains halal.</li>\n</ul>\n\n<p>Penulis: Citra Atrina Sari<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1626680160-professional-bacteriologist-putting-blood-sample-microscope-expertise-covid-19-vaccine-creation-concept1.png	1	2021-07-13 14:35:52	5	kneks	4	\N	0	null	null
21	Sistem Informasi dan Integrasi Data Institusi Keuangan Mikro Syariah (SIID IKMS)	\N	\N	\N	<p>Praktik keuangan mikro syariah di Indonesia memiliki bentuk yang beragam, salah satunya adalah&nbsp;<em>Baitul Maal Wat Tamwil</em>&nbsp;atau yang biasa disingkat BMT. Bentuk lembaga ini diakui sebagai lembaga keuangan mikro syariah yang lahir di Indonesia dengan berbagai ciri dan kekhasan tersendiri. Dalam perkembangannya, layanan keuangan mikro syariah berbentuk BMT ini bertransformasi menjadi ujung tombak keuangan mikro syariah dengan sistem yang paling sesuai dengan masyarakat berpenghasilan rendah di Indonesia.</p>\n\n<p>Namun dalam melaksanakan perannya tersebut, BMT di Indonesia masih menghadapi beberapa tantangan besar. Salah satu tantangan yang dihadapi tersebut yaitu tidak tersedianya data riil termasuk tingkat kesehatan dari keseluruhan sektor institusi keuangan mikro Syariah (IKMS). Hal ini dikarenakan tidak adanya suatu sistem pelaporan dan pengawasan yang komprehensif.</p>\n\n<p>Sebagai upaya dalam memberikan solusi terhadap tantangan yang dihadapi oleh sektor keuangan mikro Syariah di atas, Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) menginisiasi untuk membuat dan mengembangkan sistem informasi dan integrasi data Institusi Keuangan Mikro Syariah (SIID IKMS) dalam bentuk suatu sistem IT (<em>dashboard</em>).</p>\n\n<p>Pada dasarnya pengembangan sistem aplikasi&nbsp;<em>dashboard&nbsp;</em>ini dibuat generik untuk mengantisipasi beragamnya aplikasi&nbsp;<em>core microfinance system</em>&nbsp;yang digunakan oleh BMT. Hal ini juga menjadi salah satu kendala saat pertama kali mengembangkan standarisasi pelaporan dan pengawasan. Dasar pemikiran pembuatan aplikasi dashboard ini adalah generik, mudah dioperasikan oleh SDM yang ada, tidak perlu menggunakan hardware dengan spesifikasi tinggi dan tanpa harus mengganti aplikasi&nbsp;<em>core microfinance system</em>&nbsp;di masing-masing BMT.</p>\n\n<p>Penulis: Arief Aditya<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1626684274-1624949820-pexels-serpstat-572056.jpg	1	2021-06-25 15:43:19	3	kneks	4	\N	0	null	null
22	Brand Ekonomi Syariah sebagai Penyatu Langkah Ekonomi Syariah Indonesia	\N	\N	\N	<p>Dalam rangka meningkatkan literasi ekonomi syariah di masyarakat, Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) dan Bank Indonesia (BI) menyelenggarakan Sayembara Brand Ekonomi Syariah di Desember 2020. Sayembara ini dilakukan untuk mendapatkan satu logo yang akan merepresentasikan ekonomi syariah Indonesia dengan pemenuhan karakter 8K (Kesejahteraan, Kesetaraan, Kepedulian, Keberpihakan, Kenyamanan, Kebanggaan, Karakter, dan Kolaborasi).</p>\n\n<p>Setelah melalui tahapan seleksi ketat, dari 870 karya oleh 780 peserta terpilihlah satu karya terbaik atas nama Marwan Chandra Nugroho dari Yogyakarta. Penganugerahan pemenang Sayembara Brand Ekonomi Syariah dilaksanakan oleh KNEKS dan BI melalui platform daring pada Rabu 2 Februari 2021.</p>\n\n<p>Kemudian pada Senin 25 Januari 2021, Brand Ekonomi Syariah secara resmi diluncurkan oleh Presiden Joko Widodo (Jokowi) yang juga merupakan Ketua KNEKS. Presiden mengatakan Brand Ekonomi Syariah berperan penting dalam meningkatkan <em>awareness</em> masyarakat sebagai dukungan atas seluruh kegiatan ekonomi syariah di Indonesia.</p>\n\n<p>Adapun tujuan dari Brand Ekonomi Syariah adalah untuk mempersatukan langkah seluruh pemangku kepentingan ekonomi dan keuangan syariah Indonesia. Mengangkat <em>tagline</em> &ldquo;Kebaikan Untuk Semua&rdquo;, Brand Ekonomi Syariah menjadi logo atau simbol milik negara yang dapat digunakan untuk menyatukan kebersamaan dalam seluruh kegiatan yang berkaitan dengan ekonomi dan keuangan syariah Indonesia. Selain itu, brand ini dapat memperkuat <em>positioning</em> ekonomi syariah Indonesia di dunia. Oleh karena itu, Brand Ekonomi Syariah menjadi inisiatif strategis dalam mempercepat pengembangan ekonomi syariah dalam rangka mendukung pencapaian visi Indonesia sebagai pusat syariah dunia.&nbsp;</p>\n\n<p>Dalam acara peluncuran turut hadir Wakil Presiden Ma&#39;ruf Amin dan Menteri Keuangan Sri Mulyani Indrawati mendampingi Presiden di Istana Negara secara langsung dengan tetap menerapkan protokol kesehatan. Peluncuran ini juga dihadiri secara daring oleh para menteri dan kepala lembaga negara, gubernur, serta pemangku kepentingan terkait.</p>\n\n<p>Wakil Presiden Ma&#39;ruf Amin yang juga bertindak selaku Ketua Harian KNEKS menyampaikan bahwa Brand Ekonomi Syariah digunakan untuk peningkatan literasi, edukasi, serta sosialisasi ekonomi dan keuangan syariah yang masif dengan tujuan untuk meningkatkan pengetahuan, keterampilan, dan keyakinan masyarakat akan ekonomi dan keuangan syariah.</p>\n\n<p>Sementara dalam kesempatan yang sama, Menteri Keuangan Sri Mulyani selaku Sekretaris KNEKS menyampaikan bahwa peresmian Brand Ekonomi Syariah merupakan inisiasi dari KNEKS sebagai salah satu upaya menjawab tantangan pengembangan ekonomi dan keuangan syariah di Indonesia. Brand Ekonomi Syariah dapat digunakan seluruh kementerian dan lembaga serta para stakeholder yang bergerak di dalam bidang ekonomi dan keuangan syariah pada setiap produk, program, kegiatan, maupun kampanye yang dilakukan.</p>\n\n<p>Penulis: Ishmah Qurratu&#39;ain<br />\nRedaktur Pelaksana: Inza Putra</p>	\N	1627612344-Ekonomi Syariah (Tagline)- Full Color - Logo Horizontal 1 Baris resize.jpg	1	2021-07-23 09:23:43	12	kneks	4	\N	0	null	null
23	Penguatan Kemandirian Ekonomi Pesantren Berbasis Syariah	\N	\N	\N	<p>Pesantren merupakan salah satu institusi pendidikan Islam tertua di Indonesia yang sampai saat ini terus memberikan kontribusi penting di bidang sosial keagamaan. Sejarah menjadi saksi bagaimana peran kiai dan santri-santrinya yang terus berjuang menghasilkan berbagai manfaat bagi masyarakat baik di masa pra kolonial, kolonial dan pasca kolonial, bahkan di masa kini pun peran itu masih tetap dirasakan.</p>\n\n<p>Ketangguhan pesantren dalam mempertahankan misinya sebagai lembaga pendidikan Islam telah memberikan dampak yang cukup positif di kalangan masyarakat. Melalui kegiatan dakwah Islam, masyarakat pun semakin tertarik untuk mempelajari agama Islam lebih dalam. Ketahanan yang ditampilkan pesantren dalam menghadapi laju perkembangan zaman, menunjukkan pesantren sebagai suatu lembaga pendidikan yang membentuk dan mengembangkan nilai-nilai moral dengan dasar agama yang menjadi pendorong sekaligus inspirator pembangunan bangsa.</p>\n\n<p>Pesantren merupakan lembaga pendidikan yang bersifat mandiri dan tidak bergantung pada pihak manapun. Dengan sifat kemandiriannya inilah pesantren bisa memegang teguh kemurniannya sebagai lembaga pendidikan Islam.</p>\n\n<p>Selain menjadi pusat pendalaman ilmu agama, pesantren juga memiliki potensi dalam pengembangan ekonomi. Potensi ekonomi yang ada dalam pesantren dapat dimanfaatkan untuk memenuhi kebutuhan penghuni pesantren dan masyarakat.</p>\n\n<p>Saat ini, beberapa pesantren juga telah membuktikan keberhasilannya menjadi pelaku ekonomi dan memberdayakan ekonomi masyarakat sekitar. Melihat potensi tersebut, Kementerian Agama mengeluarkan program Peta Jalan Kemandirian Pesantren yang disusun dengan tujuan untuk mengembangkan pondok pesantren, bukan hanya sebagai lembaga pendidikan, tetapi juga sebagai percontohan gerakan ekonomi.</p>\n\n<p>Terdapat empat tujuan strategis dari peta jalan itu yaitu penguatan pesantren dalam menjalankan fungsi pemberdayaan masyarakat dengan menjadi Community Economic Hub di lingkungannya, penguatan fungsi pesantren dalam menghasilkan insan (SDM) yang unggul dalam ilmu agama, keterampilan kerja, dan kewirausahaan, penguatan peran Kementerian Agama dalam mewujudkan kemandirian pesantren, dan penguatan pesantren dalam mengelola unit bisnis sebagai sumber daya ekonomi.</p>\n\n<p>Kemandirian ekonomi pesantren juga dapat semakin ditingkatkan dengan hadirnya beragam bentuk lembaga keuangan syariah di Pesantren. Salah satunya dengan hadirnya BMT (Baitul Maal wat Tamwil) di sejumlah pesantren. Beberapa manfaat dengan adanya BMT di pesantren diantaranya yaitu untuk membantu pengembangan ekonomi pesantren, memberdayakan ekonomi masyarakat, membantu masyarakat yang membutuhkan pembiayaan, dan beragam manfaat lainnya. Maka dari itu, didirikannya BMT di pesantren dilihat dapat menjadi salah satu pendorong peningkatan ekonomi pesantren dan ekonomi masyarakat sekitar pesantren.</p>\n\n<p>Tetapi untuk mendirikan BMT memang tidak mudah karena pesantren harus mempersiapkan beberapa hal seperti permodalan, sumber daya manusia, perhitungan yang tidak hanya fokus terhadap keuntungan tetapi juga dampak pada perekonomian pesantren itu sendiri, dan manajemen yang baik. Oleh karena itu, diperlukan dukungan dan kolaborasi berbagai pihak guna menghadirkan BMT yang bermanfaat (impactful) di berbagai pesantren. Dengan kehadiran BMT di pesantren, program kemandirian ekonomi pesantren ini diyakini dapat berjalan dengan lebih lancar dan selanjutnya memberi dampak positif yang signifikan pada penguatan ekonomi bangsa.</p>\n\n<p>Penulis: Raisya Azzahra<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1631539108-istockphoto-846759596-612x612.jpg	1	2021-09-13 17:13:56	14	kneks	4	\N	0	null	null
24	Indonesia Negara Pelopor Data Perdagangan Produk Halal Terintegrasi	\N	<p><strong>Indonesia Menuju Negara Pertama di Dunia Yang Memiliki Data Perdagangan Produk Halal Terintegrasi</strong></p>	\N	<p>Selangkah lagi Indonesia akan menuju negara dengan data perdagangan ekspor dan impor produk halal yang terintegrasi dengan sistem pelaporan lalu lintas barang. Sistem kodifikasi produk halal yang diinisiasi oleh Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) saat ini tengah dikembangkan bersama dengan Dirjen Bea dan Cukai, Lembaga <em>National Single Window (LNSW)</em> dan Badan Penyelenggara Jaminan Produk Halal (BPJPH). Inisiatif yang sudah mulai diolah semenjak akhir tahun 2020 lalu merupakan jawaban dari visi yang dicanangkan oleh Wakil Presiden K.H. Ma&rsquo;ruf Amin yang ingin menjadikan Indonesia sebagai Pusat Produsen Halal Dunia dan pemimpin ekonomi syariah global.</p>\n\n<p>Dalam webinar strategis nasional yang dilaksanakan di istana Wapres, Oktober 2020 lalu, Wakil Presiden yang juga Ketua Harian KNEKS menyampaikan bahwa sebenarnya Indonesia adalah pemain terkemuka perdagangan produk halal dunia, namun saja saat ini produk yang diperdagangkan tidak terkoneksi datanya dengan data sertifikasi halal. Indonesia lebih banyak disibukkan dengan sertifikasi halal produk impor yang masuk ke pasar tanah air, disamping memperhatikan pengembangan pasar ekspor untuk produk halalnya. Padahal sebagian besar produk ekspor Indonesia komoditas non-migas adalah produk yang berbasis bahan halal. Berdasarkan data BPS, pada tahun 2020 Indonesia mencatat ekspor non-migas sebesar USD 154,9 milyar yang USD 30,2 milyar nya adalah ekspor produk makanan dan USD 6,9 milyar merupakan produk pertanian, peternakan dan olahannya. Oleh karena itu peranan kodifikasi produk halal dengan data transaksi perdagangan akan sangat penting untuk bisa memberikan gambaran yang utuh mengenai potensi dan perkembangan industri halal Indonesia.</p>\n\n<p>Dengan kodifikasi ini, Indonesia akan menjadi negara pertama yang memiliki <em>database</em> industri halal yang terintegrasi secara komprehensif. Ini akan menjadikan nilai penting bagi Indonesia sebagai pusat produsen halal dunia, di samping juga sebagai pasar produk halal terbesar di dunia. Kodifikasi produk halal yang mengedepankan konsep penyamaan standard HS<em> code</em> dan <em>traceability</em> atau ketelusuran halal akan membantu banyak industri agar kemudian lebih mudah melakukan sertifikasi halal produk yang dihasilkannya, karena data input <em>raw material</em> maupun produk antara yang digunakan sudah terdeteksi kehalalannya melalui sistem ini. Kodifikasi ini juga akan memberikan pengaruh penting pada industri produk halal global yang mempergunakan produk halal berasal dari Indonesia. Pasar produk halal dunia akan bisa terlayani semakin baik melalui menerapannya ini. Indonesia melihat peluang untuk meningkatkan nilai <em>global value chain</em> industrinya sangat memungkinkan melalui pengembangan industri produk halal ini.</p>\n\n<p>KNEKS, sedang bekerja secara fokus untuk menyelesaikan sistem kodifikasi ini bersama dengan stakeholder terkait. Insya Allah sebelum akhir tahun 2021 hal ini akan bisa kita wujudkan.</p>\n\n<p>Penulis:&nbsp;Afdhal Aliasar -&nbsp;Direktur Industri Produk Halal KNEKS</p>	\N	1627616494-Sistem INSW.png	1	2021-07-29 10:43:43	10	kneks	4	\N	0	null	null
25	Pembenahan Tata Kelola Wakaf Uang Melalui Harmonisasi dan Penguatan Regulasi	\N	\N	\N	<p>Potensi wakaf uang di Indonesia menurut Badan Wakaf Indonesia (BWI) mencapai 180 triliun, dan beberapa sumber lain menyebutkan sekitar 120 triliun (Noor, 2015), dan 11,82 triliun (Nizar 2017). Potensi wakaf uang ini diharapkan dapat dioptimalkan untuk turut serta mempercepat pemulihan ekonomi nasional yang terdampak pandemi Covid-19.</p>\n\n<p>Meski potensi wakaf uang diperkirakan mencapai triliunan rupiah, namun pada realitanya jumlah akumulasi wakaf wakaf uang dan wakaf melalui uang, hanya sekitar 819 milyar rupiah (Data BWI Januari 2021, unaudited). Hasil kajian menyebutkan di antara permasalahan yang menyebabkan besarnya gap potensi wakaf dan realita dilapangan adalah terkait regulasi dan kelembagaan wakaf uang yang perlu dikuatkan dan diharmoniskan.</p>\n\n<p>Penguatan regulasi dan kelembagaan wakaf uang merupakan salah satu upaya pemerintah dalam pembenahan tata kelola wakaf untuk mengoptimalkan manfaat wakaf bagi masyarakat luas.&nbsp; Sebagaimana arahan Wakil Presiden KH Ma&rsquo;ruf Amin pada peluncuran Gerakan Nasional Wakaf Uang Januari lalu, bahwa pembenahan tata kelola pemangku kepentingan wakaf benda bergerak dimulai dengan pembenahan tata kelola wakaf uang sebagai salah satu bentuk wakaf produktif.</p>\n\n<p>Terkait hal ini Direktorat Infrastruktur Ekosistem Syariah, Manajemen eksekutif KNEKS mengadakan <em>Focus Group Disscusion</em> (FGD) bertajuk Harmonisasi dan penguatan regulasi wakaf uang, pada 28 Juli 2021.</p>\n\n<p>Dari hasil diskusi didapatkan beberapa kesimpulan diantaranya sebagai berikut; a) adanya potensi disharmoni regulasi antara peraturan terkait wakaf uang; b) Perlunya regulasi tentang wakaf uang perlu diatur secara spesifik agar perbuatan hukum yang dilakukan memiliki dasar dan kepastian hukum; c) Perlu adanya revitalisasi berkenaan dengan wakaf dalam hal penghimpunan, pengelolaan dan kelembagaan dari BWI; d) Perlu adanya keterlibatan Pemerintah Daerah dalam pengembangan wakaf di Indonesia; dan e) Program revisi UU Wakaf yang masuk dalam program legislasi nasional 2020-2024, merupakan salah satu kesempatan untuk dapat mengajukan rekomendasi yang berangkat dari inventarisir masalah hukum dalam pelaksanaan dan pengembangan wakaf di Indonesia.</p>\n\n<p>Pada penutup agenda <em>Focus Group Disscusion</em> (FGD), disepakati bahwa hasil diskusi ini perlu pendalaman dan pengerucutan isu, untuk dapat diajukan sebagai rekomendasi yang dapat ditindak lanjuti baik untuk jangka pendek, menengah dan jangka panjang. Diharapkan dengan sinergi dan kolaborasi yang solid antara regulator, praktisi, pakar dan akademisi hukum ekonomi dan keuangan syariah, dapat mempercepat terbangunnya ekosistem hukum ekonomi&nbsp; syariah yang kuat, menyeluruh dan integratif.</p>\n\n<p>Penulis: Adelina Zuleika<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1627633444-hand-holding-growing-pile-of-money-economic-growth1.jpg	1	2021-07-29 15:18:38	13	kneks	5	\N	0	null	null
26	Revisi UU Wakaf Perlu Disegerakan	\N	\N	\N	<p>Indonesia sudah memiliki Undang-Undang (UU) Wakaf sejak tahun 2004. Tepatnya sejak disahkannya Undang-Undang No. 41 Tahun 2004 Tentang Wakaf. Berlakunya UU Wakaf ini telah mewarnai perkembangan wakaf di Indonesia selama ini. Kini setelah 17 tahun UU Wakaf ini berlaku, sudah sangat banyak perubahan keadaan yang mewarnai masyarakat Indonesia. Dimana, Perubahan-perubahan yang terjadi ini memiliki keterkaitan dengan pengaturan wakaf sebagaimana tersebut dalam UU Wakaf.</p>\n\n<p>Menyadari besarnya perubahan yang terjadi di masyarakat, yang memiliki dampak terhadap persoalan wakaf di Indonesia, banyak kalangan sudah mengusulkan tentang perlunya dilakukan perubahan atas UU Wakaf. Semakin lama, usulan agar ada perubahan UU Wakaf ini terus menggelinding di tengah-tengah masyarakat. Akhirnya Usulan perubahan UU Wakaf ini semakin membesar dan telah disampaikan kepada berbagai pihak yang menjadi <em>stake holder</em> wakaf di Indonesia.</p>\n\n<p><strong>Isu Utama Revisi UU Wakaf</strong></p>\n\n<p>Undang-Undang no. 41 Tahun 2004 Tentang Wakaf&nbsp; belum mampu menjawab berbagai perkembangan dan permasalahan wakaf yang ada saat ini. Ada banyak hal yang seharusnya diubah dalam UU Wakaf, guna menyesuaikan dengan perkembangan, sekaligus mengoptimalkan pengelolaan wakaf&nbsp; dalam meningkatkan kesejahteraan masyarakat Indonesia. Serangkaian isu utama harus mendapatkan pengaturan pada isi revisi UU Wakaf.</p>\n\n<p>Beberapa isu utama revisi UU Wakaf adalah :</p>\n\n<ol>\n\t<li>Penataan kelembagaan : pengaturan Regulator atau Otoritas dan pengaturan Lembaga Pengelola Aset Wakaf Nasional</li>\n\t<li>Pengaturan tentang Nazir : Persyaratan, Sertifikasi, Biaya Operasional, &nbsp;Pembinaan dan Pengawasan Nazir</li>\n\t<li>Pengaturan tentang Wakaf Tanah : akad, pendaftaran, sertifikasi, pemanfaatan, memproduktifkan dan tukar guling tanah wakaf</li>\n\t<li>Pengaturan tentang Wakaf Uang : akad, peran lembaga keuangan, pengelolaan, investasi, alokasi imbal hasil, dan penyaluran kepada mauquf alaih.</li>\n\t<li>Pengaturan Wakaf Bergerak non Uang (contohnya &nbsp;Wakaf Surat Berharga dan HAKI) : Akad, Tata Kelola Produk, Pengamanan dan Pengembangan</li>\n\t<li>Pengaturan tentang Investasi Wakaf : Komite Investasi, Jenis Investasi, persyaratan investasi, Penjaminan Pembiayaan dan Penjaminan Investasi Wakaf serta Alokasi hasil investasi.</li>\n\t<li>Pengaturan tentang pemanfaatan teknologi dalam pengelolaan wakaf : Pemanfaatan teknologi pada aspek penerimaan, akad, operasional, pengawasan dan pembinaan Nazir.</li>\n\t<li>Pengaturan tentang Pusat Data Wakaf Nasional : Lembaga Pengelola pusat data wakaf nasional, Kewajiban pelaporan pada Nazir, Pengelolaan keamanan dan kelangsungan data, Pemanfaatan data dari pusat data wakaf Nasional.</li>\n\t<li>Pengaturan tentang Insetif Pajak atas perwakafan, yang meliputi : Insentif atas wakif, aset wakaf, investasi wakaf,&nbsp; hasil investasi wakaf, dan penyaluran kepada mauquf alaih</li>\n</ol>\n\n<p><strong>Perkembangan Proses Revisi UU Wakaf</strong></p>\n\n<p>Dalam proses legislasi revisi UU wakaf, beberapa hal yang sudah dicapai sampai dengan saat ini adalah :</p>\n\n<ol>\n\t<li>Revisi UU Wakaf telah diusulkan oleh berbagai pihak, baik dari masyarakat dan pemerintah kepada DPR agar dapat dilakukan segera.</li>\n\t<li>Revisi UU wakaf telah masuk dalam daftar Prolegnas DPR RI 2019 &ndash; 2024 atas inisiatif DPR.</li>\n\t<li>Telah dibentuk Pokja Revisi UU Wakaf oleh Kementerian Agama yang melibatkan berbagai stakeholder terkait pengelolaan wakaf.</li>\n\t<li>Komisi VIII DPR RI telah menyetujui untuk dilakukannya revisi UU Wakaf, pada Rapat Dengar Pendapat Komisi VIII DPR RI dengan Badan Wakaf Indonesia (BWI) pada tanggal&nbsp; 13 September 2021.</li>\n</ol>\n\n<p>Perlu terus dilakukan upaya dari berbagai pihak, agar proses legislasi revisi UU Wakaf ini betul-betul terlaksana, dan menghasilkan UU Wakaf baru.</p>\n\n<p>Penulis: Ahmad Juwaini&nbsp;- Direktur Keuangan Sosial Syariah KNEKS</p>	\N	1632450262-people-holding-rubber-heart1.jpg	1	2021-09-22 09:19:17	7	kneks	2	\N	0	null	null
27	Menguatkan Model Pengelolaan Zakat Berbasis Wilayah	\N	<p>Pengelolaan zakat berbasis wilayah sebagai strategi pengembangan dana sosial syariah</p>	\N	<p>Badan Pusat Statistik (BPS) belum lama telah merilis publikasi Statistik Indonesia 2021 yang salah satunya menyajikan kondisi sosial dan kesejahteraan masyarakat Indonesia. Adapun dalam publikasi tersebut, berbagai indikator yang disajikan menunjukkan tingkat kesejahteraan masyarakat Indonesia masih cenderung rendah. Namun di sisi lain, peningkatan jumlah penduduk miskin mengalami tren positif yang disebabkan pandemi Covid-19. Dalam publikasi lainnya, BPS merilis sebesar 10,14% atau sebanyak 27,54 juta penduduk Indonesia berstatus miskin per Maret 2021. Sedangkan tingkat ketimpangan di Indonesia tergolong masih cukup tinggi, yaitu sebesar 0,384.</p>\n\n<p>Permasalahan kemiskinan dan ketimpangan di daerah tentunya juga perlu mendapatkan perhatian serius. Jika kita melihat data ke level Kabupaten/Kota, angka kemiskinan pada level tersebut memiliki variasi yang cukup tinggi, sekalipun jika dibandingkan antar Kabupaten/Kota di provinsi yang sama. Sebagai contoh, berdasarkan publikasi Data dan Informasi Kemiskinan Kabupaten/Kota BPS tahun 2020, tingkat kemiskinan tertinggi level Kabupaten/Kota di Provinsi Aceh terdapat pada Kabupaten Aceh Selatan mencapai 30,91%, sedangkan tingkat kemiskinan terendah terdapat pada Kota Banda Aceh 6,9%.</p>\n\n<p>Sebagai negara dengan populasi muslim terbesar dan paling dermawan di dunia, instrumen Zakat, Infak dan Sedekah (ZIS) memiliki potensi yang besar mendukung program Pemerintah Daerah dalam pengentasan kemiskinan. Potensi tersebut bisa optimal apabila kolaborasi antara Pemerintah Daerah dengan Organisasi Pengelola Zakat (OPZ) terbangun dengan solid.&nbsp;</p>\n\n<p>Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) telah secara intensif melakukan diskusi dengan para pemangku kepentingan dalam perumusan pengelolaan zakat berbasis wilayah. Para stakeholder mendukung pengelolaan zakat berbasis wilayah yang difokuskan dimulai dari level Desa/Kelurahan. Dalam hal ini pemerintah Kabupaten/Kota harus mendukung dan memiliki intensi lebih dalam implementasi pengelolaan zakat di daerah. Dalam model ini juga mendorong koordinasi sampai tingkat RT/RW dan masjid. Harapannya, zakat yang terkumpul bisa membantu dan disalurkan pada mustahik di lingkungan terdekat secara merata.</p>\n\n<p>Secara sederhana, pengelolaan ZIS berasis wilayah adalah model pengelolaan zakat, infak, sedekah yang bersifat desentralisasi. Dana ZIS yang terkumpul diprioritaskan untuk disalurkan kepada mustahik di daerah tersebut. Selain itu, kelebihan implementasi model pengelolaan zakat berbasis wilayah di antaranya; 1) mudah mengenali donatur dan penerima manfaat karena berbasis pada kedekatan masyarakat, 2) respon pelayanan menjadi lebih cepat karena radiusnya dekat, 3) intensitas dan daya jangkau pelayanan menjadi lebih menyeluruh, 4) memudahkan pemantauan perkembangan penanganan mustahik/masyarakat penerima bantuan, dan 5) mudah untuk mendapatkan informasi daerah surplus-defisit zakat. Kebijakan transfer dana akan lebih mudah dilakukan, wilayah yang mengalami surplus dana zakat dapat menyalurkan kepada wilayah yang sedang mengalami defisit.</p>\n\n<p>Dalam upaya proses implementasi model pengelolaan zakat berbasis wilayah ini, secara paralel diharapkan akan terbentuk kolaborasi kuat antara pemerintah daerah, Badan Amil Zakat Nasional (BAZNAS) dan Lembaga Amil Zakat (LAZ) di wilayah tersebut. Selain aspek kebutuhan dana dan program pemberdayaan, penguatan kolaborasi juga tidak kalah penting adalah perbaikan Data Terpadu Kesejahteraan Sosial (DTKS) di level Desa/Kelurahan. Dengan begitu, basis data masyarakat miskin kedepannya bisa semakin valid.</p>\n\n<p>Dari draft model pengelolaan zakat berbasis wilayah yang sudah disusun, KNEKS selanjutnya akan melakukan diseminasi dan diskusi dengan para stakeholder utama. Harapannya pertemuan ini akan menguatkan rekomendasi model pengelolaan zakat berbasis wilayah yang paling optimal sehingga dapat memberikan kontribusi maksimal dalam mengurangi angka kemiskinan khususnya di level daerah.</p>\n\n<p>Penulis: Amrial<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1632846895-istockphoto-185126544-612x6121.jpg	1	2021-09-28 23:33:13	7	kneks	1	\N	0	null	null
28	Pengembangan Digitalisasi dan Integrasi Data Wakaf Nasional	\N	<p>Transformasi digital dan integrasi data wakaf nasional</p>	\N	<p>Sebagai negara dengan jumlah populasi muslim terbesar di dunia, Indonesia memiliki potensi wakaf yang besar. Hal ini tidak lain karena wakaf merupakan instrumen kebaikan dalam Islam yang memiliki banyak keutamaan. Dengan motivasi agama dan sosial, masyarakat Indonesia terus berlomba-lomba memberikan harta terbaiknya untuk berwakaf. Hal ini juga didukung oleh publikasi Global Charities Aid Foundation pada tahun 2021 yang menyatakan bahwa Indonesia merupakan negara paling dermawan di dunia, yakni menempati peringkat pertama berdasarkan World Giving Index 2021.</p>\n\n<p>Berdasarkan data Sistem Informasi Wakaf (SIWAK) Kementerian Agama yang diakses pada 29 September 2021, potensi wakaf tanah di Indonesia mencapai jumlah 414.829 lokasi dengan luas 55.259,87 hektar. Kemudian, menurut Badan Wakaf Indonesia (BWI) potensi wakaf tunai di Indonesia mencapai Rp180 triliun per tahun. Namun, besarnya potensi wakaf tersebut belum bisa dioptimalkan dengan baik.</p>\n\n<p>Beberapa tantangan yang menyebabkan kondisi tersebut antara lain belum optimalnya tata regulasi wakaf, rendahnya literasi wakaf, kapasitas nazhir yang rendah, serta belum maksimalnya pemanfaatan teknologi. Akibatnya, besar potensi wakaf belum bisa dioptimalkan untuk mengurangi angka kemiskinan dan ketimpangan di Indonesia. Padahal seharusnya wakaf bisa menjadi instrumen yang sangat potensial dalam mengatasi dua permasalahan tersebut.</p>\n\n<p>Selain itu, secara spesifik, salah satu hal mendasar yang menjadi penyebabnya adalah belum kuatnya sistem informasi wakaf nasional yang dapat memberikan informasi lengkap dan strategis terkait peluang pengembangan aset wakaf. Selain itu, masih rendahnya pemanfaatan kanal digital serta belum terintegrasinya data wakaf nasional juga menjadi hambatan belum signifikannya perkembangan realiasasi wakaf, khususnya wakaf uang di Indonesia.</p>\n\n<p>Di satu sisi, pandemi memberikan percepatan pada inklusi digital, termasuk pada sektor perwakafan. Beragam inisiatif penguatan wakaf berbasis digital dikembangkan untuk mempromosikan ajakan berwakaf, memudahkan donatur dalam bertransaksi serta membantu aspek pengelolaan wakaf. Wakaf saat ini juga diperkuat dengan inovasi produk yang lebih terintegrasi dengan sektor keuangan komersial, seperti produk perbankan syariah, pasar modal syariah, dan asuransi syariah.&nbsp;</p>\n\n<p>Di Indonesia, donatur dapat berwakaf via beragam layanan elektronik perbankan, seperti QRIS Code, Mobile Banking, SMS Banking, Internet Banking dan ATM. Selain itu, beragam kanal non-bank juga giat mengedukasi wakaf, seperti Digital Wallet, E-commerce Platform, Fintech dan Crowdfunding Platform. Beberapa crowdfunding platform bahkan disiapkan secara khusus oleh perbankan syariah untuk kemudahan bagi nasabahnya.</p>\n\n<p>Sekuritas Pasar Modal kini juga memberikan fasilitasi wakaf saham secara digital sementara Asuransi Syariah memfasilitasi insurance linked wakaf sebagai bagian dari fitur asuransi syariah. Dalam sektor pembiayaan publik, pemerintah juga meluncurkan Cash Wakaf Linked Sukuk, sukuk negara khusus untuk penempatan dana wakaf, yang dapat dibeli secara online oleh masyarakat pada masa penawaran.</p>\n\n<p>Dengan minat berwakaf tanah yang tinggi, pemerintah juga saat ini menginisiasi digitalisasi pencatatan ikrar wakaf, proses pendaftaran nazir, hingga pelaporan pengelolaan wakaf. Dalam aspek pertanahan, sudah mulai digulirkan pula digitalisasi sertifikasi tanah wakaf yang terintegrasi dengan Geographical Information System dan Peta Induk Tata Ruang Wilayah.</p>\n\n<p>Seluruh inisiatif digitalisasi ini merupakan satu hikmah yang baik sebagai momentum paska pandemi dalam menguatkan kebermanfaatan wakaf bagi masyarakat. Selanjutnya, integrasi data wakaf nasional diperlukan terutama untuk menjawab berbagai permasalahan dan hambatan dalam pengembangan wakaf produktif di Indonesia serta penguatan akuntabilitas dan transparansi publik dalam tata kelola wakaf.</p>\n\n<p>Saat ini Badan Wakaf Indonesia selaku pemangku utama pengembangan wakaf nasional telah menginisiasi Pusat Kajian dan Transformasi Digital untuk merumuskan, mengkoordinasikan dan mengimplementasi penumbuhan digitalisasi dan pengembangan integrasi data wakaf nasional. KNEKS sangat mengapresiasi inisiatif ini dan berkomitmen mendukung BWI dalam memfasilitasi koordinasi stakeholder serta merekomendasikan dukungan kebijakan yang dibutuhkan agar transformasi digital dapat terlaksana untuk mendukung hadirnya perbaikan tata kelola wakaf.</p>\n\n<p>Pertumbuhan wakaf yang terkelola dengan baik, diharapkan menjadi elemen penting yang berkontribusi dalam upaya pengurangan kesenjangan sosial, pengentasan kemiskinan dan peningkatan kesejahteraan masyarakat paska pandemi sehingga berkontribusi lebih besar terhadap pembangunan ketahanan ekonomi nasional.</p>\n\n<p>Penulis: Urip Budiarto<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1632929203-hologram-projector-screen-with-cloud-system-technology1.jpg	1	2021-09-29 22:26:34	7	kneks	2	\N	0	null	null
29	Optimalisasi Payroll ASN dan Pegawai BUMN melalui Bank Syariah	\N	<p>Optimalisasi <em>payroll </em>ASN dan pegawai BUMN melalui Bank Syariah</p>	\N	<p><em>Market share</em> perbankan syariah pada tahun pada Januari 2021 baru mencapai 6,51%. Angka tersebut menandakan bahwa perlu adanya dorongan untuk meningkatkan keterlibatan masyarakat di Indonesia terutama untuk untuk terlibat dalam keuangan Syariah. Wakil Presiden RI Maruf Amin menyebutkan bahwa salah satu isu yang perlu dijadikan perhatian adalah keperluan untuk penyaluran gaji melalui Bank Syariah melalui upaya proaktif dalam menjangkau nasabah Syariah untuk Aparatur Sipil Negara (ASN) maupun pegawai BUMN dengan mengutamakan keunggulan serta benefit berbagai produk dan layanan bank syariah.</p>\n\n<p>Pemerintah Indonesia telah menerbitkan aturan untuk memenuhi hak ASN sekaligus warga negara yang menginginkan produk jasa keuangan syariah melalui Peraturan Menteri Keuangan (PMK) No.11/PMK.05/2016 telah mengakomodasi Bank Syariah untuk menjadi Bank Penyalur Gaji (BPG) untuk PNS/Prajurit TNI/Anggota Polri. Melalui hal ini, manfaat yang memiliki dampak besar pada keuangan syariah dapat dicapai, mengingat besarnya angka potensi jumlah 4,3 juta pegawai ASN Nasional (pusat dan daerah) dan 2,3 juta pegawai BUMN yang pada saat ini baru terdapat 150.000 ASN dan 10.000 pegawai BUMN yang menggunakan payroll di Bank Syariah.</p>\n\n<p>Adapun bagi ASN/Pegawai BUMN, manfaat dari <em>Payroll </em>melalui Bank Syariah yakni adanya jasa pelayanan perbankan dengan prinsip syariah disertai dengan fitur dan layanan yang kompetitif. Selain itu, ASN juga bisa mendapatkan produk pembeda dari Bank Konvensional seperti Tabungan Haji dan Tabungan Emas.</p>\n\n<p>Sementara manfaat yang didapatkan oleh Bank Syariah, dorongan ini akan meningkatkan jumlah rekening nasabah ritel sehingga meningkatkan Dana Pihak Ketiga Bank Syariah secara agregat. Peningkatan nominal <em>payroll </em>ASN Ritel melalui Bank Syariah juga dapat menurunkan <em>cost of fund </em>perbankan sehingga meningkatkan efisiensi Bank.</p>\n\n<p>Optimalisasi atas <em>Payroll </em>ASN melalui Bank Syariah sudah disokong melalui adanya naungan dari peraturan-peraturan yang telah diterbitkan, yaitu No. 11/PMK.05/2016, Surat Direktur Pengelolaan Kas Negara (PKN) S-1340/PB.3/2016, dan Nota Dinas Dir. PKN Nomor ND-585/PB.3/2021. Optimalisasi ini memerlukan adanya sosialisasi yang masif bagi Bank Syariah yang terdaftar sebagai Bank Penyalur Gaji.</p>\n\n<p>Pada Konteks Optimalisasi di BUMN, melalui Surat No. S-110/MBU/S/04/2021, Kementerian BUMN menghimbau 104 Direksi BUMN untuk dapat serta mendukung pertumbuhan ekonomi Syariah nasional dan memberikan pilihan atas penggunaan rekening Bank Syariah sebagai rekening <em>payroll </em>karyawan BUMN. Demi mendukung ekosistem syariah yang lebih baik diharapkan kedepannya ruang penggunaan Bank Syariah tidak hanya sebatas pada <em>payroll, </em>tetapi juga pada rekening operasional sehingga tidak perlu melalui mekanisme kliring dari bank operasional.</p>\n\n<p>Penulis: Muhammad Raihan Aulia Firdausi<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1632930058-account-assets-audit-bank-bookkeeping-finance-concept1.jpg	1	2021-09-29 22:39:25	6	kneks	3	\N	0	null	null
30	Usulan Harmonisasi Program Studi S1 Rumpun Ekonomi Syariah telah Disepakati FEBI	\N	\N	\N	<p>Dalam rangka menyiapkan sumber daya insani (SDI) yang unggul di bidang ekonomi dan keuangan syariah, Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) bersama Asosiasi Fakultas Ekonomi dan Bisnis Islam (AFEBIS) membentuk kelompok kerja untuk menyusun kajian Naskah Urgensi Usulan Harmonisasi Program Studi S1 Rumpun Ekonomi dan Keuangan Syariah. Hasil kajian ini telah disampaikan dalam kegiatan Rapat Pleno AFEBIS &ldquo;Perumusan Naskah Akademik Nomenklatur Prodi-Prodi Ekonomi dan Gelar Akademik Lulusan FEBI di Lingkungan PTKIN&rdquo; di Bandung, Jumat (29/10).</p>\n\n<p>Kegiatan ini merupakan salah satu langkah dalam menindaklanjuti arahan Bapak Wakil Presiden Republik Indonesia dalam pidatonya di Acara <em>Sharia Business and Academic Synergy</em> (SBAS) tahun 2020 terkait ketersediaan SDM unggul dalam bidang ekonomi dan keuangan syariah.</p>\n\n<p>Terlalu beragam dan spesifiknya nomenklatur program studi pada rumpun ekonomi dan keuangan syariah di Indonesia dinilai berimplikasi kepada sulitnya dalam membedakan profil lulusan dan standar kompetensi lulusan satu dengan yang lainnya. Hal ini juga berdampak kepada keterserapan tenaga kerja baik di industri/lembaga/pemerintah dari lulusan ekonomi syariah khususnya di lingkungan PTKIN.</p>\n\n<p>Adapun usulan harmonisasi yang telah dikaji ini telah berlandaskan hasil dari diskusi kegiatan FGD dengan melibatkan berbagai stakeholder baik asosiasi maupun regulator pemerintah, serta melalui survei kuisioner. Usulan berdasarkan hasil kajian tim pokja adalah harmonisasi program studi S1 rumpun ekonomi dan keuangan syariah merujuk kepada Peraturan Menteri Agama Nomor 38 Tahun 2017 yang kemudian dikerucutkan kepada 5 fokus program studi, diantaranya: 1) Ekonomi Syariah, 2) Keuangan dan Perbankan Syariah, telah mengakomodir prodi Perbankan Syariah, Asuransi Syariah, dan Manajemen Keuangan Syariah, 3) Manajemen Bisnis Syariah, telah mengakomodir prodi Keuangan Mikro Syariah, Manajemen Zakat dan Wakaf, Manajemen Bisnis Syariah, Manajemen Haji dan Umroh, serta Pariwisata Syariah 4) Akuntansi Syariah, 5) Hukum Ekonomi Syariah.</p>\n\n<p>Direktur Jenderal Pendidikan Islam Kementerian Agama RI Prof. Muhammad Ali Ramdhani menyambut positif terkait upaya yang dilakukan oleh KNEKS dan AFEBIS dan menyampaikan arahan bahwa untuk kebijakan-kebijakan khususnya pada pendidikan di lingkungan PTKIN perlu ada ruang terbuka untuk bergerak bebas sehingga dapat beradaptasi menyesuaikan dengan perkembangan zaman yang dinamis.</p>\n\n<p>Pada kegiatan Rapat Pleno turut hadir juga Rektor UIN Sunan Gunung Djati Bandung Prof. Dr. H. Mahmud, M.Si., Ketua Umum Asosiasi Fakultas Ekonomi dan Bisnis Islam (AFEBIS) H. Ahmad Wira, Ph.D, M.Si, M.Ag,, Direktur Infrastruktur Ekosistem Syariah KNEKS Dr. Sutan Emir Hidayat, Para Dekan Fakultas Ekonomi dan Bisnis Islam se-Indonesia, serta&nbsp;Koordinator Pokja Prof. Dr. Muhammad Nur Rianto Al Arif, M.Si beserta tim kelompok kerja penyusun kajian.</p>\n\n<p>Penulis: Annissa Permata<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1636034800-berita harmonisasi nomenklatur12.png	1	2021-11-01 21:03:08	4	kneks	4	\N	0	null	null
31	Adopsi Teknologi Digital untuk Meningkatkan Realisasi Pengumpulan ZIS Nasional	\N	\N	\N	<p>Berita terkait besarnya potensi dana sosial Islam khususnya zakat, infak, sedekah (ZIS) di Indonesia sudah sering terdengar ditengah masyarakat. Hasil riset Pusat Kajian Strategis BAZNAS menyebutkan total potensi zakat pada tahun 2020 mencapai Rp327,6 Triliun. Terlebih, Indonesia juga mendapatkan predikat sebagai negara paling dermawan di dunia menurut Charities Aid Foundation (CAF) tahun 2021. Hal tersebut semakin memberikan optimisme besarnya potensi ZIS di Indonesia sebagai instrumen jaminan sosial dan peningkatan kesejahteraan umat. Namun, fakta menunjukkan realisasi pengumpulan ZIS masih sangat jauh dari potensinya.</p>\n\n<p>Badan Amil Zakat Nasional (BAZNAS) merilis angka realisasi ZIS yang berasal dari Organisasi Pengelola Zakat resmi tahun 2020 mencapai Rp12,7 triliun atau baru sebesar 3,9% dari potensinya. Memang tidak bisa dipungkiri, angka realisasi tersebut akan jauh lebih besar apabila turut mengakumulasi realisi pengumpulan ZIS informal atau yang dikelola secara tradisional di tengah-tengah masyarakat Indonesia. Hal tersebut sejalan dengan hasil survey Pusat Kajian Strategis BAZNAS tahun 2021 yang menunjukkan angka perkiraan perolehan dana ZIS yang dikelola secara tradisional di masyarakat (non OPZ) pada tahun 2019-2020 mencapai Rp61,26 triliun. Sekalipun dijumlahkan angka realisasi ZIS formal dan informal, ruang pengumpulan ZIS masih sangat lebar jika dibandingkan dengan potensinya. Maka itu, perlu adanya inovasi pengumpulan ZIS agar dapat tumbuh signifikan.</p>\n\n<p>Di era saat ini, inovasi digital adalah jawabannya. Lalu, bagaimana strategi mengoptimalkan teknologi digital dalam meningkatkan pengumpulan ZIS nasional? Pertama, perlu ada peningkatan inklusi dan literasi digital bagi Organisasi Pengelola Zakat khususnya di daerah. Saat ini, pemanfaatan kanal digital bagi OPZ di pusat dan kota-kota besar sudah sangat baik, sedangkan di daerah masih belum optimal. Hal mendasar ini perlu diupayakan agar literasi dan inklusi digital OPZ semakin meningkat dan merata.</p>\n\n<p>Kedua, penyusunan panduan digitalisasi pembayaan ZIS bagi OPZ seluruh Indonesia yang terstandar dan dikoordinasikan oleh BAZNAS RI. Dalam strategi ini, BAZNAS RI selaku koordinator zakat nasional perlu meningkatkan kualitas maupun kuantitas pelatihan, monitoring dan evaluasi bagi BAZNAS Daerah di seluruh Indonesia.</p>\n\n<p>Ketiga, adopsi teknologi mutahir seperti big data dan <em>artificial intelligence</em> (AI) untuk meningkatkan layanan pembayaran ZIS kepada muzakki. Dengan menerapkan big data, OPZ dapat melakukan proses analitik terhadap kumpulan mahadata yang terekam, kemudian dihasilkan <em>insight</em> data untuk merumuskan inovasi berkelanjutan yang menjawab kebutuhan para muzakki. Adapun contoh pemanfaatan AI adalah program otonom (bot) yang dapat berinteraksi secara otomatis dengan sistem atau pengguna di aplikasi perpesanan WhatsApp dan Telegram. Baru-baru ini, Rumah Amal Salman melaunching inovasi tersebut untuk memberikan kemudahan transaksi kepada muzakki.</p>\n\n<p>Keempat, integrasi kanal digital dengan sektor-sektor yang termasuk di dalam ekosistem ekonomi dan keuangan syariah, mulai dari sektor jasa keuangan syariah hingga sektor industri produk halal. Seluruh pelaku ekonomi yang terlibat di dalam sektor ekonomi syariah tersebut merupakan segmen utama muzakki atau donatur yang berkontribusi signifikan bagi peningkatan realisasi pengumpulan ZIS nasional.</p>\n\n<p>Penulis: Amrial<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1640323401-man-using-digital-tablet-psd-mockup-smart-technology1.jpg	1	2021-12-24 11:27:54	7	kneks	5	\N	0	null	null
32	BP Tapera Menghadirkan Pembiayaan Rumah Berprinsip Syariah	\N	\N	\N	<p>Badan Pengelola Tabungan Perumahan Rakyat (BP Tapera) sebagai badan hukum publik yang dibentuk berdasarkan Undang-undang memiliki visi untuk memenuhi kebutuhan masyarakat mendapatkan rumah yang layak huni melalui pembiayaan terjangkau. BP Tapera menghadirkan Tapera Syariah untuk berkomitmen menjadi solusi yang menarik bagi peserta untuk mendapat pembiayaan rumah yang lebih terjangkau serta pengelolaan dana yang optimal berdasarkan prinsip Syariah.</p>\n\n<p>Tapera Syariah pada dasarnya adalah model bisnis BP Tapera berbasis syariah, di mana penyimpanan yang dilakukan oleh peserta secara periodik dalam jangka waktu tertentu dapat dimanfaatkan untuk pembiayaan perumahan dan/atau dikembalikan berikut hasil pemupukannya setelah kepesertaan berakhir berpedoman pada aturan Syariah. Pengelolaan dana Tapera Syariah secara <em>end-to-end</em> memerhatikan pemenuhan prinsip-prinsip Syariah seperti tidak mengandung unsur <em>maishir, gharar, dan riba.</em> Perserta Tapera akan mendapatkan imbal hasil secara terbuka dan optimal yang dapat terus dipantau secara digital melalui Portal Kepesertaan di sitara.tapera.go.id.</p>\n\n<p>Peserta Tapera Syariah dapat memilih berbagai akad pemanfaatan pembiayaan rumah. Dalam pemanfaatannya, Peserta Tapera Syariah dapat memilih akad yang dikehendaki serta tenor waktu dan angsuran yang dapat disesuaikan oleh kondisi peserta. Tapera menawarkan berbagai skema pilihan akad pembiayaan rumah, yaitu Kredit Pemilikan Rumah (KPR), Kredit Bangun Rumah (KBR), dan Kredit Renovasi Rumah (KRR). Peserta Tapera yang terdaftar sebagai peserta konvensional dapat memanfaatkan Tapera Syariah dengan syarat tabungan perumahan harus dipindahalihkan ke model prinsip syariah.</p>\n\n<p>Tapera Syariah berkomitmen untuk mendukung dan menjadi tempat bagi masyarakat untuk memilih pengelolaan dana dan pembiayaan berprinsip syariah dengan gotong royong, berkeadilan, transparan, aman, serta halal. Tapera Syariah diharapkan dapat mewujudkan pengembangan Indonesia untuk menjadi pusat ekonomi Syariah Dunia dan menjadi proyek strategis keuangan Syariah yang menjadi bagian dari penopang ekosistem ekonomi Syariah.</p>\n\n<p>Penulis: Raihan Aulia Firdausi, Ziyan Muhammad Farhan<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1640660413-WhatsApp Image 2021-12-28 at 9.40.29 AM.jpeg	1	2021-12-28 09:54:20	2	kneks	1	\N	0	null	null
33	Peran Strategis Indonesia Memajukan Zakat dan Wakaf Dunia	\N	\N	\N	<p>Visi menjadikan Indonesia sebagai Pusat Ekonomi Syariah Dunia pada 2024 tidak hanya berfokus pada penguatan ekosistem nasional. Misi menguatkan peran Indonesia dalam kancah ekonomi syariah dunia juga menjadi bagian integral dari visi ini. Berkontribusi dalam kemajuan sektor zakat dan wakaf dunia adalah salah satu langkah strategis yang dapat diprioritaskan mengingat urgensinya dalam mendukung peningkatan kesejahteraan sosial dan ekonomi.</p>\n\n<p>Peranan Indonesia terhadap zakat dan wakaf dunia dapat menjadi satu <em>flagship</em> program mengingat saat ini belum ada negara yang menjadi pusat pengembangan zakat dan wakaf. Terlebih, Indonesia memiliki potensi zakat dan wakaf mencapai 500 trilyun seiring 87% jumlah penduduk muslim, kekhasan ekosistem zakat dan wakaf kolaboratif antara pemerintah dan masyarakat, serta tingkat kedermawanan yang tinggi sebagaimana rilis World Giving Index CAF 2021.</p>\n\n<p>Indonesia sendiri sejatinya telah memainkan peran ini, yang antara lain dapat dilihat dari inisiatif Indonesia dalam mendorong penyusunan standarisasi pengelolaan zakat dan wakaf internasional, yaitu Zakat Core Principles (ZCP) dan Waqf Core Principles (WCP). ZCP diluncurkan pada tahun 2016 dan saat ini telah diterapkan di beberapa negara. Sementara WCP baru diluncurkan pada tahun 2018.</p>\n\n<p>Indonesia juga menjadi negara kunci sejak 2010 dalam penumbuhan dan pengawalan World Zakat Forum (WZF). WZF adalah platform internasional gerakan zakat yang memiliki peran dalam mensinergikan pemangku kepentingan zakat dunia dalam meningkatkan kesejahteraan umat dan pengentasan kemiskinan. Sebagai perkembangan terkini, pada 4-5 Desember 2021 lalu, peserta pertemuan tahunan WZF (World Zakat Forum) kesepuluh telah bersepakat memperluas keanggotaan WZF kepada otoritas dan lembaga wakaf yang ada di dunia. Perwakilan 37 dari 40 negara anggota WZF juga sepakat untuk mengubah nama WZF menjadi WZWF (World Zakat and Waqf Forum), sebagai tanda konsolidasi resmi organisasi pengelola zakat dan wakaf dalam satu payung kelembagaan.</p>\n\n<p>Beberapa resolusi penting lain yang disampaikan dalam pertemuan tahunan ini antara lain perlunya mendorong kolaborasi dan sinergi lembaga zakat dan wakaf dunia dalam mengelola dampak sosial dan ekonomi untuk pemulihan ekonomi pasca covid 19; kolaborasi penguatan dan inovasi teknologi; serta inisiasi proyek percontohan Universitas Online Zakat Wakaf dan Bank Wakaf di Indonesia sebagai upaya mendorong penguatan literasi zakat dan wakaf. Poin resolusi lain adalah inisiasi pengukuran Indikator Zakat Dunia dan penyiapan Indikator Wakaf Dunia pada tahun 2022 sebagai perluasan fungsi WZWF dalam mendukung hadirnya standarisasi pengelolaan zakat dan wakaf dunia.</p>\n\n<p>Hadirnya WZWF memberikan ruang yang lebih luas bagi Indonesia dalam memimpin penguatan kemajuan zakat dan wakaf dunia. Beberapa pekerjaan rumah yang perlu dikelola oleh WZWF ke depan antara lain (1) konsolidasi dan perluasan keanggotaan WZWF, baik secara jumlah lembaga zakat dan wakaf pada negara anggota, serta negara-negara baru yang belum menjadi anggota, (2) konsolidasi program zakat dan wakaf secara kolaboratif, sinergis dan integratif di negara-negara anggota (3) penguatan jejaring WZWF dengan lembaga-lembaga dunia, seperti PBB, Islamic Development Bank, serta lembaga standarisasi ekonomi dan keuangan syariah antara lain IFSB, AAOIFI dan IIFA-OKI <em>(Irfan Syauqi Beik, Republika, 23 Desember 2021)</em>.</p>\n\n<p>Memainkan peran terdepan dalam memajukan zakat dan wakaf dunia tentu memberikan konsekuensi bagi Indonesia. Salah satu konsekuensinya adalah memastikan pengelolaan zakat dan wakaf nasional berjalan dengan sistem tata kelola yang baik, bertumbuh progresif, bermanfaat optimal, berkelanjutan dan terintegrasi dengan pembangunan nasional. Pengarus-utamaan zakat dan wakaf dalam mendukung perekonomian nasional akan melengkapi kontribusi Indonesia tidak hanya dengan kepemimpinan dan inovasi yang cerdas dalam WZFW, tapi juga dengan contoh nyata yang dapat menjadi sumber inspirasi bagi pegiat zakat dan wakaf dunia.</p>\n\n<p>Penulis: Urip Budiarto - Kepala Divisi Dana Sosial Syariah KNEKS</p>	\N	1640769356-care-heart-attend-charity-concern1.jpg	1	2021-12-29 14:10:26	7	kneks	2	\N	0	null	null
34	Dinamika Tantangan Regulasi dan Kebijakan Pengelolaan Zakat Nasional	\N	\N	\N	<p>Penghimpunan zakat nasional lembaga formal terus bertumbuh dengan baik hingga diestimasikan mencapai Rp 16 trilyun pada tahun 2021 ini. Meski demikian, pengelolaan zakat nasional di bawah payung regulasi Undang-undang No 23 tahun 2011 masih memiliki beragam tantangan implementasi yang perlu mendapat solusi perbaikan kebijakan. Ekosistem pengelolaan zakat yang lebih kondusif, kolaboratif dan integratif diharapkan dapat lebih memperbaiki kinerja organisasi pengelola zakat dan akhirnya meluaskan kebermanfaatan zakat lebih optimal.</p>\n\n<p>Catatan khusus di awal 2021 atas implementasi pengelolaan zakat berbasis UU No 23/2011 ditandai dengan rilis hasil <em>Rapid Assessment </em>Tata Kelola Zakat dari Ombudsman. Kesimpulan Ombudsman memberi penekanan pada lima aspek: (1) fungsi ganda BAZNAS sebagai regulator dan operator yang berpotensi memiliki <em>conflict of interest, </em>(2) birokrasi perizinan lembaga amil zakat (LAZ) khususnya yang berafiliasi dengan pegawai/karyawan perusahaan, (3) beban prosedur pelaporan bagi LAZ, (4) kualitas pembinaan Kementerian Agama terhadap BAZNAS, BAZNAS Daerah dan LAZ, dan (5) belum cukup perhatian Pemerintah dan BAZNAS terhadap pembinaan dan pengawasan LAZ tradisional dan komunitas (masjid, pesantren, majelis taklim, dan lain-lain). Atas kesimpulan ini, Ombudsman memberikan lima saran kepada Kementerian Agama dan tiga saran kepada BAZNAS.</p>\n\n<p>Dalam konteks fungsi ganda BAZNAS sebagai operator dan regulator, Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) juga menemukan bahwa kondisi ini belum ideal. Dalam satu kajian yang dilakukan KNEKS terkait Positioning Dana Sosial Islam dalam Lingkup Negara dan Masyarakat pada akhir 2021, salah satu rekomendasi utama adalah perlunya memisahkan peran operator dan regulator pada BAZNAS. BAZNAS perlu lebih fokus berperan sebagai operator saja, sementara fungsi regulator berada di Kementerian Agama atau pada satu otoritas khusus zakat yang dibentuk kemudian.</p>\n\n<p>Isu fungsi ganda BAZNAS adalah satu dari sekian banyak isu yang perlu mendapat perbaikan regulasi. Pemetaan beberapa masalah yang telah diidentifikasi sebagai urgensi perbaikan regulasi antara lain (1) kewajiban zakat dan entitas wajib zakat, (2) insentif fiskal bagi pembayar zakat, (3) struktur kelembagaan dan pola koordinasi BAZNAS Pusat dengan BAZNAS Daerah, (4) kewenangan Kementerian Agama dalam pembinaan dan pengawasan, (5) pelaporan BAZNAS dan LAZ, (6) peran Pemerintah Daerah dan kolaborasi program, (7) kemandirian penganggaran dan dukungan pendanaan APBN dan APBD untuk BAZNAS, (8) pemanfaatan sistem informasi teknologi dan integrasi data, (9) posisi LAZ dan perizinan LAZ, (10) pengayoman lembaga zakat tradisional dan komunitas, dan (10) pengutamaan keuangan syariah.</p>\n\n<p>Dengan sekian banyak persoalan tata kelola zakat nasional yang telah diidentifikasi, perbaikan regulasi UU No 23/2011 tentang Pengelolaan Zakat memang krusial untuk dilakukan. Perkembangan terkini, perubahan UU No 23/2011 telah masuk daftar Program Legislasi Nasional 2020-2024 atas inisiatif DPR. Pihak BAZNAS dan Forum Zakat, sebagai perwakilan lembaga amil zakat masyarakat, juga telah melakukan rapat dan audiensi dengan DPR untuk menyampaikan substansi perubahan yang diusulkan. Pada Rapat Dengar Pendapat Komisi VIII DPR RI dengan BAZNAS pada 13 September 2021, kesimpulan rapat bahkan telah memuat komitmen Komisi VIII DPR yang akan melakukan revisi UU No 23/2011 untuk optimalisasi zakat.</p>\n\n<p>Atas telah bergulirnya pembahasan substansi dan tahapan proses perbaikan UU No 23/2011, KNEKS selaku katalisator ekonomi dan keuangan syariah nasional selanjutnya akan berupaya mengawal proses yang telah berjalan bersama seluruh pemangku kepentingan zakat. Perbaikan regulasi yang dihasilkan kelak semoga mampu menghadirkan tata kelola ekosistem zakat yang lebih efektif, tinggi partisipasi masyarakat, nyata dan luas maslahat, kolaboratif serta berkelanjutan. Sehingga, zakat dapat berkontribusi lebih signifikan mendukung penanggulangan kemiskinan, peningkatan kesejahteraan dan ketahanan ekonomi nasional.</p>\n\n<p>Penulis:&nbsp;Urip Budiarto - Kepala Divisi Dana Sosial Syariah</p>	\N	1640837109-paper-box-packaging-delivery-concept1.jpg	1	2021-12-30 10:29:45	7	kneks	3	\N	0	null	null
35	Pembiayaan Sindikasi Syariah Onshore Terbesar di Indonesia dalam USD	\N	<p>Pembiayaan Sindikasi Syariah <em>Onshore </em>Terbesar di Indonesia dalam USD oleh PT SMI dan PermataBank Syariah</p>	\N	<p>Pada Jumat (4/3) lalu,&nbsp;PT Sarana Multi Infrastruktur (Persero) (PT SMI) dan PT Bank Permata Tbk - Unit Usaha Syariah (UUS) melakukan kerja sama berupa pembiayaan syariah secara sindikasi sebesar USD231,9 juta kepada PT Armada Gema Nusantara (PT AGN) untuk dimanfaatkan perusahaan dalam memperkuat struktur pendanaan perusahaan. Pembiayaan sindikasi ini menjadi pembiayaan syariah <em>onshore </em>terbesar di Indonesia dalam mata uang USD.</p>\n\n<p>PT AGN merupakan pemilik dan operator kapal tanker <em>Floating Production Storage and Offloading </em>yang beroperasi di Lapangan BD Selat Madura, wilayah yang memiliki peranan dalam memasok gas di provinsi Jawa Timur. Pembiayaan syariah tersebut menggunakan akad <em>Musyarakah Mutanaqisah</em> (MMQ) dengan skema <em>refinancing </em>dari perbankan luar negeri. PT SMI selaku <em>Mandated Lead Arranger and Bookrunner </em>memiliki porsi pembiayaan sebesar USD150 juta, sementara UUS Bank Permata selaku <em>Arranger </em>sebesar USD81,9 juta.</p>\n\n<p>Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) sebagai katalisator penguatan dan pengembangan ekonomi dan keuangan syariah di Indonesia sangat menyambut baik kerja sama pembiayaan sindikasi ini. Direktur Eksekutif KNEKS, Ventje Rahardjo, menyampaikan bahwa industri keuangan syariah secara bertahap menunjukkan kapasitasnya dalam memberikan <em>corporate financing </em>dan <em>infrastructure financing </em>dengan skala pembiayaan besar. Kondisi ini memberikan posisi Lembaga Keuangan Syariah sebagai aktor Pemulihan Ekonomi Nasional (PEN) sekaligus kontributor dalam pertumbuhan dan pembangunan ekonomi Indonesia.</p>\n\n<p>Pada acara penandatanganan fasilitas pembiayaan di kantor SMI (4/3), Direktur Pembiayaan dan Investasi PT SMI, Sylvi J. Gani, menyampaikan bahwa <em>financial close </em>ini merupakan perwujudan komitmen PT SMI untuk mendukung kemajuan ekonomi syariah di Indonesia yang memiliki potensi ruang tumbuh sangat besar. Pemberian fasilitas pembiayaan syariah kepada PT AGN diharapkan menjadi langkah awal bagi pembiayaan syariah berikutnya di sektor minyak dan gas di Indonesia.</p>\n\n<p>Direktur Unit Usaha Syariah PT Bank Permata Tbk, Herwin Bustaman, menegaskan bahwa PermataBank Syariah akan terus mendorong pembiayaan korporasi yang sejalan dengan arahan pemerintah agar terlibat dalam pembangunan infrastruktur di Indonesia, sekaligus menjadi <em>ecosystem partner </em>bagi para nasabah.</p>\n\n<p>Sementara itu, Presiden Direktur PT Armada Gema Nusantara, Agumg Priyo Sembodo, menyampaikan bahwa pemberian fasilitas pembiayaan oleh Lembaga Keuangan Syariah ini menjadi salah satu parameter nyata atas bangkitnya keuangan syariah di Indonesia, khususnya di masa pandemi. Hal tersebut diharapkan menjadi angin segar bagi perkembangan bisnis di Indonesia.</p>\n\n<p>Penulis: Ziyan Muhammad Farhan, Yosita Nur Wirdayanti<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1647397875-pexels-nappy-9359791.jpg	1	2022-03-11 15:21:47	6	kneks	4	\N	0	null	null
36	Pembentukan Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS)	\N	<p>KDEKS&nbsp;sebagai latalisator percepatan pengembangan ekonomi syariah di daerah</p>	\N	<p>Kelembagaan Ekonomi dan Keuangan Syariah Daerah merupakan salah satu dari 13 Program Prioritas KNEKS Tahun 2022. Program prioritas 2022 ditetapkan pada Rapat Pleno KNEKS, 30 November 2021 lalu, oleh Wakil Presiden selaku Ketua Harian KNEKS. Kelembagaan ini merupakan salah satu infrastruktur pendukung dalam Ekosistem Ekonomi Syariah, yang berfungsi sebagai katalisator untuk mempercepat pengembangan Ekonomi dan Keuangan Syariah di daerah, dalam upaya mencapai visi Indonesia sebagai Pusat Halal Dunia di tahun 2024.</p>\n\n<p>Pada awal 2022 beberapa provinsi telah menginisiasi pembentukan Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) diantaranya Provinsi Sumatera Barat, Jawa Barat, Riau, dan Gorontalo. Provinsi Jawa Barat telah mengesahkan Peraturan Gubernur Jawa Barat No. 1 tahun 2022 tentang Pengembangan Ekonomi dan Keuangan Syariah yang didalamnya mengatur pembentukan KDEKS. Memasuki triwulan kedua ini Pemerintah Provinsi Sumatera Barat telah resmi membentuk Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) Sumatera Barat melalui Keputusan Gubernur Sumatera Barat No. 500-315-2022, tertanggal 7 April 2022.</p>\n\n<p>Pembentukan ini diumumkan pada Acara Launching Gerakan Nasional Bangga Buatan Indonesia (GBBI) di Bukittinggi, Sumatera Barat, 12 April 2022, oleh Gubernur Sumatera Barat dihadapan Wakil Presiden Republik Indonesia, Menteri Koordinator Maritim dan Investasi, Menteri Pariwisata dan Ekonomi Kreatif dan Ketua Dewan Komisioner Otoritas Jasa Keuangan, dan seluruh undangan baik yang hadir secara fisik maupun virtual.</p>\n\n<p>Pembentukan Kelembagaan Ekonomi dan Keuangan Syariah Daerah ini Manajemen Eksekutif KNEKS bersinergi dengan Kementerian/Lembaga baik Anggota dan non-Anggota KNEKS melalui rangkaian pertemuan one on one, Focus Group Discussion, serta rapat terbatas. Beberapa Kementerian/Lembaga yang telah berperan aktif diantaranya Kementerian Dalam Negeri, Kementerian Hukum dan HAM, Kementerian PPN/BAPPENAS, Kementerian Keuangan, Otoritas Jasa Keuangan, Bank Indonesia, Majelis Ulama Indonesia dan Kamar Dagang Indonesia.</p>\n\n<p>Kelembagaan Ekonomi dan Keuangan Syariah Daerah bertujuan menjadi katalisator membangun dan menguatkan sinergi antara para pemangku kepentingan untuk percepatan pengembangan Ekonomi Syariah di daerah dan juga secara nasional. Meningkatnya perkembangan Ekonomi Syariah Indonesia, sebagaimana dituangkan dalam MEKSI, yaitu &lsquo;Indonesia sebagai Pusat Halal Dunia 2024&rsquo; dapat menjadi kontribusi yang signifikan untuk percepatan pemulihan dan penguatan Ekonomi Nasional.</p>\n\n<p>Penulis: Adelina Zuleika, M. Adam Hervanda<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1650860107-DSC071191.jpg	1	2022-04-14 10:33:41	13	kneks	5	\N	0	null	null
37	Simak Fatwa MUI terkait Daging Hewan Berpenyakit Kuku & Mulut (PMK), Halal Kah?	\N	<p>Simak Fatwa MUI terkait Daging Hewan Berpenyakit Kuku &amp; Mulut (PMK), Halal Kah?</p>	\N	<p>Satu bulan menuju Bulan Zulhijah, yaitu umat muslim dunia akan merayakan Bulan Suci Idul Adha. Hari raya tersebut adalah untuk memperingati peristiwa kurban, yaitu ketika Nabi Ibrahim bersedia mengorbankan putranya Isma&#39;il sebagai wujud kepatuhan kepada Allah S.W.T.</p>\n\n<p>Serempak dirayakan oleh seluruh umat muslim dunia, proses penyembelihan, konsumsi, dan distribusi hewan kurban pun menjadi aktivitas rutin umat muslim setiap tahunnya. Baru-baru ini, Penyakit Mulut dan Kuku (PMK) melanda ternak di berbagai wilayah Indonesia. Seperti, di Aceh dan Jawa Timur. Lantas, bagaimana hukumnya bagi umat muslim mengonsumsi produk yang terjangkit penyakit ini, khususnya sebagai hewan kurban?</p>\n\n<p>Perlu dipahami, PMK merupakan penyakit menular akut yang menyerang hewan kuku belah seperti sapi, kerbau, domba, kambing, rusa, babi dan lain-lain dengan tingkat penularan yang cukup tinggi 90-100% (Kementan, 2022).</p>\n\n<p>Meskipun PMK bukan merupakan penyakit <em>zoonosis</em> atau tidak menular ke manusia, namun penyakit ini sangat mudah menular ke sesama hewan. Hal ini dapat menimbulkan dampak kerugian ekonomi yang sangat besar, sehingga perlu dilakukan tindakan pengendalian dan penanggulangan.</p>\n\n<p>Oleh karena itu, pemerintah sigap mengeluarkan surat keputusan terkait penanganan PMK. Surat keputusan tersebut berisikan penetapan wilayah yang terjangkit wabah seperti di Kabupaten Aceh Tamiang, Provinsi Aceh dan Kabutapen Mojokerto, Gresik, Sidoarjo dan Lamongan di Provinsi Jawa Timur, serta pembentukan gugus tugas penanganan PMK.</p>\n\n<ul>\n\t<li>Surat Keputusan Menteri Pertanian Nomor 405/KPTS/OT.050/M/05/2022 Gugus tugas (task force) penanganan PMK</li>\n\t<li>Surat Keputusan Menteri Pertanian Nomor: 403/KPTS/PK.300/M/05/2022 tentang Penetapan Daerah Wabah PMK pada Beberapa Kabupaten di Provinsi Jawa Timur</li>\n\t<li>Surat Keputusan Menteri Pertanian Nomor: 404/KPTS/PK.300/M/05/2022 Penetapan Daerah Wabah PMK di Kabupaten Aceh Tamiang Provinsi Aceh</li>\n\t<li>Surat Edaran Kepala Badan Karantin Pertanian Nomor 12950/KR.120/K/05/2022 Peningkatan Kewaspadaan Terhadap Kejadian PMK</li>\n</ul>\n\n<p>Mewabahnya PMK pada hewan ternak di berbagai wilayah Indonesia, mulai menimbulkan tanda tanya di kalangan masyarakat. Apakah daging hewan yang terjangkit PMK ini thayyib atau baik dan halal untuk dikonsumsi?</p>\n\n<p>Daging yang halal dikonsumsi adalah daging berasal dari hewan yang disembelih secara syariat islam. Pada prinsipnya status kehalalan daging yang berasal dari hewan terjangkit PMK berasal dari hasil pertimbangan, apakah daging tersebut mendatangkan kerugian (mudharat) atau tidak. Untuk menjawab hal ini, pendapat ahli seperti dokter hewan, ahli gizi, dan lainnya, diperlukan.</p>\n\n<p>Menurut Kementerian Kesehatan, berdiskusi dengan World Health Organization (WHO), dan Badan Kesehatan Hewan Dunia (OIE), Kementerian Pertanian, serta pakar kesehatan veteriner, menyatakan daging hewan terjangkit PMK aman untuk di konsumsi sehari-hari.</p>\n\n<p>Namun dengan catatan, daging tersebut harus matang dimasak hingga titik suhu mendidih. Karena, virus PMK akan mati pada suhu 70&deg;C. Serta, melakukan pelayuan yakni menggantungkan daging untuk menurunkan PH daging agar tidak ada virus tersebar. Selain itu perlu untuk menghindari bagian yang terkena PMK secara langsung, seperti kaki, organ dalam atau jeroan, dan bagian mulut seperti bibir dan lidah.</p>\n\n<p>Lalu, bagaimana hukum berkurban dengan hewan yang terkena PMK?</p>\n\n<p>Berbeda dengan hewan sembelihan untuk konsumsi biasa, hewan kurban memiliki persyaratan yang lebih mengikat. Hewan kurban harus sehat secara fisik, cukup umur dan anggota tubuhnya tidak ada yang cacat.</p>\n\n<p>Majelis Ulama Indonesia (MUI) bersama sejumlah ahli dan kementerian terkait telah melakukan pendalaman dan menerbitkan fatwa Nomor 32 Tahun 2022 terkait hewan terinfeksi virus PMK sebagai hewan kurban (Jakarta, 31/05/2022).</p>\n\n<p>Berdasarkan fatwa tersebut, hewan yang terkena PMK dengan gejala klinis kategori ringan, seperti lepuh ringan pada celah kuku, kondisi lesu, tidak nafsu makan, dan keluar air liur lebih dari biasanya hukumnya sah dijadikan hewan kurban.</p>\n\n<p>Sedang hewan yang terkena PMK dengan gejala klinis kategori berat seperti lepuh pada kuku hingga terlepas dan/atau menyebabkan pincang/tidak bisa berjalan, dan sangat kurus hukumnya tidak sah dijadikan hewan kurban.</p>\n\n<p>Adapun jika hewan dengan gejala klinis berat sembuh dari PMK dalam rentang waktu yang diperbolehkan kurban (10 sampai dengan 13 Zulhijah), maka hewan ternak tersebut sah dijadikan hewan kurban. Namun, apabila kesembuhannya melewati rentang waktu yang diperbolehkan kurban, maka hewan tersebut dianggap sedekah, dan bukan kurban.</p>\n\n<p>Selain penyakit, salah satu hal yang bisa menyebabkan hewan ternak tidak sah sebagai hewan kurban adalah kecacatan fisik. Disisi lain, untuk mencegah PMK, maka dilakukan vaksinasi. Hewan yang telah divaksinasi akan dipasang <em>ear tag</em> sebagai tanda. Pemasangan ear tag berpotensi melubangi telinga hewan.</p>\n\n<p>Bagaimana hukumnya?</p>\n\n<p>Ketua Bidang Fatwa MUI menegaskan bahwa pelubangan pada telinga hewan dengan <em>ear tag</em> atau pemberian cap pada tubuhnya sebagai tanda hewan sudah divaksin atau sebagai identitasnya, tidak menghalangi keabsahan hewan kurban.</p>\n\n<p>Penulis: Eva Afifah Tsurayya, Khairana Izzati<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1654745619-gorgeous-herd-cattle-with-brown-cow-front1.jpg	1	2022-06-02 10:31:17	10	kneks	1	\N	0	null	null
38	Pengembangan Pusat Data Ekonomi Syariah KNEKS	\N	\N	\N	<p>Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) tengah mengembangkan Pusat Data Ekonomi Syariah (PDES) sebagai pusat data yang terintegrasi bagi industri ekonomi dan keuangan syariah di Indonesia. Saat ini data ekonomi dan keuangan syariah masih tersebar di beberapa Kementerian/Lembaga, oleh karena itu dibutuhkan suatu pusat data yang bertujuan untuk membantu pemangku kepentingan ekonomi dan keuangan syariah secara publik, juga secara khusus dapat menjadi sarana pemantauan dan evaluasi kinerja serta kemajuan pengembangan ekonomi dan keuangan syariah untuk Ketua, Ketua Harian serta Sekretaris dan anggota KNEKS.</p>\n\n<p>Capaian pengembangan awal PDES telah dilaporkan pada Rapat Pleno KNEKS tanggal 30 Mei 2022 dan mendapat tanggapan positif dari Wakil Presiden serta dukungan dari Kementerian/Lembaga Stakeholders PDES. Selanjutnya Wakil Presiden Republik Indonesia mengamanatkan percepatan penyelesaian data ekonomi dan keuangan syariah pada Pusat Data Ekonomi Syariah. Sesuai arahan percepatan tersebut, ME KNEKS mempersiapkan langkah-langkah <em>quick-wins</em> secara taktis dan implementatif sehingga pengembangan Pusat Data Ekonomi Syariah dapat tercapai dengan baik. KNEKS bersama Sekretariat Wakil Presiden telah melaksanakan rapat lanjutan pengembangan PDES pada 5 Juli 2022 bersama Kementerian/Lembaga terkait seperti Departemen Ekonomi dan Keuangan Syariah Bank Indonesia (DEKS BI), Otoritas Jasa Keuangan (OJK), dan Badan Pusat Statistik (BPS).</p>\n\n<p>KNEKS telah berkoordinasi dengan Sekretariat Forum Satu Data Indonesia terkait penguatan tata kelola data dalam pengembangan PDES. Namun demikian, perlu mengambil langkah-langkah berikutnya untuk mengisi dan mengoptimalkan struktur dan kualitas data yang akan digunakan, juga terkait pertukaran data dengan Kementerian/Lembaga.</p>\n\n<p>Penulis:&nbsp;Anindita Widyaningrum<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1658463375-pexels-markus-spiske-20041611.jpg	1	2022-07-22 10:39:13	17	kneks	2	\N	0	null	null
39	KNEKS Juara BWI Award "Lembaga Mitra Wakaf Nasional Unsur Instansi Pemerintah"	\N	<p>KNEKS menerima BWI Awards 2022 sebagai Lembaga Mitra Wakaf Nasional Unsur Instansi Pemerintah</p>	\N	<p>Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) yang diwakili oleh Direktur Keuangan Sosial Syariah Ahmad Juwaini menerima BWI Awards 2022 untuk kategori Lembaga Mitra Wakaf Nasional Unsur Instansi Pemerintah/Lembaga Negara. Penyerahan penghargaan tersebut dilaksanakan pada Rapat Koordinasi Nasional Badan Wakaf Indonesia (Rakornas BWI) di Hotel Gran Melia Jakarta pada Rabu, 7 Desember 2022.</p>\n\n<p>Acara yang mengusung tema &ldquo;Percepatan Ekosistem Perwakafan: Profesionalisasi Nazhir&rdquo; ini dihadiri oleh Wakil Menteri Agama Zainut Tauhid Sa&#39;adi dan jajaran tinggi BWI lainnya. Dalam Rakornas tersebut, beberapa Kementerian dan Lembaga yang memperoleh penghargaan untuk kategori Lembaga Mitra Wakaf Nasional Unsur Instansi Pemerintah/Lembaga Negara diantaranya adalah KNEKS, Kementerian Keuangan, Bank Indonesia, Kementerian ATR/BPN, Otoritas Jasa Keuangan (OJK), dan Badan Pengelola Keuangan Haji (BPKH).</p>\n\n<p>Adapun penghargaan ini diberikan kepada lembaga yang telah berkontribusi dalam membangkitkan sektor perwakafan nasional. KNEKS melalui program prioritasnya berupaya mendorong transformasi pengelolaan wakaf nasional melalui Gerakan Nasional Wakaf Uang (GWNU), melakukan penguatan BWI daerah serta mendukung terciptanya revisi UU Wakaf. Kedepannya, KNEKS akan terus berkolaborasi dengan BWI melalui beberapa program untuk mendorong optimasi pengelolaan wakaf uang dan wakaf produktif di Indonesia.</p>\n\n<p>Penulis: Alvina Syafira Fauzia<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1670500526-111111.jpg	1	2022-12-07 18:54:35	7	kneks	3	\N	0	null	null
40	Komitmen BRIN Mendukung Pengembangan dan Inovasi Produk Halal	\N	<p>Komitmen BRIN mendukung pengembangan dan Inovasi Produk Halal menuju visi Indonesia menjadi Pusat Produsen Halal Dunia 2024</p>	\N	<p>Dewasa ini, permintaan akan produk halal mengalami perkembangan yang sangat pesat. Tingginya permintaan akan produk halal mendorong berkembangnya industri halal yang kemudian menjadi perspektif baru dalam perkembangan bisnis. Pelaku industri kemudian mengenakan label maupun <em>tagline</em> halal untuk memperkuat <em>brand image</em> produk dan perusahaannya. Di sisi lain, kesadaran dalam mengonsumsi produk halal merupakan sebuah urgensi yang datangnya bukan hanya dari masyarakat Indonesia melanikan juga dari masyarakat dunia.</p>\n\n<p>Berdasarkan Laporan Global Islamic Economy Report 2022, konsumsi masyarakat global pada enam sektor ekonomi rill mencapai dua triliun dollar AS oleh 1,9 miliar Muslim seluruh dunia hingga kuartal III 2021. Kontribusi terbesar konsumsi rill berasal dari makanan halal sebesar 1,67 triliun dollar AS, tumbuh 7,1 persen. Pada laporan ini juga dijelaskan bahwa makanan halal (halal <em>food</em>) Indonesia masuk peringkat dua dunia. Selain itu, Indonesia terbukti mampu mempertahankan posisi keempat dunia secara keseluruhan peringkat setelah Malaysia, Arab Saudi, dan Uni Emirate Arab. Hal ini juga mencerminkan bahwa sektor industri halal memiliki potensi yang besar dan sebagai salah satu alternatif utama dalam mendorong pertumbuhan ekonomi nasional.</p>\n\n<p>Untuk mewujudkan potensi dan peluang sektor halal dalam mendorong pertumbuhan ekonomi nasional diperlukan sinergi dan kolaborasi semua pemangku kepentingan. Banyak tantangan yang harus diselesaikan untuk mampu menjadikan sektor halal sebagai pilar utama dalam mendukung perekonomian nasional. Salah satunya ialah pengembangan dan pemanfaatan teknologi serta inovasi agar produk halal Indonesia memiliki daya saing tinggi di dunia internasional.</p>\n\n<p>Badan Riset dan Inovasi Nasional (BRIN) bersama Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) menyelenggarakan Halal Tech Expo dan Halal Tech Forum yang merupakan bagian dari kegiatan Indonesia Research and Innovation (InaRI) Expo 2022 di ICC Building KST Bung Karno, BRIN Cibinong, Jawa Barat mulai dari tanggal 27-30 Oktober 2022. Kegiatan ini merupakan salah satu upaya untuk mendorong dan mengoptimalkan produk hasil riset dan inovasi di sektor halal.</p>\n\n<p>Tujuan dari pelaksanaan kegiatan ini antara lain sebagai sarana mempromosikan produk hasil riset dan inovasi BRIN kepada pengguna teknologi baik untuk pelaku industri/UMKM, masyarakat, dan pihak lainnya, agar terjadi peningkatan dalam pemanfaatan dan kerjasama di sektor industri halal. Selain itu, kegiatan ini juga sebagai upaya menumbuhkembangkan dan memperkuat ekosistem riset dan inovasi di bidang produk halal (termasuk memperkuat jejaring dan kolaborasi baik antar pelaku riset dan inovasi, antar pengguna teknologi, maupun antara pihak pengguna dan penyedia teknologi), baik secara nasional maupung global.</p>\n\n<p>Kegiatan Halal Tech Forum sendiri dibuka oleh Plt. Deputi Pemanfaatan Riset dan Inovasi, R. Hendrian yang menyampaikan bahwa BRIN berkomitmen untuk mendukung KNEKS dan industri lokal terkait pengembangan produk halal. KNEKS melalui Direktur Infrastruktur Ekosistem Ekonomi Syariah, Sutan Emir Hidayat juga menyampaikan bahwa sebagai prasyarat terwujudnya Indonesia sebagai produsen dan eksportir produk halal terbesar dunia, ketersediaan infrastruktur pendukung ekosistem syariah yang baik, integratif dan efisien sangat penting untuk dikembangkan.</p>\n\n<p>&ldquo;Salah satu pilar infrastruktur pendukung tersebut adalah Riset dan Inovasi (R&amp;D) di bidang sains halal dan inovasi produk halal,&rdquo; ujar Emir. Pentingnya Riset dan Inovasi Produk Halal berbasis teknologi dibutuhkan untk dapat menghasilkan produk halal yang berdaya saing dan kompetitif di pasar internasional.</p>\n\n<p>Kegiatan Halal Tech Forum terbagi ke dalam 2 diskusi menarik. Diskusi sesi pertama mengangkat tema &ldquo;Teknologi Bahan Halal di Sektor Pertanian, Makanan, dan Minuman&rdquo; dan disampaikan oleh 3 narasumber yang telah berkontribusi luar biasa dalam bidangnya masing-masing. Tiga narasumber tersebut antara lain Satriyo Krido Wahono selaku Kepala Pusat Riset Teknologi dan Proses Pangan BRIN, Lestri Fajrinia selaku Nutrition ID R&amp;D Foods Lead Unilever Indonesia, dan Nancy Dewi Yuliana selaku Peneliti Halal Science Center IPB.</p>\n\n<p>Adapun diskusi sesi kedua mengangkat tema &ldquo;Teknologi Bahan Halal di Sektor Obat-obatan dan Kosmetik&rdquo; yang disampaikan oleh Marrisa Angelina selaku Peneliti Pusat Riset Bahan Baku Obat-obatan Tradisional BRIN, Sari Chairunnisa selaku Vice President of R&amp;D Paragon Technology &amp; Innovation (Wardah), Priyo Wahyudi selaku Tenaga Ahli LPPOM MUI, dan Dwi Andayani selaku Direktur Pengembangan Usaha Halal &amp; Ekonomi dan Keuangan Syariah Istiqlal Halal Center.</p>\n\n<p>Penulis: Nadiah Hidayati&nbsp;<br />\nRedaktur Pelaksana: Ishmah Qurratu&#39;ain</p>	\N	1670903608-SUKSES HALAL TECH EXPO DAN HALAL TECH FORUM1.jpg	1	2022-10-29 10:52:25	5	kneks	4	\N	0	null	null
1	Penguatan Bank Syariah Harus Menjadi Prioritas	Strengthening Sharia Banks Must Be a Priority	<p>Tantangan Utama Bank Syariah adalah Market Share Stagnan 5%</p>	The Main Challenge for Sharia Banks is a Stagnant Market Share of 5%	<p>Tantangan utama industri perbankan syariah di Indonesia adalah market share yang cenderung stagnan pada angka 5% dan pertumbuhan yang lambat sejak tahun 2012. Kenaikan market share perbankan syariah secara signifikan terjadi saat konversi BPD Aceh tahun 2016, sehingga mampu menembus angka psikologis 5,05%. Selanjutnya konversi BPD NTB pada tahun 2018 turut mendorong peningkatan market share menjadi 5,78%.<br>\r\n<br>\r\nBerawal dari kondisi tersebut, KNKS tengah menyusun kajian penguatan bank syariah dengan fokus memperbesar aset industri perbankan syariah sehingga mampu mencapai economic of scale yang memedai untuk bersaing dengan industri perbankan konvensional. Untuk mencapai tujuan ini, berbagai alternatif srategi dan usulan intervensi telah dikaji, tidak hanya fokus pada harapan terhadap keterlibatan pemerintah dalam pengembangan perbankan syariah tetapi juga fokus pada efisiensi dan penciptaan produk dan jasa baru yang mampu memenuhi kebutuhan pasar dan saat bersamaan sejalan dan tidak bertentangan dengan prinsip syariah.<br>\r\n<br>\r\nHasil kajian atas berbagai masukan tersebut akan diturunkan menjadi action plan per tahun yang akan dijalankan bersama-sama oleh bank syariah dan oleh stakeholders termasuk KNKS sendiri sebagai koordinator. Diharapkan hal ini akan sukses membantu mewujudkan perbankan syariah yang kuat, besar, dan mampu memenuhi hak masyarakat Indonesia akan produk dan jasa keuangan syariah.</p>	-	images_tupai.jpeg	1	2019-04-13 01:01:00	6	kneks	\N	[{"value":"kneks"},{"value":"kdeks"},{"value":"syariah"},{"value":"indonesia"}]	12	Dana Sosial Syariah	{"2","3"}
\.


--
-- Data for Name: hot_subcategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hot_subcategories (id, title, title_en, hot_category_id, web_identity, hot_category_name) FROM stdin;
1	Pengembangan Sistem Jaminan Halal	Halal Assurance System Reinforcement	1	kneks	null
2	Jasa Keuangan Non-Bank Syariah	Jasa Keuangan Non-Bank Syariah	2	kneks	null
3	Lembaga Keuangan Mikro Syariah	Lembaga Keuangan Mikro Syariah	3	kneks	null
4	Pengembangan SDM Ekonomi Syariah	Pengembangan SDM Ekonomi Syariah	5	kneks	null
5	Perbankan Syariah	Islamic Banking Reinforcement	2	kneks	null
6	Dana Sosial Syariah	Sharia Social Fund	3	kneks	null
7	Pasar Modal Syariah	\N	2	kneks	null
9	Rantai Nilai Produk Halal	Halal Value Chain	1	kneks	null
10	Infrastruktur Industri Halal	Halal Industry Infrastructure	1	kneks	null
11	Promosi dan Kerja Sama Strategis	\N	5	kneks	null
12	Hukum Pengembangan Ekonomi Syariah	\N	5	kneks	null
13	Inklusi Keuangan Syariah	Sharia Financial Inclusion	3	kneks	null
14	Kemitraan dan Akselerasi Usaha Syariah	\N	4	kneks	null
15	Inkubasi Bisnis Syariah	\N	4	kneks	null
16	Bisnis Digital dan Pusat Data Ekonomi Syariah	\N	4	kneks	null
8	Penguatan Institusi Pendidikan	Penguatan Institusi Pendidikan	5	kneks	Tes Tambah Direktorat
\.


--
-- Data for Name: institutions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.institutions (id, tag, name, logo, link, created_at, "updated_at	", deleted_at, "order", web_identity) FROM stdin;
2	ekon	Kementerian Koordinator Bidang Perekonomian Republik Indonesia	https://kneks.rifhandi.com/assets/image/instansi2.png	https://www.ekon.go.id/	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	3	kneks
4	maritim	Kemenko Bidang Kemaritiman dan Investasi	https://kneks.rifhandi.com/assets/image/instansi41.png	https://maritim.go.id/	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	5	kneks
6	kemendag	Kementerian Perdagangan Republik Indonesia	https://kneks.rifhandi.com/assets/image/instansi7.png	https://www.kemendag.go.id/	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	7	kneks
5	kemenag	Kementerian Agama RI	https://kneks.rifhandi.com/assets/image/instansi5.png	https://kemenag.go.id/	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	6	kneks
7	bappenas	Kementerian PPN/Bappenas	https://kneks.rifhandi.com/assets/image/instansi8.png	https://bappenas.go.id/	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	8	kneks
3	kemenkopmk	Kementerian Koordinator Bidang Pembangunan Manusia dan Kebudayaan	https://kneks.rifhandi.com/assets/image/instansi32.png	https://www.kemenkopmk.go.id/	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	4	kneks
1	kemenkeu	Menteri Keuangan	https://kneks.rifhandi.com/assets/image/kemenkeu.png	https://www.kemenkeu.go.id/	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	2	kneks
8	bumn	Badan Usaha Milik Negara	https://kneks.rifhandi.com/assets/image/instansi9.png	https://bumn.go.id/	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	9	kneks
9	koperasi	Kementerian Koperasi dan Usaha Kecil dan Menengah	https://kneks.rifhandi.com/assets/image/instansi10.png	https://www.kemenkopukm.go.id/	2019-05-09 08:05:42	2019-05-09 08:05:42	\N	10	kneks
10	kemenkraf	Kementerian Pariwisata	https://kneks.rifhandi.com/assets/image/instansi11.png	https://kemenparekraf.go.id/	2022-12-30 10:07:54	2022-12-30 10:07:54	\N	11	kneks
11	mui	MUI - Majelis Ulama Indonesia	https://kneks.rifhandi.com/assets/image/instansi15.png	https://mui.or.id/	2022-12-30 10:08:05	2022-12-30 10:08:05	\N	12	kneks
12	kadin	Kamar Dagang dan Industri Indonesia	https://kneks.rifhandi.com/assets/image/instansi17.png	https://kadin.id/	2022-12-30 10:08:25	2022-12-30 10:08:25	\N	13	kneks
13	bi	Bank Indonesia	https://kneks.rifhandi.com/assets/image/instansi13.png	https://bi.go.id/	2022-12-30 10:08:37	2022-12-30 10:08:37	\N	14	kneks
14	lps	Lembaga Pinjaman Simpanan	https://kneks.rifhandi.com/assets/image/instansi14.png	https://lps.go.id/	2022-12-30 10:08:50	2022-12-30 10:08:50	\N	15	kneks
15	kemenprin	Kementrian Perindustrian Republik Indonesia	https://kneks.rifhandi.com/assets/image/instansi6.png	https://www.kemenperin.go.id/	\N	\N	\N	0	kneks
16	ojk	Otoritas Jasa Keuangan	https://kneks.rifhandi.com/assets/image/instansi12.png	https://ojk.go.id/id/Default.aspx	\N	\N	\N	0	kneks
\.


--
-- Data for Name: ip_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ip_address (id, approve, approve_by, approve_date, ip, email) FROM stdin;
5	Y	Administrator	2025-01-02 21:48:49	110.138.84.193	kdeks@kneks.go.id
9	Y	Administrator	2025-01-03 11:22:15	112.215.252.223	humas@knks.go.id
11	Y	Administrator	2025-01-08 06:23:14	36.93.93.154	kdeks@kneks.go.id
73	Y	Administrator	2025-01-30 12:57:45	114.4.212.250	redaktur@kneks.go.id
74	Y	Administrator	2025-02-03 01:03:01	120.188.65.134	anggota@kneks.go.id
75	Y	SuperAdmin	2025-02-03 03:10:14	36.93.93.156	kdeks@kneks.go.id
71	Y	Administrator	2025-02-03 06:39:34	120.188.7.248	redaktur@kneks.go.id
76	Y	Administrator	2025-02-03 06:39:38	110.138.90.211	kontributor@kneks.go.id
77	Y	SuperAdmin	2025-02-03 07:30:04	110.138.90.211	kontributor@kneks.go.id
78	Y	SuperAdmin	2025-02-03 07:30:41		anggota@kneks.go.id
79	Y	SuperAdmin	2025-02-03 07:30:48		anggota@kneks.go.id
1	Y	Co-Admin	2025-02-03 17:36:22	140.213.31.152	admin@kneks.go.id
80	Y	SuperAdmin	2025-02-06 01:41:41	202.152.31.52	redaktur@kneks.go.id
81	Y	SuperAdmin	2025-02-10 07:22:16	36.92.218.74	kontributor@kneks.go.id
\.


--
-- Data for Name: kdeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kdeks (id, title, title_en, abouts, abouts_en, web_identity, id_province, images, historys, historys_en, province_name, structure, sk, twitter, facebook, linkedin, instagram, youtube, address, phone_number, fax, email, maps) FROM stdin;
2	KDEKS Kalimantan Utara 	History of North Kalimantan KDEKS 	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Kalimantan Utara dibentuk berdasarkan Keputusan Gubernur Kalimantan Utara Nomor 188.44/K.401/2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.\r\n	The Regional Sharia Economic and Financial Committee (KDEKS) is part of the Indonesian government’s efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the increasing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS North Kalimantan was established based on the Governor of North Kalimantan’s Decree Number 188.44/K.401/2023. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions by involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment of KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.\r\n	kdeks	23	\N	Lorem	Lorem	Kalimantan Utara	null	null	null	null	null	null	null	null	null	null	kaltim@kneks.go.id	null
4	KDEKS Maluku	History of Maluku KDEKS	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Maluku dibentuk berdasarkan Keputusan Gubernur Maluku Nomor 1651 Tahun 2024. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.\r\n	The Regional Sharia Economic and Financial Committee (KDEKS) is part of the Indonesian government’s efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the increasing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS Maluku was established based on the Governor of Maluku’s Decree Number 1651 of 2024. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions by involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment of KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.\r\n	kdeks	30	\N	Lorem	Lorem	Maluku 	null	null	null	null	null	null	null	null	null	null	maluku@kneks.go.id	null
10	KDEKS Banten	History of Banten KDEKS	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Banten dibentuk berdasarkan Keputusan Gubernur Banten Nomor 500.05/Kep.26-Huk/2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.	The Regional Committee for Sharia Economy and Finance (KDEKS) is part of the Indonesian government's efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the growing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS Banten was established based on the Governor of Banten’s Decree Number 500.05/Kep.26-Huk/2023. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions, involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.	kdeks	10	\N	Lorem	Lorem	Banten	null	null	null	null	null	null	null	null	null	null	banten@kneks.go.id	null
5	KDEKS Kalimantan Tengah 	History of Central Kalimantan KDEKS 	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Kalimantan Tengah dibentuk berdasarkan Keputusan Gubernur Kalimantan Tengah Nomor 188.44/473/2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.\r\n\r\n	The Regional Sharia Economic and Financial Committee (KDEKS) is part of the Indonesian government’s efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the increasing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS Central Kalimantan was established based on the Governor of Central Kalimantan’s Decree Number 188.44/473/2023. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions by involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment of KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.\r\n	kdeks	20	\N	Lorem	Lorem	Kalimantan Tengah	null	null	null	null	null	null	null	null	null	null	kalteng@kneks.go.id	null
7	KDEKS Jawa Barat	History of West Java KDEKS	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Jawa Barat dibentuk berdasarkan Keputusan Gubernur Jawa Barat Nomor 500.2/Kep.31-Rek/2024. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.	The Regional Committee for Sharia Economy and Finance (KDEKS) is part of the Indonesian government's efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the growing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS West Java was established based on the Governor of West Java’s Decree Number 500.2/Kep.31-Rek/2024. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions, involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.	kdeks	12	\N	Lorem	Lorem	Jawa Barat	null	null	null	null	null	null	null	null	null	null	jabar@kneks.go.id	null
28	KDEKS Sulawesi Barat	History of West Sulawesi KDEKS 	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Sulawesi Barat dibentuk berdasarkan Keputusan Gubernur Sulawesi Barat Nomor 657 Tahun 2024. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.	The Regional Sharia Economic and Financial Committee (KDEKS) is part of the Indonesian government’s efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the increasing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS West Sulawesi was established based on the Governor of West Sulawesi’s Decree Number 657 of 2024. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions by involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment of KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.	kdeks	27	\N	Lorem	Lorem	Sulawesi Barat	null	null	null	null	null	null	null	null	null	null	sulbar@kneks.go.id	null
8	KDEKS Bengkulu	History of Bengkulu KDEKS	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Bengkulu dibentuk berdasarkan Keputusan Gubernur Bengkulu Nomor K.207.B3 of 2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.	The Regional Committee for Sharia Economy and Finance (KDEKS) is part of the Indonesian government's efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the growing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS Bengkulu was established based on the Governor of Bengkulu’s Decree Number K.207.B3 of 2023. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions, involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.	kdeks	6	https://webdev.rifhandi.com/uploads/kdeks/provinsi/bengkulu.jpg	Lorem	Lorem	Bengkulu	null	null	null	null	null	null	null	null	null	null	bengkulu@kneks.go.id	null
9	KDEKS Sumatera Selatan	History of South Sumatera KDEKS	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Sumatera Selatan dibentuk berdasarkan Keputusan Gubernur Sumatera Selatan Nomor 583/KPTS/IV/2022. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.	The Regional Committee for Sharia Economy and Finance (KDEKS) is part of the Indonesian government's efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the growing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS South Sumatera was established based on the Governor of South Sumatera’s Decree Number 583/KPTS/IV/2022. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions, involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.	kdeks	7	\N	Lorem	Lorem	Sumatera Selatan	null	null	null	null	null	null	null	null	null	null	sumsel@kneks.go.id	null
12	KDEKS Kalimantan Selatan 	History of South Kalimantan KDEKS	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Kalimantan Selatan dibentuk berdasarkan Keputusan Gubernur Kalimantan Selatan Nomor 188.44/0143/KUM/2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.\r\n	The Regional Sharia Economic and Financial Committee (KDEKS) is part of the Indonesian government’s efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the increasing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS South Kalimantan was established based on the Governor of South Kalimantan’s Decree Number 188.44/0143/KUM/2023. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions by involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment of KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.\r\n	kdeks	21	\N	Lorem	Lorem	Kalimantan Selatan	null	null	null	null	null	null	null	null	null	null	kalsel@kneks.go.id	null
39	KDEKS DKI Jakarta	History of DKI Jakarta KDEKS	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS DKI Jakarta dibentuk berdasarkan Keputusan Gubernur DKI Jakarta Nomor 443 Tahun 2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.	The Regional Committee for Sharia Economy and Finance (KDEKS) is part of the Indonesian government's efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the growing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS DKI Jakarta was established based on the Governor of DKI Jakarta’s Decree Number 443 of 2023. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions, involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.	kdeks	11	\N	Lorem	Lorem	DKI Jakarta	null	null	null	null	null	null	null	null	null	null	jakarta@kneks.go.id	null
16	KDEKS Sumatera Utara	History of North Sumatera KDEKS 	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Sumatera Utara dibentuk berdasarkan Keputusan Gubernur Sumatera Utara Nomor 188.44/121/KPTS/2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.	The Regional Committee for Sharia Economy and Finance (KDEKS) is part of the Indonesian government's efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the growing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS North Sumatera was established based on the Governor of North Sumatera’s Decree Number 188.44/121/KPTS/2023. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions, involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.	kdeks	2	https://webdev.rifhandi.com/uploads/kdeks/provinsi/sumut.jpg	Lorem	Lorem	Sumatera Utara	null	null	null	null	null	null	null	null	null	null	sumut@kneks.go.id	null
23	KDEKS Nusa Tenggara Barat	History of West Nusa Tenggara KDEKS	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Nusa Tenggara Barat dibentuk berdasarkan Keputusan Gubernur Nusa Tenggara Barat Nomor 500-67 Tahun 2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.\r\n	The Regional Sharia Economic and Financial Committee (KDEKS) is part of the Indonesian government’s efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the increasing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS West Nusa Tenggara was established based on the Governor of West Nusa Tenggara’s Decree Number 500-67 of 2023.The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions by involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment of KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.\r\n	kdeks	17	\N	Lorem	Lorem	Nusa Tenggara Barat	null	null	null	null	null	null	null	null	null	null	nusbar@kneks.go.id	null
26	KDEKS Sumatera Barat	History of West Sumatera KDEKS 	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Sumatera Barat dibentuk berdasarkan Keputusan Gubernur Sumatera Barat Nomor 500/315/2022. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.	The Regional Committee for Sharia Economy and Finance (KDEKS) is part of the Indonesian government's efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the growing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS West Sumatera was established based on the Governor of West Sumatera’s Decree Number 500/315/2022. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions, involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.	kdeks	3	\N	Lorem	Lorem	Sumatera Barat	null	null	null	null	null	null	null	null	null	null	sumbar@kneks.go.id	null
35	KDEKS Aceh	History of Aceh KDEKS 	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Aceh dibentuk berdasarkan Keputusan Gubernur Aceh Nomor 500/1293/2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.	The Regional Committee for Sharia Economy and Finance (KDEKS) is part of the Indonesian government's efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the growing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS Aceh was established based on the Governor of Aceh’s Decree Number 500/1293/2023. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions, involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.	kdeks	1		Lorem	Lorem	Aceh	null	null	null	null	null	null	null	null	null	null	aceh@kneks.go.id	null
20	KDEKS Kalimantan Barat 	History of West Kalimantan KDEKS 	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Kalimantan Barat dibentuk berdasarkan Keputusan Gubernur Kalimantan Barat Nomor 1563/RO-EKON/2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.\r\n	The Regional Sharia Economic and Financial Committee (KDEKS) is part of the Indonesian government’s efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the increasing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS West Kalimantan was established based on the Governor of West Kalimantan’s Decree Number 1563/RO-EKON/2023.The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions by involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment of KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.\r\n	kdeks	19	\N	Lorem	Lorem	Kalimantan Barat	null	null	null	null	null	null	null	null	null	null	kalbar@kneks.go.id	null
37	KDES Gorontalo 	History of Gorontalo KDEKS 	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Gorontalo dibentuk berdasarkan Keputusan Gubernur Gorontalo Nomor 122/3/III/2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.	The Regional Sharia Economic and Financial Committee (KDEKS) is part of the Indonesian government’s efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the increasing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS Gorontalo was established based on the Governor of Gorontalo’s Decree Number 122/3/III/2023. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions by involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment of KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.	kdeks	29	\N	Lorem	Lorem	Gorontalo	null	null	null	null	null	null	null	null	null	null	gorontalo@kneks.go.id	null
58	KDEKS Kalimantan Timur	null	<span style="font-size: 13.44px;">Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Kalimantan Utara dibentuk berdasarkan Keputusan Gubernur Kalimantan Utara Nomor 188.44/K.401/2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.</span>	null	kdeks	22	https://webdev.rifhandi.com/uploads/kdeks/kaltim.jpg	<span style="font-size: 13.44px;">Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Kalimantan Utara dibentuk berdasarkan Keputusan Gubernur Kalimantan Utara Nomor 188.44/K.401/2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.</span>	null	Kalimantan Timur	https://kneks.go.id/berita/586/pengukuhan-kdeks-provinsi-kalimantan-timur?category=3	https://webdev.rifhandi.com/uploads/kdeks/SK_KDEKS_KEPRI.pdf	https://x.com	https://web.facebook.com/	https://www.linkedin.com	https://www.instagram.com/	https://youtube.com	kalimantan timur	097349057304	123456	kaltim@kneks.go.id	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8171135.92943034!2d111.13155930846011!3d0.09815607687347629!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2df14710964d9c91%3A0xc4abb01d2fe376d7!2sKalimantan%20Timur!5e0!3m2!1sid!2sid!4v1739028134722!5m2!1sid!2sid" width="300" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
22	KDEKS Bangka Belitung	History of Bangka Belitung KDEKS	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Bangka Belitung dibentuk berdasarkan Keputusan Gubernur Bangka Belitung Nomor 188.44/1252/IV/2023. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.	The Regional Committee for Sharia Economy and Finance (KDEKS) is part of the Indonesian government's efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the growing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS Bangka Belitung was established based on the Governor of Bangka Belitung’s Decree Number 188.44/1252/IV/2023. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions, involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.	kdeks	8	\N	Lorem	Lorem	Bangka Belitung	null	null	null	null	null	null	null	null	null	null	babel@kneks.go.id	null
48	KDEKS DI Yogyakarta	History of DI Yogyakarta KDEKS	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS DI Yogyakarta dibentuk berdasarkan Keputusan Gubernur DI Yogyakarta Nomor 27/KEP/2024. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.	The Regional Committee for Sharia Economy and Finance (KDEKS) is part of the Indonesian government's efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the growing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS DI Yogyakarta was established based on the Governor of DI Yogyakarta’s Decree Number 27/KEP/2024. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions, involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.	kdeks	14	\N	Lorem	Lorem	DI Yogyakarta	null	null	null	null	null	null	null	null	null	null	yogyakarta@kneks.go.id	null
24	KDEKS Sulawesi Utara 	History of North Sulawesi KDEKS 	Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) merupakan bagian dari upaya pemerintah Indonesia untuk memperkuat ekonomi syariah di tingkat nasional dan daerah. Pembentukan KDEKS ini terkait erat dengan perkembangan ekonomi syariah yang semakin penting di Indonesia, serta dorongan untuk memperluas implementasi ekonomi syariah ke berbagai daerah di seluruh Indonesia. KDEKS Sulawesi Utara dibentuk berdasarkan Keputusan Gubernur Sulawesi Utara Nomor 141 Tahun 2024. Pembentukan KDEKS merupakan salah satu langkah strategis untuk memastikan bahwa kebijakan dan inisiatif ekonomi syariah yang digagas oleh KNEKS dapat diterapkan secara efektif di daerah-daerah, dengan melibatkan pemerintah daerah, lembaga keuangan syariah, industri halal, serta masyarakat lokal. Latar belakang pembentukan KDEKS merupakan sebuah kebijakan untuk memperkuat ekonomi syariah di Indonesia dimulai dengan pembentukan Komite Nasional Keuangan Syariah (KNKS) pada tahun 2016, yang kemudian bertransformasi menjadi KNEKS pada tahun 2020. Selanjutnya, untuk mendorong perkembangan ekonomi syariah secara lebih luas dan menyeluruh, baik di sektor keuangan maupun industri halal, perlu adanya koordinasi di tingkat daerah. Oleh karena itu, KDEKS dibentuk sebagai lembaga yang memiliki peran dalam mendukung implementasi strategi ekonomi syariah di daerah.	The Regional Sharia Economic and Financial Committee (KDEKS) is part of the Indonesian government’s efforts to strengthen the sharia economy at the national and regional levels. The establishment of KDEKS is closely related to the increasing importance of the sharia economy in Indonesia and the drive to expand its implementation to various regions throughout the country. KDEKS North Sulawesi was established based on the Governor of North Sulawesi’s Decree Number 141 of 2024. The establishment of KDEKS is a strategic step to ensure that sharia economic policies and initiatives initiated by KNEKS can be effectively implemented in the regions by involving local governments, sharia financial institutions, the halal industry, and local communities. The background of the establishment of KDEKS is a policy to strengthen the sharia economy in Indonesia, starting with the establishment of the National Sharia Finance Committee (KNKS) in 2016, which was later transformed into KNEKS in 2020. Furthermore, to encourage broader and more comprehensive development of the sharia economy, both in the financial sector and the halal industry, coordination at the regional level is necessary. Therefore, KDEKS was established as an institution that plays a role in supporting the implementation of sharia economic strategies in the regions.	kdeks	26	\N	Lorem	Lorem	Sulawesi Selatan	null	null	null	null	null	null	null	null	null	null	sulsel@kneks.go.id	null
\.


--
-- Data for Name: khas_zone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.khas_zone (id, khas_zone, city, province, inauguration, tenant, inaugurated) FROM stdin;
1	Taman Valkenet Malabar	Bandung	12	12 Desember 2022	18	Walikota
2	Lego Lego	Makasar	26	3 April 2023	36	Gubernur
3	Kantin Utama ITS	Surabaya	15	31 Agustus 2023	18	Wakil Presiden
4	Soto Ayam Bok Ijo Tamanan	Kediri	15	21 September 2023	11	Gubernur
5	Kantin Jawara BI	Bandung	12	2 November 2023	5	ADG BI
6	Riau Garden	Pekanbaru	4	3 November 2023	24	Gubernur
7	Kantin Amanah RSAI	Bandung	12	24 November 2023	8	DIrut RSAI
8	Masjid Istiqlal	Jakarta Pusat	11	22 Desember 20232	24	Imam Besar Masjid Istiqlal
9	Pasar Mambo	Pangkal Pinang	8	21 Desember 2023	12	Gubernur
10	Pusat Kuliner Kampung Ujung	Labuan Bajo	18	8 Mei 2023	41	Bupati
11	Kantin SMAN 1 Slawi	Tegal	13	22 Mei 2024	5	Bupati
12	Rest Area Lebeteng	Tegal	13	22 Mei 2024	20	Bupati
13	Waduk Cacaban	Tegal	13	22 Mei 2024	45	Bupati
14	Jangkar Sandar	Manado	24	4 April 2024	11	Wakil Presiden
15	Masjid Al-Alam	Kendari	28	7 Juli 2024	13	Gubernur
16	Masjid Agung Jawa Tengah	Semarang	13	8 Agustus 2024	54	Gubernur
17	Foodcourt UIN SUKA	Sleman	14	10 Agustus 2024	8	Wakil Presiden
18	Kantin Kampus UMP	Purwokerto	13	23 Agustus 2024	18	Bupati
19	Solo Square	Solo	13	23 Agustus 2024	18	Walikota
20	Kediri Town Square	Kediri	15	29 Agustus 2024	13	Walikota
21	Universitas Jendral Soedirman	Purwokerto	14	14 November 2024	39	Rektor
\.


--
-- Data for Name: map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.map (id, embed, created_at, updated_at, web_identity) FROM stdin;
1	https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7933.418301716268!2d106.8388627!3d-6.1696863!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5cbd72035e3%3A0x78a3dc4ef4719cb8!2sKementerian%20Keuangan%20Republik%20Indonesia!5e0!3m2!1sid!2sid!4v1690270978567!5m2!1sid!2sid	2022-11-18 08:05:26	2022-11-18 08:05:26	kneks
\.


--
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menu (id, menu_name, menu_link, orders, menu_name_en) FROM stdin;
2	Profil	#	2	Profile
3	Direktorat	#	3	Directorate
4	Berita & Kegiatan	#	4	News & Activities
5	Agenda	/agenda	5	Agenda
7	Data	/data	7	Data
8	KDEKS	/kdeks	8	KDEKS
9	Kontak	/kontak	9	Contact
1	Beranda	/	1	Home
6	e-Pustaka	/e-pustaka	6	e-Library
\.


--
-- Data for Name: menu_sub; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menu_sub (id, menu_id, submenu_name, submenu_link, orders, submenu_name_en, menu_name) FROM stdin;
3	2	Tentang Ekonomi Syariah	/tentang-ekonomi-syariah	2	About Sharia Economics	Profil
2	2	Tentang Kami	/tentang-kami	1	About Us	Profil
4	2	Struktur Organisasi	/struktur-organisasi	3	Organizational Structure	Profil
5	2	Galeri Foto	/galeri-foto	4	Photo Gallery	Profil
6	2	Galeri Video	/galeri-video	5	Video Gallery	Profil
7	3	Industri Produk Halal	/industri-produk-halal/1	1	Halal Product Industry	Direktorat
8	3	Jasa Keuangan Syariah	/jasa-keuangan-syariah/2	2	Sharia Financial Service	Direktorat
9	3	Keuangan Sosial Syariah	/keuangan-sosial-syariah/3	3	Sharia Social Finance	Direktorat
10	3	Bisnis Dan Kewirausahaan Syariah	/bisnis-dan-kewirausahaan-syariah/4	4	Sharia Business and Entrepreneur	Direktorat
11	3	Infrastruktur Ekosistem Syariah	/infrastruktur-ekosistem-syariah/5	5	Sharia Ecosystem Infrastructure	Direktorat
12	4	Berita Terkini	/berita-terkini	1	Latest News	Berita & Kegiatan
13	4	Liputan Media	/liputan-media	2	Media Coverage	Berita & Kegiatan
14	4	Siaran Pers	/siaran-pers	3	Press Releases	Berita & Kegiatan
15	4	Opini	/opini	4	Opinion	Berita & Kegiatan
\.


--
-- Data for Name: naration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.naration (id, dashboard_id, dashboard_name, description, month) FROM stdin;
6	2	RPH	test test	null
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news (id, title, excerpt, content, image, news_datetime, is_publish, title_en, excerpt_en, content_en, category_id, web_identity, tag, directorat, users_id, id_province, users_name) FROM stdin;
29	Ambisi Jokowi: Ada Bank Syariah yang Masuk 10 Besar	Komite Nasional Keuangan Syariah (KNKS) yang diketuai oleh Presiden Joko Widodo berambisi membawa bank syariah masuk dalam 10 total aset perbankan nasional. Hal ini disampaikan dalam konferensi pers peluncuran Masterplan Ekonomi Syariah Indonesia 2019-2024.	<div>Jakarta, CNBC Indonesia- Komite Nasional Keuangan Syariah (KNKS) yang diketuai oleh Presiden Joko Widodo berambisi membawa bank syariah masuk dalam 10 total aset perbankan nasional. Hal ini disampaikan dalam konferensi pers peluncuran Masterplan Ekonomi Syariah Indonesia 2019-2024.</div><div><br></div><div>Direktur Eksekutif KNKS Ventje Rahardjo mengatakan pihaknya sudah memulai beberapa inisiatif yang merujuk pada masterplan, termasuk penguatan bank syariah.</div><div><br></div><div>"Kami berharap ada bank syariah yang bisa masuk dalam 10 besar total aset perbankan nasional. Sisi lain kita mendorong jaminan sosial syariah yg hari ini kita tanda tangan MoU-nya," kata Ventje dalam konferensi pers sebelum peluncuran Masterplan Ekonomi Syariah Indonesia 2019-2024 , Selasa (14/05/2019).</div><div><br></div><div>Menurutnya yang akan digenjot dari sisi ritel banking, agar bisa tumbuh seimbang. Untuk itu, inisiatif dari KNKS adalah memunculkan bank investasi yang berkaitan dengan syariah. Selain itu, dengan persatuan direktur keuangan Indonesia akan membawa ke perbankan syariah.</div><div><br></div><div>Menteri Perencanaan Pembangunan Nasional (PPN) dan Kepala Bappenas sekaligus Sekretaris KNKS Bambang Brodjonegoro mengatakan dalam beberapa tahun ke depan, perlu ada bank syariah berskala besar. Untuk itu Bank syariah yang ada saat ini perlu memperbaiki kinerjanya.</div><div><br></div><div>"Yang kami bayangkan, kita punya industri halal yang kuat yang financing-nya berasal dari lembaga keuangan dan syariah indonesia. Bukan bank syariahnya keliling nawarin atau terima kredit kualitas nomer dua. Itu yang harus kita benahi terlebih dahulu," kata dia.</div><div><br></div><div>Selama ini perbankan syariah di Indonesia banyak yang memberikan pembiayaan uang, tetapi belum menunjang industri halal di Indonesia.</div><div>Padahal, Indonesia berada dalam posisi 10 untuk industri halal dunia berdasarkan laporan Global Islamic Economy Report.</div><div><br></div><div>"Karena itu kami ingin melakukan perbaikan dari sisi permintaan ekonomi syariah sektor riil yakni industri halal," ujarnya.</div><div><br></div><div>(dob/dob)</div><div><br></div><div>Fikri Muhammad &amp; Rahajeng Kusumo Hastuti, CNBC Indonesia</div><div><br></div><div>Sumber : https://www.cnbcindonesia.com/news/20190514165145-4-72431/ambisi-jokowi-ada-bank-syariah-yang-masuk-10-besar</div>	https://webdev.rifhandi.com/uploads/news/1557906344-KonferensiPers.jpg	2019-05-09 08:05:42	\N	Jokowi's Ambition: A Sharia Bank in the Top 10	The National Sharia Finance Committee (KNKS), chaired by President Joko Widodo, aims to position a sharia bank among the top 10 banks in terms of total national banking assets. This ambition was conveyed during the press conference for the launch of the Indonesian Sharia Economic Masterplan 2019-2024.	<div>Jakarta, CNBC Indonesia – The National Sharia Finance Committee (KNKS), chaired by President Joko Widodo, aims to position a sharia bank among the top 10 banks in terms of total national banking assets. This ambition was conveyed during the press conference for the launch of the Indonesian Sharia Economic Masterplan 2019-2024.</div><div><br></div><div>KNKS Executive Director Ventje Rahardjo stated that several initiatives aligned with the masterplan have already begun, including strengthening sharia banks.</div><div><br></div><div>"We hope that a sharia bank can enter the top 10 in terms of total national banking assets. On the other hand, we are also promoting sharia social security, for which we signed an MoU today," said Ventje during the press conference before the launch of the Indonesian Sharia Economic Masterplan 2019-2024, on Tuesday (May 14, 2019).</div><div><br></div><div>He added that efforts would focus on retail banking to achieve balanced growth. To this end, KNKS has initiated plans to establish an investment bank related to sharia finance. Additionally, collaboration with Indonesian financial directors is expected to further strengthen sharia banking.</div><div><br></div><div>Minister of National Development Planning (PPN) and Head of Bappenas, who also serves as KNKS Secretary, Bambang Brodjonegoro, emphasized the need for a large-scale sharia bank in the coming years. Existing sharia banks, he noted, must improve their performance.</div><div><br></div><div>"Our vision is to have a strong halal industry supported by financing from Indonesian sharia financial institutions. It shouldn't be that sharia banks are merely offering or accepting second-rate credit. This is what needs to be addressed first," he said.</div><div><br></div><div>Currently, sharia banks in Indonesia provide significant financing but have yet to fully support the country's halal industry.</div><div><br></div><div>Indonesia ranks 10th in the global halal industry, according to the Global Islamic Economy Report.</div><div><br></div><div>"This is why we aim to improve the demand side of the sharia economy, particularly in the real sector, such as the halal industry," he concluded.</div><div><br></div><div>(dob/dob)</div><div><br></div><div>Fikri Muhammad &amp; Rahajeng Kusumo Hastuti, CNBC Indonesia</div><div><br></div><div>Source:&nbsp;<span style="font-size: 13.44px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">https://www.cnbcindonesia.com/news/20190514165145-4-72431/ambisi-jokowi-ada-bank-syariah-yang-masuk-10-besar</span></div>	1	kneks	indonesia,kneks	NULL	0	0	null
31	Masih Jauh, Jokowi Akui Ekonomi Syariah RI di Belakang Malaysia	Presiden Joko Widodo (Jokowi) menyayangkan industri halal Indonesia masih kalah dari negara tetangga seperti Malaysia. Berdasarkan data global Islamic Indicator, pada 2018 Indonesia masih tempati urutan 10 dalam peringkat negara yang selenggarakan ekonomi syariah.	<div>JAKARTA - Presiden Joko Widodo (Jokowi) menyayangkan industri halal Indonesia masih kalah dari negara tetangga seperti Malaysia. Berdasarkan data global Islamic Indicator, pada 2018 Indonesia masih tempati urutan 10 dalam peringkat negara yang selenggarakan ekonomi syariah.</div><div><br></div><div>"Masih jauh, kita masih di belakang Malaysia. Masih di belakang UEA. Masib di belakang Bahrain, di belakang Arab Saudi. Masih di belakang Oman, Jordan, Qatar, Pakistann Kuwait. Inilah pekerjaan besar kita bersama-sama," tuturnya di Gedung Bappenas, Jakarta, Selasa (14/5/2019).</div><div><br></div><div>Kepala Negara pun mengajak untuk membangkitkan potensi ekonomi syariah. Selain itu, dengan diluncurkannya Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2024, Indonesia bisa menjadi pusat ekonomi syariah terkemuka dunia.</div><div><br></div><div>"Penduduk muslim kita terbesar. Ekonomi syariah yang bisa turut mengentaskan kemiskinan dan melestarikan lingkungan, dorong kesejahteraan sosial. Dan sejalan dengan pembangunan berkelanjutan kita. Dan kita sudah memulai di tahun awal, Saya selaku presiden bentuk KNKS," ujarnya.</div><div><br></div><div>Jokowi menambahkan, ekonomi syariah Indonesia memiliki potensi besar di tingkat dunia. Seperti disampaikan Bappenas, pada 2023 konsumsi produk halal akan mencapai USD3 triliun.</div><div><br></div><div>"Kalau di rupiahkan berapa, kurang lebih Rp45.000 triliun. Saya tidak bisa bayangkan angka seperti itu. Karena APBN kita Rp2.000 triliun lebih sedikit. Ini sebuah kekuatan besar yang harus kita lihat dan harus kita pikirkan untuk ambil kue ekonomi yang besar ini," tuturnya.</div><div><br></div><div>Reporter : Feby Novalius</div><div><br></div><div>Sumber : https://economy.okezone.com/read/2019/05/14/320/2055644/masih-jauh-jokowi-akui-ekonomi-syariah-ri-di-belakang-malaysia</div>	https://webdev.rifhandi.com/uploads/news/1557909644-potensiindustri halal.png	2019-05-09 08:05:42	\N	Still Far Behind, Jokowi Admits Indonesia's Islamic Economy Lags Behind Malaysia	President Joko Widodo (Jokowi) lamented that Indonesia's halal industry is still lagging behind neighboring countries such as Malaysia. According to the Global Islamic Indicator data, in 2018, Indonesia was ranked 10th among countries implementing an Islamic economy.	<div>JAKARTA – President Joko Widodo (Jokowi) lamented that Indonesia's halal industry is still lagging behind neighboring countries such as Malaysia. According to the Global Islamic Indicator data, in 2018, Indonesia was ranked 10th among countries implementing an Islamic economy.</div><div><br></div><div>“We are still far behind, still trailing Malaysia. Still behind the UAE, Bahrain, Saudi Arabia, Oman, Jordan, Qatar, Pakistan, and Kuwait. This is a big task for all of us to tackle together,” he stated at the National Development Planning Agency (Bappenas) building in Jakarta, Tuesday (May 14, 2019).</div><div><br></div><div>The Head of State also urged efforts to harness the potential of the Islamic economy. Furthermore, with the launch of the Indonesia Islamic Economic Masterplan (MEKSI) 2019-2024, Indonesia could position itself as a leading global hub for Islamic economics.</div><div><br></div><div>“Our Muslim population is the largest. The Islamic economy can contribute to poverty alleviation, environmental sustainability, and the promotion of social welfare. This aligns with our sustainable development goals. We have already started in the early years, and as president, I established the KNKS (National Islamic Finance Committee),” he said.</div><div><br></div><div>Jokowi added that Indonesia's Islamic economy holds significant global potential. As noted by Bappenas, halal product consumption is projected to reach USD 3 trillion by 2023.</div><div><br></div><div>“In rupiah terms, that’s approximately IDR 45,000 trillion. I can’t even imagine a number that large, especially when our state budget (APBN) is just over IDR 2,000 trillion. This is a tremendous strength that we must recognize and strategize to seize a share of this massive economic opportunity,” he concluded.</div><div><br></div><div>Reporter: Feby Novalius</div><div>Source:&nbsp;https://economy.okezone.com/read/2019/05/14/320/2055644/masih-jauh-jokowi-akui-ekonomi-syariah-ri-di-belakang-malaysia</div>	1	kneks	indonesia,kneks	NULL	0	0	null
32	Program Kerja Prioritas KNEKS - April 2022	<span style="font-size: 13.44px;">Berikut merupakan program kerja prioritas KNEKS yang akan dilaksanalan dalam waktu dekat</span>	<div>Berikut merupakan program kerja prioritas KNEKS yang akan dilaksanalan dalam waktu dekat.</div><div><br></div><div>Sektor Industri Produk Halal</div><div><ul><li>Dalam beberapa tahun terakhir, perkembangan industri halal di Indonesia terus berkembang pesat. Pada laporan the State of Global Islamic Economy Report 2022 yang baru saja dikeluarkan Dinar Standard di Dubai, sektor halal food Indonesia naik ke peringkat 2 dari peringkat 4 di tahun sebelumnya. Saat ini Indonesia terus berbenah diri untuk menjadi Pusat Produsen Halal Dunia sebagaimana yang sudah dicanangkan oleh Presiden Jokowi dan Wakil Presiden KH Ma’ruf Amin. Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) sebagaimana amanah yang diberikan kepadanya untuk mengawal komitmen ini, khususnya Direktorat Industri Produk Halal - KNEKS tengah berfokus membangun ekosistem industri halal Indonesia yang kuat melalui berbagai program prioritas, sekaligus mendukung upaya pemulihan ekonomi nasional pasca pandemi secara inklusif, untuk memenuhi permintaan pasar produk halal dalam dan luar negeri yang jumlahnya terus meningkat tahun ke tahunnya.</li><li>Beberapa program prioritas telah dicanangkan untuk itu. Pertama, kodifikasi data sertifikasi halal pada transaksi perdagangan. Program ini bertujuan untuk mencatat transaksi berikut data sertifikat halalnya atas kegiatan ekspor dan impor produk halal yang terjadi pada sistem Bea Cukai dan lembaga Indonesia National Single Window (INSW) berdasarkan informasi yang valid dari database Badan Penyelenggara Jaminan Produk Halal (BPJPH). Diharapkan Indonesia akan dapat memiliki data statistik perdagangan produk halal yang akurat untuk mendukung pengembangan sektor industri halal ke depannya. Program ini juga memberikan manfaat penguatan sistem ketertelusuran halal dalam perdagangan dalam dan luar negeri, melalui kesiapan untuk pertukaran data sertifikasi halal secara elektronik dan aman antar negara di dunia. Indonesia memulai inisiatif global ini untuk memperkuat integritas halal dalam perdagangan dunia. Diharapkan hal ini segera akan disambut oleh negara-negara pelaku industri halal lainnya, khususnya pasar produk halal dunia seperti negara-negara OKI, Timur Tengah dan Asia. Selanjutnya, untuk mendukung produktivitas industri produk halal melalui kegiatan industrialisasi dalam menghasilkan produk halal Indonesia bernilai tambah, KNEKS juga terus mendorong pengembangan Kawasan Industri Halal (KIH) di Indonesia. Saat ini Indonesia memiliki tiga KIH dan ke depannya KNEKS bersama Kementerian Perindustrian dan sejumlah pelaku industri terkait, menyusun berbagai inisiatif penguatan KIH dalam rangka mendorong hadirnya infrastruktur industri halal yang unggul.</li><li>Dalam mengembangkan ekosistem industri halal di Indonesia, KNEKS berupaya untuk mensinergikan seluruh inisiatif tersebut ke dalam Masterplan Industri Halal Indonesia (MPIHI) 2022-2029 yang sedang disusun dan direncanakan dapat diterbitkan pada tahun ini. Dalam implementasinya nanti, masterplan industri halal ini menjadi salah satu bahan masukan utama dalam pembuatan Rencana Kerja Pemerintah (RKP) 2023 dan seterusnya, serta Rencana Pembangunan Jangka Menengah Nasional (RPJMN) 2025-2029, dan juga Rencana Pembangunan Jangka Panjang Nasional (RPJPN) 2025- 2045.</li></ul><br><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-size: 0.84rem; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Sektor Jasa Keuangan Syariah</span><br><ul><li>Dari sektor perbankan syariah, Bank Riau Kepri akan melaksanakan konversi menjadi Bank Umum Syariah (BUS) pada pertengahan tahun 2022. Status saat ini, Kemendagri telah menyetujui RAPERDA atas perubahan bentuk badan BPD Riau dari Perusahaan Daerah (PD) menjadi Perseroan Terbatas (PT) BPD Riau. Setelah RAPERDA tersebut disahkan oleh DPRD Provinsi melalui Rapat Paripurna, selanjutnya pada 23 April 2022 terjadwal akan dilaksanakan Rapat Umum Pemegang Saham (RUPS) dengan salah satu agenda persetujuan perubahan Anggaran Dasar Perseroan dengan kegiatan usaha menjadi Bank Umum Syariah (BUS). Jika prosesnya berjalan lancar, diharapkan soft launching Bank Riau Kepri Syariah dapat dilakukan pada pertengahan 2022.</li></ul></div><div><br></div><div>Sektor Keuangan Sosial Syariah</div><div><ul><li>Penandatanganan MoU antara BPKH dengan KNEKS pada April 2022 (tanggal sedang difiksasi) tentang Pengembangan Ekonomi dan Keuangan Syariah pada sektor keuangan mikro syariah. Dengan MoU ini, akan terbuka peluang penempatan dana BPKH ke BPRS dan BMT serta kerjasama lainnya.</li><li>Penandatanganan MoU Kementerian BUMN - BWI - KNEKS tentang Kolaborasi Penumbuhan Wakaf Uang di Lingkungan BUMN pada Mei 2022 (tanggal sedang difiksasi). Dengan MoU ini, akan dilaksanakan beragam upaya penggerakan partisipasi wakaf uang di lingkungan BUMN serta kolaborasi TJSL BUMN dengan program-program wakaf BWI dan nazhir wakaf resmi terdaftar di BWI.&nbsp;&nbsp;</li><li>Pelatihan BMT 4.0 bagi 15 pesantren di Jawa Barat pada minggu kedua Juni 2022. Pelatihan ini dimaksudkan untuk meningkatkan digitalisasi BMT berbasis Pesantren dalam rangka optimasi perluasan akses layanan keuangan syariah bagi masyarakat.</li></ul></div><div><br></div><div>Sektor Bisnis dan Kewirausahaan Syariah</div><div><ul><li>KNEKS bersama pemangku kepentingan bekerjasama dalam mewujudkan terciptanya kawasan kuliner Zona Kuliner Halal, Aman dan Sehat (Zona KHAS) yang diharapkan menjadi kawasan yang memiliki standar Halalan Thoyyiban yang sesuai. Saat ini telah terdaftar 12 lokasi yang sedang diproses untuk menjadi Zona KHAS. Pilot Project pertama terletak di Kawasan Rasuna Garden Foodstreet, DKI Jakarta telah menyelesaikan tahap standardisasi kesehatan. Stikerisasi Sertifikat Laik Higiene Sanitasi (SLHS) telah dilaksanakan untuk memenuhi persyaratan aspek aman dan sehat bagi 39 tenant/UMKM. Stikerisasi dilakukan oleh Kementerian Kesehatan yang bekerjasama dengan Dinas Kesehatan serta Labkesda DKI Jakarta. Seluruh tenant telah mendapatkan NIB yang didukung oleh Kemenkopukm dan sedang melaksanakan proses sertifikasi halal melalui dukungan BPJPH. Dalam acara pembukaan Gernas BBI di Kota Bukittinggi, Sumatera Barat, Peluncuran (Kick-Off) Zona KHAS Los Lambuang, Bukittinggi telah dilakukan pada tanggal 12 April 2022 yang dihadiri oleh Bapak Wakil Presiden KH. Ma’ruf Amin. Hal ini menjadi dorongan agar pengembangan Zona KHAS dapat dilaksanakan di beberapa titik di seluruh Indonesia.</li><li>Program Akselerasi Digital Usaha Syariah berfokus pada ekosistem Usaha Mikro Kecil dan Menengah (UMKM) yang memiliki peran strategis dalam menopang pertumbuhan ekonomi Nasional setelah terdampak pandemi Covid-19, diantaranya kontribusi pada PDB dan penyerapan tenaga kerja. Namun demikian, pengembangan UMKM di Indonesia, khususnya UMKM Industri Halal dan supaya UMKM Industri Halal naik kelas, dibutuhkan interkonektivitas digital yang merupakan keniscayaan dalam era industry 4.0 ke berbagai sub ekosistem lainnya seperti jasa keuangan, incubator, media sosial, regulator, logistic, riset/perguruan tinggi, pesantren, masjid, supplier, pemasaran dan berbagai sub ekosistem lainnya. Untuk memperkuat itu KNEKS memfasilitasinya dalam bentuk pengembangan platform, sinergi dengan berbagai stakeholder Kementerian Lembaga, termasuk Kemenkopukm sebagai penanggungjawab pengembangan kewirausahaan di Indonesia dan data tunggal UMKM sesuai&nbsp; Perpres No 2 tahun 2022, dan upaya-upaya akselerasi yang dibutuhkan oleh UMKM Industri Halal untuk mendapatkan akses&nbsp; yang bisa difokuskan pada akses pembiayaan, capacity building,&nbsp; inkubasi, kemitraan, pasar digital dan pemberdayaan digital</li><li>Selain itu, salah satu yang saat ini tengah dikembangkan oleh KNEKS adalah melalui Platform Business Matching yang sedang dibangun (https://umkmindustrihalal.id/) dan akan disinergikan dengan ekosistem UMKM nasional. Platform ini bertujuan untuk mendorong UMKM (khususnya UMKM Indusri Halal) yang berdaya saing untuk akselerasi pertumbuhan ekonomi yang inklusif. Diharapkan Platform Business Matching ini dapat bermanfaat bagi para Pelaku UMKM Industri Halal dalam menjalankan usahanya dan secara bertahap Platform Business Matching ini dikembangkan menyesuaikan kebijakan maupun kondisi UMKM Industri Halal terkini dengan teknologi terbarukan.</li><li>Terkait Pusat Data Ekonomi Syariah (PDES), pengembangan yang tengah dilakukan saat ini adalah persiapan pra implementasi untuk menuju sasaran implementasi pada 2023-2024. Bekerjasama dengan produsen data yang terdiri dari berbagai Kementerian/Lembaga, Walidata Pusintek Kementerian Keuangan serta didukung oleh Pusat Data Nasional Kementerian Kominfo. Dalam waktu dekat, Dashboard PDES akan diluncurkan dalam rangka Rapat Pleno pertama tahun 2022.</li></ul></div><div><br></div><div>Sektor Infrastruktur Ekosistem Syariah</div><div><ul><li>Implementasi Program Strategis Peta Jalan SDM Unggul dan Talenta Sektor Ekonomi dan Keuangan Syariah 2022-2024 akan dilakukan dengan menyelenggarakan ToT Pengembangan Kapasitas Guru Pendidikan Agama Islam di Sekolah Menengah dari seluruh Indonesia dan Dosen Ekonomi dan Keuangan Syariah di Provinsi Kalimantan Timur dan Jawa Tengah yang akan diselenggarakan pada bulan Mei dan Juni 2022.</li><li>Program Kelembagaan Ekonomi dan Keuangan Syariah Daerah sebagai salah satu infrastruktur penunjang untuk percepatan pengembagan Ekonomi Syariah Daerah dan Nasional dapat kami infokan sejauh ini, Provinsi Sumatera Barat telah resmi membentuk Komite Daerah Ekonomi dan Keuangan Syariah (KDEKS) Provinsi Sumatera Barat, melalui Keputusan Gubernur Sumatera Barat No. 500-315-2022, tertanggal 7 April 2022, dan telah diumumkan oleh Gubernur Sumatera Barat pada Acara Pembukaan Gerakan Nasional Bangga Buatan Indonesia (GBBI) di Bukittinggi, Sumatera Barat, 12 April 2022. Secara bersamaan beberapa Pemerintah Provinsi lainnya sedang dalam Proses Pembentukan KDEKS diantaranya Provinsi Jawa Barat, sebagai pelaksanaan amanah dari Peraturan Gubernur Jawa Barat No. 1 tahun 2022, Adapun Provinsi Riau dan Gorontalo secara paralel menyusun Peraturan Gubernur tentang Pengembangan Ekonomi dan Keuangan Syariah Daerah dan Pembentukan KDEKS. Kedepannya, Manajemen Eksekutif akan melakukan pendampingan terhadap Provinsi yang akan membentuk KDEKS, bersinergi dengan stakeholder dari Kementerian dan Lembaga yaitu Kemendagri, Kemenkumham, Kemenkeu, BAPPENAS/PPN, BI, OJK, MUI dan KADIN, dalam bentuk Focus Group Discussion (FGD), Rapat Terbatas, serta pertemuan one on one baik virtual maupun offline.</li><li>Penghargaan ekonomi syariah bernama Anugerah Adinata Syariah 2021 akan dilaksanakan pada 14 April 2022. Penghargaan ini memiliki tujuh kategori penilaian, yaitu 1) kategori keuangan syariah, 2) kategori industri halal, 3) kategori keuangan sosial syariah, 4) kategori keuangan mikro, 5) kategori pendidikan ekonomi syariah, 6) kategori ekonomi pesantren, dan 7) kategori ekonomi hijau dan ekonomi berkelanjutan.</li></ul></div>	https://webdev.rifhandi.com/uploads/news/1650890682-alamindo white1.jpg	2019-05-09 08:05:42	\N	Priority Work Program of KNEKS - April 2022	<span style="font-size: 13.44px;">The following are the priority work programs of KNEKS that will be implemented in the near future.</span>	<div><span style="font-size: 13.44px;">The following are the priority work programs of KNEKS that will be implemented in the near future.</span></div><div><span style="font-size: 13.44px;">Halal Product Industry Sector</span></div><div><span style="font-size: 13.44px;">In recent years, the halal industry in Indonesia has continued to develop rapidly. In the recently released State of Global Islamic Economy Report 2022 by Dinar Standard in Dubai, Indonesia's halal food sector rose to rank 2 from rank 4 in the previous year. Currently, Indonesia is continuously improving itself to become the Global Halal Production Center as proclaimed by President Jokowi and Vice President KH Ma'ruf Amin. The National Committee for Islamic Economy and Finance (KNEKS), as per the mandate given to it to oversee this commitment, particularly the Halal Product Industry Directorate - KNEKS is focusing on building a strong Indonesian halal industry ecosystem through various priority programs, while also supporting inclusive national economic recovery post-pandemic, to meet the increasing domestic and international halal product market demand year after year.</span></div><div><span style="font-size: 13.44px;">Several priority programs have been outlined. First, codification of halal certification data in trade transactions. This program aims to record transactions along with halal certificate data for export and import of halal products occurring in the Customs system and Indonesia National Single Window (INSW) based on valid information from the Halal Product Assurance Organizing Agency (BPJPH) database. It is expected that Indonesia will have accurate halal product trade statistical data to support future halal industry sector development. This program also provides benefits in strengthening halal traceability systems in domestic and international trade, through readiness for secure electronic halal certification data exchange between countries worldwide. Indonesia is initiating this global initiative to strengthen halal integrity in world trade. It is hoped that this will soon be welcomed by other halal industry countries, especially global halal product markets like OIC countries, Middle East, and Asia. Furthermore, to support halal product industry productivity through industrialization activities in producing value-added Indonesian halal products, KNEKS continues to encourage the development of Halal Industrial Zones (KIH) in Indonesia. Currently, Indonesia has three KIHs, and moving forward, KNEKS together with the Ministry of Industry and several related industry actors, are preparing various KIH strengthening initiatives to encourage the presence of excellent halal industry infrastructure.</span></div><div><span style="font-size: 13.44px;">In developing the halal industry ecosystem in Indonesia, KNEKS is attempting to synergize all these initiatives into the Indonesian Halal Industry Masterplan (MPIHI) 2022-2029, which is currently being prepared and planned to be published this year. In its future implementation, this halal industry masterplan will become one of the main input materials for the Government Work Plan (RKP) 2023 and onwards, the National Medium-Term Development Plan (RPJMN) 2025-2029, and the National Long-Term Development Plan (RPJPN) 2025-2045.</span></div><div><div style=""><span style="font-size: 13.44px;">Islamic Financial Services Sector</span></div><div style=""><span style="font-size: 13.44px;">From the Islamic banking sector, Bank Riau Kepri will carry out conversion to become a Sharia Commercial Bank (BUS) in mid-2022. Current status: the Ministry of Home Affairs has approved the Draft Regional Regulation (RAPERDA) for changing the form of BPD Riau from a Regional Company (PD) to a Limited Liability Company (PT) BPD Riau. After the RAPERDA is ratified by the Provincial DPRD through a Plenary Meeting, a General Meeting of Shareholders (RUPS) is scheduled for April 23, 2022, with one of the agenda items being approval of changes to the Company's Articles of Association to become a Sharia Commercial Bank (BUS). If the process goes smoothly, it is hoped that the soft launching of Bank Riau Kepri Syariah can be done by mid-2022.</span></div><div style=""><span style="font-size: 13.44px;">Islamic Social Financial Sector</span></div><div style=""><span style="font-size: 13.44px;">Signing of a Memorandum of Understanding (MoU) between BPKH and KNEKS in April 2022 (date to be finalized) regarding the Development of Islamic Economy and Finance in the Islamic microfinance sector. With this MoU, opportunities will open for BPKH fund placement in BPRS and BMT and other collaborations.</span></div><div style=""><span style="font-size: 13.44px;">MoU signing between the Ministry of State-Owned Enterprises - BWI - KNEKS about Collaboration in Generating Cash Waqf in State-Owned Enterprises (BUMN) in May 2022 (date to be finalized). Through this MoU, various efforts will be undertaken to mobilize cash waqf participation in state-owned enterprises and collaborate on Corporate Social Responsibility (TJSL) of BUMN with BWI waqf programs and officially registered waqf nazhir at BWI.</span></div><div style=""><span style="font-size: 13.44px;">BMT 4.0 training for 15 pesantren in West Java in the second week of June 2022. This training is intended to increase the digitalization of pesantren-based BMT to optimize the expansion of Islamic financial service access for the community.</span></div><div style=""><span style="font-size: 13.44px;">Islamic Business and Entrepreneurship Sector</span></div><div style=""><span style="font-size: 13.44px;">KNEKS along with stakeholders are collaborating to create a Halal, Safe, and Healthy Culinary Zone (Zona KHAS) expected to have Halalan Thoyyiban standards. Currently, 12 locations are being processed to become Zona KHAS. The first pilot project is located in the Rasuna Garden Foodstreet Area, DKI Jakarta, which has completed the health standardization stage. Hygiene Sanitation Feasibility Certificate (SLHS) stickering has been carried out to meet the safe and healthy aspects for 39 tenants/MSMEs. Stickering was carried out by the Ministry of Health in collaboration with the DKI Jakarta Health Office and Local Health Laboratory. All tenants have obtained a Business Identification Number (NIB) supported by the Ministry of Cooperatives and are currently implementing halal certification process through BPJPH support. During the opening of Gernas BBI in Bukittinggi City, West Sumatra, the Launch (Kick-Off) of Zona KHAS Los Lambuang, Bukittinggi was conducted on April 12, 2022, attended by Vice President KH. Ma'ruf Amin. This is an encouragement for Zona KHAS development to be implemented at several points throughout Indonesia.</span></div><div style=""><span style="font-size: 13.44px;">Digital Acceleration Program for Islamic Businesses focuses on the Micro, Small, and Medium Enterprises (UMKM) ecosystem, which plays a strategic role in supporting National economic growth after being impacted by the Covid-19 pandemic, including contributions to GDP and labor absorption. However, UMKM development in Indonesia, especially Halal Industry UMKM and to elevate Halal Industry UMKM, digital interconnectivity is a necessity in the Industry 4.0 era to various other sub-ecosystems such as financial services, incubators, social media, regulators, logistics, research/universities, pesantren, mosques, suppliers, marketing, and various other sub-ecosystems. To strengthen this, KNEKS facilitates it through platform development, synergy with various Ministerial Institution stakeholders, including the Ministry of Cooperatives as responsible for entrepreneurship development in Indonesia and single UMKM data according to Presidential Regulation No. 2 of 2022, and acceleration efforts needed by Halal Industry UMKM to obtain access that can be focused on financing access, capacity building, incubation, partnerships, digital markets, and digital empowerment.</span></div><div style=""><span style="font-size: 13.44px;">In addition, one of the things currently being developed by KNEKS is through the Business Matching Platform being built (https://umkmindustrihalal.id/) and will be synergized with the national UMKM ecosystem. This platform aims to encourage competitive MSMEs (especially Halal Industry MSMEs) for inclusive economic growth acceleration. It is hoped that this Business Matching Platform will be beneficial for Halal Industry MSME actors in running their businesses and that the platform will be gradually developed to adapt to the latest Halal Industry MSME policies and conditions with the newest technology.</span></div><div style=""><span style="font-size: 13.44px;">Regarding the Islamic Economic Data Center (PDES), the current development is pre-implementation preparation to reach implementation targets in 2023-2024. Collaborating with data producers consisting of various Ministries/Agencies, Data Custodian of the Ministry of Finance's Information Technology Center, and supported by the National Data Center of the Ministry of Communication and Information. In the near future, the PDES Dashboard will be launched during the first Plenary Meeting of 2022.</span></div><div style=""><span style="font-size: 13.44px;">Islamic Ecosystem Infrastructure Sector</span></div><div style=""><span style="font-size: 13.44px;">Implementation of the Strategic Program for the Roadmap of Superior Human Resources and Talents in the Islamic Economy and Finance Sector 2022-2024 will be carried out by organizing Training of Trainers (ToT) for Capacity Development of Islamic Religious Education Teachers in Secondary Schools from across Indonesia and Lecturers of Islamic Economy and Finance in East Kalimantan and Central Java Provinces, which will be held in May and June 2022.</span></div><div style=""><span style="font-size: 13.44px;">Regarding the Regional Islamic Economy and Finance Institutional Program as one of the supporting infrastructures for accelerating Regional and National Islamic Economic development, it can be reported that West Sumatra Province has officially established the Regional Committee for Islamic Economy and Finance (KDEKS) through Governor's Decree No. 500-315-2022, dated April 7, 2022, and was announced by the West Sumatra Governor at the Opening of the National Movement Proud of Indonesian Products (GBBI) in Bukittinggi, West Sumatra, on April 12, 2022. Simultaneously, several other Provincial Governments are in the process of establishing KDEKS, including West Java Province, as implementation of West Java Governor Regulation No. 1 of 2022. Riau and Gorontalo Provinces are simultaneously preparing Governor Regulations on Regional Islamic Economy and Finance Development and KDEKS Establishment. Moving forward, the Executive Management will provide assistance to Provinces that will establish KDEKS, synergizing with stakeholders from Ministries and Institutions such as the Ministry of Home Affairs, Ministry of Law and Human Rights, Ministry of Finance, BAPPENAS/National Development Planning Agency, Bank Indonesia, OJK, MUI, and KADIN, in the form of Focus Group Discussions (FGD), Limited Meetings, and one-on-one meetings both virtually and offline.</span></div><div style=""><span style="font-size: 13.44px;">The Islamic economic award named Anugerah Adinata Syariah 2021 will be held on April 14, 2022. This award has seven assessment categories: 1) Islamic finance category, 2) halal industry category, 3) Islamic social finance category, 4) microfinance category, 5) Islamic economic education category, 6) pesantren economy category, and 7) green economy and sustainable economy category.</span></div></div><div><span style="font-size: 13.44px;"><br></span></div>	1	kneks	indonesia,kneks	NULL	0	0	null
26	KDEKS Jatim Siap Kolaborasi Ekonomi dan Keuangan Syariah di Jatim	Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) dan Sekretariat Wakil Presiden (Setwapres) melakukan audiensi pendampingan penyusunan program KDEKS Jawa Timur Tahun 2023 bersama dengan Wakil Gubernur Jawa Timur, Kantor Regional Otoritas Jasa Keungan Jawa Timur, serta Kantor Perwakilan Bank Indonesia Jawa Timur pada 6 Maret 2022.&nbsp;	<div>Surabaya, KNEKS - Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) dan Sekretariat Wakil Presiden (Setwapres) melakukan audiensi pendampingan penyusunan program KDEKS Jawa Timur Tahun 2023 bersama dengan Wakil Gubernur Jawa Timur, Kantor Regional Otoritas Jasa Keungan Jawa Timur, serta Kantor Perwakilan Bank Indonesia Jawa Timur pada 6 Maret 2022.&nbsp;</div><div><br></div><div>Dalam kegiatan ini hadir Wakil Gubernur Jawa Timur selaku Direktur Eksekutif KDEKS Jawa Timur Emil Elestianto Dardak, Wakil Direktur Eksekutif I KDEKS Jawa Timur Muhamad Nafik Hadi Ryandono, Wakil Direktur Eksekutif II KDEKS Jawa Timur Abdul Mongid, Asisten Deputi Ekonomi Setwpres Ahmad Lutfi, dan Kepala Divisi Hukum Pengembangan Ekonomi Syariah KNEKS Dece Kurniadi.&nbsp;</div><div><br></div><div>Emil Dardak, Wakil Gubernur Jawa Timur selaku Direktur Eksekutif KDEKS Jawa Timur menyampaikan bahwa program-program KDEKS akan linier dengan KNEKS. KNEKS memiliki 30 program yang terdiri dari 17 Program Reguler dan 13 Program Prioritas. “Paling tidak, di setiap bidang ada satu program yang dapat dijalankan oleh KDEKS Jawa Timur,” kata Emil.&nbsp;</div><div><br></div><div>Dece Kurniadi, Kepala Divisi Hukum Pengembangan Ekonomi Syariah KNEKS menyampaikan bahwa kunjungan ke Jawa Timur kali ini adalah dalam rangka koordinasi penyiapan program dari KDEKS Jawa Timur.&nbsp;&nbsp;</div><div><br></div><div>“Diharapkan KDEKS dapat membangun sinergi dan kolaborasi Program Strategis Ekonomi Syariah Nasional dan Daerah,” ujar Dece.&nbsp;</div><div><br></div><div>Pertemuan yang juga dihadiri oleh OPD Jawa Timur ini bertujuan untuk membangun kesepahaman bersama tujuan dari pembentukan KDEKS dan penyiapan program dari KDEKS Jawa Timur.&nbsp;</div><div><br></div><div>Ahmad Lutfi, Asisten Deputi Ekonomi Setwpres kemudian mengatakan, “KDEKS menjadi penting, karena dapat mengakselerasi program yang ada di pusat. Harapannya dengan adanya KDEKS dapat mendorong literasi yang saat ini belum signifikan.”&nbsp;</div><div><br></div><div>Saat ini ada 12 (dua belas) KDEKS (Per 6 Maret 2023), yaitu Sumatra Barat, Riau, Sumatra Selatan, Nusa Tenggara Barat (NTB), Sulawesi Selatan, Jawa Timur, Bangka Belitung, Banten, Jawa Tengah, Lampung, Kalimantan Selatan, dan Sumatra Utara.&nbsp;&nbsp;</div><div><br></div><div>Dalam pertemuan yang berbeda, Kantor Regional Otoritas Jasa Keuangan Jawa Timur dan Kantor Perwakilan Bank Indonesia Jawa Timur juga menyambut baik atas terbentuknya KDEKS Jawa Timur. Kedua lembaga tersebutr siap mendukung pengembangan ekonomi dan keuangan syariah di Jawa Timur.&nbsp;</div><div><br></div><div>Penulis: Adam Hervanda, Adelina Zuleika&nbsp;</div><div>Redaktur Pelaksana: Ishmah Qurratu'ain</div>	https://webdev.rifhandi.com/uploads/news/web10.jpg	2019-05-09 08:05:00	on	KDEKS East Java Ready to Collaborate on Sharia Economy and Finance in East Java	<p><font face="arial" size="2"><i>The National Committee on Sharia Economy and Finance (KNEKS) and the Secretariat of the Vice President (Setwapres) held a meeting to support the development of the 2023 KDEKS East Java program, alongside the Vice Governor of East Java, the East Java Regional Office of the Financial Services Authority (OJK), and the East Java Regional Representative Office of Bank Indonesia on March 6, 2022.</i></font></p>	<div>Surabaya, KNEKS - The National Committee on Sharia Economy and Finance (KNEKS) and the Secretariat of the Vice President (Setwapres) held an audience to support the development of the 2023 KDEKS East Java program, along with the Vice Governor of East Java, the East Java Regional Office of the Financial Services Authority (OJK), and the East Java Representative Office of Bank Indonesia on March 6, 2022.</div><div><br></div><div>Present at the event were Emil Elestianto Dardak, the Vice Governor of East Java and Executive Director of KDEKS East Java, Muhamad Nafik Hadi Ryandono, Deputy Executive Director I of KDEKS East Java, Abdul Mongid, Deputy Executive Director II of KDEKS East Java, Ahmad Lutfi, Assistant Deputy for Economics at Setwapres, and Dece Kurniadi, Head of the Sharia Economic Development Legal Division at KNEKS.</div><div><br></div><div>Emil Dardak, the Vice Governor of East Java and Executive Director of KDEKS East Java, stated that the KDEKS programs will align with KNEKS. KNEKS has 30 programs, consisting of 17 regular programs and 13 priority programs. "At least, in each field, there is one program that can be implemented by KDEKS East Java," said Emil.</div><div><br></div><div>Dece Kurniadi, Head of the Sharia Economic Development Legal Division at KNEKS, stated that the visit to East Java was for coordinating the preparation of the KDEKS East Java program.</div><div><br></div><div>"It is expected that KDEKS can build synergy and collaboration between the National and Regional Strategic Sharia Economy Programs," said Dece.</div><div><br></div><div>The meeting, which was also attended by East Java's OPD, aimed to build a mutual understanding of the purpose of establishing KDEKS and the preparation of the KDEKS East Java program.</div><div><br></div><div>Ahmad Lutfi, Assistant Deputy for Economics at Setwapres, then stated, "KDEKS is important because it can accelerate programs at the central level. It is hoped that KDEKS will push for literacy, which is still not significant."</div><div><br></div><div>Currently, there are 12 KDEKS (as of March 6, 2023), namely West Sumatra, Riau, South Sumatra, West Nusa Tenggara (NTB), South Sulawesi, East Java, Bangka Belitung, Banten, Central Java, Lampung, South Kalimantan, and North Sumatra.</div><div><br></div><div>In a separate meeting, the East Java Regional Office of the Financial Services Authority (OJK) and the East Java Representative Office of Bank Indonesia also welcomed the establishment of KDEKS East Java. Both institutions are ready to support the development of the sharia economy and finance in East Java.</div><div><br></div><div>Author: Adam Hervanda, Adelina Zuleika&nbsp;&nbsp;</div><div>Managing Editor: Ishmah Qurratu'ain</div>	0	kneks	[{"value":"kneks"},{"value":"kdeks"},{"value":"syariah"},{"value":"indonesia"}]	5	0	4	SuperAdmin
28	Kepala Bappenas Buka Festival Ekonomi Syariah 2019	Komite Nasional Keuangan Syariah (KNKS) menyelanggarakan Indonesia Islamic Economy Festival (IIEFest) 2019 dengan mengusung tema "Halal Lifestyle di Era Millenial" di Trans Hotel Grand Ballroom, Bandung, Jumat (26/4/2019).	<div>Komite Nasional Keuangan Syariah (KNKS) menyelanggarakan Indonesia Islamic Economy Festival (IIEFest) 2019 dengan mengusung tema "Halal Lifestyle di Era Millenial" di Trans Hotel Grand Ballroom, Bandung, Jumat (26/4/2019).</div><div><br></div><div>Acara ini dihadiri dan diresmikan langsung oleh Menteri PPN/Kepala Bappenas, Bambang Brodjonegoro dan dihadiri sejumlah pelaku perbankan. Dari pantauan Warta Ekonomi hadir Direktur Utama BRI Syariah, Moch Hadi Santoso, dan Direktur Utama BRI, Suprajarto.</div><div><br></div><div>Deputi Bidang Promosi dan Hubungan Eskternal KNKS, Afdhal Aliasar, mengatakan IIEFest 2019 ini merupakan bagian dari rangkaian peluncuran Masterplan Ekonomi Syariah Indonesia 2019-2024 yang akan diresmikan oleh Presiden pada 14 Mei 2019 mendatang.</div><div><br></div><div>"Acara ini bertemakan Halal Lifestyle di Era Millenial. Karena itulah kami memilih Bandung sebagai salah satu ikon dari pertumbuhan lifestyle. Dan juga Bandung baru-baru ini terpilih sebagai salah satu dari 10 destinasi pariwisata halal terbaik pada Indonesia Muslim Travel Index 2019," kata Afdhal.</div><div><br></div><div>Afdhal menambahkan di dalam acara ini akan diisi oleh talkshow dari 19 pembicara dimana diantaranya para pelaku usaha industri halal. Meraka akan membagikan pengalaman bagaimana tantangan serta memulai suatu usaha yang terkait dengan pengembangan industri halal dan ekonomi syariah.</div><div><br></div><div>"Kami juga mengadakan expo oleh para pelaku usaha dan stakeholder yang terkait dengan pengembangan ekonomi syariah. Sudah bergabung dalam expo 19 pelaku usaha," tambahnya.</div><div><br></div><div>Sekedar informasi pemerintah membentuk KNKS dalam rangka mendorong pengembangan keuangan syariah serta menjadikan Indonesia sebagai pemain kunci dalam ekonomi syariah global. Pembentukan KNKS dilakukan melalui Peraturan Presiden Nomor 91/2016 tentang Komite Nasional Keuangan Syariah. Komite ini dipimpin langsung oleh Presiden dan Wakil Presiden.</div><div><br></div><div>KNKS mendapat amanah untuk mempercepat, memperluas, dan memajukan pengembangan keuangan dan ekonomi syariah dalam rangka mendukung pembangunan. KNKS juga berperan untuk menyamakan persepsi dan mewujudkan sinergi antara para regulator, pemerintah, dan industri keuangan syariah untuk menciptakan sistem keuangan syariah yang selaras dan progresif untuk pertumbuhan ekonomi Indonesia.</div>	https://webdev.rifhandi.com/uploads/news/1557450531-foto-11.jpg	2019-05-09 08:05:42	1	Head of Bappenas Opens the 2019 Sharia Economic Festival	The National Sharia Finance Committee (KNKS) organized the 2019 Indonesia Islamic Economy Festival (IIEFest) under the theme "Halal Lifestyle in the Millennial Era" at the Trans Hotel Grand Ballroom, Bandung, on Friday (April 26, 2019).	<div>The National Sharia Finance Committee (KNKS) organized the 2019 Indonesia Islamic Economy Festival (IIEFest) under the theme "Halal Lifestyle in the Millennial Era" at the Trans Hotel Grand Ballroom, Bandung, on Friday (April 26, 2019).</div><div><br></div><div>The event was inaugurated by the Minister of National Development Planning (PPN) and Head of Bappenas, Bambang Brodjonegoro, and was attended by various banking professionals. Warta Ekonomi observed the presence of BRI Syariah President Director Moch Hadi Santoso and BRI President Director Suprajarto.</div><div><br></div><div>Deputy for Promotion and External Relations at KNKS, Afdhal Aliasar, stated that IIEFest 2019 is part of the series of events leading up to the launch of the Indonesian Sharia Economic Masterplan 2019-2024, which will be officiated by the President on May 14, 2019.</div><div><br></div><div>"This event is themed 'Halal Lifestyle in the Millennial Era.' That is why we chose Bandung as one of the icons of lifestyle growth. Additionally, Bandung was recently named one of the top 10 halal tourism destinations in the Indonesia Muslim Travel Index 2019," said Afdhal.</div><div><br></div><div>He added that the event features a talk show with 19 speakers, including halal industry entrepreneurs. They will share their experiences in overcoming challenges and starting businesses related to the development of the halal industry and sharia economy.</div><div><br></div><div>"We are also holding an expo involving businesses and stakeholders related to the development of the sharia economy. So far, 19 businesses have joined the expo," he added.</div><div><br></div><div>For reference, the government established KNKS to promote the development of sharia finance and position Indonesia as a key player in the global sharia economy. KNKS was formed through Presidential Regulation Number 91/2016 concerning the National Sharia Finance Committee. The committee is chaired directly by the President and Vice President.</div><div><br></div><div>KNKS has been mandated to accelerate, expand, and advance the development of sharia finance and economy to support national development. It also plays a role in aligning perspectives and creating synergy among regulators, the government, and the sharia finance industry to establish a harmonious and progressive sharia financial system for Indonesia's economic growth.</div>	1	kneks		4	0	0	null
37	Ekonomi dan Keuangan Syariah Menjadi Angin Segar Kesejahteraan Aceh	<span style="font-size: 13.44px;">Pj Gubernur Aceh Achmad Marzuki berharap ekonomi dan keuangan syariah dapat menjadi angin segar untuk mengubah kondisi Aceh menjadi salah satu provinsi terkaya di Sumatera. Hal ini disampaikan dalam audiensi Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) di kantor Gubernur Provinsi Aceh di Banda Aceh pada Senin (8/8). Kunjungan ini merupakan salah satu langkah untuk percepatan pengembangan ekonomi dan keuangan syariah di Provinsi Aceh.</span>	<div><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Pj Gubernur Aceh Achmad Marzuki berharap ekonomi dan keuangan syariah dapat menjadi angin segar untuk mengubah kondisi Aceh menjadi salah satu provinsi terkaya di Sumatera. Hal ini disampaikan dalam audiensi Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) di kantor Gubernur Provinsi Aceh di Banda Aceh pada Senin (8/8). Kunjungan ini merupakan salah satu langkah untuk percepatan pengembangan ekonomi dan keuangan syariah di Provinsi Aceh.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Pertemuan dipimpin langsung oleh Gubernur Aceh Achmad Marzuki dan dihadiri oleh pimpinan Provinsi Aceh seperti, Kepala Biro Perekonomian Sekretariat Daerah Aceh Amirullah, Kepala Biro Administrasi Pembangunan Sekretariat Daerah Aceh Robby Irza, Staf Khusus Gubernur Syukri, Kepala Bappeda Aceh Teuku Dadek, serta Wakil Direktur RUSD Zainoel Abidin Abdul Fatah.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Turut hadir Kepala Sekretariat KNEKS sekaligus Staf Ahli Menteri Keuangan Wempi Saputra, Plt. Direktur Eksekutif KNEKS Taufik Hidayat, Asisten Deputi Ekonomi dan Keuangan Sekretariat Wakil Presiden Ahmad Luthfie, Tenaga Ahli Bidang Komunikasi Keuangan Syariah Kementerian Keuangan Indah Pertiwi Nataprawira, Direktur Pemantauan Program Kerja Sekretariat KNEKS Gandy Setiawan, para Kepala Kantor Wilayah Aceh Kementerian Keuangan,&nbsp; Safuadi, Ismed Saputra,&nbsp; Syukriah, serta Imanul Hakim.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Kepala Sekretariat KNEKS yang juga menjabat sebagai Staf Ahli Menteri Keuangan ini juga menyampaikan bahwa Aceh merupakan kakak tertua pelopor ekonomi dan keuangan syariah. Sebagai kakak sulung, Provinsi Aceh patut menjadi daerah percontohan. Hal ini dikarenakan pengembangan ekonomi dan keuangan syariah Aceh sangat baik dan komprehensif.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Taufik Hidayat selaku Plt. Direktur Eksekutif KNEKS menambahkan pernyataan Kepala Sekretariat KNEKS bahwa prestasi Aceh juga sangat menggembirakan. Hal ini terlihat dari status Aceh sebagai Juara Umum Anugerah Adinata Syariah 2022 sekaligus menjadi Juara 1 Kategori Keuangan Syariah, Juara 1 Kategori Industri Halal, dan Juara 2 Kategori Pendidikan Ekonomi Syariah</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Taufik kemudian menuturkan bahwa KNEKS telah berkoordinasi dan bekerja sama dengan berbagai jajaran untuk melakukan berbagai program pengembangan ekonomi dan keuangan syariah di Aceh. Agar ekonomi dan keuangan syariah dapat berkembang lebih baik lagi, dibutuhkan komitmen seluruh pihak terkait untuk bergerak lebih cepat dalam sinergi yang kompak.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Kegiatan audiensi dilakukan sebagai tindak lanjut akselerasi pertumbuhan ekonomi dan keuangan syariah di daerah sebagaimana disampaikan oleh Wakil Presiden KH Ma’ruf Amin dalam Rapat Pleno KNEKS pada Mei 2022 yang mengambil tema “Bergerak Lebih Cepat untuk Mewujudkan Indonesia sebagai Produsen Halal Terkemuka di Dunia”.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Hal-hal strategis yang dibahas dalam pertemuan ini diantaranya:</span></div><div><ul><li><span style="font-size: 13.44px;"><br></span></li><li><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Diskusi rencana pembangunan RSUD Zainoel Abidin melalui skema KPBU Syariah serta potensinya untuk menjadi Rumah Sakit regional, bahkan internasional.</span></li><li><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Pasca peluncuran layanan Syariah BP Jamsostek, perlu ditingkatkan peran perusahaan-perusahaan pemberi kerja dalam mendaftarkan pegawainya sebagai peserta Layanan Syariah Jaminan Sosial Ketenagakerjaan (Jamsosnaker).</span></li><li><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Pelatihan, sertifikasi, dan pelatihan Dewan Pengawas Syariah (DPS) Koperasi Syariah, serta perluasan penerapan digitalisasi Industri Keuangan Mikro Syariah (IKMS).</span></li><li><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Perlunya dibangun infrastruktur penunjang bisnis dalam meyakinkan investor untuk pengembangan bisnis di Aceh, seperti Pelabuhan dan bandara penunjang yang terintegrasi.</span></li><li><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">Peningkatan kapabilitas produk dan layanan bank syariah untuk memenuhi kebutuhan transaksi dalam rangka Pekan Olahraga Nasional (PON) yang akan diselenggarakan di Aceh penyelenggaraan PON di Aceh.</span></li></ul></div>	https://webdev.rifhandi.com/uploads/news/1659974014-DSC0107911.jpg	2019-05-09 08:05:42	\N	Sharia Economy and Finance: A Breath of Fresh Air for Aceh’s Prosperity	<span style="font-size: 13.44px;">Acting Governor of Aceh, Achmad Marzuki, expressed his hope that the sharia economy and finance could become a breath of fresh air to transform Aceh into one of the richest provinces in Sumatra. This statement was made during an audience with the National Committee for Islamic Economy and Finance (KNEKS) at the Governor’s Office in Banda Aceh on Monday (8/8). The visit was part of efforts to accelerate the development of the sharia economy and finance in Aceh Province.</span>	<div><span style="font-size: 13.44px;">Acting Governor of Aceh, Achmad Marzuki, expressed his hope that the sharia economy and finance could become a breath of fresh air to transform Aceh into one of the richest provinces in Sumatra. This statement was made during an audience with the National Committee for Islamic Economy and Finance (KNEKS) at the Governor’s Office in Banda Aceh on Monday (8/8). The visit was part of efforts to accelerate the development of the sharia economy and finance in Aceh Province.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">The meeting was chaired directly by Governor Achmad Marzuki and attended by key provincial leaders, including the Head of the Economic Bureau of Aceh Regional Secretariat Amirullah, Head of the Development Administration Bureau Robby Irza, Governor’s Special Staff Syukri, Head of Aceh’s Regional Development Planning Agency (Bappeda) Teuku Dadek, and Deputy Director of RSUD Zainoel Abidin Abdul Fatah.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Also in attendance were the Head of the KNEKS Secretariat and Expert Staff to the Minister of Finance Wempi Saputra, Acting Executive Director of KNEKS Taufik Hidayat, Assistant Deputy for Economy and Finance at the Vice President’s Secretariat Ahmad Luthfie, Financial Communication Expert at the Ministry of Finance Indah Pertiwi Nataprawira, Program Monitoring Director at KNEKS Secretariat Gandy Setiawan, as well as Heads of Aceh’s Regional Offices of the Ministry of Finance, Safuadi, Ismed Saputra, Syukriah, and Imanul Hakim.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">The Head of the KNEKS Secretariat, who also serves as Expert Staff to the Minister of Finance, highlighted Aceh's role as the eldest pioneer of the sharia economy and finance. As the oldest sibling, Aceh should be a model region. This is because Aceh’s development in sharia economy and finance has been highly commendable and comprehensive.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Taufik Hidayat, Acting Executive Director of KNEKS, added to the statement by emphasizing Aceh’s remarkable achievements. This was evidenced by Aceh's status as the Grand Champion of the 2022 Adinata Syariah Awards, including 1st place in the Sharia Finance category, 1st place in the Halal Industry category, and 2nd place in the Sharia Economy Education category.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Taufik further explained that KNEKS has coordinated and collaborated with various stakeholders to implement several sharia economy and finance development programs in Aceh. To ensure further growth, a strong commitment from all relevant parties is essential for moving swiftly in a cohesive synergy.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">The audience session was held as a follow-up to the acceleration of sharia economic and financial growth in the region, as conveyed by Vice President KH Ma’ruf Amin during the KNEKS Plenary Meeting in May 2022, themed “Moving Faster to Realize Indonesia as the World’s Leading Halal Producer.”</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">The strategic points discussed during the meeting included:</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Plans for the development of RSUD Zainoel Abidin through a Sharia PPP scheme and its potential to become a regional or even international hospital.</span></div><div><span style="font-size: 13.44px;">Post-launch optimization of BP Jamsostek’s Sharia Services by encouraging employers to register their employees for the Sharia Social Security Employment Services (Jamsosnaker).</span></div><div><span style="font-size: 13.44px;">Training, certification, and education for Sharia Supervisory Boards (DPS) in Sharia Cooperatives, along with expanding digitalization in the Sharia Microfinance Industry (IKMS).</span></div><div><span style="font-size: 13.44px;">Building supportive business infrastructure, such as integrated ports and airports, to attract investors and foster business development in Aceh.</span></div><div><span style="font-size: 13.44px;">Enhancing the capabilities of sharia banking products and services to meet transaction needs in preparation for the National Sports Week (PON) to be held in Aceh.</span></div>	1	kneks	indonesia,kneks	NULL	0	0	null
38	Presiden Joko Widodo luncurkan Masterplan Ekonomi Syariah Indonesia	Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2024 yang akan memberikan pedoman bagi negara Indonesia selama lima tahun ke depan untuk dapat menjadi pelaku utama ekonomi syariah dunia diluncurkan Presiden Joko Widodo di Gedung Saleh Afiff, Kementerian Perencanaan Pembangunan Nasional, Jakarta. Selasa, (14 Mei 2019).	<div>MITRAPOL.com, Jakarta – Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2024 yang akan memberikan pedoman bagi negara Indonesia selama lima tahun ke depan untuk dapat menjadi pelaku utama ekonomi syariah dunia diluncurkan Presiden Joko Widodo di Gedung Saleh Afiff, Kementerian Perencanaan Pembangunan Nasional, Jakarta. Selasa, (14 Mei 2019).</div><div><br></div><div>Dalam sambutannya, Presiden Jokowi mengatakan bahwa Indonesia memiliki peluang besar untuk bertransformasi menjadi salah satu negara dengan perekonomian terkuat di dunia pada 2045 mendatang. Sejumlah studi yang telah dilakukan baik di dalam maupun luar negeri menyatakan hal itu.</div><div><br></div><div>“Tapi untuk menuju ke sana juga bukan barang yang mudah. Banyak tantangan, banyak persoalan besar yang harus kita selesaikan,” kata Presiden.</div><div><br></div><div>Kepala Negara melanjutkan, salah satu kunci utama untuk mewujudkan hal itu telah dimiliki Indonesia sebagai negara dengan penduduk muslim terbesar di dunia, yakni ekonomi syariah. Maka, pertumbuhan ekonomi nasional dan penyejahteraan umat harus dilakukan dengan salah satunya memajukan perekonomian syariah di dalam negeri.</div><div><br></div><div>“Kunci itu adalah ekonomi syariah. Ekonomi syariah sebagai motor pertumbuhan ekonomi nasional, ekonomi syariah sebagai sumber kesejahteraan umat,” ujarnya.</div><div><br></div><div>Di tingkat dunia, ekonomi syariah memiliki sumbangan ekonomi global yang sangat besar. Tahun 2023 mendatang, sumbangsih tersebut diperkirakan akan bernilai setidaknya USD3 triliun. Hal itu merupakan potensi yang harus dapat dimanfaatkan oleh negara kita.</div><div><br></div><div>“Sayangnya, ini menurut Global Islamic Economy Indicator, di tahun 2018 Indonesia masih menempati urutan yang ke-10 dalam peringkat negara-negara yang menyelenggarakan ekonomi syariah,” tuturnya.</div><div><br></div><div>“Kita masih di belakang Malaysia, Uni Emirat Arab, Bahrain, Arab Saudi, Oman, Jordania, Qatar, Pakistan, Kuwait. Inilah pekerjaan besar kita bersama-sama,” kata Presiden.</div><div><br></div><div>Oleh karenanya, melalui Komite Nasional Keuangan Syariah yang dibentuk oleh Presiden Joko Widodo pada 2016 lalu, pemerintah berupaya membangkitkan potensi ekonomi syariah nasional dan menjadikan Indonesia sebagai pusat ekonomi syariah di tingkat global.</div><div><br></div><div>“Saatnya sudah tiba bagi kita untuk membangkitkan potensi ekonomi syariah di Indonesia dan menjadikan Indonesia sebagai pusat ekonomi syariah terkemuka di dunia. Karena kita memang negara dengan penduduk muslim terbesar di dunia,” kata Presiden.</div><div><br></div><div>MEKSI 2019-2024 merumuskan empat langkah dan strategi utama untuk mewujudkan hal tersebut. Pertama, menguatkan rantai nilai halal dengan fokus pada sektor yang dinilai potensial dan berdaya saing tinggi. Kedua, menguatkan sektor keuangan syariah di dalam negeri.</div><div><br></div><div>Adapun yang ketiga ialah menguatkan sektor UMKM sebagai penggerak utama rantai nilai halal tersebut. Sementara yang keempat dengan menguatkan ekonomi digital yang utamanya melalui perdagangan elektronik sehingga mendorong pencapaian strategi keuangan syariah lainnya.</div><div><br></div><div>“Kita akan terus menguatkan rantai nilai halal dengan fokus pada sektor makanan dan minuman, fesyen, pariwisata, media, rekreasi, serta farmasi dan kosmetika. Sebagai pendukungnya kita akan kuatkan keuangan syariah, kita akan terus kuatkan UMKM kita, kita kuatkan ekonomi digital kita,” ujar Presiden.</div><div><br></div><div>Dengan MEKSI 2019-2024 yang telah dirumuskan tersebut, Presiden Joko Widodo berharap agar seluruh pihak memiliki semangat dan visi yang sama dalam mengimplementasikan kebijakan pengembangan ekonomi syariah Indonesia untuk mencapai tujuan yang telah dicita-citakan.</div><div><br></div><div>“Saya yakin insyaallah bahwa ketika kita semua berkomitmen menjalankan masterplan ekonomi syariah Indonesia ini maka Indonesia akan segera menjadi pusat ekonomi syariah di dunia,” tandasnya.</div><div><br></div><div>Hms/Yuliana</div><div><br></div><div><br></div><div>Sumber : https://mitrapol.com/2019/05/15/presiden-joko-widodo-luncurkan-masterplan-ekonomi-syariah-indonesia/</div>	https://webdev.rifhandi.com/uploads/news/1557909617-PeluncuranMasterplan.jpg	2019-05-09 08:05:42	\N	President Joko Widodo launches the Indonesia Sharia Economic Masterplan	The Indonesia Sharia Economic Masterplan (MEKSI) 2019-2024, which will serve as a guideline for Indonesia over the next five years to become a key player in the global sharia economy, was launched by President Joko Widodo at the Saleh Afiff Building, Ministry of National Development Planning, Jakarta, on Tuesday, (May 14, 2019).	<div>MITRAPOL.com, Jakarta – The Indonesia Sharia Economic Masterplan (MEKSI) 2019-2024, which will provide guidance for Indonesia over the next five years to become a key player in the global sharia economy, was launched by President Joko Widodo at the Saleh Afiff Building, Ministry of National Development Planning, Jakarta, on Tuesday, May 14, 2019.</div><div><br></div><div>In his speech, President Jokowi stated that Indonesia has a great opportunity to transform into one of the strongest economies in the world by 2045. Several studies, both domestically and internationally, have indicated this.</div><div><br></div><div>"But reaching that point is not an easy task. There are many challenges and major issues that we must resolve," said the President.</div><div><br></div><div>The Head of State continued, one of the key factors to achieving this is already within Indonesia’s reach as the country with the largest Muslim population in the world, namely, the sharia economy. Therefore, national economic growth and the welfare of the people must be advanced, including by promoting the sharia economy domestically.</div><div><br></div><div>"The key is the sharia economy. The sharia economy as a driver of national economic growth, the sharia economy as a source of welfare for the people," he said.</div><div><br></div><div>Globally, the sharia economy contributes significantly to the global economy. In 2023, this contribution is expected to be worth at least USD 3 trillion. This is a potential that Indonesia must tap into.</div><div><br></div><div>"Unfortunately, according to the Global Islamic Economy Indicator, in 2018, Indonesia still ranked 10th in the list of countries that implement sharia economy," he said.</div><div><br></div><div>"We are still behind Malaysia, the United Arab Emirates, Bahrain, Saudi Arabia, Oman, Jordan, Qatar, Pakistan, and Kuwait. This is our big task together," the President added.</div><div><br></div><div>Therefore, through the National Committee for Sharia Finance (KNKS), which was established by President Joko Widodo in 2016, the government is striving to awaken the potential of the national sharia economy and make Indonesia a center for the sharia economy on a global scale.</div><div><br></div><div>"The time has come for us to awaken the potential of the sharia economy in Indonesia and make Indonesia a leading center for the global sharia economy. Because we are indeed the country with the largest Muslim population in the world," said the President.</div><div><br></div><div>MEKSI 2019-2024 outlines four key steps and strategies to achieve this. First, strengthening the halal value chain with a focus on sectors considered to have high potential and competitiveness. Second, strengthening the domestic sharia finance sector.</div><div><br></div><div>Third, strengthening the MSME sector as the main driver of the halal value chain. Fourth, strengthening the digital economy, mainly through electronic commerce to support the achievement of other sharia finance strategies.</div><div><br></div><div>"We will continue to strengthen the halal value chain with a focus on sectors such as food and beverage, fashion, tourism, media, recreation, as well as pharmaceuticals and cosmetics. As support, we will strengthen sharia finance, we will continue to strengthen our MSMEs, and we will strengthen our digital economy," said the President.</div><div><br></div><div>With the MEKSI 2019-2024 having been formulated, President Joko Widodo hopes that all parties will share the same spirit and vision in implementing the policy for the development of the sharia economy in Indonesia to achieve the desired goals.</div><div><br></div><div>"I am confident, God willing, that when we are all committed to implementing this Indonesia Sharia Economic Masterplan, Indonesia will soon become the center of the global sharia economy," he concluded.</div><div><br></div><div>Hms/Yuliana</div><div><br></div><div>Source:&nbsp;<span style="font-size: 13.44px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">&nbsp;</span><span style="font-size: 13.44px; color: var(--bs-card-color); background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);">https://mitrapol.com/2019/05/15/presiden-joko-widodo-luncurkan-masterplan-ekonomi-syariah-indonesia/</span></div>	1	kneks	indonesia,kneks	NULL	0	0	null
39	Diluncurkan Jokowi, Ini 4 Fokus Masterplan Ekonomi Syariah RI	Masterplan Ekonomi Syariah Indonesia 2019-2024 merekomendasikan empat langkah dan strategi utama sebagai langkah terobosan dan percepatan pertumbuhan ekonomi syariah di dalam negeri.	<div>akarta, CNBC Indonesia - Masterplan Ekonomi Syariah Indonesia 2019-2024 merekomendasikan empat langkah dan strategi utama sebagai langkah terobosan dan percepatan pertumbuhan ekonomi syariah di dalam negeri.</div><div><br></div><div>Menteri Bappenas sekaligus Sekretaris KNKS Bambang Brodjonegoro mengatakan langkah pertama adalah penguatan halal value chain dengan fokus pada sektor yang dinilai potensial dan berdaya saing tinggi.</div><div><br></div><div>Kedua, penguatan sektor keuangan syariah dengan rencana induk yang sudah dituangkan dalam Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) sebelumnya dan disempurnakan ke dalam rencana induk.</div><div>Langkah Ketiga adalah penguatan sektor Usaha Mikro, Kecil dan Menengah (UMKM) sebagai penggerak utama halal value chain.&nbsp;</div><div><br></div><div>"Keempat penguatan di bidang ekonomi digital utamanya perdagangan (e-commerce, market place) dan keuangan (teknologi finansial) sehingga dapat mendorong dan mengakselerasi pencapaian strategi lainnya," jelas Bambang dalam konferensi pers sebelum peluncuran Masterplan Ekonomi Keuangan Syariah Indonesia 2019-2024, Selasa (14/5/2019).</div><div><br></div><div>Dia melanjutkan, untuk menjalankan keempat strategi tersebut, ada hal yang harus dilakukan, yaitu peningkatan kesadaran publik, peningkatan kuantitas dan kualitas sumber daya manusia, penguatan kapasitas riset dan pengembangan (R&amp;D), serta penguatan fatwa, regulasi dan tata kelola.</div><div><br></div><div>"Dengan MEKSI 2019-2024 ini, saya harap pemerintah dan semua pihak memiliki semangat yang sama dalam mengimplementasikan rekomendasi strategi kebijakan pengembangan ekonomi syariah di Indonesia untuk mencapai visi yang telah ditetapkan," ujar Bambang.&nbsp;</div><div><br></div><div>Komite Nasional Keuangan Syariah (KNKS) akan meluncurkan Masterplan Ekonomi Syariah Indonesia pada Selasa hari ini (14/5/2019). Peluncuran akan dilakukan oleh Presiden Joko Widodo (Jokowi) yang juga menjabat sebagai Ketua KNKS.</div><div>(dob/dob)</div><div><br></div><div>Sumber : https://www.cnbcindonesia.com/syariah/20190514155317-29-72406/diluncurkan-jokowi-ini-4-fokus-masterplan-ekonomi-syariah-ri</div>	https://webdev.rifhandi.com/uploads/news/1557909521-potensiindustri halal.png	2019-05-09 08:05:42	\N	Launched by Jokowi, Here Are the 4 Focuses of Indonesia's Sharia Economy Masterplan.	The Indonesia Sharia Economic Masterplan 2019-2024 recommends four key steps and strategies as breakthrough actions to accelerate the growth of the domestic sharia economy.	<div>Jakarta, CNBC Indonesia – The Indonesia Sharia Economic Masterplan 2019-2024 recommends four key steps and strategies as breakthrough actions to accelerate the growth of the domestic sharia economy.</div><div><br></div><div>Bappenas Minister and KNKS Secretary Bambang Brodjonegoro said the first step is strengthening the halal value chain, with a focus on sectors deemed to have high potential and competitiveness.</div><div><br></div><div>Second, strengthening the sharia financial sector with a master plan that has already been outlined in the previous Indonesian Sharia Finance Architecture Masterplan (MAKSI) and refined into the current master plan.</div><div><br></div><div>The third step is strengthening the Micro, Small, and Medium Enterprises (UMKM) sector as the main driver of the halal value chain.</div><div><br></div><div>"Fourth, strengthening the digital economy, particularly in trade (e-commerce, marketplaces) and finance (financial technology), to drive and accelerate the achievement of other strategies," explained Bambang during a press conference before the launch of the 2019-2024 Indonesian Sharia Economic Masterplan on Tuesday (14/5/2019).</div><div><br></div><div>He continued, to implement these four strategies, there are things that need to be done, including raising public awareness, increasing the quantity and quality of human resources, strengthening research and development (R&amp;D) capacity, and enhancing fatwas, regulations, and governance.</div><div><br></div><div>"With this MEKSI 2019-2024, I hope the government and all parties share the same spirit in implementing the strategic policy recommendations for the development of the sharia economy in Indonesia to achieve the established vision," said Bambang.</div><div><br></div><div>The National Committee for Sharia Finance (KNKS) will launch the Indonesia Sharia Economic Masterplan today, Tuesday (14/5/2019). The launch will be conducted by President Joko Widodo (Jokowi), who also serves as the Chairperson of KNKS. (dob/dob)</div><div><br></div><div>Source:&nbsp;&nbsp;https://www.cnbcindonesia.com/syariah/20190514155317-29-72406/diluncurkan-jokowi-ini-4-fokus-masterplan-ekonomi-syariah-ri</div>	1	kneks	indonesia,kneks	NULL	0	0	null
40	Pemerintah Luncurkan Masterplan Ekonomi Syariah Indonesia 2020-2024	Presiden Joko Widodo secara resmi meluncurkan Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2024 di Kementerian PPN/Bappenas hari ini, Selasa (14/5/2019). Menteri PPN/Bappenas Bambang Brodjonegoro mengatakan keberadaan masterplan bisa mendorong peningkatan pertumbuhan ekonomi nasional.	<div>JAKARTA, KOMPAS.com – Presiden Joko Widodo secara resmi meluncurkan Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2024 di Kementerian PPN/Bappenas hari ini, Selasa (14/5/2019). Menteri PPN/Bappenas Bambang Brodjonegoro mengatakan keberadaan masterplan bisa mendorong peningkatan pertumbuhan ekonomi nasional.</div><div><br></div><div>Menurut dia, pengembangan ekonomi syariah harus melibatkan berbagai sektor lainnya sebagai suatu integrasi sistem ekonomi berlandaskan syariah agar pertumbuhan yang berlangsung pada sektor keuangan syariah memiliki dampak langsung dan signifikan pada pertumbuhan di sektor riil. Pengembangan sektor riil yang secara fundamental menjadi fokus utama dalam sistem ekonomi Islam.</div><div><br></div><div>"Untuk itu, saya harap MEKSI 2019-2024 ini dapat dijadikan rujukan bersama dalam mengembangkan ekonomi syariah Indonesia, yang kemudian dapat diturunkan menjadi program kerja implementatif pemerintah,” ujar Bambang di Kementerian PPN/Bappenas, Jakarta, Selasa (14/5/2019).</div><div><br></div><div>Meksi 2019-2024 merekomendasikan empat langkah dan strategi utama, yaitu: pertama, penguatan halal value chain dengan fokus pada sektor yang dinilai potensial dan berdaya saing tinggi.</div><div><br></div><div>Kedua, penguatan sektor keuangan syariah dengan rencana induk yang sudah dituangkan dalam Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) sebelumnya dan disempurnakan ke dalam rencana induk ini.</div><div><br></div><div>Ketiga, penguatan sektor Usaha Mikro, Kecil dan Menengah (UMKM) sebagai penggerak utama halal value chain.</div><div><br></div><div>Keempat, penguatan di bidang ekonomi digital utamanya perdagangan (e-commerce, market place) dan keuangan (teknologi finansial) sehingga dapat mendorong dan mengakselerasi pencapaian strategi lainnya.</div><div><br></div><div>"Untuk menjalankan keempat strategi tersebut, MEKSI 2019-2024 menjabarkan beberapa strategi dasar yang harus dilakukan, yaitu peningkatan kesadaran publik, peningkatan kuantitas dan kualitas sumber daya manusia, penguatan kapasitas riset dan pengembangan (R&amp;D), serta penguatan fatwa, regulasi dan tata kelola," jelas Bambang.</div><div><br></div><div>Rancangan kebijakan dan strategi yang dikembangkan dalam masterplam diyakini bisa mendorong perkuatan ekonomi syariah di Indonesia. Sebab, pemerintah telah berkoordinasi dengan regulator baik di level K/L maupun independen, dan juga menerima masukan dari praktisi sektor industri, akademisi, asosiasi, dan berbagai pihak lainnya.</div><div><br></div><div>Pemerintah juga telah melakukan kunjungan ke berbagai daerah untuk memperoleh gambaran nyata akan kondisi ekonomi syariah yang ada saat ini di dalam negeri. “Dengan MEKSI 2019-2024 ini, saya harap pemerintah dan semua pihak memiliki semangat yang sama dalam mengimplementasikan rekomendasi strategi kebijakan pengembangan ekonomi syariah di Indonesia untuk mencapai visi yang telah ditetapkan," tukas dia.</div><div>&nbsp;</div><div><br></div><div>Penulis : Mutia Fauzia</div><div>Editor : Bambang Priyo Jatmiko</div><div><br></div><div>Sumber :&nbsp; https://money.kompas.com/read/2019/05/14/155653426/pemerintah-luncurkan-masterplan-ekonomi-syariah-2020-2024.&nbsp;</div>	https://webdev.rifhandi.com/uploads/news/1557899873-KonferensiPers.jpg	2019-05-09 08:05:42	\N	The Government Launches Indonesia Sharia Economy Masterplan 2020-2024	President Joko Widodo officially launched the Indonesia Sharia Economy Masterplan (MEKSI) 2019-2024 at the Ministry of National Development Planning/Bappenas today, Tuesday (14/5/2019). Minister of National Development Planning/Bappenas Bambang Brodjonegoro stated that the existence of the masterplan could drive the growth of the national economy.	<div>JAKARTA, KOMPAS.com – President Joko Widodo officially launched the Indonesia Sharia Economy Masterplan (MEKSI) 2019-2024 at the Ministry of National Development Planning/Bappenas today, Tuesday (14/5/2019). Minister of National Development Planning/Bappenas Bambang Brodjonegoro stated that the existence of the masterplan could drive the growth of the national economy.</div><div><br></div><div>According to him, the development of the sharia economy must involve other sectors as an integrated sharia-based economic system so that the growth in the sharia financial sector will have a direct and significant impact on growth in the real sector. The development of the real sector, which is fundamentally the main focus of the Islamic economic system.</div><div><br></div><div>“For that reason, I hope that MEKSI 2019-2024 can be used as a reference together in developing Indonesia's sharia economy, which can then be translated into the government's implementable work programs,” said Bambang at the Ministry of National Development Planning/Bappenas, Jakarta, Tuesday (14/5/2019).</div><div><br></div><div>MEKSI 2019-2024 recommends four key steps and strategies: First, strengthening the halal value chain with a focus on sectors that are considered potential and highly competitive.</div><div><br></div><div>Second, strengthening the sharia financial sector with the master plan that was previously outlined in the Indonesian Sharia Financial Architecture Masterplan (MAKSI) and refined into this master plan.</div><div><br></div><div>Third, strengthening the Micro, Small, and Medium Enterprises (MSMEs) sector as the main driver of the halal value chain.</div><div><br></div><div>Fourth, strengthening the digital economy, particularly in trade (e-commerce, marketplace) and finance (financial technology), to encourage and accelerate the achievement of other strategies.</div><div><br></div><div>“To implement these four strategies, MEKSI 2019-2024 outlines several basic strategies that must be carried out, including raising public awareness, improving the quantity and quality of human resources, strengthening research and development (R&amp;D) capacities, and strengthening fatwas, regulations, and governance,” explained Bambang.</div><div><br></div><div>The policy and strategy framework developed in the masterplan is believed to encourage the strengthening of the sharia economy in Indonesia. This is because the government has coordinated with regulators both at the K/L level and independent bodies and has also received input from industry practitioners, academics, associations, and various other parties.</div><div><br></div><div>The government has also conducted visits to various regions to obtain a clear picture of the current state of the sharia economy in the country. “With MEKSI 2019-2024, I hope the government and all parties share the same enthusiasm in implementing the strategic policy recommendations for developing the sharia economy in Indonesia to achieve the established vision,” he concluded.</div><div><br></div><div>Author: Mutia Fauzia&nbsp;</div><div>Editor: Bambang Priyo Jatmiko</div><div><br></div><div>Source:&nbsp;&nbsp;https://money.kompas.com/read/2019/05/14/155653426/pemerintah-luncurkan-masterplan-ekonomi-syariah-2020-2024.&nbsp;</div>	1	kneks	indonesia,kneks	NULL	0	0	null
133	KNKS Sampaikan Kuliah Umum Ekonomi Syariah di Universitas Pancasila	<p>Diharapkan Perguruan Tinggi di Indonesia turut berperan aktif dalam pengembangan sektor keuangan dan ekonomi syariah tanah air</p>	<p style="margin-left:9.9pt">JAKARTA, KNKS &ndash; Direktur Komite Nasional Keuangan Syariah (KNKS), Taufik Hidayat, menyampaikan Kuliah Umum berjudul &ldquo;Strategi Pengembangan Sektor Keuangan dan Ekonomi Syariah&rdquo; di Fakultas Ekonomi Universitas Pancasila, Kamis (23/05/2019).</p>\r\n\r\n<p style="margin-left:9.9pt">Taufik berharap, perguruan tinggi di Indonesia turut berperan aktif dalam pengembangan sektor keuangan dan ekonomi syariah tanah air. &ldquo;Karena Universitas berperan besar untuk mendukung strategi dasar pengembangan ekonomi syariah melalui penguatan kapasitas riset dan pengembangan (R&amp;D),&rdquo; kata Taufik yang merupakan Direktur Hukum, Promosi dan Hubungan Eksternal KNKS.</p>\r\n\r\n<p style="margin-left:9.9pt">Hal ini sejalan dengan salah satu strategi dasar pengembangan ekonomi syariah dalam Masterplan Ekonomi Syariah (MEKSI) 2019-2024 yang baru diluncurkan bulan ini, yakni penguatan kapasitas riset dan pengembangan (R&amp;D).</p>\r\n\r\n<p style="margin-left:9.9pt">Taufik melanjutkan, KNKS sedang mengembangkan program untuk mendukung R&amp;D ekonomi syariah, yaitu Indonesian Network for Islamic Economic Studies (INIES). &ldquo;KNKS siap bekerja sama dengan Universitas Pancasila dalam melakukan penelitian dan pengembangan ekonomi syariah, serta pembuatan kurikulum Ekonomi Syariah di Indonesia,&rdquo; ucap Taufik.</p>\r\n\r\n<p style="margin-left:9.9pt">Kuliah umum dikhususkan untuk mahasiswa semester akhir Fakultas Ekonomi Universitas Pancasila sebagai persyaratan mengikuti tugas akhir. Kegiatan ini dihadiri oleh Dekan Fakultas Ekonomi dan dipandu oleh salah satu dosen mata kuliah Ekonomi Syariah sebagai moderator.</p>\r\n\r\n<p style="margin-left:9.9pt">&nbsp;</p>\r\n\r\n<p style="margin-left:9.9pt">Penulis: Ishmah Qurratu&rsquo;ain</p>\r\n\r\n<p style="margin-left:9.9pt">Redaktur Pelaksana: Achmad Iqbal</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	KNKS Delivers Public Lecture at Pancasila University	\N	<p><strong>Jakarta</strong> - Director of Legal, Promotion and External Relations of National Islamic Finance Committee (KNKS), Taufik Hidayat, delivered a public lecture titled &ldquo;The Strategy for the Development of Islamic Economy&rdquo; at Pancasila University on Thursday, May 23. Also present is the Dean of the Faculty of Economics; one lecturer served as moderator.</p>\r\n\r\n<p>Taufik expressed hopes that institutions of higher learning in Indonesia will take roles that are more active in the development of sharia-based economic and financial sector.</p>\r\n\r\n<p>&ldquo;Universities are a major factor in supporting the fundamental strategy to develop an Islamic economy utilizing improving the capacity for Research and Development,&rdquo; Taufik said.</p>\r\n\r\n<p>This idea is in line with one of the primary strategies on the development of Islamic economy laid out in the Indonesia Islamic Economic Masterplan (MEKSI) 2019-2024, launched in the same month.</p>\r\n\r\n<p>Furthermore, Taufik also revealed the plan to support R&amp;D for Islamic economy through the Indonesian Network for Islamic Economic Studies or INIES. &ldquo;KNKS is ready to cooperate with Pancasila University to conduct research and development on Islamic economy and the creation of Islamic economy in Indonesia,&rdquo; Taufik added.</p>\r\n\r\n<p>The lecture was primarily intended for senior students as one of the prerequisites for their thesis.</p>\r\n\r\n<p>Reporter:&nbsp;Ishmah Qurratu&rsquo;ain</p>	3	kneks	\N	NULL	0	0	null
132	Sutan Emir Berbicara di Seminar Internasional di STEI Iqra Annisa	<p>KNKS sebagai katalisator peningkatan ekonomi syariah akan bersinergi dengan seluruh elemen dalam ekosistem ekonomi syariah.</p>	<p><strong>RIAU, KNKS</strong> &ndash; Sutan Emir, Direktur Komite Nasional Keuangan Syariah (KNKS) menjadi salah satu narasumber dalam Seminar Internasional Iqra Annisa Shariah Economics Festival (ISEF) 2019 yang diselenggarakan oleh Sekolah Tinggi Ekonomi Islam (STEI) Iqra Annisa bertempat di Universitas Abdurrab Pekanbaru, Riau, Senin (29/04/19).</p>\r\n\r\n<p>Seminar bertemakan <em>The Strategy of Islamic Financial Institution in Facing Challenges of the Industrial Revolution 4.0.</em>, dibuka oleh Gubernur Riau yang diwakili oleh Kepala Biro Kesejahteraan Rakyat dan Sekretariat Daerah Provinsi Riau serta Ketua Yayasan Iqra Annisa.</p>\r\n\r\n<p>Turut hadir narasumber dari Pimpinan OJK Riau, Kepala Kelompok Pengembangan Kerjasama Domestik dan Internasional-Departemen Ekonomi dan Keuangan Syariah Bank Indonesia, dan Kepala Pusat Riset Maybank Islamic Bank Malaysia.</p>\r\n\r\n<p>KNKS sangat menyadari pentingnya optimalisasi penggunaan teknologi untuk pengembangan ekonomi dan keuangan syariah di era revolusi industri. &ldquo;Dalam 10 program prioritas KNKS, 4 diantaranya berbasis teknologi yaitu <em>Zakat Sharing Platform</em>, <em>Microfinance Sharing Platform</em>, <em>Halal Marketplace</em>, dan <em>Sharia Digital Payment System</em>.&rdquo; kata Emir, Direktur Pendidikan dan Riset Keuangan Syariah KNKS.</p>\r\n\r\n<p>Sutan Emir menegaskan, KNKS sebagai katalisator peningkatan ekonomi dan keuangan syariah akan bersinergi dengan seluruh elemen dalam ekosistem ekonomi dan keuangan syariah.</p>\r\n\r\n<p>Penulis: Citra Atrina Sari<br />\r\nRedaktur Pelaksana: Achmad Iqbal</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	Sutan Emir as a Speaker in Internasional Seminar STEI Iqra Annisa	<p>KNKS as the catalyst of Islamic economy enhancement will synergize with all elements of Islamic economy&nbsp;ecosystem.&nbsp;</p>	<p><strong>RIAU, KNKS</strong> &ndash; Sutan Emir, the Director of National Islamic Finance Committee (KNKS) was invited as a speaker in The International Seminar of Islamic Economics as one of Iqra Annisa Shariah Economics Festival (ISEF) 2019 series that held by STEI Iqra Annisa in the University of Abdurrab Pekanbaru, Riau, on Monday (29/04/19).</p>\r\n\r\n<p>The seminar themed <em>The Strategy of Islamic Financial Institution in Facing Challenges of the Industrial Revolution 4.0</em>., was opened by Governor of Riau who was represented by Chief of Community Welfare Bureau under The Riau Government Secretariat and Head of Iqra Annisa Foundation as well.</p>\r\n\r\n<p>There are also other speakers such as the Representative of Financial Services Authority (OJK) of Riau; Head of Domestic and International Partnership Development Group &ndash; Bank of Indonesia; and Head of Sharia Center of Excellent &ndash; Maybank Islamic Bank Malaysia.</p>\r\n\r\n<p>KNKS realizes the importance of technology optimization in developing Islamic economy and finance in industrial revolution era. &ldquo;There are 4 out of 10 KNKS&rsquo; main programs that utilize technology. They are: Zakat Sharing Platform, Microfinance Sharing Platform, Halal Marketplace, and Sharia Digital Payment System.&rdquo; said Emir, the Director of Islamic Financial Education and Research of KNKS.</p>\r\n\r\n<p>Emir emphasized that KNKS as the catalyst of Islamic economy and finance enhancement will synergize with all elements of Islamic economy and finance ecosystem.&nbsp;</p>\r\n\r\n<p>Reporter: Citra Atrina Sari<br />\r\nChief Editor: Achmad Iqbal</p>	3	kneks	\N	NULL	0	0	null
176	Pemerintah Luncurkan Masterplan Ekonomi Syariah Indonesia 2020-2024	<p>Keberadaan masterplan bisa mendorong peningkatan pertumbuhan ekonomi nasional</p>	<p><strong>JAKARTA, KOMPAS.com</strong> &ndash; Presiden Joko Widodo secara resmi meluncurkan Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2024 di Kementerian PPN/Bappenas hari ini, Selasa (14/5/2019). Menteri PPN/Bappenas Bambang Brodjonegoro mengatakan keberadaan masterplan bisa mendorong peningkatan pertumbuhan ekonomi nasional.</p>\r\n\r\n<p>Menurut dia, pengembangan ekonomi syariah harus melibatkan berbagai sektor lainnya sebagai suatu integrasi sistem ekonomi berlandaskan syariah agar pertumbuhan yang berlangsung pada sektor keuangan syariah memiliki dampak langsung dan signifikan pada pertumbuhan di sektor riil. Pengembangan sektor riil yang secara fundamental menjadi fokus utama dalam sistem ekonomi Islam.</p>\r\n\r\n<p>&quot;Untuk itu, saya harap MEKSI 2019-2024 ini dapat dijadikan rujukan bersama dalam mengembangkan ekonomi syariah Indonesia, yang kemudian dapat diturunkan menjadi program kerja implementatif pemerintah,&rdquo; ujar Bambang di Kementerian PPN/Bappenas, Jakarta, Selasa (14/5/2019).</p>\r\n\r\n<p>Meksi 2019-2024 merekomendasikan empat langkah dan strategi utama, yaitu: pertama, penguatan halal value chain dengan fokus pada sektor yang dinilai potensial dan berdaya saing tinggi.</p>\r\n\r\n<p>Kedua, penguatan sektor keuangan syariah dengan rencana induk yang sudah dituangkan dalam Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) sebelumnya dan disempurnakan ke dalam rencana induk ini.</p>\r\n\r\n<p>Ketiga, penguatan sektor Usaha Mikro, Kecil dan Menengah (UMKM) sebagai penggerak utama halal value chain.</p>\r\n\r\n<p>Keempat, penguatan di bidang ekonomi digital utamanya perdagangan (e-commerce, market place) dan keuangan (teknologi finansial) sehingga dapat mendorong dan mengakselerasi pencapaian strategi lainnya.</p>\r\n\r\n<p>&quot;Untuk menjalankan keempat strategi tersebut, MEKSI 2019-2024 menjabarkan beberapa strategi dasar yang harus dilakukan, yaitu peningkatan kesadaran publik, peningkatan kuantitas dan kualitas sumber daya manusia, penguatan kapasitas riset dan pengembangan (R&amp;D), serta penguatan fatwa, regulasi dan tata kelola,&quot; jelas Bambang.</p>\r\n\r\n<p>Rancangan kebijakan dan strategi yang dikembangkan dalam masterplam diyakini bisa mendorong perkuatan ekonomi syariah di Indonesia. Sebab, pemerintah telah berkoordinasi dengan regulator baik di level K/L maupun independen, dan juga menerima masukan dari praktisi sektor industri, akademisi, asosiasi, dan berbagai pihak lainnya.</p>\r\n\r\n<p>Pemerintah juga telah melakukan kunjungan ke berbagai daerah untuk memperoleh gambaran nyata akan kondisi ekonomi syariah yang ada saat ini di dalam negeri. &ldquo;Dengan MEKSI 2019-2024 ini, saya harap pemerintah dan semua pihak memiliki semangat yang sama dalam mengimplementasikan rekomendasi strategi kebijakan pengembangan ekonomi syariah di Indonesia untuk mencapai visi yang telah ditetapkan,&quot; tukas dia.<br />\r\n&nbsp;</p>\r\n\r\n<p>Penulis : Mutia Fauzia<br />\r\nEditor : Bambang Priyo Jatmiko</p>\r\n\r\n<p><br />\r\n<em>Sumber :&nbsp;&nbsp;https://money.kompas.com/read/2019/05/14/155653426/pemerintah-luncurkan-masterplan-ekonomi-syariah-2020-2024.&nbsp;</em></p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
137	Kembangkan Sektor Keuangan Syariah, KNKS Gandeng CFO Club	<p>KNKS menjalin kerjasama dengan Perkumpulan Direktur Keuangan Indonesia (CFO Club)</p>	<p><strong>Jakarta, KNKS - </strong>Komite Nasional Keuangan Syariah (KNKS) menjalin kerjasama dengan Perkumpulan Direktur Keuangan Indonesia (PDKI) atau dikenal dengan <em>CFO Club</em> melalui penandatanganan Nota Kesepemahaman pada hari Selasa, 14 Mei 2019 yang lalu. Kegiatan ini dilakukan secara bersamaan dengan acara peluncuran Masterplan Ekonomi Syariah (MEKSI) 2019 &ndash; 2024 di Gedung Badan Perencanaan Pembangunan Nasional (Bappenas). Kerjasama antara KNKS dan <em>CFO Club </em>ini meliputi kegiatan sosialisasi dan edukasi, peningkatan kapasitas SDM, serta mendorong pertumbuhan keuangan dan ekonomi syariah.</p>\r\n\r\n<p>KNKS terus berupaya melakukan sinergi antara pemerintah, pelaku industri, dan masyarakat demi mewujudkan ekonomi syariah yang berkeadilan dan berdaya saing.</p>\r\n\r\n<p>Penulis : Cindhi Cintokowati<br />\r\nRedaktur : Taufik Hidayat</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	KNKS Partners with CFO Club to Develop Islamic Finance	\N	<p>Jakarta - National Islamic Finance Committee (KNKS), established partnership with Indonesian Chief Financial Officer Association, commonly known as CFO Club, marked with the signing of a memorandum of understanding on Tuesday, May 14.</p>\r\n\r\n<p>The signing occurred during the launching of Indonesia Islamic Economic Master Plan (MEKSI) 2019-2024 at the headquarters of National Development Planning Agency (Bappenas). Both organizations will cooperate in activities such as socialization and educating, improving human resources capacity, as well as promoting the growth of sharia financial and economic sectors.</p>\r\n\r\n<p>KNKS aims to develop a fair and competitive Islamic economy by building synergies with the government, the industry, and the public.</p>\r\n\r\n<p>Reporter: Cindhi Cintokowati</p>	3	kneks	\N	NULL	0	0	null
136	Dorong Jaminan Sosial Ketenagakerjaan Syariah, KNKS Melakukan MoU dengan BPJS Ketenagakerjaan	<p>Hal ini diharapkan mampu mengakomodasi kebutuhan tenaga kerja di Indonesia akan jaminan sosial syariah</p>	<p><strong>Jakarta, KNKS -&nbsp;</strong>Direktur Eksekutif Komite Nasional Keuangan Syariah (KNKS) melakukan penandatanganan <em>Memorandum of Understanding</em> (<em>MoU</em>) dengan BPJS Ketenagakerjaan pada hari Selasa, 14 Mei 2019 yang lalu. Kegiatan ini dilakukan secara bersamaan dengan acara peluncuran Masterplan Ekonomi Syariah (MEKSI) 2019-2024 secara langsung oleh Presiden Republik Indonesia Bapak Ir. Joko Widodo yang juga merupakan Ketua KNKS dan didampingi oleh segenap jajaran Menteri selaku Dewan Pengarah KNKS di Gedung Badan Perencanaan Pembangunan Nasional (Bappenas).</p>\r\n\r\n<p>Dalam MoU tersebut, keduanya telah sepakat untuk bekerjasama dalam pengembangan program jaminan sosial ketenagakerjaan dengan prinsip syariah. Hal ini diharapkan mampu mengakomodasi kebutuhan tenaga kerja di Indonesia akan jaminan sosial syariah, sekaligus mendorong pendalaman pasar keuangan syariah melalui investasi dana BPJS Ketenagakerjaan pada instrumen keuangan syariah.</p>\r\n\r\n<p>Penulis :&nbsp; Cindhi Cintokowati<br />\r\nRedaktur : Taufik Hidayat</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	3	kneks	\N	NULL	0	0	null
134	KNKS Hadiri Acara “Ngobrol Santai Wisata Halal” di Sumatera Barat	<p>Sumatera Barat dapat dimulai <em>pilot project</em> di wilayah tertentu untuk&nbsp;dijadikan acuan bagi&nbsp;wilayah lainnya</p>	<p><strong>Padang, KNKS</strong> &ndash; Dinas Pariwisata dan Generasi Pesona Indonesia (GenPI) Provinsi Sumatera Barat menyelenggarakan diskusi yang bertajuk &lsquo;Ngobrol Santai Wisata Halal&rsquo; bertempat di Aula Kantor Perwakilan Bank Indonesia Sumatera Barat pada Jumat 24 Mei 2019. Acara diskusi ini menghadirkan berbagai pembicara yang paham akan perkembangan wisata halal baik global maupun nasional, diantaranya yaitu R. Wisnu Rahtomo dari Tim Percepatan Pengembangan Pariwisata Halal Kemenpar RI dan Wahyu Purnama A. selaku Kepala Perwakilan bank Indonesia Sumatera Barat.</p>\r\n\r\n<p>Ketua GenPI Sumatera Barat, Aries Purnama, menjelaskan diskusi santai ini diadakan untuk membahas pengembangan wisata halal di daerah Sumatera Barat dalam rangka menggerakkan perekonomian masyarakat,&rdquo; Ujar Ketua GenPI Sumbar, Aries Purnama.</p>\r\n\r\n<p>Komite Nasional Keuangan Syariah (KNKS) yang diwakili oleh Direktur Pengembangan Ekonomi Syariah dan Industri Halal, Afdhal Aliasar, beserta Analis Kebijakannya, Yopi Nursali turut hadir sebagai narasumber di acara tersebut. &ldquo;Untuk merealisasikan strategi pengembangan pariwisata halal di Sumatera Barat dapat dimulai dengan <em>pilot project</em> di wilayah tertentu untuk kemudian dapat dijadikan acuan bagi pembangunan di wilayah lainnya,&rdquo; jelas Afdhal.</p>\r\n\r\n<p>Diskusi yang dipandu oleh Sari Lenggogeni, Ketua Pusat Studi Pariwisata dan Kebudayaan Universitas Andalas, juga membahas pentingnya sertifikasi halal yang menjadi cerminan kualitas produk yang lebih terjamin bagi wisatawan, yang pada akhirnya akan mendorong para pelaku industri di Sumatera Barat dalam memperbesar cakupan target konsumennya, baik lokal maupun luar negeri.</p>\r\n\r\n<p>Adapun dalam ruang diskusi tersebut diungkapkan pula pentingnya pembangunan infrastruktur dan fasilitas yang dapat menunjang kenyamanan wisatawan di Sumatera Barat.</p>\r\n\r\n<p>Penulis : Khairana Izzati<br />\r\nRedaktur Pelaksana : Achmad Iqbal</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	KNKS Attended The Halal Tourism Talk Show in West Sumatera	<p>KNKS and GenPI&nbsp;discuss the potential of Halal Tourism in West Sumatera</p>	<p>PADANG &ndash; Tourism Agency of West Sumatera Province and&nbsp;<em>Generasi Pesona Indonesia</em>(GenPI) held a talk show to discuss the potential of Halal Tourism in West Sumatera. The event was held on Friday, May 24<sup>th</sup>2019 and located at the Hall of Bank Indonesia Representative Office in West Sumatera. The organiser brought prominent speakers in the development of Halal Tourism in Indonesia namely R. Wisnu Rahtomo from the Indonesian Halal Tourism Development Acceleration Team of Ministry of Tourism and Wahyu Purnama as Chief Representative of Bank Indonesia in West Sumatra.</p>\r\n\r\n<p>The chief of GenPI of West Sumatera, Aries Purnama, explained that the discussion was held to explore the development of halal tourism in West Sumatera will be activate the community&rsquo;s economy.&rdquo;&nbsp;</p>\r\n\r\n<p>Afdhal Aliasar, Director of The Development of Economy and Halal Industry of National Islamic Finance Committee (KNKS), contributed on the event as one of the invited speaker. &ldquo;To realizing the halal tourism development strategy, it can be initiated by a &lsquo;pilot project&rsquo; applied on certain areas of West Sumatera. It would stimulate the other regions to do so and make West Sumatra as one of the top-list of muslim-friendly destinations&rdquo;, said Afdhal.</p>\r\n\r\n<p>The discussion guided by Sari Lenggogeni, Chairman of the Andalas University&#39;s Center for Tourism and Culture Studies, also discussed the importance of halal certification as a reflection of the more guaranteed quality products that can attract tourists, which in turn will encourage industry players in West Sumatra to enlarge the scope of their target consumers, both local and overseas.</p>\r\n\r\n<p>The discussion also revealed the importance of building the infrastructure and facilities to support the convenience of tourist in West Sumatera</p>\r\n\r\n<p>&nbsp;</p>	3	kneks	\N	NULL	0	0	null
138	KNKS Jalin Kerja Sama dengan 5 Perguruan Tinggi dan LIPI	<p>Diharapkan KNKS dapat menjalankan fungsi <em>link and match</em>&nbsp;pengembangan pendidikan, riset, dan pengabdian masyarakat</p>	<p>JAKARTA &ndash; Komite Nasional Keuangan Syariah (KNKS) melakukan penandatangan nota kesepahaman dengan 5 Perguruan Tinggi dan Lembaga Ilmu Pengetahuan Indonesia (LIPI) di Ruang Djuanedi Hadisumarto, Kantor Bappenas, dalam Acara Launching Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2024.</p>\r\n\r\n<p>Kesepakatan kerja sama ini ditandatangani oleh rektor dari masing-masing Perguruan Tinggi, Kepala LIPI, dan Direktur Eksekutif KNKS yang disaksikan langsung oleh Presiden Jokowi pada Selasa (14/05/19).</p>\r\n\r\n<p>Penandatangan nota kesepahaman atau Memorandum of Understanding (MoU) dilaksanakan oleh Perguruan Tinggi yang telah membuka program studi ekonomi syariah/Islam. Diantaranya Institut Pertanian Bogor, STEI Tazkia, Universitas Airlangga (UNAIR), Universitas Indonesia (UI), dan UIN Ar-Raniry.</p>\r\n\r\n<p>KNKS dan perguruan tinggi bekerja sama untuk pengembangan pendidikan, riset, dan pengabdian kepada masyarakat dalam bidang Ekonomi Syariah. Sedangkan KNKS dan LIPI bekerja sama dalam bidang penelitian dan pengembangan ekonomi syariah nasional.</p>\r\n\r\n<p>&nbsp;&ldquo;Langkah terdekat kami pasca penandatangan MoU ini adalah koordinasi dengan para pihak untuk menyiapkan <em>pilot project</em> program. Harapannya Masterplan Ekonomi Syariah Indonesia 2019-2024 dapat menjadi pedoman untuk mewujudkan tujuan bersama dalam hal pengembangan ekonomi syariah pada lembaga pendidikan di Indonesia,&rdquo; ucap Emir, Direktur Pendidikan dan Riset Keuangan Syariah KNKS.</p>\r\n\r\n<p>Emir mengatakan, dengan terciptanya kesepakatan kerja sama ini, KNKS dapat menjalankan fungsi <em>link and match</em> dalam rangka pengembangan pendidikan, riset, dan pengabdian masyarakat dalam bidang ekonomi syariah dan industri halal.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Penulis: Annissa Permata</p>\r\n\r\n<p>Redaktur Pelaksana: Achmad Iqbal</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	KNKS Collaborates with 5 Universities and LIPI	<p>Expected KNKS to carry out its link and match function&nbsp;of education, research, and community service</p>	<p>JAKARTA &ndash; The National Islamic Finance Committee (KNKS) signed Memorandum of Understandings (MoUs) with 5 Universities and Indonesia Institute of Sciences (LIPI) at Djuanedi Hadisumarto Room, The Ministry of National Development Planning (Bappenas) Office,&nbsp;in the launching event of The Masterplan for Indonesian Islamic Economy 2019-2024.</p>\r\n\r\n<p>On Tuesday (14/05/19), the MoUs were signed by the Rectors of each university, Head of LIPI, and Executive Director of KNKS that were witnessed directly by the President of the Republic Indonesia, Jokowi.</p>\r\n\r\n<p>The signing of MoUs were carried out by KNKS and universities that have Islamic/sharia economics as one of their study programs. The 5 Universities are IPB University, STEI Tazkia, University of Airlangga, University of Indonesia, and UIN Ar-Raniry. These MoUs were&nbsp;signed as a framework of cooperation in the development of education, research, and community service in the field of Islamic economy and halal industry.</p>\r\n\r\n<p>The other MoU was carried out by KNKS and LIPI in the context of national Islamic economy research and development.</p>\r\n\r\n<p>&ldquo;The next step to be taken after the signing of these MoUs is to prepare a pilot project program. It is expected that the Masterplan for Indonesian Islamic Economy 2019-2024 can be a guideline to realize the common goals of Islamic economy development&nbsp;in those educational institutions.&rdquo; said Sutan Emir, the Director of Islamic Financial Education and Research of KNKS.</p>\r\n\r\n<p>Sutan Emir said that, the establishment of the MoUs between KNKS and the 5 Universities and also LIPI, is expected to help KNKS to carry out its link and match function especially in the areas of education, research, and community service related to the Islamic economy and halal industry.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Reporter: Annissa Permata</p>\r\n\r\n<p>Chief Editor: Achmad Iqbal</p>	3	kneks	\N	NULL	0	0	null
141	JICA dan KNKS Menjajaki Kerja Sama Pengembangan Ekonomi Syariah	<p>KNKS&nbsp;dan JICA&nbsp;berdiskusi mengenai ekonomi syariah</p>	<p><strong>JAKARTA, KNKS</strong> &ndash; Komite Nasional Keuangan Syariah (KNKS) dan Japan International Cooperation Agency (JICA) berdiskusi mengenai ekonomi syariah di kantor KNKS, Jakarta, Kamis (4/7/2019).</p>\r\n\r\n<p>Dalam diskusi tersebut hadir JICA Senior Advisor Hirotaka Nakamura, JICA Senior Advisor Masayoshi Ono, Project Coordinator JICA dalam <em>Project Strengthening the Capacity for Social Insurance Operation</em> Saeko Tano, dan perwakilan Dewan Jaminan Sosial Nasional (DJSN). Turut hadir pula Direktur Hukum, Promosi dan Hubungan Eksternal KNKS Taufik Hidayat beserta jajaran analis KNKS.</p>\r\n\r\n<p>Taufik menambahkan, &ldquo;saat ini JICA dan Indonesia sedang dalam penjajakan kerja sama.&rdquo; Kata Taufik yang juga merupakan anggota Dewan Jaminan Sosial Nasional (DJSN) RI. Dari pihak JICA Indonesia telah mempercayakan Hirose untuk melakukan komunikasi intensif dengan KNKS.&nbsp;</p>\r\n\r\n<p>Penulis: Ishmah Qurratu&rsquo;ain<br />\r\nRedaktur Pelaksana: Achmad Iqbal</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	3	kneks	\N	NULL	0	0	null
142	KNKS Bertemu dengan Ketua BPS Bahas Ekonomi Syariah	<p>BPS berperan penting dalam mengembangkan ekonomi syariah Indonesia</p>	<p>JAKARTA, KNKS &ndash; Komite Nasional Keuangan Syariah (KNKS) bertemu dengan Kepala Badan Pusat Statistik (BPS) Kecuk Suhariyanto di Kantor BPS, Jakarta, Selasa (9/7/2019).</p>\r\n\r\n<p>KNKS diwakilkan oleh Direktur Pengembangan Ekonomi Syariah dan Industri Halal Afdhal Aliasar, Direktur Pendidikan dan Riset Sutan Emir Hidayat, serta Direktur Hukum, Promosi dan Hubungan Eksternal Taufik Hidayat.</p>\r\n\r\n<p>Kunjungan tersebut dimaksudkan untuk diskusi mengenai sinergi KNKS dengan BPS dalam mengembangkan ekonomi syariah di Indonesia. &ldquo;Harapannya BPS dapat mendukung KNKS dalam pengembangan ekonomi syariah di Indonesia. Fungsi BPS adalah dalam mendukung penyediaan dan analisis data statistik yang berhubungan dengan ekonomi dan keuangan syariah,&rdquo; kata Taufik.</p>\r\n\r\n<p>BPS berperan penting melalui pengukuran indikator kinerja ekonomi syariah. &quot;BPS memiliki peran strategis dalam hal formulasi metodologi yang tepat di bidang pendataan dan pengukuran data ekonomi. BPS dapat bekerjasama dengan KNKS untuk menghasilkan indikator-indikator pembangunan di bidang ekonomi syariah&rdquo; ujar Afdhal.&nbsp;&quot;Keakuratan data merupakan suatu hal yang penting dalam semua bidang, tak terkecuali bidang ekonomi syariah, sampai saat ini Indonesia belum punya cara untuk mengukur indikator ekonomi syariah, dan kita tidak mungkin melepas diri dari BPS terkait ini,&quot; ujar Emir menguatkan.</p>\r\n\r\n<p>Penulis: Ishmah Qurratu&rsquo;ain<br />\r\nRedaktur Pelaksana: Achmad Iqbal</p>\r\n\r\n<p style="margin-left:9.9pt">&nbsp;</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	3	kneks	\N	NULL	0	0	null
143	JICA Berkomitmen Bantu Pengembangan Ekonomi Syariah	<p>KNKS&nbsp;dan JICA&nbsp;berdiskusi mengenai ekonomi syariah</p>	<p>q</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	0	\N	\N	\N	3	kneks	\N	NULL	0	0	null
144	Indonesia targetkan jadi produsen utama industri halal global 2024	<p>Indonesia sebagai negara muslim terbesar masih menjadi negara konsumen disisi lain tertatih menjadi pusat halal dunia</p>	<p><strong>Jakarta (ANTARA) -</strong> Pemerintah meluncurkan Rencana Induk atau Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2024 yang isinya merekomendasikan empat langkah strategis dengan tujuan utama agar Indonesia mampu menjadi produsen utama dalam industri halal global di 2024.</p>\r\n\r\n<p>Menteri PPN/Kepala Bappenas Bambang Brodjonegoro dalam jumpa pers di Jakarta, Selasa, mengatakan saat ini Indonesia masih berada di posisi sepuluh besar sebagai konsumen global industri syariah.</p>\r\n\r\n<p>Hal itu cukup ironis karena Indonesia yang notabene merupakan negara dengan populasi muslim terbesar di dunia masih jadi negara konsumen. Namun, di sisi lain, Indonesia masih tertatih untuk menjadi negara produsen produk halal.</p>\r\n\r\n<p>Dengan adanya MEKSI tersebut, diharapkan Indonesia bisa menjadi produsen utama bagi industri halal global.</p>\r\n\r\n<p>&quot;Dengan adanya masterplan ini kami berharap Indonesia bisa masuk menjadi pemain utama, produsen industri halal global di 2024,&quot; ujar Bambang.</p>\r\n\r\n<p>Untuk itu, Bambang merekomendasikan empat strategi agar hal tersebut dapat tercapai.<br />\r\nPertama, penguatan rantai nilai produk halal dengan fokus pada sektor yang dinilai potensial dan berdaya saing tinggi.</p>\r\n\r\n<p>&quot;Terutama pada sektor-sektor potensial seperti makanan minuman, pariwisata, fesyen, media dan rekreasi serta farmasi dan kosmetik,&quot; ujarnya.</p>\r\n\r\n<p>Selanjutnya, penguatan sektor keuangan syariah dengan rencana induk yang sudah dituangkan dalam Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) sebelumnya dan disempurnakan ke dalam rencana induk ini. Pengembangan ekonomi syariah akan diprioritaskan kepada sektor ritel.</p>\r\n\r\n<p>Selain itu, penguatan sektor Usaha Mikro, Kecil dan Menengah (UMKM) sebagai penggerak utama rantai nilai produk halal.</p>\r\n\r\n<p>Keempat, penguatan di bidang ekonomi digital utamanya perdagangan (e-commerce, market place) dan keuangan (teknologi finansial) sehingga dapat mendorong dan mengakselerasi pencapaian strategi lainnya.</p>\r\n\r\n<p>&quot;Akan diperbanyak produk dan jasa halal yang masuk &#39;e-commerce&#39; (e-dagang). Kita akan kerja sama dengan beberapa &#39;e-commerce&#39;,&quot; ujarnya.</p>\r\n\r\n<p>Melalui rencana induk ini, pemerintah juga mendorong kesadaran publik, peningkatan kuantitas dan kualitas sumber daya manusia, penguatan kapasitas riset dan pengembangan (R&amp;D), penguatan fatwa, regulasi, dan tata kelola industri halal di Indonesia.</p>\r\n\r\n<p>&quot;Kita bisa mengubah posisi kita dari hanya menjadi konsumen menajdi produsen. Indonesia sangat dilirik,&quot; katanya.</p>\r\n\r\n<p>Bambang melanjutkan, manfaat jika Indonesia bisa menjadi produsen di industri halal adalah memperbaiki defisit transaksi berjalan (current account deficit/CAD). Selama ini, impor produk halal juga menjadi penyebab defisit transaksi berjalan.</p>\r\n\r\n<p>&quot;Ini juga bisa memperbaiki defisit transaksi berjalan. Konsumsi tadi kebanyakan masih dikonsumsi dari luar negeri, maka dari itu kita butuh penguatan di segala sisi, baik dari supply chain dan sebagainya,&quot; katanya.</p>\r\n\r\n<p>Pewarta: Indra Arief Pribadi<br />\r\nEditor: Subagyo</p>\r\n\r\n<p><em>Sumber :&nbsp;https://www.antaranews.com/berita/869655/indonesia-targetkan-jadi-produsen-utama-industri-halal-global-2024</em></p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	Indonesia set to become main producer in global halal industry by 2024	<p>We can change our position from being only consumers to becoming producers. Indonesia is very fortunate</p>	<p><strong>Jakarta (ANTARA) -</strong> The Government has unveiled the Indonesian Islamic Economics Masterplan (MEKSI) 2019-2024, which recommended four strategic steps with the goal of Indonesia becoming a major producer in the global halal industry by 2024.<br />\r\n<br />\r\nNational Development Planning Minister / Head of National Development Planning Agency Bambang Brodjonegoro, said at a press conference here on Tuesday that Indonesia is currently among the top ten global consumers in the sharia industry.<br />\r\n<br />\r\nThis is ironic, because Indonesia, which, in fact, is a country with the largest Muslim population in the world, is still a consumer country. However, on the other hand, Indonesia is still struggling to become a producer of halal products.<br />\r\n<br />\r\nWith the existence of the MEKSI, Indonesia is expected to become a major producer within the global halal industry.<br />\r\n<br />\r\n&quot;With this master plan, we hope that Indonesia can become a major player and producer in the global halal industry by 2024,&quot; Bambang said.<br />\r\n<br />\r\nFor this reason, Bambang recommends four strategies, including strengthening the value chain of halal products, with a focus on sectors that are considered potential and highly competitive.<br />\r\n<br />\r\n&quot;Especially in potential sectors, such as food and beverages, tourism, fashion, media and recreation, as well as pharmaceuticals and cosmetics,&quot; he said.<br />\r\n<br />\r\nFurthermore, it is necessary to strengthen the Islamic financial sector with a master plan that was outlined in the previous Indonesian Sharia Financial Architecture (MAKSI) Masterplan and refined into this master plan. Sharia economic development will be prioritized in the retail sector.<br />\r\n<br />\r\nIn addition, the strengthening of the Micro, Small and Medium Enterprises (MSME) sector is the main driver of the halal product value chain.<br />\r\n<br />\r\nThe fourth step includes strengthening the field of digital economics, especially trade (e-commerce, market place) and finance (financial technology), to encourage and accelerate the reaching of other strategies.<br />\r\n<br />\r\n&quot;Halal products and services will be added to &#39;e-commerce&#39; (e-commerce). We will work with several &#39;e-commerce&#39; platforms,&quot; he said.<br />\r\n<br />\r\nThrough this master plan, the government also encourages public awareness, increasing the quantity and quality of human resources, along with strengthening research and development capacity, fatwas, regulations and governance of the halal industry in Indonesia.<br />\r\n<br />\r\n&quot;We can change our position from being only consumers to becoming producers. Indonesia is very fortunate,&quot; he said.<br />\r\n<br />\r\nBambang continued, noting that the benefit will be reached when Indonesia becomes a producer in the halal industry and improves the current account deficit. So far, imports of halal products have also been the cause of the current account deficit.<br />\r\n<br />\r\n&quot;This can also improve the current account deficit. Most consumption is still consumed from abroad, so we need reinforcement on all sides, both from the supply chain and so on,&quot; he said.</p>\r\n\r\n<p>Reporter: Bambang Purwanto<br />\r\nEditor: Sri Haryati</p>\r\n\r\n<p><em>Sumber :&nbsp;https://en.antaranews.com/news/125464/indonesia-set-to-become-main-producer-in-global-halal-industry-by-2024</em></p>	4	kdeks	\N	NULL	0	0	null
147	Masih Jauh, Jokowi Akui Ekonomi Syariah RI di Belakang Malaysia	<p>Industri halal Indonesia masih kalah dari negara tetangga seperti Malaysia</p>	<p><strong>JAKARTA</strong>&nbsp;- Presiden Joko Widodo (Jokowi) menyayangkan industri halal Indonesia masih kalah dari negara tetangga seperti Malaysia. Berdasarkan data global Islamic Indicator, pada 2018 Indonesia masih tempati urutan 10 dalam peringkat negara yang selenggarakan ekonomi syariah.</p>\r\n\r\n<p>&quot;Masih jauh, kita masih di belakang Malaysia. Masih di belakang UEA. Masib di belakang Bahrain, di belakang Arab Saudi. Masih di belakang Oman, Jordan, Qatar, Pakistann Kuwait. Inilah pekerjaan besar kita bersama-sama,&quot; tuturnya di Gedung Bappenas, Jakarta, Selasa (14/5/2019).</p>\r\n\r\n<p>Kepala Negara pun mengajak untuk membangkitkan potensi ekonomi syariah. Selain itu, dengan diluncurkannya Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2024, Indonesia bisa menjadi pusat ekonomi syariah terkemuka dunia.</p>\r\n\r\n<p>&quot;Penduduk muslim kita terbesar. Ekonomi syariah yang bisa turut mengentaskan kemiskinan dan melestarikan lingkungan, dorong kesejahteraan sosial. Dan sejalan dengan pembangunan berkelanjutan kita. Dan kita sudah memulai di tahun awal, Saya selaku presiden bentuk KNKS,&quot; ujarnya.</p>\r\n\r\n<p>Jokowi menambahkan, ekonomi syariah Indonesia memiliki potensi besar di tingkat dunia. Seperti disampaikan Bappenas, pada 2023 konsumsi produk halal akan mencapai USD3 triliun.</p>\r\n\r\n<p>&quot;Kalau di rupiahkan berapa, kurang lebih Rp45.000 triliun. Saya tidak bisa bayangkan angka seperti itu. Karena APBN kita Rp2.000 triliun lebih sedikit. Ini sebuah kekuatan besar yang harus kita lihat dan harus kita pikirkan untuk ambil kue ekonomi yang besar ini,&quot; tuturnya.</p>\r\n\r\n<p>Reporter :&nbsp;Feby Novalius</p>\r\n\r\n<p><em>Sumber : https://economy.okezone.com/read/2019/05/14/320/2055644/masih-jauh-jokowi-akui-ekonomi-syariah-ri-di-belakang-malaysia</em></p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
148	Presiden Jokowi Amanatkan KNKS Perkuat Ekonomi Syariah Indonesia	<p>Dengan <em>Masterplan </em>Ekonomi Syariah Indonesia 2019-2024, maka kita menjawab tantangan sekaligus menyusun peta jalan</p>	<p><strong>JAKARTA </strong>&ndash; &quot;Dengan resmi diluncurkannya <em>Masterplan </em>Ekonomi Syariah Indonesia (MEKSI) 2019-2024 oleh Presiden Joko Widodo di Kementerian PPN/Bappenas hari ini, maka kita akan menjawab tantangan sekaligus menyusun peta jalan pengembangan ekonomi syariah di Indonesia guna mendorong peningkatan pertumbuhan ekonomi nasional. Pengembangan ekonomi syariah harus melibatkan berbagai sektor lainnya sebagai suatu integrasi sistem ekonomi berlandaskan syariah agar pertumbuhan yang berlangsung pada sektor keuangan syariah memiliki dampak langsung dan signifikan pada pertumbuhan di sektor riil, yang secara fundamental menjadi fokus utama dalam sistem ekonomi Islam. Untuk itu, saya harap MEKSI 2019-2024 ini dapat dijadikan rujukan bersama dalam mengembangkan ekonomi syariah Indonesia, yang kemudian dapat diturunkan menjadi program kerja implementatif pemerintah,&rdquo; jelas Menteri PPN/Kepala Bappenas Bambang Brodjonegoro sekaligus Sekretaris Dewan Pengarah Komite Nasional Keuangan Syariah (KNKS) dalam acara <strong>Peluncuran Masterplan Ekonomi Syariah Indonesia 2019-2024</strong> yang dilaksanakan di Ruang Rapat Djuanedi Hadisumarto 1-5, Gedung Saleh Afif, Kementerian PPN/Bappenas, Selasa (14/5).</p>\r\n\r\n<p>MEKSI 2019-2024 merekomendasikan empat langkah dan strategi utama, yaitu: (1) penguatan <em>halal value chain </em>dengan fokus pada sektor yang dinilai potensial dan berdaya saing tinggi, (2) penguatan sektor keuangan syariah dengan rencana induk yang sudah dituangkan dalam Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) sebelumnya dan disempurnakan ke dalam rencana induk ini, (3) penguatan sektor Usaha Mikro, Kecil dan Menengah (UMKM) sebagai penggerak utama <em>halal value chain</em>, serta (4) penguatan di bidang ekonomi digital utamanya perdagangan (e-<em>commerce</em>, <em>market place</em>) dan keuangan (teknologi finansial) sehingga dapat mendorong dan mengakselerasi pencapaian strategi lainnya. Untuk menjalankan keempat strategi tersebut, MEKSI 2019-2024 menjabarkan beberapa strategi dasar yang harus dilakukan, yaitu peningkatan kesadaran publik, peningkatan kuantitas dan kualitas sumber daya manusia, penguatan kapasitas riset dan pengembangan (R&amp;D), serta penguatan fatwa, regulasi dan tata kelola.</p>\r\n\r\n<p>Dalam proses penyusunan MEKSI 2019-2024 dimana rancangan kebijakan dan strategi yang dikembangkan benar-benar mendorong perkuatan ekonomi syariah di Indonesia, pemerintah telah berkoordinasi dengan regulator baik di level K/L maupun independen, dan juga menerima masukan dari praktisi sektor industri, akademisi, asosiasi, dan berbagai pihak lainnya. Pemerintah juga telah melakukan kunjungan ke berbagai daerah untuk memperoleh gambaran nyata akan kondisi ekonomi syariah yang ada saat ini di dalam negeri. &ldquo;Dengan MEKSI 2019-2024 ini, saya harap pemerintah dan semua pihak memiliki semangat yang sama dalam mengimplementasikan rekomendasi strategi kebijakan pengembangan ekonomi syariah di Indonesia untuk mencapai visi yang telah ditetapkan. Visi besar yang dibangun dalam <em>masterplan</em> ini adalah mencapai &ldquo;Indonesia yang Mandiri, Makmur, dan Madani dengan Menjadi Pusat Ekonomi Syariah Terkemuka Dunia&rdquo;. Saya juga berharap KNKS mendapatkan kepercayaan seluruh pemangku kepentingan ekonomi syariah baik nasional maupun global, serta kepercayaan seluruh masyarakat Indonesia dalam mengimplementasikan MEKSI 2019-2024 ke dalam pembangunan nasional melalui ekonomi syariah,&rdquo; jelas Menteri Bambang.</p>\r\n\r\n<p><em>The State of the Global Islamic Economy Report 2018-2019</em> mencatat besaran total pengeluaran belanja masyarakat Muslim dunia pada 2017 di berbagai sektor halal, seperti makanan dan minuman, farmasi dan kosmetik halal, busana halal, wisata halal, media dan hiburan halal, dan keuangan syariah mencapai USD 2,1 triliun dan diperkirakan akan terus tumbuh hingga USD 3 triliun pada 2023. Faktor utama yang mendorong fenomena tersebut adalah peningkatan jumlah penduduk Muslim di dunia yang telah mencapai 1,84 miliar orang pada 2017 dan diperkirakan akan terus meningkat hingga 27,5 persen dari total populasi dunia pada 2023. Indonesia sebagai negara berpenduduk muslim terbesar di dunia dengan 85 persen dari jumlah populasi serta menyumbang 11 persen dari total muslim di seluruh dunia, hanya dapat bertengger di peringkat 10 sebagai negara produsen produk halal dunia. &ldquo;Demi mencapai visi dalam <em>masterplan</em> ini, kami menetapkan berbagai target dan indikator, yaitu peningkatan skala usaha ekonomi syariah, <em>Islamic Economic Index</em> pada tingkat global dan nasional, kemandirian ekonomi, dan indeks kesejahteraan. Target ini dicapai melalui strategi utama yang telah disusun dengan teliti diikuti dengan berbagai program dan strategi turunannya,&rdquo; jelas Menteri Bambang.</p>\r\n\r\n<p>Bersamaan dengan peluncuran MEKSI 2019-2024, KNKS juga turut menekan sejumlah nota kesepahaman dengan berbagai lembaga negara serta pemain pasar. &ldquo;Hari ini kita tidak akan hanya menyaksikan prosesi peluncuran MEKSI 2019-2024, tetapi kami juga menyisipkan agenda penandatanganan beberapa <em>Memorandum of Understanding</em> (MoU) antara KNKS dengan berbagai lembaga yang mendukung pengembangan ekonomi syariah Indonesia. Salah satu agenda nota kesepahaman tersebut ialah &ldquo;Pengembangan <em>Marketplace</em> Halal dan Produk Keuangan Syariah Melalui Platform Digital&nbsp; <em>Marketplace</em>&rdquo; yang ditandatangani dua <em>Unicorn</em> Indonesia, yaitu Bukalapak dan Tokopedia,&rdquo; jelas Menteri Bambang dalam peluncuran yang juga turut hadir Wakil Presiden RI, Menko Bidang Perekonomian, Menteri Keuangan, Menteri Agama, Menteri BUMN, Menteri KUKM, Gubernur Bank Indonesia, Ketua Dewan Komisioner OJK, Ketua Dewan Komisioner LPS, Ketua Umum MUI, dan Direktur Eksekutif KNKS beserta jajarannya.</p>\r\n\r\n<p>KNKS bersama Bukalapak dan Tokopedia berkomitmen mewujudkan konsep <em>marketplace</em> yang dapat mengakomodasi kebutuhan umat muslim di Indonesia. Pengguna dapat lebih mudah mencari dan mengidentifikasi produk-produk dengan nomor sertifikasi halal. Tidak hanya itu, nantinya pengguna juga dapat lebih mudah untuk melakukan investasi pada instrumen syariah seperti reksadana syariah melalui platform e-<em>commerce</em>. &ldquo;KNKS ingin bersama-sama membangun ekosistem e-<em>commerce</em> yang mendukung penjualan produk-produk halal melalui <em>platform digital marketplace.</em> Hal ini dimulai dengan mengajak <em>marketplace</em> yang sudah ada saat ini, yaitu Bukalapak dan Tokopedia untuk menghadirkan produk-produk halal dan produk keuangan syariah di masing-masing e-<em>commerce</em>. Diharapkan ke depannya akan lebih banyak lagi pemain e-<em>commerce</em> yang turut bergabung dalam ekosistem ini,&rdquo; ujar Direktur Pengembangan Ekonomi Syariah dan Industri Halal KNKS Afdhal Aliasar.</p>\r\n\r\n<p>KNKS juga mengumumkan dimulainya kerjasama antara Bank Syariah milik BUMN (BSM, BNI Syariah, BRI Syariah, serta BTN-UU Syariah) dengan PT Fintek Karya Nusantara pemilik produk aplikasi pembayaran <em>LinkAja</em>. Komitmen tersebut tertuang dalam nota kesepahaman &ldquo;Pengembangan Sistem Pembayaran Digital yang Dikelola secara Syariah&rdquo; untuk mengembangkan LinkAja Syariah sebagai platform pembayaran digital syariah dan uang elektronik yang dikelola secara syariah. &ldquo;Ke depan kita harapkan LinkAja Syariah menjadi sistem pembayaran digital yang mampu mendukung ekosistem digital ekonomi syariah yang terhubung dengan sistem perdagangan e-<em>commerce</em>, produk keuangan syariah, pariwisata halal serta juga melayani transaksi dana sosial keagamaan, seperti infak, zakat dan wakaf dengan masjid-masjid dan lembaga zakat di seluruh Indonesia. Masyarakat Indonesia memiliki penduduk muslim terbesar di dunia, seiring dengan berkembangnya teknologi dan pola bisnis yang demikian cepat membutuhkan sistem pembayaran digital syariah yang mampu melayani kebutuhan tersebut. Bersama-sama kita akan mewujudkan hal itu,&rdquo; ungkap Afdhal.</p>\r\n\r\n<p><strong>Tentang Komite Nasional Keuangan Syariah (KNKS)</strong><br />\r\nUntuk mengembangkan potensi sekaligus menjawab tantangan ekonomi dan keuangan syariah di Indonesia, pemerintah membentuk Komite Nasional Keuangan Syariah (KNKS) melalui Peraturan Presiden Nomor 91 Tahun 2016 tentang Komite Nasional Keuangan Syariah. Komite ini dipimpin langsung oleh Presiden RI dan Wakil Presiden RI, dengan 10 Dewan Pengarah yang terdiri atas Kementerian PPN/Bappenas, Kementerian Koordinator Bidang Perekonomian, Kementerian Keuangan, Kementerian Badan Usaha Milik Negara, Kementerian Agama, Kementerian Koperasi dan Usaha Kecil dan Menengah, Bank Indonesia, Otoritas Jasa Keuangan, Lembaga Penjamin Simpanan dan Majelis Ulama Indonesia.</p>\r\n\r\n<p><strong>Tugas KNKS</strong><br />\r\nKNKS mempunyai tugas mempercepat, memperluas, dan memajukan pengembangan keuangan syariah dalam rangka mendukung pembangunan ekonomi nasional. KNKS berfungsi sebagai katalisator pengembangan ekonomi dan keuangan syariah untuk skala nasional maupun internasional. KNKS juga berperan untuk menyamakan persepsi dan mewujudkan sinergi antara regulator, pemerintah, dan industri terkait ekonomi dan keuangan syariah guna menciptakan sistem ekonomi syariah yang selaras dan progresif untuk pertumbuhan ekonomi Indonesia. Pencanangan titik awal untuk memosisikan Indonesia sebagai salah satu pelaku utama dan <em>hub</em> ekonomi syariah dunia dilakukan seiring dengan peluncuran Masterplan Ekonomi Syariah Indonesia pada Mei 2019. Pencanangan ini mempunyai visi untuk menjadikan Indonesia sebagai pemain utama pasar global ekonomi syariah dunia di 2024.</p>\r\n\r\n<p>Jakarta, 14 Mei 2019</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="1" style="width:1200px">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>Parulian Silalahi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n\t\t\tKepala Biro Humas dan Tata Usaha Pimpinan&nbsp;&nbsp;<br />\r\n\t\t\tEmail: <a href="mailto:humas@bappenas.go.id">humas@bappenas.go.id</a></p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>Untuk informasi lebih lanjut:<br />\r\n\t\t\tKementerian PPN/Bappenas<br />\r\n\t\t\tJl. Taman Suropati No. 2 Jakarta 10310 Telepon: (021) 31936207, 3905650</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
151	Lebih Dekat Dengan Ventje Rahadrjo	\N	<p>Marketing &ndash; Pemerintah melalui Komite Nasional Keuangan Syariah (KNKS) akan meluncurkan Masterplan Ekonomi Syariah Indonesia 2019 -2024 (MEKSI).<br />\r\n<br />\r\nMEKSI berfokus pada 4 strategi utama, yakni penguatan rantai nilai halal dengan fokus pada sektor atau klaster yang dinilai potensial dan berdaya saing tingggi, penguatan sektor keuangan syariah dengan rencana induk yang sudah dituangkan dalam Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) dan disempurnakan dalam rencana induk ini, penguatan UMKM sebagai penggerak utama rantai nilai halal, pemanfaatan dan penguatan platform ekonomi digital di perdagangan (e-commerce, market place) dan keuangan (teknologi finansial) sehingga dapat mendorong dan mengakselerasi pencapaian strategi lainnya.<br />\r\n<br />\r\nHadirnya MEKSI dan terselengaranya IIEFest tidak lepas dari peran Ventje Rahardjo, Direktur Eksekutif KNKS. Sosok yang mendapatkan gelar Sarjana Ekonomi di bidang Ekonomi Pembangunan Universitas Indonesia tahun 1980 dan Master of Economics di bidang Finance for Development the University of New England, Armidale Australia di tahun 1986 ini sudah banyak makan asam garang di industri keuangan<br />\r\n<br />\r\nBekerja sejak 1981 di Bank Pembangunan Indonesia (Bapindo) dengan jabatan antara lain General Manager Cab Hong Kong dan Direktur Muda Kepala Urusan Treasury.<br />\r\n<br />\r\nDia pernah menjadi anggota Merger Committee Bank Mandiri 1998 selanjutnya menjadi Direktur Komersial Bank Mandiri 1999 &ndash; 2004. Menjadi Direktur Ritel dan Mikro Bank Rakyat Indonesia (BRI) tahun 2004 &ndash; 2005 selanjutnya menjadi Direktur Bank Internasional Indonesia (BII) 2006 &ndash; 2008.<br />\r\n<br />\r\nPada tahun 2008 &ndash; 2011 diangkat menjadi Direktur Utama BRI Syariah sekaligus mendirikan bank tersebut.<br />\r\n<br />\r\nTahun 2012 -2017 meneruskan karir di Bank Mandiri sebagai Senior Executive Vice President di bidang Change Management dan Corporate Transformation, sekaligus menjabat Komisaris Utama di Mandiri Axa General Insurqnce dan Bank Syariah Mandiri.<br />\r\n<br />\r\nSejak Juli 2017 hingga sekarang, dia dipercaya Menteri Kelautan dan Perikanan sebagai Staf Khusus, di bidang permodalan dan proses bisnis. Sejak Januari 2019 hingga saat ini, Ventje Rahardjo juga merangkap sebagai Direktur Eksekutif Komite Nasional Keuangan Syari&rsquo;ah (KNKS), diangkat melalui Keputusan Presiden selaku Ketua KNKS.<br />\r\n<br />\r\nVentje mengatakan, masih banyak potensi keuangan syariah bisa digarap seperti pasar modal, dana pensiun, dan dana sosial keagamaan sepeti zakat misalnya. Tantangan penerapan ekonomi syariah bagaimana mengintegrasikan seluruh kekuatan ekonomi syariah dan menyeleraskannya menjadi gerakan bersama. &quot;Di Malaysia ekonomi syariah jadi national aspiration dan mendapat dukungan pemerintahnya&quot; tuturnya usai jumpa pers IIEFest.</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
153	Perkuat Ekonomi Syariah, KNKS Buat Pusat Data	\N	<p>REPUBLIKA.CO.ID, BANDUNG -- Direktur Eksekutif Komite Nasional Keuangan Syariah (KNKS) Ventje Rahardjo menuturkan KNKS turut berupaya membangun ekosistem halal dalam rangka memperkuat sistem ekonomi syariah di Indonesia. KNKS bersiap mengawal Indonesia menjadi pusat kekuatan ekonomi syariah di dunia.<br />\r\n<br />\r\nVentje mengatakan untuk memperkuat ekonomi syariah dalam waktu dekat pihaknya akan membuat pusat data (data center) perkembangan ekonomi syariah di Indonesia. Pusat data ini akan menjadi basis pengembangan industri syariah ke depannya.<br />\r\n<br />\r\nTemui Wapres, KNKS Dorong Pengelolaan Keuangan Masjid Kembangkan Ekonomi Syariah, Pemerintah Bidik Kaum Milenial Mengenal Kartu Kredit Syariah dan Bank-Bank yang Menerbitkannya &quot;Salah satu pekerjaan rumah besar kita adalah menyajikan data yang kita harapkan data ini bisa kita pakai sebagai landasan membuat keputusan kebijakan. KNKS akan mendirikan one data center,&quot; kata Ventje dalam gelaran acara Indonesia Islamic Economy Festival (IIEFest) 2019: Halal Lifestyle di Era Milenial di Trans Luxury Hotel Kota Bandung, Jumat (26/4).<br />\r\n<br />\r\nVentje menuturkan saat ini Indonesia tidak memilili data perkembangan ekonomi syariah yang kuat. Selama ini data yang digunakan masih kebanyakan berupa prakiraan. Hal ini dikatakannya menjadi salah satu kendala pengembangan industri halal di Indonesia.<br />\r\n<br />\r\nMenurutnya dengan data yang lengkap dan valid seperti pelaku, market share, potensi, maka pengembangan industri halal jauh lebih mudah. Bahkan ia yakin data di lapangan jauh lebih bagus dari catatan saat ini. Tercatat bahwa Indonesia berdasarkan laporan Global Islamic Economy Report berada di posisi 10 sebagai pelaku industri halal di tingkat global.<br />\r\n<br />\r\n&quot;Dengan data center itu kita harapkan itu dapat memperbaiki posisi kita. Saat ini baru nomor 10, kalah sama Bahrain yang nomor dua padahal besaran negaranya hanya sebesar Jatinegara. Kita masih kesulitan karena informasi dan data yang kurang. Ini yang akan kita perbaiki dengan data center,&quot; tuturnya.<br />\r\n<br />\r\nMenurutnya pusat data ini akan mulai dibuat dalam waktu dekat. Karenanya ia meminta dukungan dari berbagai pihak untuk dapat membantu pembuatan pusat dataini. Ia menambahkan dalam waktu dekat akan meluncurkan Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2024. Direncanakan diresmikan pasa 14 Mei mendatang, MEKSI ini bisa menjadi arah kebijakan pengembangan serta langkah nyata ke depannya.<br />\r\n<br />\r\nMEKSI 2019-2024 akan diluncurkan dengan empat rekomendasi strategi utama. Pertama, penguatan rantai nilai halal dengan fokus pada sektor atau klaster yang dinilai potensial dan berdaya saing tinggi. Kedua penguatan sektor keuangan syariah dengan rencana induk yang sudah dituangkan dalam Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) dan disempurnakan dalam rencana induk ini. Ketiga penguatan UMKM sebagai penggerak utama rantai nilai halal. Keempat pemanfaatan dan penguatan platform ekonomi digital di perdagangan (e-commerce, market place) dan keuangan (teknologi finansial) sehingga dapat mendorong dan mengakselerasi pencapaian strategi lainnya.&nbsp;<br />\r\n<br />\r\nSelain itu, ia menambahkan acara festival ekonomi syariah seperti IIEFest ini akan diadakan di berbagai kota lainnya. Hal ini guna lebih memasifkan lagi tren ekonomi syariah ke masyarakat Indonesia terutama generasi milenial yang akan menjadi tonggak penerus bangsa.</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
158	Direktur KNKS temui Wapres bahas program kerja	\N	<p>Direktur Eksekutif Komite Nasional Keuangan Syariah (KNKS) Ventje Raharjo menemui Wakil Presiden Jusuf Kalla membahas arahan program program kerja untuk institusinya.<br />\r\n<br />\r\n&quot;Tadi arahan dari Pak Wakil Presiden sangat jelas bahwa bank syariah, kalau bicara mengenai bank syariah itu harus lebih efisien, maka harus jadi lebih besar supaya efisien,&quot; kata Ventje usai menemui JK di Kantor Wakil Presiden, Jakarta, Kamis.<br />\r\n<br />\r\nSelain itu, KNKS juga melaporkan kinerja manajemen eksekutif yang telah bekerja sejak awal 2019.<br />\r\n<br />\r\nMenurut Ventje, bank syariah juga harus kembali kepada hukum pembagian hasil.<br />\r\n<br />\r\n&quot;Kalau memang bagi hasil, ya harus diperkuat di bank syariah. Bank konvensional kan memang menggunakan sistem bung. Jadi jangan sampai sistem bunga yang ada di bank konvensional itu juga &quot;dianut&quot; atau dilaksanakan juga di bank syariah,&quot; ujar Ventje.<br />\r\n<br />\r\nVentje menjelaskan program kerja yang dibentuk oleh KNKS yakni untuk membuat bank-bank syariah tumbuh lebih besar, aman dan efisien serta mengarahkan prinsip-prinsip syariah yang lebih konsisten.<br />\r\n<br />\r\nSelain itu, KNKS tengah mendorong ekosistem digital syariah dapat segera terbentuk.<br />\r\n<br />\r\n&quot;Ekosistem digital syariah di dalamnya ada sistem pembayaran digital syariah, kemudian ada juga &#39;market place&#39; halal, terus kemudian kita juga mendorong ekosistem digital tadi yakni munculnya sistem digitalisasi dari pengelolaan dan pembayaran zakat serta pengelolaan daripada BMT (baitul maal wa tamwil),&quot; tambah Ventje.<br />\r\n<br />\r\nKNKS menjelaskan pihaknya tengah membangun sistem informasi dan teknologi, sistem digital dan platform digital bagi digitalisasi keuangan syariah.<br />\r\n<br />\r\nPengurus KNKS menemui Wapres selama hampir 1 jam sejak pukul 14:00 WIB. (sumber : antaranews.com)</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
164	KNKS Digitalisasi Database Zakat Nasional	\N	<p><strong>WE Online, Jakarta</strong> - Komite Nasional Keuangan Syariah tengah menyiapkan platform guna membangun database nasional zakat Indonesia. Platform tersebut direncanakan dapat digunakan bersama-sama oleh Badan Amil Zakat di seluruh Indonesia dan akan tersambung dengan data Direktorat Kependudukan dan Catatan Sipil Kementerian Dalam Negeri (Dukcapil).<br />\r\n<br />\r\nDirektur Eksekutif KNKS, Ventje Rahardjo Soedigno, menyatakan bahwa database tersebut dapat menunjukkan daerah zakat surplus dan daerah defisit zakat. Ventje menargetkan, platform tersebut bisa rampung sebelum akhir tahun ini. Namun, ia masih belum bisa menjelaskan lebih jauh perkara teknis operasi platform tersebut.<br />\r\n<br />\r\n&quot;Operatornya sedang kami diskusikan dengan Kementerian Badan Usaha Milik Negara. Jadi kami buat dulu, perkara akan ditaruh di mana, apakah berdiri sendiri atau di BUMN IT, akan didiskusikan,&quot; kata dia di Jakarta, Selasa (05/03/2019).<br />\r\n<br />\r\nIa menambahkan, potensi zakat di Indonesia mencapai Rp217 triliun. Adapun persentase penghimpunan terhadap potensi zakat pada 2018 masih sekitar 3,7%, naik 2,3% dari tahun 2016 dan naik 2,8% dari tahun 2017. Setiap tahun, penghimpunan zakat nasional mengalami pertumbuhan rata-rata 30,55%, tapi realisasi penghimpunan zakat nasional masih sangat jauh dari potensinya.<br />\r\n<br />\r\nPada 2016, zakat yang berhasil dihimpun organisasi pengelola zakat baik Baznas maupun LAZ adalah sebesar Rp5.017,29 miliar dan meningkat menjadi Rp6.224,37 miliar pada 2017. Angka tersebut kembali naik di tahun 2018 menjadi sebesar Rp8.100 miliar.<br />\r\n<br />\r\nPertumbuhan tersebut juga diikuti dengan penyaluran zakat yang efektif dan produktif. Rata-rata penyaluran zakat nasional adalah sebesar 66,03% dari total zakat yang dihimpun. Pada 2016, zakat yang disalurkan ke masyarakat adalah Rp2.931 miliar, sementara pada 2017 sebesar Rp4.860 miliar.</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
145	Muhammadiyah apresiasi Masterplan Ekonomi Syariah Indonesia 2019-2024	<p>Ketua Pimpinan Pusat Muhammadiyah Anwar Abbas mengapresiasi peluncuran Masterplan Ekonomi Syariah Indonesia</p>	<p><strong>Jakarta (ANTARA)</strong> - Ketua Pimpinan Pusat Muhammadiyah Anwar Abbas mengapresiasi peluncuran Masterplan Ekonomi Syariah Indonesia 2019-2024 yang diluncurkan Presiden Joko Widodo&nbsp;, Selasa.<br />\r\n<br />\r\nAnwar kepada wartawan di Jakarta, Selasa, mengatakan masterplan itu memiliki tujuan yang baik untuk pemerataan kesejahteraan.<br />\r\n<br />\r\n&quot;Sehingga daya beli masyarakat kita akan semakin meningkat dan ini tentu saja akan sangat baik,&quot; kata Sekjen Majelis Ulama Indonesia itu.<br />\r\n<br />\r\nMenurut dia, masterplan juga bertujuan memicu tumbuh dan kembang ekonomi di tengah masyarakat.<br />\r\n<br />\r\n&quot;Ini penting bagi kita karena dengan adanya mobilitas vertikal ini tentu diharapkan bentuk dan struktur kesejahteraan masyarakat kita yang tadinya seperti piramid akan berubah menjadi seperti belah ketupat,&quot; katanya.<br />\r\n<br />\r\nSecara ideal, kata dia, iktikad politik dan tindakan nyata pemerintah dan regulator memang harus memperhatikan pertumbuhan usaha mikro kecil menengah (UMKM), terutama dari sektor keuangan.<br />\r\n<br />\r\nAnwar mengatakan di sektor keuangan dunia perbankan cenderung berpihak kepada usaha besar yang jumlahnya hanya 0,01 persen.<br />\r\n<br />\r\n&quot;Ini terlihat dari jumlah pembiayaan yang dikucurkan kepada mereka oleh dunia perbankan yang besarnya sekitar 80 persen sementara UMKM yang jumlahnya 99,99 persen dari total pelaku usaha yang ada di negeri ini hanya mendapatkan porsi pembiayaan yang sangat rendah atau kecil yaitu sekitar 20 persen,&quot; katanya.<br />\r\n<br />\r\nMenurut dia, keadaan itu memprihatinkan karena dampak dari keadaan itu dalam jangka menengah dan panjang akan menimbulkan kesenjangan semakin tajam antara usaha besar dan UMKM.<br />\r\n<br />\r\n&quot;Untuk itulah peluncuran Masterplan Ekonomi Syariah ini dapat memberikan jawaban dan solusi sehingga ekonomi nasional akan tumbuh dan berkembang ke arah yang lebih berkeadilan yang mendukung bagi terciptanya kebersamaan diantara anak bangsa,&quot; katanya.<br />\r\n&nbsp;</p>\r\n\r\n<p>Pewarta: Anom Prihantoro<br />\r\nEditor: Budi Santoso</p>\r\n\r\n<p><em>Sumber :&nbsp;https://www.antaranews.com/berita/870016/muhammadiyah-apresiasi-masterplan-ekonomi-syariah-indonesia-2019-2024</em></p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
149	Kepala Bappenas Buka Festival Ekonomi Syariah 2019	\N	<p>Komite Nasional Keuangan Syariah (KNKS) menyelanggarakan Indonesia Islamic Economy Festival (IIEFest) 2019 dengan mengusung tema &quot;Halal Lifestyle di Era Millenial&quot; di Trans Hotel Grand Ballroom, Bandung, Jumat (26/4/2019).<br />\r\n<br />\r\nAcara ini dihadiri dan diresmikan langsung oleh Menteri PPN/Kepala Bappenas, Bambang Brodjonegoro dan dihadiri sejumlah pelaku perbankan. Dari pantauan Warta Ekonomi hadir Direktur Utama BRI Syariah, Moch Hadi Santoso, dan Direktur Utama BRI, Suprajarto.<br />\r\n<br />\r\nDeputi Bidang Promosi dan Hubungan Eskternal KNKS, Afdhal Aliasar, mengatakan IIEFest 2019 ini merupakan bagian dari rangkaian peluncuran Masterplan Ekonomi Syariah Indonesia 2019-2024 yang akan diresmikan oleh Presiden pada 14 Mei 2019 mendatang.<br />\r\n<br />\r\n&quot;Acara ini bertemakan Halal Lifestyle di Era Millenial. Karena itulah kami memilih Bandung sebagai salah satu ikon dari pertumbuhan lifestyle. Dan juga Bandung baru-baru ini terpilih sebagai salah satu dari 10 destinasi pariwisata halal terbaik pada Indonesia Muslim Travel Index 2019,&quot; kata Afdhal.<br />\r\n<br />\r\nAfdhal menambahkan di dalam acara ini akan diisi oleh talkshow dari 19 pembicara dimana diantaranya para pelaku usaha industri halal. Meraka akan membagikan pengalaman bagaimana tantangan serta memulai suatu usaha yang terkait dengan pengembangan industri halal dan ekonomi syariah.<br />\r\n<br />\r\n&quot;Kami juga mengadakan expo oleh para pelaku usaha dan stakeholder yang terkait dengan pengembangan ekonomi syariah. Sudah bergabung dalam expo 19 pelaku usaha,&quot; tambahnya.<br />\r\n<br />\r\nSekedar informasi pemerintah membentuk KNKS dalam rangka mendorong pengembangan keuangan syariah serta menjadikan Indonesia sebagai pemain kunci dalam ekonomi syariah global. Pembentukan KNKS dilakukan melalui Peraturan Presiden Nomor 91/2016 tentang Komite Nasional Keuangan Syariah. Komite ini dipimpin langsung oleh Presiden dan Wakil Presiden.<br />\r\n<br />\r\nKNKS mendapat amanah untuk mempercepat, memperluas, dan memajukan pengembangan keuangan dan ekonomi syariah dalam rangka mendukung pembangunan. KNKS juga berperan untuk menyamakan persepsi dan mewujudkan sinergi antara para regulator, pemerintah, dan industri keuangan syariah untuk menciptakan sistem keuangan syariah yang selaras dan progresif untuk pertumbuhan ekonomi Indonesia.</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
152	KNKS Akan Bangun Pusat Data Ekonomi Syariah	\N	<p>WE Online, Bandung -Komite Nasional Keuangan Syariah (KNKS) berencana akan membuat pusat manajamen data atau One Data Centre. One Data Centre itu akan menjadi database KNKS untuk menghitung kontribusi serta potensi ekonomi dan keuangan syariah.<br />\r\n<br />\r\n&quot;Salah satu pekerjaan rumah bagi kita yaitu menyajikan data yang dapat dipakai sebagai landasan untuk membuat keputusan-keputusan. Dalam waktu dekat KNKS akan mendirikan One Data Centre untuk ekonomi syariah maupun keuangan syariah. Diharapkan dapat memperbaikan posisi Indonesia di dalam Global Islamic Economy Index,&quot; kata Direktur Eksekutif KNKS Ventje Rahardjo Soedigno dalam pembukaan Indonesia Islamic Economy Festival (IIEFest) 2019 di The Trans Luxury Hotel, Bandung, Jawa Barat, Jumat (26/4/2019).<br />\r\n<br />\r\nSelain membangun pusat data, lanjut Ventje pihaknya juga tengah mempersiapkan peluncuran Masterplan Ekonomi Syariah Indonesia 2019-2024 yang direncanakan akan diresmikan oleh Presiden pada 14 Mei 2019 mendatang.<br />\r\n<br />\r\n&quot;Masterplan sudah ada dan kita akan kawal sampai lima tahun yang akan datang . Kita akan membuat rencana implementasi daripada masterplan tersebut secara lebih detail,&quot; ujarnya.<br />\r\n<br />\r\nDalam masterplan tersebut merekomendasikan empat strategi utama untuk mengembangkan ekonomi syariah di tanah air. Pertama penguatan rantai nilai halal (halal value chain/HVC) dengan fokus pada sektor atau klaster yang dinilai potensial dan berdaya saing tinggi.<br />\r\n<br />\r\nKedua penguatan sektor keuangan syariah yang rencana induknya sudah dituangkan dalam Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) dan akan disempurnakan dalam rencana induk ini. Ketiga penguatan usaha mikro, kecil, dan menengah (UMKM) sebagai penggerak utama rantai nilai halal dan keempat pemanfaatan dan penguatan platform ekonomi digital dalam hal perdagangan (e-commerce, market place) dan keuangan (teknologi financial) yang diharapkan bisa mendorong dan mengakselerasi pencapaian strategi lainnya.</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
154	Indonesia Islamic Economy Festival (IIEFest) 2019, Menggaungkan Halal Lifestyle di Kota Bandung	<p>Komite Nasional Keuangan Syariah&nbsp; menyelenggarakan Indonesia Islamic Economy Festival</p>	<p>Dalam rangka pra-peluncuran Masterplan Ekonomi Syariah Indonesia, Komite Nasional Keuangan Syariah (KNKS) menyelenggarakan Indonesia Islamic Economy Festival (IIEFest) 2019 dengan mengusung tema &ldquo;Halal Lifestyle di Era Milenial&rdquo; di Trans Hotel Grand Ballroom, Bandung, Jumat (26/4/2019).<br />\r\n<br />\r\nIIEFest merupakan sebuah acara festival yang bertujuan untuk memperkenalkan perkembangan industri halal kepada masyarakat sekaligus meningkatkan kesadaran untuk menjalankan gaya hidup halal, serta potensi manfaatnya terhadap perekonomian Indonesia. Acara ini dihadiri dan diresmikan langsung oleh Menteri PPN/Bappenas, Prof. Bambang Brodjonegoro. Dalam rangkaian acara IIEFest, terdapat penandatanganan nota kesepahaman yang dilakukan antar pelaku industri keuangan Syariah diantaranya antara BRI Syariah dan Paytren serta antara Fintek Syariah Ammana dengan BMT Jawa Barat, PBMT Ventura, dan Laznas Al-Azhar.&nbsp;<br />\r\n<br />\r\nIIEFest mendatangkan 16 pembicara yang dibagi kedalam sesi terpisah dalam bentuk gelar wicara (Talkshow), diantaranya &ldquo;Industri digital halal&rdquo;, &ldquo;Industri pariwisata halal&rdquo;, &ldquo;Islamic edutainment&rdquo; , &ldquo;Muslim modest fashion&rdquo;, dan pameran industri halal yang diramaikan oleh para pelaku industri, regulator, start-up milenial, UMKM, dan masyarakat umum. Acara IIEFest diselenggarakan dalam empat sesi dan berlangsung dari pagi pukul 09.00 sampai dengan 21.00 WIB. Acara ini turut dimeriahkan oleh penampilan Na&rsquo;am Acapella dan ditutup oleh penampilan solois, Tulus.<br />\r\n<br />\r\nDalam tiga dasawarsa terakhir, ekonomi dan keuangan Syariah berkembang pesat secara global maupun nasional. Bahkan, di tahun 2019 Indonesia dinobatkan sebagai destinasi wisata halal terbaik di dunia versi Global Muslim Travel Index (GMTI). Untuk mempertahankan dan meningkatkan pencapaian tersebut dibutuhkan peran masyarakat melalui pembentukan gaya hidup halal sebagai penggerak utama gerakan arus baru ekonomi syariah. IIEFest merupakan salah satu bentuk promosi kepada masyarakat untuk secara langsung mengetahui, memahami, dan merasakan Halal Lifestyle itu sendiri. Di rangkaian acara IIEFest terdapat Halal Expo yang terdiri dari para pelaku UMKM bersertifikasi halal dari berbagai bidang.<br />\r\n<br />\r\nBerdasarkan data The State of Global Islamic Economy Report 2018/19, peningkatan jumlah penduduk muslim di dunia mencapai 1,84 miliar orang dan akan terus meningkat hinggal 27,5% dari total populasi dunia di tahun 2023. Sebagai negara dengan populasi muslim terbesar, Indonesia menjadi negara dengan konsumen halal terbesar di pasar internasional. Untuk mengoptimalkan pengembangan ekonomi syariah, Indonesia perlu mendorong optimalisasi produk halal buatan sendiri dan menangkap peluang global.<br />\r\n<br />\r\nMenurut Menteri Perencanaan Pembangunan Nasional, Bambang Brodjonegoro, kalangan milenial seharunya tidak hanya menjadi konsumen produk halal saja melainkan juga berpeluang untuk menjadi produsen. Jangan sampai perkembangan ekonomi syariah di Indonesia tidak sama dengan di belahan dunia lain.&nbsp;<br />\r\n<br />\r\nDalam rangkaian Acara IIEFest yang mendatangkan para pelaku pasar dari berbagai Industri kreatif syariah sebagai narasumber talkshow merupakan upaya KNKS dalam memberikan paparan potensi usaha di Industri halal kepada masyarakat yang diharapkan dapat menginspirasi dan menumbuhkan semangat dalam memajukan industri halal dalam negeri.</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
160	Temui Wapres, KNKS Dorong Pengelolaan Keuangan Masjid	\N	<p>REPUBLIKA.CO.ID, JAKARTA -- Komite Nasional Keuangan Syariah (KNKS) mendorong pengelolaan keuangan masjid dilakukan secara profesional. Menurut Direktur Keuangan Inklusif, Dana Sosial Keagamaan dan Keuangan Mikro Syariah KNKS Ahmad Juwaini, hal itu juga yang menjadi salah satu bahasan saat KNKS menghadap Wakil Presiden Jusuf Kalla, Kamis (28/3).<br />\r\n<br />\r\nDalam kesempatan itu, KNKS memaparkan program kerja yang akan dilakukan untuk 2019. Salah satunya, melatih pengelolaan keuangan masjid di Indonesia. &quot;Intinya ingin, pertama, membuat data tentang seberapa besar potensi keuangan masjid itu,&quot; ujar Juwaini di Kantor Wapres, Jakarta, Kamis (28/3).<br />\r\n<br />\r\nBaca Juga<br />\r\n<br />\r\nSebuah Kapel di Inggris Raya akan Jadi Masjid Cerita Dubes RI Jadi Imam di Masjid Tertua Rusia Tujuh Masjid Kecil di Lesotho<br />\r\n<br />\r\nMenurutnya, upaya yang pertama akan dilakukan adalah dengan membuat terlebih dahulu data jaringan keuangan masjid, yang dilanjutkan dengan jaringan ekonomi masjid. Dengan begitu, dapat diketahui data keuangan masjid dari 800 masjid Indonesia.<br />\r\n<br />\r\n&quot;Ini masjid-masjid ini di Indonesia jumlahnya 800 ribu, dan sepertiganya sebenarnya memiliki skala keuangan yang kita sebut sebagai skala ekonomi yang sudah layak,&quot; kata Juwaini.<br />\r\n<br />\r\nIa menilai jaringan ekonomi masjid juga merupakan salah satu sumber daya ekonomi ummat. Sehingga dengan pengelolaan yang profesional maka dapat meningkatkan ekonomi keumatan.<br />\r\n<br />\r\n&quot;Ya diawali dengan pelatihan-pelatihan dulu, lalu diterapkan sistem software-nya dan baru setelah itu kita himpun datanya, baru kita akan tahu seberapa banyak sih uang masjid yang dikelola untuk zakatmya berapa, infaknya berapa,&quot; katanya.<br />\r\n<br />\r\nIa melanjutkan, baru setelah itu dapat diketahui dana yang bisa dimanfaatkan dan diputar di antara umat. &quot;Kita akan berangkat dari situ,&quot; ujar Juwaini.<br />\r\n<br />\r\nJuwaini menilai perlunya kerjasama antara lembaga lembaga yang di masjid seperti Baitul Maal Wat Tamwil (BMT) dan toko-toko yang dikembangkan di masjid. Hal ini untuk mendukung berkembangannya jaringan ekonomi masjid.<br />\r\n<br />\r\n&quot;Nanti kita akan sampai pada toko-toko usaha yang bisa dikembangkan di masjid yang sekarang ini mungkin mulai banyak kita ketemu dengan warung-warung yang menggunakan teknologi dan mungkin ini yang bisa diajak kerjasama dengan kita dengan menggunakan jaringan masjid ini,&quot; katanya. (sumber: khazanah.republika.co.id)</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
161	Indonesian govt in best efforts to boost Islamic economy	\N	<p>It is well known that the Republic of Indonesia is the world&rsquo;s largest Muslim country. However, the development of Islamic economy including Islamic finance is still far from its potential. For example, despite Islamic finance in Indonesia has officially existed for more than two decades in the country, the market share of Islamic banking in the country is still standing at around 6pc of the total banking assets. Uniquely, unlike most top Islamic financial centers such as the Kingdom of Bahrain which focus more on the wholesale segment, the Islamic financial market in Indonesia is strongly retail-oriented and segmented in a distinctive way, making it a lot more complex than other countries.<br />\r\n<br />\r\nThe market structure consists of several layers that have loosely defined boundaries with overlaps that are sometimes disputed among the players. Despite the above challenges, Indonesia has some unique strengths. The country has the largest number of Islamic financial institutions (formal and informal), it is the first country and the only one that issues retail Sukuk, it is the first country that has Islamic online trading system (SOTS) in capital market sector, and the first and the only one that implements the concept of Baitul Maal wat Tamwil.<br />\r\n<br />\r\nIn addition, it has more regulations pertaining to Islamic finance than any other countries even though they are scattered and sometimes split between too many regulators. Based on the above challenges and potentials, the government of Indonesia has recently established a National Islamic Finance Committee known in Indonesia as KNKS mandated to lead, coordinate and synergise the efforts of all Islamic economy&rsquo;s stakeholders. Given the importance role that the committee plays, KNKS is directly chaired by the President of Indonesia His Excellency Joko Widodo.<br />\r\n<br />\r\nThe main functions of KNKS are to fasten, widen, and advance the development of Islamic Economy in the country in order to support national economic development. According to the Presidential Decree No. 91/2016, the roles of KNKS are as follows: (1) To make the policy and strategy recommendations; (2) To coordinate, monitor, and evaluate the planning and the implementation of strategic programs; (3) To promote the research and innovation for product development of Islamic finance; and (4) To look for solutions on various strategic problems in the development of Islamic finance.<br />\r\n<br />\r\nKNKS has a Masterplan for Indonesian Islamic Financial Architecture and is currently finalising the Masterplan for Indonesian Islamic Economy. KNKS&rsquo; vision is to make Indonesia as the world&rsquo;s prominent centre of Islamic Economy. The main programmes of KNKS are to (1) Establish strong and resilient state owned Islamic banks; (2) Create the country&rsquo;s first fullfledged Islamic Investment Bank; (3) Establish an Indonesian based world class takaful operator; (4) Convert the national social insurance scheme into Islamic scheme, (5) Establish Islamic marketplace and Islamic digital payment system; (6) Establish International Centre for Islamic Economic Studies; (7) Establish microfinance sharing platform, and (8) Establish a zakat sharing platform, and zakat banking account.<br />\r\n<br />\r\nThe establishment of KNKS is expected to boost Indonesian ranking in the global Islamic indices such as the State of Global Islamic Economy Indicator (GIEI) and the Global Islamic Finance Report (GIFR). The establishment of KNKS also indicates the beginning of top down Islamic economy development approach in the country. It is well known that the development of Islamic economy in the republic was mainly driven by the grassroot movements.<br />\r\n<br />\r\nKNKS can be used as a reference model for other countries including Kingdom of Bahrain on how government can support the development of Islamic economy in their jurisdictions. It is also expected that KNKS will enhance the bilateral relationship between Kingdom of Bahrain and the Republic of Indonesia especially in the areas of Islamic economy and Halal industry. (sumber: newsofbahrain.com).</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
146	Upaya KNKS Mendorong Ekonomi Digital melalui Sistem Digital & Uang Elektronik Berbasis Syariah	<p>Merupakan salah satu bentuk realisasi awal dalam mewujudkan penguatan ekonomi di bidang digital</p>	<p>Dalam rangkaian acara Launching Masterplan Ekonomi Syariah Indonesia yang dilaksanakan pada 14 Mei 2019 di Gedung Bappenas, KNKS melakukan sejumlah nota kesepahaman atau <em>Memorandum of Understanding</em> (MoU) dengan berbagai Lembaga dan pelaku industri. Salah satu agenda nota kesepahaman tersebut adalah komitmen kerja sama antara perbankan syariah milik BUMN (BSM, BNI Syariah, BRI Syariah, serta BTN-UU Syariah) dengan PT Fintek Karya Nusantara pengelola <em>platform</em> pembayaran digital <em>LinkAja </em>&nbsp;perihal &ldquo;Pengembangan Sistem Pembayaran Digital yang Dikelola secara Syariah&rdquo;.</p>\r\n\r\n<p>Hadirnya LinkAja dalam pengembangan ekosistem digital syariah, yaitu sebagai platform pembayaran digital dan uang elektronik yang dikelola secara syariah. LinkAja Syariah akan terlibat dalam memfasilitasi perkembangan transaksi bisnis, seperti e-commerce, pariwisata halal, transaksi perbankan, transaksi dana sosial keagamaan, seperti infak, zakat dan wakaf dengan masjid-masjid dan lembaga zakat yang tersebar di seluruh Indonesia. Hadirnya alat pembayaran digital berbasis syariah ini merupakan salah satu bentuk realisasi awal dalam mewujudkan penguatan ekonomi di bidang digital sebagaimana tertuang dalam salah satu strategi utama di Masterplan Ekonomi Syariah Indonesia.</p>\r\n\r\n<p>Penulis : Khairana Izzati<br />\r\nRedaktur : Afdhal Aliasar</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	The KNKS Effort to Encourages the Digital Economy through Sharia-Based Digital & Electronic Payment  System	<p>KNKS &lsquo;s initial efforts in realizing economic strengthening in the fronts of the digital economy</p>	<p>The Indonesia National Islamic Finance Committee (KNKS) did Memorandum of Understanding (MoU) signings with several market player in the event of Indonesia Islamic Economy Masterplan Launching held on 14th May 2019. One of the signings was covered the Memorandum of Understanding (MoU) between biggest four state-owned sharia banks namely, Bank Syariah Mandiri, BNI Syariah, BRI Syariah, BTN Syariah, with PT Fintek Karya Nusantara (Finarya) as the owner of digital payment platform namely LinkAja. The Memorandum of Understanding (MoU) denotes the commitment among the stakeholders on the development of sharia-based digital payment system.</p>\r\n\r\n<p>The commitment conducted between PT Finarya and the four state-owned sharia banks will put on LinkAja as the platform of digital payment and electronic money managed by sharia law. The presence of sharia-based digital payment would involve in facilitating the rapidly evolving business transactions in various industries such as e-commerce, bankings, halal travel,&nbsp; and religious social fund transactions namely Zakat, Infaq, Shadaqah, and Waqf that will be operating in many mosques all over Indonesia. This is&nbsp; KNKS &lsquo;s initial efforts in realizing economic strengthening in the fronts of the digital economy as stated in one of the main strategies in Indonesian Islamic Economy Masterplan.</p>\r\n\r\n<p>Reporter : Khairana Izzati<br />\r\nEditor : Afdhal Aliasar</p>	4	kdeks	\N	NULL	0	0	null
150	KNKS Luncurkan Masterplan Keuangan Syariah pada 14 Mei 2019	\N	<p>Sharianews, Bandung ~ Menteri Perencanaan dan Pembangunan Nasional dan Kepala Bappenas, Bambang Permadi Soemantri Brodjonegoro menyampaikan, Komite Nasional Keuangan Syariah (KNKS) akan meluncurkan Masterplan Ekonomi Syariah Indonesia 2019-2024 pada 14 Mei 2019.<br />\r\n<br />\r\nKerangka Masterplan Ekonomi Syariah Indonesia 2019-2024 merekomendasikan empat strategi utama untuk mengembangkan ekonomi syariah di Tanah Air.<br />\r\n<br />\r\n&quot;Pertama, penguatan rantai nilai halal atau halal value chain (HVC) dengan fokus pada sektor atau klaster yang dinilai potensial dan berdaya saing tinggi,&quot; jelasnya menegaskan, di Bandung, Jumat (26/4).<br />\r\n<br />\r\nKedua, penguatan sektor keuangan syariah, yang rencana induknya sudah dituangkan dalam Masterplan Arsitektur Keuangan Syariah Indonesia dan disempurnakan daIam rencana induk ini.<br />\r\n<br />\r\nKetiga penguatan Usaha Mikro, kecil dan Menengah (UMKM) sebagai penggerak utama rantai nilai halal.<br />\r\n<br />\r\nTerakhir, yakni pemanfaatan dan penguatan platform ekonomi digital dalam hal perdagangan (e-commerce, market place) dan keuangan (teknologi finansial) yang diharapkan bisa mendorong dan mengakselerasi pencapaian strategi lainnya.<br />\r\n<br />\r\nPembuatan Masterplan Ekonomi Syariah Indonesia dilatarbelakangi karena melihat dalam tiga dasawarsa terakhir, ekonomi dan keuangan syariah mengalami perkembangan pesat baik secara global maupun nasional.<br />\r\n<br />\r\nMenurut data The State of the Global Islamic Economy Report 2018/2019, pada tahun 2017 besaran pengeluaran makanan dan gaya hidup halal dunia mencapai 2,1 triliun dollar AS dan diperkirakan akan terus tumbuh mencapai 3 triliun dollar AS pada tahun 2023.<br />\r\n<br />\r\nFaktor utama pertumbuhan tersebut adalah peningkatan jumlah penduduk Muslim di dunia yang mencapai 1,84 miliar orang di tahun 2017, dan diperkirakan akan terus meningkat hingga 27,5 persen dari total populasi dunia di tahun 2023. Peningkatan tersebut akan berdampak pada permintaan produk dan jasa halal yang terdiri dari makanan halal, pariwisata halal, fesyen muslim, rekreasi dan travel halal, serta farmasi dan kosmetik halal.<br />\r\n<br />\r\nIndonesia sebagai negara dengan penduduk Muslim terbesar di dunia belum bisa berperan secara optimal dalam memenuhi permintaan tersebut.<br />\r\n<br />\r\nKarenanya, dalam rapat Pleno KNKS pada 5 Februari 2018 lalu, Presiden Joko Widodo memberi arahan untuk menyusun Masterplan Ekonomi Syariah Indonesia 2019-2024 guna menjawab tantangan tersebut, sekaligus menjadi peta jalan dalam mengembangkan ekonomi syariah di Indonesia, sehingga dapat mendukung pengembangan ekonomi nasional.<br />\r\n<br />\r\nBambang yang juga menjabat sebagai Sekretaris Dewan Pengarah KNKS menjelaskan, sebagai negara dengan populasi Muslim terbanyak, Indonesia menjadi konsumen terbesar produk halal pada pasar internasional. Namun, sumbangsih dalam memproduksi produk halal dunia masih belum optimal.<br />\r\n<br />\r\n&quot;Dalam rangka mendukung pengembangan ekonomi syariah melalui industri halal, diharapkan Indonesia mampu memaksimalkan kearifan lokal dalam menangkap peluang global. Target ekonomi syariah pada tataran domestik mencakup peningkatan skala usaha, kemandirian dan kesejahteraan. Sementara pada tingkat internasional, berupa peningkatan pada peringkat Global Islamic Economy Indicator (GIEI),&quot; ungkap Bambang.<br />\r\n<br />\r\nSebelum peluncuran Masterplan Ekonomi Syariah, KNKS mengadakan pre-launchlng event yang bernama lndonesia Islamic Economy Festival (IIEFest). Acara ini bertujuan untuk memperkenalkan industri halal di Indonesia kepada masyarakat, sekaligus sebagai bentuk upaya dalam rangka meningkatkan kesadaran masyarakat untuk menjalankan gaya hidup halal. (*)</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
155	Masyarakat Indonesia Habiskan Usd 40 Miliar untuk Industri Halal di 2017, Pemerintah Perluas Komitmen Halal Lifestyle ke Milenial	\N	<p>BANDUNG &ndash; &quot;Masyarakat Indonesia menghabiskan USD 10 miliar di 2017 untuk perjalanan dan wisata halal, USD 20 miliar untuk busana muslim, dan USD 10 miliar di sektor media dan rekreasi. Untuk mempertahankan posisi Indonesia yang saat ini dinobatkan sebagai destinasi wisata halal terbaik di dunia versi Global Muslim Travel Index (GMTI), pemerintah Indonesia akan mendorong sertifikasi halal, meningkatkan kompetensi sumber daya manusia, memastikan infrastruktur, dukungan teknologi informasi dan regulasi yang bertaraf internasional, membangun jaringan platform, memperkuat integrasi paket wisata, meningkatkan kesadaran dan kecintaan terhadap produk halal, melindungi hak cipta, dan menginisiasi inovasi produk berorientasi ekspor agar mendapat pengakuan internasional terhadap konten lokal keislaman Indonesia,&quot;ujar Menteri PPN/Kepala Bappenas Bambang Brodjonegoro sekaligus Sekretaris Dewan Pengarah Komite Nasional Keuangan Syariah (KNKS) pada acara Indonesia Islamic Economy Festival (IIEFest) 2019: Halal Lifestyle di Era Milenial yang digelar di The Trans Luxury Hotel, Bandung, Jawa Barat, Jumat (26/4).<br />\r\n<br />\r\nIEFest 2019 bertujuan untuk memperkenalkan industri halal kepada masyarakat sekaligus meningkatkan kesadaran untuk menjalankan gaya hidup halal dan potensi manfaatnya terhadap perekonomian Indonesia. Kegiatan ini terdiri dari bincang-bincang industri digital halal, pariwisata halal, Islamic edutainment, moslem modest fashion, dan pameran industri halal yang diramaikan pelaku industri, regulator, start-up milenial, UMKM, dan masyarakat umum. Dalam tiga dasawarsa terakhir, ekonomi dan keuangan syariah berkembang pesat secara global maupun nasional. Data The State of the Global Islamic Economy Report 2018-2019 menunjukkan besaran pengeluaran makanan dan gaya hidup halal dunia di 2017 mencapai USD 2,1 triliun dan diperkirakan akan terus tumbuh mencapai USD 3 triliun di 2023. Faktor utama pertumbuhan tersebut adalah peningkatan jumlah penduduk Muslim dunia yang mencapai 1,84 miliar jiwa di 2017 dan akan terus meningkat hingga 27,5 persen dari total populasi dunia di 2023. Peningkatan ini berdampak pada permintaan produk dan jasa halal yang terdiri dari makanan halal, pariwisata halal, fesyen muslim, rekreasi dan halal travel, serta farmasi dan kosmetik halal.<br />\r\n<br />\r\nDalam Rapat Pleno KNKS yang digelar 5 Februari 2018, Presiden Republik Indonesia Joko Widodo memberi arahan untuk menyusun Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2024 guna menjawab tantangan tersebut, sekaligus menjadi peta jalan pengembangan ekonomi syariah di Indonesia sehingga dapat mendukung pengembangan ekonomi nasional. MEKSI 2019-2024 akan diluncurkan pada 14 Mei 2019 dengan empat rekomendasi strategi utama, yaitu: 1) penguatan rantai nilai halal dengan fokus pada sektor atau klaster yang dinilai potensial dan berdaya saing tinggi; 2) penguatan sektor keuangan syariah dengan rencana induk yang sudah dituangkan dalam Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) dan disempurnakan dalam rencana induk ini; (3) penguatan UMKM sebagai penggerak utama rantai nilai halal; dan 4) pemanfaatan dan penguatan platform ekonomi digital di perdagangan (e-commerce, market place) dan keuangan (teknologi finansial) sehingga dapat mendorong dan mengakselerasi pencapaian strategi lainnya.<br />\r\n<br />\r\nSaat ini, bagi sebagian besar kaum muslim milenial, mengonsumsi produk halal bukan sekadar sebuah kewajiban agama, melainkan sudah menjadi sebuah gaya hidup kekinian. Apalagi, gaya hidup tersebut banyak dipopulerkan kalangan influencer melalui kampanye hijrah. &ldquo;Promosi gaya hidup halal adalah sebuah keharusan untuk mendorong industri halal menjadi salah satu penggerak utama gerakan arus baru ekonomi syariah. Masa depan gaya hidup halal di kalangan milenial Indonesia terdapat paling tidak pada sektor perjalanan dan wisata halal, sektor busana muslim, serta sektor media dan rekreasi. Secara agregat, pengeluaran terhadap sektor ekonomi syariah di Indonesia pada 2017 adalah sebesar USD 218,8 miliar,&rdquo; jelas Menteri Bambang. Sebagai negara dengan populasi Muslim terbesar, Indonesia memiliki konsumen produk halal terbesar di pasar internasional. Untuk mendukung pengembangan ekonomi syariah dan mendorong optimalisasi produk halal buatan sendiri melalui industri halal, Indonesia akan memaksimalkan kearifan lokal dalam menangkap peluang global. Target ekonomi syariah pada tataran domestik mencakup peningkatan skala usaha, kemandirian, dan kesejahteraan, sementara pada tataran internasional, Indonesia akan menetapkan target berupa peningkatan peringkat Global Islamic Economy Indicator (GIEI).<br />\r\n<br />\r\n<strong>Tentang Komite Nasional Keuangan Syariah (KNKS)</strong><br />\r\nUntuk mengembangkan potensi sekaligus menjawab tantangan ekonomi dan keuangan syariah di Indonesia, pemerintah membentuk Komite Nasional Keuangan Syariah (KNKS) melalui Peraturan Presiden Nomor 91 Tahun 2016 tentang Komite Nasional Keuangan Syariah. Komite ini dipimpin langsung oleh Presiden RI dan Wakil Presiden RI, dengan 10 Dewan Pengarah yang terdiri atas Kementerian PPN/Bappenas, Kementerian Koordinator Bidang Perekonomian, Kementerian Keuangan, Kementerian Badan Usaha Milik Negara, Kementerian Agama, Kementerian Koperasi dan Usaha Kecil dan Menengah, Bank Indonesia, Otoritas Jasa Keuangan, Lembaga Penjamin Simpanan dan Majelis Ulama Indonesia.<br />\r\n<br />\r\n<strong>Tugas KNKS</strong><br />\r\nKNKS mempunyai tugas mempercepat, memperluas, dan memajukan pengembangan keuangan syariah dalam rangka mendukung pembangunan ekonomi nasional. KNKS berfungsi sebagai katalisator pengembangan ekonomi dan keuangan syariah untuk skala nasional maupun internasional. KNKS juga berperan untuk menyamakan persepsi dan mewujudkan sinergi antara regulator, pemerintah, dan industri terkait ekonomi dan keuangan syariah guna menciptakan sistem ekonomi syariah yang selaras dan progresif untuk pertumbuhan ekonomi Indonesia. Pencanangan titik awal untuk memosisikan Indonesia sebagai salah satu pelaku utama dan hub ekonomi syariah dunia dilakukan seiring dengan peluncuran Masterplan Ekonomi Syariah Indonesia pada Mei 2019. Pencanangan ini mempunyai visi untuk menjadikan Indonesia sebagai pemain utama pasar global ekonomi syariah dunia di 2024.<br />\r\n<br />\r\n<br />\r\nBandung, 26 April 2019<br />\r\n<br />\r\nParulian Silalahi<br />\r\nKepala Biro Humas dan Tata Usaha Pimpinan<br />\r\n<br />\r\nUntuk informasi lebih lanjut:<br />\r\nKementerian PPN/Bappenas<br />\r\nJl. Taman Suropati No. 2 Jakarta 10310<br />\r\nTelepon: (021) 31936207, 3905650<br />\r\nEmail: humas@bappenas.go.id</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
156	Ini Dia yang Mendorong Tumbuhnya Tren Industri Halal di Dunia	\N	<p>ENGAPA saat ini industri halal tumbuh dan berkembang di dunia? Semua fenomena global itu tidak terjadi secara serta merta. Data dari Komite Nasional Keuangan Syariah (KNKS) menyebutkan total Global Islamic Finance Market sebesar US$ 2,438 trilyun pada tahun 2017 diprediksi akan terus meningkat menjadi US$ 3,809 trilyun (naik 56%) pada tahun 2023. Sementara di sektor Global Islamic Commercial Banking Market, tercatat angka US$ 1,721 trilyun d itahun 2017,dan diperkirakan akan mencapai angka US$ 2,441 trilyun di tahun 2023 (naik 41,8%).<br />\r\n<br />\r\nGlobal Islamic Economy Report Tahun 2016/2017 menunjukkan nilai belanja makanan dan gaya hidup halal di dunia mencapai angka US$ 1.9 triliun pada tahun 2015 dan diprediksiakan naik menjadi US$ 3 triliun pada tahun 2021. Melihat potensi yang besar ini, negara muslim maupun non-muslim berlomba-lomba menggarap bisnis berbasis syariah.<br />\r\n<br />\r\nPeningkatan ini seiring dengan semakin meningkatnya populasi dan sebaran penduduk muslim di dunia yang berjumlah sekitar 1,8 milyar jiwa. Dengan meningkatnya populasi dan sebaran muslim ini menyebabkan terjadinya pula peningkatan kebutuhan terhadap produk-produk atau jasa berlabel halal. Tentu saja perkembangan ini juga dipicu dengan meningkatnya motivasi dan keyakinan masyarakat terhadap produk berlabel halal. Selain itu, masyarakat juga memiliki kepercayaan kualitas produk halal yang memang dikenal lebih baik dari aspek etika, kesehatan, keamanan, dan keramahan terhadap lingkungan (eco-friendly).<br />\r\n<br />\r\nDi sisi lain, data dari KNKS juga menyebutkan kebutuhan masyarakat muslim terus bertambah seiring dengan bertambahnya kelas menengah muslim yang otomatis memiliki daya beli yang lebih tinggi. Tingginya daya beli ini karena porsi terbesar dari populasi muslim adalah usia produktif. Mereka memiliki mobilitas tinggi sehingga kebutuhan akan produk halal diperlukan hadir di semua wilayah.<br />\r\n<br />\r\nKeberadaan muslim usia produktif tersebut memunculkan karakteristik gaya hidup modern yang lebih maju, namun mereka masih tetap mengemban keyakinannya untuk menggunakan produk berlabel halal dalam memenuhi kebutuhan mereka. Hal tersebut juga menjadi pemicu mulai berkembangnya produk-produk halal.<br />\r\n<br />\r\nPopulasi muslim yang besar ini juga mendorong sejumlah negara, bahkan yang penduduk muslimnya minoritas, ikut berebut &ldquo;kue&rdquo; dari pasar muslim yang besar ini.<br />\r\n<br />\r\nThailand yang mayoritas penduduknya beragama Budha bahkan menjadi eksportir pangan bersertifikat halal terbesar di dunia. Tiongkok juga menjadi penyedia bahan sandang halal ke Timur Tengah. Bahkan Jepang dan Korea Selatan juga tengah aktif mengembangkan industri halal ini meski jumlah muslim di negara mereka minoritas. The Manila Times pernah melaporkan bahwa Philipina juga mengembangkan industri halal.<br />\r\n<br />\r\nIndonesia merupakan negara yang dinilai memiliki peluang paling besar dalam mengembangkan produk-produk halal yang mendunia. Apakah pontesi yang dimiliki Indonesia? Dan usaha apa saja yang dilakukan pemerintah melalui KNKS untuk menggemakan peluang-peluang usaha berbasis halal di Indonesia? Anda bisa mengetahuinya dalam Indonesia Islamic Economy Festival (IIEFEST) di Era Milenial yang akan digelar oleh KNKS pada Jumat 26 April 2019 di Trans Grand Ballroom, The Trans Luxury Hotel Bandung. Bagi yang ingin tahu lebih lanjut bisa mengunjungi instagram KNSK di @knks.id.*** (sumber : https://www.pikiran-rakyat.com)</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
162	KNKS Temui Wapres Bahas Pengembangan Bank Syariah	\N	<p>JAKARTA, KOMPAS.com - Komite Nasional Keuangan Syariah ( KNKS) menemui Wakil Presiden Jusuf Kalla di Kantor Wakil Presiden, Jakarta, Kamis (28/3/2019). Pertemuan tersebut membahas pengembangan bank syariah di Indonesia.<br />\r\n<br />\r\n&quot;Jadi kami minta arahan kepada Pak Wakil Presiden apakah program kerja ini mendapat masukan seperti apa. Dan tadi arahan dari Pak Wakil Presiden sangat jelas bahwa bank syariah kalau bicara mengenai bank syariah itu harus lebih efisien maka harus jadi lebih besar,&quot; ujar Direktur Eksekutif KNKS Ventje Rahardjo Soedigno usai pertemuan.<br />\r\n<br />\r\nIa menambahkan ke depannya KNKS juga akan lebih mendorong bank syariah mengedepankan identitasnya sehingga hadir sebagai pembeda dari bank konvensional. Karena itu, ke depan KNKS akan menguatkan prinsip bagi hasil dalam operasional bank syariah.<br />\r\n<br />\r\nMeski demikian, lanjut Ventje, prinsip-prinsip yang ada pada bank syariah jangan sampai menghalangi pertumbuhan industri. Ia melanjutkan saat ini bank syariah masih banyak bergerak di sektor pembiayaan konsumen seperti Kredit Pemilikan Rumah dan Kredit Pemilikan Kendaraan Bermotor. Namun, ia mengatakan, ke depannya bank syariah bisa pula masuk ke dalam sektor pembiayaan proyek pemerintah serta layanan pendidikan dan kesehatan yang dimiliki organisasi berbasis Islam.<br />\r\n<br />\r\n&quot;Bank syariah itu masih terkonsentrasi di sektor consumer banking yang banyak bekerja di pembiayaan perumahan KPR syariah dan pembiayaan kendaraan bermotor, dan pembiayaan sektor consumer untuk pembiayaan pensiunan,&quot; ujar Ventje.<br />\r\n<br />\r\n&quot;Kalau di bidang yang sifatnya pembiayaan kepada perusahaan, kebanyakan bank syariah itu ikut kepada proyek pemerintah. Arah (ke depan) pada infrastruktur, juga arah ke sektor pendidikan dan sektor kesehatan, khususnya milik organisasi yang berbasis Islam,&quot; lanjut dia. (sumber : kompas.com)</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
165	Upaya KNKS Bangun Ekosistem Digital Syariah Nasional	\N	<p>VIVA &ndash; Direktur Eksekutif Komite Nasional Keuangan Syariah, Ventje Rahardjo Soedigno, memastikan, dalam menghadapi era revolusi industri 4.0, pihaknya akan melahirkan sistem pembayaran digital berbasis syariah.<br />\r\n<br />\r\nDia berharap, hal ini akan menjadi salah satu infrastruktur pembangunan ekosistem digital syariah, untuk mengakomodasi industri keuangan dan ekonomi berbasis syariah dengan potensinya yang cukup besar di Tanah Air.<br />\r\n<br />\r\n&quot;Sekarang kan di luar sudah ada OVO dan sebagainya, maka ke depan kita akan bangun juga sistem pembayaran digital berbasis syariah ini untuk turut membangun ekosistem digital syariah di Indonesia,&quot; kata Ventje dalam acara Indonesia Wakaf Summit 2019, di kawasan Thamrin, Jakarta Pusat, Selasa 5 Maret 2019.<br />\r\n<br />\r\nVentje berharap, nantinya hal itu akan turut mengembangkan marketplace yang akan bisa menampung produk-produk dan barang dagangan bersertifikasi halal, guna mengembangkan potensi industri halal di Indonesia.<br />\r\n<br />\r\n&quot;Kami juga berharap Indonesia bisa punya database zakat nasional, agar nantinya kita bisa mengetahui di mana saja daerah zakat yang surplus dan di mana yang kurang. Mudah-mudahan sebelum akhir tahun kita sudah memiliki platform zakat itu,&quot; tutur Ventje.<br />\r\n<br />\r\nSeiring dengan hal-hal tersebut, lanjut Ventje, saat ini KNKS juga tengah mendorong upaya-upaya perbaikan dan kemunculan kembali lembaga-lembaga berkonsep baitul maal.<br />\r\n<br />\r\nTujuannya tak lain adalah untuk menciptakan kembali basis penyaluran kesejahteraan bagi umat, dengan banyaknya potensi serupa yang harus dioptimalkan di berbagai daerah di Indonesia.<br />\r\n<br />\r\n&quot;Di Indonesia ini ada sekitar 5.000 lebih baitul maal yang pengelolaannya sudah baik ataupun yang belum baik. Sehingga akan kita dorong lagi agar Indonesia bisa memiliki platform pengelolaan baitul maal yang efektif, terutama di sekitar masjid-masjid yang ada di negara kita,&quot; ujarnya. (art)</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
170	KNKS Ingin Keuangan Syariah Indonesia Geser Malaysia	\N	<p>JAKARTA - Komite Nasional Keuangan Syariah (KNKS) sudah bekerja selama tiga minggu sejak dilantik pada 3 Januari lalu. KNKS pun menentukan beberapa target yang akan dilakukan, salah satunya ingin industri keuangan dan ekonomi syariah Indonesia bisa berkembang dan mengalahkan Malaysia.<br />\r\n<br />\r\n&rdquo;KNKS menyadari daya serap dan kapasitas keuangan syariah belum besar, juga jenis- jenis produknya, dan instrumen keuangannya masih bervariasi dan belum mendalam, sehingga perlu ada diversifikasi serta pendalaman jenis- jenis produknya,&rdquo; kata Direktur Hukum, Promosi, dan Hubungan Eksternal KNKS Taufik Hidayat di ruang kerjanya di Jakarta kemarin. Menurut Taufik, KNKS memandang perbankan syariah perlu diperbesar perannya.<br />\r\n<br />\r\nDi sisi lain, KNKS memahami bahwa untuk memperbesar perbankan syariah memerlukan modal yang besar. Artinya, semakin besar suatu bank, maka kapasitas penyerapannya juga semakin besar. Sementara dana yang beredar di masyarakat saat ini masih banyak diserap di perbankan konvensional. &rdquo;KNKS juga menginginkan perbankan syariah Indonesia bisa menarik dana-dana dari luar atau menjadi global hub yang selama ini relatif dikuasai Malaysia. Padahal, Indonesia mempunyai potensi besar untuk mengembangkan sektor keuangan dan ekonomi syariah dengan modal penduduk besar, wilayah besar, dan ekonomi juga besar,&rdquo; kata Taufik.<br />\r\n<br />\r\nTaufik menyayangkan, Indonesia yang merupakan negara dengan mayoritas penduduk beragama Islam, tapi perkembangan ekonomi syariahnya kalah dibanding Malaysia. Untuk itu, KNKS ingin mengedukasi masyarakat bahwa ekonomi syariah bersifat inklusif dan bukan eksklusif hanya untuk penduduk beragama Islam. &rdquo;Siapa pun bisa memanfaatkan keuangan syariah. KNKS akan mengembangkan image bahwa industri keuangan syariah harus kompetitif bersaing dengan industri keuangan konvensional. Jadi, meskipun dengan menerapkan syariat-syariat Islam, tetap bisa kompetitif. Meski diakui saat ini industri keuangan syariah belum bisa kompetitif dengan industri keuangan konvensional,&rdquo; kata dia.<br />\r\nTaufik mengatakan, KNKS sedang memikirkan bagaimana cara agar bisa mendapatkan dana dari luar. Namun, saat ini belum ada bank investasi syariah. &rdquo;Bank investasi syariah ini nantinya bisa mengeluarkan saham, mengeluarkan sukuk, obligasi, dan right issue,&rdquo; ujar dia. (sumber : okezone.com)</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
163	JK Minta Pembeda Bank Syariah dan Konvensional Lebih Diperjelas	\N	<p>Komite Nasional Keuangan Syariah (KNKS) mengadakan pertemuan tertutup dengan Wakil Presiden Jusuf Kalla, Kamis (28/3). Dalam pertemuan yang berlangsung selama sekitar 1,5 jam itu, KNKS meminta arahan kepada JK mengenai manajemen bank syariah yang baik.<br />\r\n<br />\r\n&quot;Tadi kami melaporkan manajemen eksekutif dari KNKS. Sudah ditunjuk, kami sudah mulai bekerja sejak bulan Januari 2019 dan ada 5 orang Direksi KNKS yang sudah mulai bekerja dan menyusun program kerja untuk tahun 2019,&quot; kata Direktur Eksekutif KNKS, Ventje Rahardjo Soedigno, di Kantor Wakil Presiden, Jakarta Pusat, Kamis (28/3).<br />\r\n<br />\r\nKepada KNKS, JK meminta juga meminta agar pembeda antara bank syariah dengan bank konvensional diperjelas. Ventje mengatakan, JK ingin agar bank syariah lebih fokus kepada pembagian hasil.<br />\r\n<br />\r\n&quot;Bank konvensional kan memang menggunakan sistem bunga. Jadi jangan sampai sistem bunga yang ada di bank konvensional itu juga dianut (dan) dilaksanakan juga di bank syariah. Itu jangan sampai. Sebab kalau seperti itu, maka tadi perbedaannya tidak menjadi nyata,&quot; jelasnya.<br />\r\n<br />\r\nIlustrasi Bank Sumsel Babel Syariah Foto: Instagram @wan97.darmawan<br />\r\n<br />\r\nSaat ini, KNKS sedang melakukan studi agar ke depannya bank syariah dapat berjalan efisien dengan melaksanakan prinsip-prinsip syariah. Selain itu, ke depan diharapkan bank syariah dapat lebih kompetitif dibandingkan dengan bank konvensional.<br />\r\n<br />\r\n&quot;Dan kalau memang kemudian bank syariah itu bisa lebih kompetitif, bisa lebih efisien dengan harga lebih baik, maka bidang-bidangnya jadi lebih terbuka. Apakah secara khusus sektor, ya itu tergantung dari masing-masing bank syariah. Bagaimana mereka mempunyai kompetensi dari banknya masing-masing,&quot; tuturnya.<br />\r\n<br />\r\nVentje mengatakan, secara umum bank syariah masih terkonsentrasi pada sektor consumer banking. Biasanya, sektor ini fokus kepada pembiayaan perumahan dengan sistem KPR syariah, pembiayaan kendaraan bermotor, dan pembiayaan sektor consumer untuk pembiayaan pensiunan.<br />\r\n<br />\r\nJK di acara pelepasan peserta Mudik Bersama DMI. Foto: Fanny Kusumawardhani/kumparan<br />\r\n<br />\r\n&quot;Kalau di bidang yang sifatnya pembiayaan kepada perusahaan, kebanyakan bank-bank syariah itu ikut kepada proyek-proyek pemerintah. Arah kepada infrastruktur juga arah kepada sektor-sektor pendidikan dan sektor kesehatan, khususnya yang dimiliki oleh organisasi-organisasi yang berbasis Islam,&quot; ujarnya.<br />\r\n<br />\r\nUntuk target jangka pendek yang sedang dikerjakan, Ventje menjelaskan pihaknya sedang fokus kepada perbankan syariah. Selain itu, KNKS juga ingin mendorong terciptanya ekosistem digital syariah, yang nanti diharapkan dapat mencakup sistem pembayaran syariah hingga sistem pembayaran zakat secara digital.<br />\r\n<br />\r\n&quot;Itu yang kita harapkan. Kita bisa dapat kesepakatan dalam jangka pendek ini untuk kemudian kita terapkan dalam periode 2019,&quot; pungkasnya.<br />\r\n<br />\r\nUntuk ekosistem digital syariah itu, KNKS sedang membangun baik sistem dan platform IT untuk mendukung program tersebut. KNKS juga akan bekerja sama dengan sejumlah lembaga termasuk lembaga amil zakat, UMKM, BMT, dan masjid untuk mewujudkan program ini. (sumber: kumparan.com)</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
169	Menag Minta Manajemen Eksekutif KNKS Sosialisasikan Keuangan Syariah Secara Masif	Menag Minta Manajemen Eksekutif KNKS Sosialisasikan Keuangan Syariah Secara Masif	<p>Jakarta (Kemenag) -- Menteri Agama Lukman Hakim Saifuddin menerima kunjungan Manajemen Eksekutif Komite Nasional Keuangan Syariah (KNKS). Pertemuan berlangsung di Kantor Kemenag Jalan Lapangan Banteng Barat No 3-4 Jakarta Pusat, Jumat (08/03).<br>\r\n<br>\r\nJajaran Manajemen Eksekutif KNKS yang hadir dipimpin Direktur Eksekutif KNKS, Ventje Rahardjo Soedigno. Pertemuan Manajemen Eksekutif KNKS bersama Menag membahas tugas dan misi yang diemban pasca dilantik pada 3 Januari 2019.<br>\r\n<br>\r\nMenag Lukman Hakim dalam kesempatan tersebut mengatakan Presiden dan Wakil Presiden sangat konsen dengan KNKS, yaitu bagaimana agar potensi ekonomi syariah yang begitu besar ini bisa mewujud.<br>\r\n<br>\r\n"Apalagi Indonesia adalah negara dengan umat muslim terbesar di dunia. Mungkin perlu sosialisasi secara masif dari manajemen Eksekutif KNKS terkait apa itu keuangan dan ekonomi syariah," harap Menag.<br>\r\n<br>\r\n"Informasi ini tidak hanya buat umat muslim saja namun juga bagi saudara kita yang lain. Mereka juga perlu sosialisasi dan ini perlu digencarkan," sambungnya.<br>\r\n<br>\r\nMenag juga berharap manajemen Eksekutif KNKS memiliki database peta penyaluran zakat. "Saya tertarik dengan zakat. Kita punya Unit Pengelola Zakat (UPZ) yang begitu banyak selain Baznas. Ada baiknya KNKS punya peta penyaluran zakat. Ini kaitannya dengan skala prioritas agar tidak ada tumpang tindih, sehingga KNKS ada arahan kepada Baznas," kata Menag.<br>\r\n<br>\r\nMenurut Menag manajemen Zakat adalah dengan membangun kepercayaan dan transparansi.<br>\r\n<br>\r\n"Kalau KNKS masuk ke sana maka semangat orang berzakat akan bergairah tentunya untuk kemaslahatan bersama, " tutur Menag.<br>\r\n<br>\r\nSementara itu Direktur Eksekutif KNKS, Ventje Rahardjo Soedigno menyatakan usai dilantik pada 3 Januari 2019 pihaknya langsung mengemban tugas mengawal arsitektur keuangan syariah, ekonomi syariah, zakat dan industri halal.<br>\r\n<br>\r\nTurut mendampingi Menag, Direktur Zakat dan Wakaf Fuad Nazar, Direktur Kurais, Kabag TU Pimpinan Khoirul Huda Basyir dan Staf Khusus Menag, Hadi Rahman.<br>\r\n<br>\r\nPemerintah melantik lima direktur Komite Nasional Keuangan Syariah atau KNKS sebagai Manajemen Eksekutif KNKS pada Kamis (3/1/2019). Manajemen Eksekutif KNKS akan melaksanakan tugas-tugas harian yang sebelumnya dilakukan oleh Dewan Pengarah KNKS.<br>\r\n<br>\r\nBerikut jajaran Direksi Manajemen eksekutif KNKS: 1.Ventje Rahardjo Soedigno sebagai Direktur Eksekutif, 2.Taufiq Hidayat sebagai Direktur Bidang Hukum dan Standar Pengelolaan Keuangan Syariah, 3. Ronald Rulindo sebagai Direktur Bidang Inovasi Produk, Pendalaman Pasar, dan Pengembangan Infrastruktur Sistem Keuangan Syariah, 4. Ahmad Juwaini sebagai Direktur Bidang Keuangan Inklusif, Dana Sosial Keagamaan, dan Keuangan Mikro Syariah serta 5. Afdhal Aliasar sebagai Direktur Bidang Promosi dan hubungan Eksternal.<br>\r\n<br>\r\nPelantikan Manajemen Eksekutif KNKS diharapkan dapat menjadikan Indonesia sebagai global hub dari global islamic finance. Artinya, seluruh stakeholder harus berbenah diri untuk mensejajarkan diri agar menjadi global hub dari global islamic finance.</p>	https://webdev.rifhandi.com/uploads/news/h.jpg	2019-05-09 08:05:42	1	Menag Minta Manajemen Eksekutif KNKS Sosialisasikan Keuangan Syariah Secara Masif	Menag Minta Manajemen Eksekutif KNKS Sosialisasikan Keuangan Syariah Secara Masif	<span style="font-size: 13.44px;">Jakarta (Kemenag) -- Menteri Agama Lukman Hakim Saifuddin menerima kunjungan Manajemen Eksekutif Komite Nasional Keuangan Syariah (KNKS). Pertemuan berlangsung di Kantor Kemenag Jalan Lapangan Banteng Barat No 3-4 Jakarta Pusat, Jumat (08/03).</span><br style="font-size: 13.44px;"><br style="font-size: 13.44px;"><span style="font-size: 13.44px;">Jajaran Manajemen Eksekutif KNKS yang hadir dipimpin Direktur Eksekutif KNKS, Ventje Rahardjo Soedigno. Pertemuan Manajemen Eksekutif KNKS bersama Menag membahas tugas dan misi yang diemban pasca dilantik pada 3 Januari 2019.</span><br style="font-size: 13.44px;"><br style="font-size: 13.44px;"><span style="font-size: 13.44px;">Menag Lukman Hakim dalam kesempatan tersebut mengatakan Presiden dan Wakil Presiden sangat konsen dengan KNKS, yaitu bagaimana agar potensi ekonomi syariah yang begitu besar ini bisa mewujud.</span><br style="font-size: 13.44px;"><br style="font-size: 13.44px;"><span style="font-size: 13.44px;">"Apalagi Indonesia adalah negara dengan umat muslim terbesar di dunia. Mungkin perlu sosialisasi secara masif dari manajemen Eksekutif KNKS terkait apa itu keuangan dan ekonomi syariah," harap Menag.</span><br style="font-size: 13.44px;"><br style="font-size: 13.44px;"><span style="font-size: 13.44px;">"Informasi ini tidak hanya buat umat muslim saja namun juga bagi saudara kita yang lain. Mereka juga perlu sosialisasi dan ini perlu digencarkan," sambungnya.</span><br style="font-size: 13.44px;"><br style="font-size: 13.44px;"><span style="font-size: 13.44px;">Menag juga berharap manajemen Eksekutif KNKS memiliki database peta penyaluran zakat. "Saya tertarik dengan zakat. Kita punya Unit Pengelola Zakat (UPZ) yang begitu banyak selain Baznas. Ada baiknya KNKS punya peta penyaluran zakat. Ini kaitannya dengan skala prioritas agar tidak ada tumpang tindih, sehingga KNKS ada arahan kepada Baznas," kata Menag.</span><br style="font-size: 13.44px;"><br style="font-size: 13.44px;"><span style="font-size: 13.44px;">Menurut Menag manajemen Zakat adalah dengan membangun kepercayaan dan transparansi.</span><br style="font-size: 13.44px;"><br style="font-size: 13.44px;"><span style="font-size: 13.44px;">"Kalau KNKS masuk ke sana maka semangat orang berzakat akan bergairah tentunya untuk kemaslahatan bersama, " tutur Menag.</span><br style="font-size: 13.44px;"><br style="font-size: 13.44px;"><span style="font-size: 13.44px;">Sementara itu Direktur Eksekutif KNKS, Ventje Rahardjo Soedigno menyatakan usai dilantik pada 3 Januari 2019 pihaknya langsung mengemban tugas mengawal arsitektur keuangan syariah, ekonomi syariah, zakat dan industri halal.</span><br style="font-size: 13.44px;"><br style="font-size: 13.44px;"><span style="font-size: 13.44px;">Turut mendampingi Menag, Direktur Zakat dan Wakaf Fuad Nazar, Direktur Kurais, Kabag TU Pimpinan Khoirul Huda Basyir dan Staf Khusus Menag, Hadi Rahman.</span><br style="font-size: 13.44px;"><br style="font-size: 13.44px;"><span style="font-size: 13.44px;">Pemerintah melantik lima direktur Komite Nasional Keuangan Syariah atau KNKS sebagai Manajemen Eksekutif KNKS pada Kamis (3/1/2019). Manajemen Eksekutif KNKS akan melaksanakan tugas-tugas harian yang sebelumnya dilakukan oleh Dewan Pengarah KNKS.</span><br style="font-size: 13.44px;"><br style="font-size: 13.44px;"><span style="font-size: 13.44px;">Berikut jajaran Direksi Manajemen eksekutif KNKS: 1.Ventje Rahardjo Soedigno sebagai Direktur Eksekutif, 2.Taufiq Hidayat sebagai Direktur Bidang Hukum dan Standar Pengelolaan Keuangan Syariah, 3. Ronald Rulindo sebagai Direktur Bidang Inovasi Produk, Pendalaman Pasar, dan Pengembangan Infrastruktur Sistem Keuangan Syariah, 4. Ahmad Juwaini sebagai Direktur Bidang Keuangan Inklusif, Dana Sosial Keagamaan, dan Keuangan Mikro Syariah serta 5. Afdhal Aliasar sebagai Direktur Bidang Promosi dan hubungan Eksternal.</span><br style="font-size: 13.44px;"><br style="font-size: 13.44px;"><span style="font-size: 13.44px;">Pelantikan Manajemen Eksekutif KNKS diharapkan dapat menjadikan Indonesia sebagai global hub dari global islamic finance. Artinya, seluruh stakeholder harus berbenah diri untuk mensejajarkan diri agar menjadi global hub dari global islamic finance.</span>	4	kdeks	indonesia,kneks	NULL	0	0	null
159	Rencana besar ekonomi syariah lima tahun ke depan	<p>Potensi besar ekonomi bisa diraup Indonesia dalam lima tahun ke depan jika mampu menggali bisnis syariah dengan benar</p>	<p><strong>Beritagar.ID, Jakarta</strong> - Potensi besar ekonomi bisa diraup Indonesia dalam lima tahun ke depan jika mampu menggali bisnis syariah dengan benar.</p>\r\n\r\n<p><em>Global Islamic Economy Report&nbsp;</em>2018-2019 mencatat total pengeluaran belanja masyarakat muslim dunia pada 2017 di berbagai sektor halal, mulai dari makanan dan minuman, farmasi dan kosmetik halal, busana halal, wisata halal, media dan hiburan halal, hingga keuangan syariah mencapai $2,1 triliun AS. Angka itu diprediksi bakal terus tumbuh hingga menyentuh $3 triliun AS pada 2023, atau jika dikonversi ke Rupiah setara dengan Rp45 ribu triliun. Faktor utama yang mendorong prediksi itu adalah peningkatan jumlah penduduk muslim di dunia hingga 27,5 persen dari total populasi dunia pada empat tahun ke depan. Sementara, posisi penduduk muslim di dunia saat ini telah mencapai 1,84 miliar orang.</p>\r\n\r\n<p>Pemerintah Indonesia pun mencoba untuk mengambil potensi besar dari prediksi tersebut. Selasa (14/5/2019), Presiden Joko &ldquo;Jokowi&rdquo; Widodo secara resmi meluncurkan Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2014. Dokumen rencana besar tersebut bakal dijadikan pedoman bagi pemerintah, pelaku bisnis, dan penggerak ekonomi lainnya untuk bertransformasi serta bersinergi dalam meraih gol utama menjadi pelaku ekonomi syariah dunia. Indonesia, kata Jokowi, sudah memiliki modal paling penting dalam mewujudkan misi tersebut, yakni memiliki penduduk muslim terbanyak dunia. Namun sayang, modal utama itu masih belum didukung dengan strategi bisnis syariah yang terencana.</p>\r\n\r\n<p>Kekuatan ekonomi syariah Indonesia sampai saat ini masih berada di peringkat ke-10 di dunia, di belakang Malaysia, Uni Emirat Arab, Bahrain, Arab Saudi, Oman, Jordan, Qatar, Pakistan, dan Kuwait. &ldquo;Untuk menuju ke sana bukan barang yang mudah. Banyak tantangan, banyak persoalan besar yang harus kita selesaikan,&rdquo; aku Jokowi di kantor Kementerian Perencanaan Pembangunan Nasional/Bappenas, Menteng, Jakarta Pusat. Merujuk data Badan Perencanaan Pembangunan Nasional (Bappenas) 2017, konsumsi produk halal di Indonesia mencapai $220 miliar AS atau 20 persen dari Produk Domestik Bruto (PDB) yang mencapai $1,01 triliun AS.</p>\r\n\r\n<p>Sayangnya, produk halal yang ada di Indonesia sebagian besarnya masih didatangkan dari luar negeri. Selain ceruk pasar yang hilang, Indonesia juga perlu menanggung defisit neraca perdagangan akibat mengimpor produk halal. Maka dari itu, Menteri PPN/Bappenas Bambang Brodjonegoro berharap peluncuran MEKSI 2019-2024 ini dapat mendorong perubahan Indonesia yang sebelumnya bertindak sebagai&nbsp;<em>net consumer&nbsp;</em>menjadi&nbsp;<em>net producer.&nbsp;</em>&ldquo;Hal yang tadinya&nbsp;<em>net importir</em>&nbsp;menjadi&nbsp;<em>net exportir.&nbsp;</em>Ini demi mengubah posisi Indonesia yang selama ini dilirik internasional sebagai pasar saja,&rdquo; kata Bambang, pada kesempatan yang sama.</p>\r\n\r\n<p>Oleh karenanya, MEKSI 2019-2024 menitikberatkan pada empat strategi utama Indonesia agar berdikari dalam produk halal.&nbsp;<em><strong>Pertama</strong>,&nbsp;</em>penguatan halal&nbsp;<em>value chain&nbsp;</em>dengan fokus pada sektor yang dinilai potensial dan berdaya saing tinggi.&nbsp;<em><strong>Kedua</strong>,&nbsp;</em>penguatan sektor keuangan syariah dengan rencana induk yang sudah dituangkan dalam Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) dan disempurnakan dalam rencana induk ini.&nbsp;<em><strong>Ketiga</strong>,&nbsp;</em>penguatan sektor usaha mikro, kecil, dan menengah (UMKM) sebagai penggerak utama halal&nbsp;<em>value chain.&nbsp;<strong>Keempat</strong>,&nbsp;</em>penguatan di bidang ekonomi digital, utamanya perdagangan (<em>e-commerce, market place</em>) dan keuangan (teknologi finansial) sehingga dapat mendorong dan mengakselerasi pencapaian strategi lainnya.</p>\r\n\r\n<p>Adapun beberapa langkah dasar yang harus dilakukan adalah peningkatan kesadaran publik, peningkatan kuantitas dan kualitas sumber daya manusia, penguatan kapasitas riset dan pengembangan (R&amp;D), penguatan fatwa, regulasi, dan tata kelola.</p>\r\n\r\n<p><strong>Kejar RUU Produk Halal</strong></p>\r\n\r\n<p>Bambang Brodjonegoro menyadari, salah satu ganjalan dari misi penguatan rantai produksi dan pemasaran produk halal adalah Rencana Peraturan Pemerintah tentang Jaminan Produk Halal yang tak kunjung diterbitkan. &quot;Memang PP JPH ini belum terbit, kami sudah berkoordinasi juga dengan Kementerian Agama terkait kapan terbitnya aturan ini. Tapi, kami pastikan RPP ini tidak memberatkan pelaku usaha, apalagi UMKM,&quot; ujar Bambang.</p>\r\n\r\n<p>Awal Februari 2019, Menteri Agama Lukman Hakim Saifuddin memastikan seluruh pihak, baik&nbsp;<em>stakeholder</em>&nbsp;hingga tujuh kementerian, sudah memiliki persepsi yang sama terkait RPP ini. Hingga untuk selanjutnya, RPP ini diserahkan kepada Presiden untuk ditandatangani.</p>\r\n\r\n<p>Salah satu ganjalan yang dikabarkan membuat RPP ini tak kunjung dijadikan PP adalah perdebatan pemberian&nbsp;label halal&nbsp;pada produk obat-obatan. Kementerian Agama akhirnya mengambil jalan tengah dengan memberlakukan aturan sertifikasi halal ini untuk produk makanan dan minuman terlebih dahulu. Sementara untuk produk obat-obatan bakal diatur lebih lanjut dalam Peraturan Kementerian Agama (PMA) yang disusun setelah RPP Jaminan Halal rampung. Maka, sambil menanti RPP Jaminan Halal disahkan, Bambang menyatakan pemerintah bakal fokus untuk memperluas pengembangan keuangan syariah terlebih dahulu.&nbsp;Langkah ini jadi bagian dari upaya yang telah dijalankan Komite Nasional Keuangan Syariah (KNKS), sesuai Peraturan Presiden Nomor 91 Tahun 2016.</p>\r\n\r\n<p>Hanya saja, sisi permintaan keuangan syariah saat ini masih belum maksimal, sehingga pemerintah perlu menyusun peta jalan agar sektor riil syariah berkembang. Jika sektor riil berkembang, tentu permintaan pendanaan syariah juga akan meningkat. Statistik Otoritas Jasa Keuangan (OJK) per Februari 2019 menunjukkan, total pembiayaan&nbsp;<em>outstanding</em>&nbsp;bank syariah baru mencapai Rp201,99 triliun. Angka ini masih tak sebanding dengan penyaluran kredit oleh bank konvensional yang mencapai Rp5.287,44 triliun.</p>\r\n\r\n<p>Reporter :&nbsp;Ronna Nirmala</p>\r\n\r\n<p><em>Sumber :&nbsp;https://beritagar.id/artikel/berita/rencana-besar-ekonomi-syariah-lima-tahun-ke-depan</em></p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
167	KNKS Dorong Pembentukan Database Wakaf Nasional	\N	<p>REPUBLIKA.CO.ID, JAKARTA -- Komite Nasional Keuangan Syariah (KNKS) mendorong pembentukan database wakaf nasional. Ketua KNKS, Ventje Rahardjo Soedigno menyampaikan platform tersebut harus dibangun bersama oleh semua stakeholder.<br />\r\n<br />\r\n&quot;Nantinya platform ini bisa diakses oleh siapa pun, menunjukkan transparansi,&quot; kata dia dalam Indonesia Wakaf Summit 2019, di Sari Pasific Hotel, Jakarta, Selasa (5/3).<br />\r\n<br />\r\nDatabase berisi seluruh aset wakaf yang ada di Indonesia secara terintegrasi. Ventje menyampaikan tanpa database, maka strategi pemanfaatannya bisa tidak efektif.<br />\r\n<br />\r\nKNKS sendiri akan membangun kerja sama dengan Badan Wakaf Indonesia, lembaga nadzhir, Kementerian Agama dan lainnya untuk melancarkan tersebut. Ini juga merupakan salah satu cara agar pengelolaan wakaf menjadi lebih profesional.<br />\r\n<br />\r\n&quot;Kita inginkan agar wakaf juga dikelola secara modern, dengan managemen yang profesional,&quot; kata dia.<br />\r\n<br />\r\nKNKS pun mendorong agar Indonesia memiliki lembaga managemen pengelolaan aset umat yang mirip dengan lembaga managemen aset negara. Dengan demikian, administrasi hingga pemanfaatannya bisa lebih efektif karena terintegrasi dengan semua stakeholder yang ada.<br />\r\n<br />\r\nJika langkah perapihan ini dilakukan sebagai salah satu strategi, maka langkah pengembangan selanjutnya akan lebih mudah. Selain berimbas pada peningkatan transparansi untuk para wakif, inovasi wakaf juga bisa dikaitkan dengan bisnis investasi.<br />\r\n<br />\r\nKetua Yayasan Dompet Dhuafa, Ismail A Said menyampaikan ia mendukung integrasi database wakaf yang ada di Indonesia. Saat ini, data-data aset dan pencapaian dimiliki oleh Kementerian Agama dan Badan Wakaf Indonesia.<br />\r\n<br />\r\n&quot;Data-data memang sudah ada lengkap di Kementerian Agama, tapi memang perlu dikonsolidasi,&quot; kata dia.<br />\r\n<br />\r\nKementerian Agama mencatat total tanah wakaf berjumlah sekitar empat juta meter persegi atau setara sekitar Rp 2.000 triliun. Untuk memproduktifkan aset-aset tersebut, maka perlu ada data terintegrasi agar pengembangannya bisa maksimal. Sehingga satu nadzhir bisa mengelola aset yang berbeda dengan nadzhir lainnya.<br />\r\n<br />\r\nVentje menambahkan dengan model managemen profesional, maka kemampuan nadzhir pun harus ditingkatkan. Mereka perlu mengasah kemampuan pengelolaan ekonomi aset wakaf menjadi produktif, juga mempelajari managemen risiko agar bisa mempertahankan aset wakaf tetap nilainya.</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
166	Komite Keuangan Syariah Usul Lembaga Manajemen Aset Dibentuk	\N	<p>TEMPO.CO, Jakarta - Komite Nasional Keuangan Syariah menyebut pengelolaan wakaf ke depannya mesti lebih modern dan profesional. Salah satunya mengarah kepada manajemen aset.<br />\r\n<br />\r\n&quot;Apakah mungkin kita membangun lembaga setara Lembaga Manajemen Aset Negara, yaitu Lembaga Manajemen Aset Umat,&quot; Direktur Eksekutif KNKS Ventje Rahardjo Soedigno dalam acara Indonesia Wakaf Summit 2019 di Hotel Sari Pacific, Jakarta, Selasa, 5 Maret 2019.<br />\r\n<br />\r\nNamun, untuk mencapai pengelolaan aset yang baik, salah satu kebutuhan yang mesti dipenuhi adalah mengenai database wakaf nasional. &quot;Kami mendengar nanti akan ada sensus yang mencatat aset wakaf seluruh indonesia. Tapi kayaknya terlalu lama kalau menunggu sensus,&quot; ujar dia.<br />\r\n<br />\r\nOleh karena itu dalam waktu dekat Komite Nasional Keuangan Syariah bakal menggandeng berbagai pihak, mulai dari Badan Wakaf Indonesia hingga Kementerian Agama guna mendiskusikan perkara itu. Ventje berpendapat tanpa database yang baik, strategi pemanfaatan wakaf bakal sulit untuk terintegrasi.<br />\r\n<br />\r\n&quot;Melalui database dan pengelolaan kuat, kita bisa secara transparan membuka database tadi dan membuka proposal, serta dikelola lewat dewan komite investasi untuk menilai proposal mana yang secara nasional bisa diterima,&quot; kaya Ventje. &quot;Ini mendorong transparansi terutama bagi para wakif yang mempercayakan asetnya pada lembaga tersebut.&quot;<br />\r\n<br />\r\nDi samping itu, Ventje melihat perlunya peninjauan ulang akan regulasi-regulasi yang sudah ada, misalnya saja Undang-undang Wakaf yang dikeluarkan 2004 lalu. Ia menyebut dalam kurun waktu 14 tahun terakhir pasti banyak hal yang terjadi. Jadi, tinjau ulang itu dirasa penting untuk mendorong kemudahan transparasi dan profesionalitas dunia wakaf Tanah Air.<br />\r\n<br />\r\nBerdasarkan data Badan Wakaf Indonesia, Direktur Utama Dompet Dhuafa Imam Rulyawan mengatakan potensi aset wakaf per tahun mencapai Rp 2 ribu triliun dengan luas tanah wakaf mencapai 420 ribu hektare. Sedangkan potensi wakaf uang bisa menembus kisaran Rp 188 triliun per tahun. &quot;Aset wakaf tanah sebanyak 337 bidang masih belum bersertifikat. Sedangkan yang sudah bersertifikat sebanyak 163 bidang tanah tahun 2018,&quot; kata Imam.<br />\r\n<br />\r\nSementara, dari data Kementrian Agama, jumlah tanah wakaf mencapai 161.579 hektar. Luas aset wakaf yang tersebar 366.595 lokasi itu sebagai jumlah harta wakaf terbesar di dunia. Imam mengatakan mayoritas aset wakaf itu berwujud fasilitas sosial. &quot;Kondisi ini merupakan tantangan bagi umat Islam Indonesia untuk mengubah aset wakaf dari tidak produktif menjadi produktif.&quot; (Sumber : tempo.co)</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
171	Menteri Bappenas Minta Pejabat KNKS Langsung Kerja "Full" Usai Dilantik		<p><strong>JAKARTA, KOMPAS.com</strong> - Menteri Perencanaan Pembangunan Nasional/Badan Perencanaan Pembangunan Nasional (PPN/Bappenas) Bambang Brodjonegoro meminta para pejabat Komite Nasional Keuangan Syariah ( KNKS) yang baru dilantik segera bekerja.<br>\r\n<br>\r\n"Hari pertama saya harapkan Bapak-bapak langsung bekerja full," kata Bambang di Bappenas, Jakarta, Rabu (3/1/2019).<br>\r\n<br>\r\nPara pejabat yang dilantik terdiri dari satu direktur eksekutif dan lima orang direktur.<br>\r\n<br>\r\nKendati demikian, Bambang mengakui proses pelantikan pejabat KNKS ini molor dari waktu yang telah ditentukan karena ada beberapa sebab. Meski demikian, keterlambatan ini tak menjadi alasan untuk tidak berbuat memperbaiki ekonomi Indonesia di sektor keuangan syariah dan industri halal.<br>\r\n<br>\r\n"KNKS lebih bersifat fasilitator yang mendorong perpecepatan pengembangan sektor keuangan syariah dan industri halal. Itu bisa dilakukan kalau tugas dijalankan dengan baik dengan semua stakeholder relevan," tambahnya.<br>\r\n<br>\r\nPemerintah telah membentuk KNKS melalui Peraturan Presiden Nomor 91 Tahun 2016 tentang Komite Nasional Keuangan Syariah. Para pejabat terpilih telah melalui proses seleksi yang terbuka selama Oktober-Desember 2018 lalu.<br>\r\n<br>\r\nAdapun pejabat yang dilantik di antaranya Ventje Rahardjo Soedigno sebagai Direktur Eksekutif, Taufiq Hidayat sebagai Direktur Bidang Hukum dan Standar Pengelolaan Keuangan Syariah, serta Ronald Rulindo sebagai Direktur Bidang lnovasi Produk, Pendalaman Pasar, dan Pengembangan Infrastruktur Sistem Keuangan Syariah. Kemudian, Ahmad Juwaini sebagai Direktur Bidang Keuangan Inklusif, Dana Sosial Keagamaan, dan Keuangan Mikro Syariah, Sutan Emir Hidayat sebagai Direktur Bidang Pendidikan dan Riset Keuangan Syariah, dan Afdhal Aliasar sebagai Direktur Bidang Promosi dan Hubungan Eksternal. (Sumber : kompas.com)</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	Bappenas Minister Urges KNKS Officials to Work "Full Time" After Inauguration		<p style="border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; scrollbar-color: var(--main-surface-tertiary) transparent; margin-right: 0px; margin-bottom: 0.5rem; margin-left: 0px; color: rgb(13, 13, 13); font-family: ui-sans-serif, -apple-system, system-ui, &quot;Segoe UI&quot;, Helvetica, &quot;Apple Color Emoji&quot;, Arial, sans-serif, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;"><span style="border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; scrollbar-color: var(--main-surface-tertiary) transparent; font-weight: 600; color: var(--tw-prose-bold);">JAKARTA, KOMPAS.com</span>&nbsp;– The Minister of National Development Planning/Head of the National Development Planning Agency (PPN/Bappenas), Bambang Brodjonegoro, urged the newly inaugurated officials of the National Committee for Islamic Finance (KNKS) to start working immediately.</p><p style="border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; scrollbar-color: var(--main-surface-tertiary) transparent; margin: 0.5rem 0px; color: rgb(13, 13, 13); font-family: ui-sans-serif, -apple-system, system-ui, &quot;Segoe UI&quot;, Helvetica, &quot;Apple Color Emoji&quot;, Arial, sans-serif, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">"On the first day, I hope all of you will immediately begin working at full capacity," Bambang stated at Bappenas, Jakarta, on Wednesday (January 3, 2019).</p><p style="border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; scrollbar-color: var(--main-surface-tertiary) transparent; margin: 0.5rem 0px; color: rgb(13, 13, 13); font-family: ui-sans-serif, -apple-system, system-ui, &quot;Segoe UI&quot;, Helvetica, &quot;Apple Color Emoji&quot;, Arial, sans-serif, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">The inaugurated officials consist of one executive director and five directors.</p><p style="border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; scrollbar-color: var(--main-surface-tertiary) transparent; margin: 0.5rem 0px; color: rgb(13, 13, 13); font-family: ui-sans-serif, -apple-system, system-ui, &quot;Segoe UI&quot;, Helvetica, &quot;Apple Color Emoji&quot;, Arial, sans-serif, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">However, Bambang acknowledged that the inauguration process of the KNKS officials was delayed from the initial schedule due to several reasons. Despite this, the delay should not be an excuse to neglect efforts to improve Indonesia's economy in the Islamic finance sector and the halal industry.</p><p style="border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; scrollbar-color: var(--main-surface-tertiary) transparent; margin: 0.5rem 0px; color: rgb(13, 13, 13); font-family: ui-sans-serif, -apple-system, system-ui, &quot;Segoe UI&quot;, Helvetica, &quot;Apple Color Emoji&quot;, Arial, sans-serif, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">"KNKS acts more as a facilitator to accelerate the development of the Islamic finance sector and the halal industry. This can only be achieved if the tasks are carried out effectively in collaboration with all relevant stakeholders," he added.</p><p style="border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; scrollbar-color: var(--main-surface-tertiary) transparent; margin: 0.5rem 0px; color: rgb(13, 13, 13); font-family: ui-sans-serif, -apple-system, system-ui, &quot;Segoe UI&quot;, Helvetica, &quot;Apple Color Emoji&quot;, Arial, sans-serif, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">The government established the KNKS through Presidential Regulation No. 91 of 2016 concerning the National Committee for Islamic Finance. The appointed officials were selected through an open selection process conducted from October to December 2018.</p><p style="border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; scrollbar-color: var(--main-surface-tertiary) transparent; margin: 0.5rem 0px; color: rgb(13, 13, 13); font-family: ui-sans-serif, -apple-system, system-ui, &quot;Segoe UI&quot;, Helvetica, &quot;Apple Color Emoji&quot;, Arial, sans-serif, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">The inaugurated officials include Ventje Rahardjo Soedigno as Executive Director, Taufiq Hidayat as Director of Legal Affairs and Islamic Financial Management Standards, and Ronald Rulindo as Director of Product Innovation, Market Deepening, and Infrastructure Development for the Islamic Financial System. Furthermore, Ahmad Juwaini was appointed as Director of Inclusive Finance, Religious Social Funds, and Islamic Microfinance; Sutan Emir Hidayat as Director of Islamic Finance Education and Research; and Afdhal Aliasar as Director of Promotion and External Relations.&nbsp;<em style="border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; scrollbar-color: var(--main-surface-tertiary) transparent;">(Source: kompas.com)</em></p>	4	kdeks		NULL	0	0	null
168	KNKS Sosialisasikan Keuangan Syariah Secara Massif	\N	<p><strong>Jakarta, MINA</strong> &ndash; Menteri Agama (Menag) Lukman Hakim Saifuddin meninta Manajemen Eksekutif Komite Nasional Keuangan Syariah (KNKS) mensosialisasikan keuangan syariah secara massif.<br />\r\n<br />\r\nHal itu disampaikan Menag saat menerima kunjungan Direktur Eksekutif KNKS, Ventje Rahardjo Soedigno di Kantor Kemenag Jakarta Pusat, Jumat (8/3).<br />\r\n<br />\r\nPertemuan Manajemen Eksekutif KNKS bersama Menag membahas tugas dan misi yang diemban pasca dilantiknya Ventje Rahardjo pada 3 Januari 2019 lalu.<br />\r\n<br />\r\nLukman mengatakan Presiden dan Wakil Presiden sangat konsen dengan KNKS, yaitu bagaimana agar potensi ekonomi syariah yang begitu besar ini bisa mewujud.<br />\r\n<br />\r\n&ldquo;Apalagi Indonesia adalah negara dengan umat Muslim terbesar di dunia. Mungkin perlu sosialisasi secara masif dari manajemen Eksekutif KNKS terkait apa itu keuangan dan ekonomi syariah,&rdquo; harap Menag.<br />\r\n<br />\r\n&ldquo;Informasi ini tidak hanya buat umat Muslim saja namun juga bagi saudara kita yang lain. Mereka juga perlu sosialisasi dan ini perlu digencarkan,&rdquo; ujarnya.<br />\r\n<br />\r\nMenag juga berharap manajemen Eksekutif KNKS memiliki database peta penyaluran zakat.<br />\r\n<br />\r\n&ldquo;Saya tertarik dengan zakat. Kita punya Unit Pengelola Zakat (UPZ) yang begitu banyak selain Baznas. Ada baiknya KNKS punya peta penyaluran zakat. Ini kaitannya dengan skala prioritas agar tidak ada tumpang tindih, sehingga KNKS ada arahan kepada Baznas,&rdquo; kata Menag.<br />\r\n<br />\r\nMenurut Menag manajemen Zakat adalah dengan membangun kepercayaan dan transparansi.<br />\r\n<br />\r\nSementara itu Direktur Eksekutif KNKS, Ventje Rahardjo Soedigno menyatakan pihaknya langsung mengemban tugas mengawal arsitektur keuangan syariah, ekonomi syariah, zakat dan industri halal.<br />\r\n<br />\r\nSebelumnya pemerintah melantik lima direktur Komite Nasional Keuangan Syariah atau KNKS sebagai Manajemen Eksekutif KNKS pada Kamis (3/1/2018). Manajemen Eksekutif KNKS akan melaksanakan tugas-tugas harian yang sebelumnya dilakukan oleh Dewan Pengarah KNKS.<br />\r\n<br />\r\nBerikut jajaran Direksi Manajemen eksekutif KNKS: 1.Ventje Rahardjo Soedigno sebagai Direktur Eksekutif, 2.Taufiq Hidayat sebagai Direktur Bidang Hukum dan Standar Pengelolaan Keuangan Syariah, 3. Ronald Rulindo sebagai Direktur Bidang Inovasi Produk, Pendalaman Pasar, dan Pengembangan Infrastruktur Sistem Keuangan Syariah, 4. Ahmad Juwaini sebagai Direktur Bidang Keuangan Inklusif, Dana Sosial Keagamaan, dan Keuangan Mikro Syariah serta 5. Afdhal Aliasar sebagai Direktur Bidang Promosi dan hubungan Eksternal. Pelantikan Manajemen Eksekutif KNKS diharapkan dapat menjadikan Indonesia sebagai global hub dari global Islamic finance. (R/R10/P1) (sumber : minanews.net)</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
172	Presiden Luncurkan Masterplan Ekonomi Syariah Pertama di Indonesia	<p>MEKSI 2019-2024 merekomendasikan empat langkah dan strategi utama</p>	<p style="margin-left:9.9pt"><strong>KNKS, Jakarta&nbsp; - </strong>&nbsp;Presiden Jokowi beserta Dewan Pengarah Komite Nasional Keuangan Syariah (KNKS) meluncurkan Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2024 di Gedung Bappenas, Selasa (14/5/2019).</p>\r\n\r\n<p style="margin-left:9.9pt">Kepala Bappenas, Bambang Brodjonegoro, mengatakan, MEKSI 2019-2024 adalah peta jalan pengembangan ekonomi syariah di Indonesia, yang mana rancangan kebijakan dan strategi yang dikembangkan benar-benar mendorong perkuatan ekonomi syariah di Indonesia.</p>\r\n\r\n<p style="margin-left:9.9pt">&ldquo;Untuk itu, saya harap MEKSI 2019-2024 ini dapat dijadikan rujukan bersama dalam mengembangkan ekonomi syariah Indonesia, yang kemudian dapat diturunkan menjadi program kerja implementatif pemerintah,&rdquo; ucap Bambang.</p>\r\n\r\n<p style="margin-left:9.9pt">Dalam diskusi pengembangannya, Masterplan ini telah dikoordinasikan dengan regulator baik di level K/L maupun independen, dan juga menerima masukan dari praktisi sektor industri, akademisi, asosiasi, dan berbagai pihak lainnya. Selain itu, telah dilakukan kajian komprehensif ke berbagai daerah untuk memperoleh gambaran nyata akan kondisi ekonomi syariah yang ada saat ini di dalam negeri.</p>\r\n\r\n<p style="margin-left:9.9pt">Dalam rangkaian acara Peluncuran MEKSI 2019-2024, KNKS juga melakukan penandatanganan nota kesepahaman atau MoU dengan berbagai Lembaga dan pelaku industri. Nota kesepahaman tersebut adalah: (1) MoU &ldquo;Pengembangan Sistem Pembayaran Digital dan Uang Elektronik yang Dikelola Secara Syariah&rdquo; dengan Mandiri Syariah, BRI Syariah, BNI Syariah, BTN Syariah, dan PT Finarya (LinkAja), (2) &ldquo;Pengembangan Marketplace Halal dan Produk Keuangan Syariah melalui <em>Platform Digital</em> <em>Market Place</em>&rdquo; dengan Bukalapak dan Tokopedia, (3) &ldquo;MoU Pengembangan Jaminan Sosial Ketenagakerjaan Berbasis Syariah&rdquo; dengan BPJS Ketenagakerjaan, (4) &ldquo;MoU Pengembangan Sektor Keuangan Syariah melalui Pendayagunaan dan Pemasyarakatan Sektor Keuangan Syariah Indonesia&rdquo; dengan Perkumpulan Direktur Keuangan Indonesia/CFO Club, (5) &ldquo;Pengembangan Pendidikan, Riset, dan Pengabdian Masyarakat Terkait Ekonomi Syariah&rdquo; dengan UI, IPB, UNAIR, UIN Jakarta, UIN Ar-Raniry, STEI Tazkia, dan LIPI, dan (6) &ldquo;MoU Pengembangan Layanan Keuangan dan Ekonomi Syariah di Desa, Daerah Tertinggal, dan Kawasan Transmigrasi&rdquo; dengan Kementerian Desa, Pembangunan Daerah Tertinggal, dan Transmigrasi Republik Indonesia</p>\r\n\r\n<p style="margin-left:9.9pt">Sebelum diluncurkannya MEKSI 2019-2024, sekaligus sebagai acara pra-peluncuran, KNKS mengadakan rangkaian acara Indonesia Islamic Economy Festival (IIEFest) 2019 tanggal 26 April lalu di Bandung.</p>\r\n\r\n<p style="margin-left:9.9pt">IIEFest 2019 bertujuan untuk memperkenalkan industri halal kepada masyarakat sekaligus meningkatkan kesadaran untuk menjalankan gaya hidup halal dan potensi manfaatnya terhadap perekonomian Indonesia.</p>\r\n\r\n<p style="margin-left:9.9pt">Kegiatan ini terdiri dari bincang-bincang industri digital halal, pariwisata halal, <em>Islamic edutainment</em>, <em>moslem modest fashion</em>, dan pameran industri halal yang diramaikan pelaku industri, regulator, <em>start-up</em> milenial, UMKM, dan masyarakat umum.</p>\r\n\r\n<p style="margin-left:9.9pt">Penulis : Ishmah Qurratu&#39;ain<br />\r\nRedaktur : Taufik Hidayat</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	President of Indonesia Launches the Country’s First  Islamic Economy Master Plan	<p>The Masterplan recommends four main strategies</p>	<p><strong>KNKS, Jakarta -&nbsp;</strong>The President of the Republic of Indonesia, Joko Widodo, as the Head of the National Islamic Finance Committee (KNKS) launched the Indonesian Islamic Economics Master Plan (MEKSI) 2019-2024 at Bappenas Building (05/14/2019). MEKSI 2019-2024 is the country&rsquo;s first road map for Islamic economy that aims to strengthen the national economy.</p>\r\n\r\n<p>The development of MEKSI 2019-2024 involves all parties of Islamic economy, such as regulators, industry players, academics, and associations. Moreover, a study has been conducted from several regions in order to get the real depiction of Islamic economy condition in this country. It was agreed to become a joint reference of Indonesia&#39;s Islamic economy development, which was implemented to government&rsquo;s work program.</p>\r\n\r\n<p>Alongside the launch of MEKSI 2019-2024, KNKS signed memorandum of understanding (MoU) with various institutions and industry players. There are: (1) MoU on the &quot;Development of Digital Payment Systems and Sharia Electronic Money&quot; with Mandiri Syariah, BRI Syariah, BNI Syariah, BTN Syariah, and PT Finarya (LinkAja), (2) MoU on the &quot;Development of Halal Marketplace and Sharia Financial Products through the Digital Market Place Platform&quot; with Bukalapak and Tokopedia, (3) MoU on the &ldquo;Development of Sharia Scheme in Employee Provident Fund Program&quot; with BPJS Ketenagakerjaan, (4) MoU on the &quot;Sharia Financial Sector Development through the Utilization and Correctional Services of the Indonesian Islamic Financial Sector&quot; Chief Financial Officer Club of Indonesia, (5) MoU on the &quot;Education Development, Research and Community Service Related to Islamic Economy&quot; with Universitas Indonesia, Institute Pertanian Bogor, Universitas Airlangga, Universitas Islam Negeri Jakarta, Universitas Islam Negeri Ar-Raniry Aceh, STEI Tazkia, and Lembaga Ilmu Pengetahuan Indonesia, and (6) MoU on the &ldquo;Financial Services Development and Sharia Economy in Villages, Disadvantaged Areas, and Transmigration Areas&quot; with the Ministry of Village, Development of Disadvantaged Regions, and Transmigration of the Republic of Indonesia.</p>\r\n\r\n<p>Before launching MEKSI 2019-2024, KNKS held the first Indonesia Islamic Economy Festival (IIEFest) 2019 as pre-launching event on April 26 in Bandung. This event comprised talk show of the halal digital industry, halal tourism, Islamic edutainment, and Muslim modest fashion. In addition, there were halal industry exhibitions that attended by regulators, industry players, millennial start-ups, SMEs, and the general public. IIEFest 2019 aimed to introduce and promote the halal industry and lifestyle to the society by showcasing the benefit of halal products.</p>\r\n\r\n<p>Reporter : Ishmah Qurratu&#39;ain<br />\r\nEditor : Taufik Hidayat</p>	4	kdeks	\N	NULL	0	0	null
174	Presiden Luncurkan Masterplan Ekonomi Syariah Indonesia	<p>Ekonomi syariah bisa menjadi penggerak ekonomi nasional dalam beberapa tahun ke depan</p>	<p><strong>REPUBLIKA.CO.ID,&nbsp;JAKARTA</strong> -- Presiden Joko Widodo (Jokowi) meluncurkan Masterplan Ekonomi Syariah Indonesia 2019-2024. Masterplan yang disusun bersama Komite Nasional Keuangan Syariah (KNKS) ini menjadi acuan bagi pengembangan ekonomi syariah di dalam negeri, termasuk industri dan sistem keuangan syariah. Bahkan, Presiden memasang target untuk menjadikan Indonesia salah satu kekuatan ekonomi syariah terbesar dunia.</p>\r\n\r\n<p>Presiden membagi fokus pengembangan ekonomi syariah Tanah Air ke dalam lima sektor, yakni industri makanan dan minuman, tata busana, pariwisata, media dan rekreasi, serta farmasi dan kosmetika. Sebagai langkah pendukung, pemerintah berkomitmen untuk menguatkan keuangan syariah, UMKM berbasis produk syariah, hingga ekonomi digital yang melayani produk syariah.&nbsp;</p>\r\n\r\n<p>&quot;Saya sangat senang sekali dengar saat ini sudah ada&nbsp;<em>marketplace</em>&nbsp;yang tawarkan produk halal. Saya kira ini menjadi sebuah step, agar kita tidak hanya menjadi negara konsumen terbesar, namun produsen terbesar dari produk halal yang akan masuk ke negara lain,&quot; jelas Presiden saat peluncuran Masterplan Ekonomi Syariah Indonesia di Bappenas, Selasa (14/5).</p>\r\n\r\n<p>Jokowi memandang, ekonomi syariah bisa menjadi penggerak ekonomi nasional dalam beberapa tahun ke depan. Apalagi, Presiden menyebut bahwa dalam 25 tahun ke depan Indonesia digadang-gadang menjadi negara dengan kekuatan ekonomi terkuat keempat dunia. Namun Presiden menyadari bahwa mewujudkan negara berkekuatan ekonomi besar bukan perkara mudah. Ada tiga hal yang menurut Jokowi harus segera diselesaikan, yakni pembangunan infrastruktur penunjang ekonomi syariah, penyiapan sumber daya manusia (SDM) di bidang ekonomi syariah, dan reformasi birokrasi.</p>\r\n\r\n<p>&quot;Satu kunci utama untuk mencapai cita-cita itu, terkandung dalam jati diri Indonesia yang memiliki penduduk Muslim terbesar dunia, kuncinya itu ekonomi syariah. Sebagai motor penggerak ekonomi nasional dan sumber kesejahteraan umat,&quot; kata Presiden.</p>\r\n\r\n<p>Berdasarkan catatan <em>Global Islamic Economics</em>, nilai perdagangan masyarakat dunia di sektor syariah mencapai 3 triliun dolar AS atau setara Rp 45 ribu triliun pada 2023 mendatang. Artinya, ujar Presiden, Indonesia memiliki potensi besar untuk menjadi salah satu pemimpin pasar di industri syariah global.&nbsp;</p>\r\n\r\n<p>Reporter: Sapto Andika Candra<br />\r\nRedaktur: Friska Yolanda</p>\r\n\r\n<p><em>Sumber :&nbsp;https://republika.co.id/berita/ekonomi/syariah-ekonomi/prhpgu370/presiden-luncurkan-masterplan-ekonomi-syariah-indonesia</em></p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
173	Presiden Joko Widodo luncurkan Masterplan Ekonomi Syariah Indonesia	<p>Ekonomi syariah sebagai motor pertumbuhan ekonomi nasional dan&nbsp;sumber kesejahteraan umat</p>	<p><strong>MITRAPOL.com,</strong>&nbsp;Jakarta &ndash; Masterplan Ekonomi Syariah Indonesia (MEKSI) 2019-2024 yang akan memberikan pedoman bagi negara Indonesia selama lima tahun ke depan untuk dapat menjadi pelaku utama ekonomi syariah dunia diluncurkan Presiden Joko Widodo di Gedung Saleh Afiff, Kementerian Perencanaan Pembangunan Nasional, Jakarta. Selasa, (14 Mei 2019).</p>\r\n\r\n<p>Dalam sambutannya, Presiden Jokowi mengatakan bahwa Indonesia memiliki peluang besar untuk bertransformasi menjadi salah satu negara dengan perekonomian terkuat di dunia pada 2045 mendatang. Sejumlah studi yang telah dilakukan baik di dalam maupun luar negeri menyatakan hal itu.</p>\r\n\r\n<p>&ldquo;Tapi untuk menuju ke sana juga bukan barang yang mudah. Banyak tantangan, banyak persoalan besar yang harus kita selesaikan,&rdquo; kata Presiden.</p>\r\n\r\n<p>Kepala Negara melanjutkan, salah satu kunci utama untuk mewujudkan hal itu telah dimiliki Indonesia sebagai negara dengan penduduk muslim terbesar di dunia, yakni ekonomi syariah. Maka, pertumbuhan ekonomi nasional dan penyejahteraan umat harus dilakukan dengan salah satunya memajukan perekonomian syariah di dalam negeri.</p>\r\n\r\n<p>&ldquo;Kunci itu adalah ekonomi syariah. Ekonomi syariah sebagai motor pertumbuhan ekonomi nasional, ekonomi syariah sebagai sumber kesejahteraan umat,&rdquo; ujarnya.</p>\r\n\r\n<p>Di tingkat dunia, ekonomi syariah memiliki sumbangan ekonomi global yang sangat besar. Tahun 2023 mendatang, sumbangsih tersebut diperkirakan akan bernilai setidaknya USD3 triliun. Hal itu merupakan potensi yang harus dapat dimanfaatkan oleh negara kita.</p>\r\n\r\n<p>&ldquo;Sayangnya, ini menurut Global Islamic Economy Indicator, di tahun 2018 Indonesia masih menempati urutan yang ke-10 dalam peringkat negara-negara yang menyelenggarakan ekonomi syariah,&rdquo; tuturnya.</p>\r\n\r\n<p>&ldquo;Kita masih di belakang Malaysia, Uni Emirat Arab, Bahrain, Arab Saudi, Oman, Jordania, Qatar, Pakistan, Kuwait. Inilah pekerjaan besar kita bersama-sama,&rdquo; kata Presiden.</p>\r\n\r\n<p>Oleh karenanya, melalui Komite Nasional Keuangan Syariah yang dibentuk oleh Presiden Joko Widodo pada 2016 lalu, pemerintah berupaya membangkitkan potensi ekonomi syariah nasional dan menjadikan Indonesia sebagai pusat ekonomi syariah di tingkat global.</p>\r\n\r\n<p>&ldquo;Saatnya sudah tiba bagi kita untuk membangkitkan potensi ekonomi syariah di Indonesia dan menjadikan Indonesia sebagai pusat ekonomi syariah terkemuka di dunia. Karena kita memang negara dengan penduduk muslim terbesar di dunia,&rdquo; kata Presiden.</p>\r\n\r\n<p>MEKSI 2019-2024 merumuskan empat langkah dan strategi utama untuk mewujudkan hal tersebut. Pertama, menguatkan rantai nilai halal dengan fokus pada sektor yang dinilai potensial dan berdaya saing tinggi. Kedua, menguatkan sektor keuangan syariah di dalam negeri.</p>\r\n\r\n<p>Adapun yang ketiga ialah menguatkan sektor UMKM sebagai penggerak utama rantai nilai halal tersebut. Sementara yang keempat dengan menguatkan ekonomi digital yang utamanya melalui perdagangan elektronik sehingga mendorong pencapaian strategi keuangan syariah lainnya.</p>\r\n\r\n<p>&ldquo;Kita akan terus menguatkan rantai nilai halal dengan fokus pada sektor makanan dan minuman, fesyen, pariwisata, media, rekreasi, serta farmasi dan kosmetika. Sebagai pendukungnya kita akan kuatkan keuangan syariah, kita akan terus kuatkan UMKM kita, kita kuatkan ekonomi digital kita,&rdquo; ujar Presiden.</p>\r\n\r\n<p>Dengan MEKSI 2019-2024 yang telah dirumuskan tersebut, Presiden Joko Widodo berharap agar seluruh pihak memiliki semangat dan visi yang sama dalam mengimplementasikan kebijakan pengembangan ekonomi syariah Indonesia untuk mencapai tujuan yang telah dicita-citakan.</p>\r\n\r\n<p>&ldquo;Saya yakin insyaallah bahwa ketika kita semua berkomitmen menjalankan masterplan ekonomi syariah Indonesia ini maka Indonesia akan segera menjadi pusat ekonomi syariah di dunia,&rdquo; tandasnya.</p>\r\n\r\n<p>Hms/Yuliana</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Sumber :&nbsp;https://mitrapol.com/2019/05/15/presiden-joko-widodo-luncurkan-masterplan-ekonomi-syariah-indonesia/</em></p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
175	Diluncurkan Jokowi, Ini 4 Fokus Masterplan Ekonomi Syariah RI	<p>Dengan MEKSI 2019-2024 ini, saya harap pemerintah dan semua pihak memiliki semangat yang sama</p>	<p><strong>akarta, CNBC Indonesia</strong>&nbsp;-&nbsp;Masterplan Ekonomi Syariah Indonesia 2019-2024 merekomendasikan empat langkah dan strategi utama sebagai langkah terobosan dan percepatan pertumbuhan ekonomi syariah di dalam negeri.<br />\r\n<br />\r\nMenteri Bappenas sekaligus Sekretaris KNKS Bambang Brodjonegoro mengatakan langkah pertama adalah penguatan halal value chain dengan fokus pada sektor yang dinilai potensial dan berdaya saing tinggi.<br />\r\n<br />\r\nKedua, penguatan sektor keuangan syariah dengan rencana induk yang sudah dituangkan dalam Masterplan Arsitektur Keuangan Syariah Indonesia (MAKSI) sebelumnya dan disempurnakan ke dalam rencana induk.<br />\r\nLangkah Ketiga adalah penguatan sektor Usaha Mikro, Kecil dan Menengah (UMKM) sebagai penggerak utama halal value chain.&nbsp;<br />\r\n<br />\r\n&quot;Keempat penguatan di bidang ekonomi digital utamanya perdagangan (e-commerce, market place) dan keuangan (teknologi finansial) sehingga dapat mendorong dan mengakselerasi pencapaian strategi lainnya,&quot; jelas Bambang dalam konferensi pers sebelum peluncuran Masterplan Ekonomi Keuangan Syariah Indonesia 2019-2024, Selasa (14/5/2019).<br />\r\n<br />\r\nDia melanjutkan, untuk menjalankan keempat strategi tersebut, ada hal yang harus dilakukan, yaitu peningkatan kesadaran publik, peningkatan kuantitas dan kualitas sumber daya manusia, penguatan kapasitas riset dan pengembangan (R&amp;D), serta penguatan fatwa, regulasi dan tata kelola.</p>\r\n\r\n<p>&quot;Dengan MEKSI 2019-2024 ini, saya harap pemerintah dan semua pihak memiliki semangat yang sama dalam mengimplementasikan rekomendasi strategi kebijakan pengembangan ekonomi syariah di Indonesia untuk mencapai visi yang telah ditetapkan,&quot; ujar Bambang.&nbsp;<br />\r\n<br />\r\nKomite Nasional Keuangan Syariah (KNKS) akan meluncurkan Masterplan Ekonomi Syariah Indonesia pada Selasa hari ini (14/5/2019). Peluncuran akan dilakukan oleh Presiden Joko Widodo (Jokowi) yang juga menjabat sebagai Ketua KNKS.<br />\r\n<strong><strong>(dob/dob)</strong></strong></p>\r\n\r\n<p><em>Sumber :&nbsp;https://www.cnbcindonesia.com/syariah/20190514155317-29-72406/diluncurkan-jokowi-ini-4-fokus-masterplan-ekonomi-syariah-ri</em></p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	\N	\N	\N	4	kdeks	\N	NULL	0	0	null
135	KNKS Kunjungi Sumatera Barat, Dorong Pusat Pariwisata Halal	<p>Sumatera Barat memiliki potensi besar untuk pengembangan industri halal</p>	<p>Padang, KNKS&nbsp;&ndash; KNKS&nbsp;diwakili oleh Direktur Pengembangan Ekonomi Syariah dan Industri Halal, Afdhal Aliasar, beserta Analis Kebijakan Divisi Pengembangan Industri Halal ditemui langsung oleh Wakil Gubernur Sumatera Barat, Nasrul Abit, dan Walikota Padang Mahyeldi Ansharullah. Komite Nasional Keuangan Syariah (KNKS) melakukan kunjungan ke Provinsi Sumatera Barat pada Jumat 24 Mei 2019. Kunjungan ini dilakukan dalam rangka penyampaian inisiatif KNKS untuk menjadikan Sumatera Barat sebagai daerah pertama program pengembangan ekonomi syariah khususnya sektor pariwisata halal di Indonesia.</p>\r\n\r\n<p>Afdhal menjelaskan dengan telah disahkannya Peraturan Pemerintah tentang Jaminan Produk Halal (PP JPH) perlu ditanggapi secara cepat oleh pemerintahan di daerah-daerah. Sumatera Barat memiliki potensi besar untuk pengembangan industri halal namun masih perlu pengelolaan yang lebih kuat.</p>\r\n\r\n<p>Lebih jauh Afdhal mengungkapkan, berdasarkan Undang-Undang, Badan Penyelenggara Jaminan Produk Halal (BPJPH) merupakan pihak yang akan melakukan sertifikasi halal yang hingga saat ini belum memiliki jangkauan sampai ke daerah di luar Jakarta. Oleh karena itu, KNKS mendorong kerjasama yang kuat antara BPJPH dengan LPPOM MUI dan pemerintah setempat.</p>\r\n\r\n<p>&ldquo;Nantinya, LPPOM MUI sebagai Lembaga Pemeriksa Halal (LPH) yang terbesar saat ini perlu didukung oleh LPH-LPH lainnya. Diharapkan LPH-LPH lain di tingkat daerah bisa hadir dan dioptimalkan fungsinya, salah satunya melalui keterlibatan perguruan tinggi. Perguruan tinggi maupun organisasi masyarakat bisa mendirikan <em>Halal Center</em> untuk kemudian menjadi pendamping para UMKM dalam mendapatkan sertifikasi halal,&rsquo;&rsquo; ujar Afdhal. &nbsp;</p>\r\n\r\n<p>Dalam kesempatan tersebut, KNKS juga mendorong Sumatera Barat untuk memiliki pusat <em>showcase </em>produk-produk halal yang dikemas secara terstruktur dan berkualitas.</p>\r\n\r\n<p>&ldquo;Showcase produk-produk halal unggulan ini bisa berbentuk Mall Pariwisata Halal.&nbsp; Jadi, mall ini bisa menjadi destinasi utama para wisatawan yang datang ke Sumatera Barat nantinya&rdquo;, pungkas Afdhal.</p>\r\n\r\n<p>Penulis : Khairana Izzati<br />\r\nRedaktur Pelaksana : Achmad Iqbal</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	Visit West Sumatera, KNKS Encourages Halal Tourism Development	<p>West Sumatera has&nbsp;big potential for the development of Halal Industry</p>	<p>Represented by the Director of Islamic Economic Development and Halal Industry, Afdhal Aliasar, and the Principle Analyst of Islamic Economic Development and Halal Industry, Yopi Nursali, the National Islamic Finance Committee (KNKS) met the Governor of West Sumatera, Nasrul Abit discussed the West Sumatra halal tourism at the Governor&rsquo;s office on Friday, May 24<sup>th</sup>2019. The meeting was also attended by the Mayor of PadangCity, Mahyeldi Ansharullah. The visit was carried out in the context of delivering KNKS initiatives to make West Sumatera the first area of Islamic economic development program, especially halal tourism sector in Indonesia.</p>\r\n\r\n<p>Afdhal explained that by the legalization of the Government Regulation on Halal Product Assurance (PP JPH), the local government is expected to response it quickly. West Sumatra has great potential for the development of halal industry although many improvement on their tourism management is still needed.</p>\r\n\r\n<p>Afdhal further revealed that according to the Law, Badan Penyelenggara Jaminan Produk Halal (BPJPH) is a government institution that responsible to carrying out the halal certification process in Indonesia. However, the fact that BPJPH has not yet operationally cover all areas across Indonesia, has triggered KNKS to encourage strong collaborations between BPJPH and LPPOM MUI and the local government.&nbsp;</p>\r\n\r\n<p>&quot;Later, LPPOM MUI as the largest Halal Inspection Agency (LPH) needs to be supported by other LPHs. It&rsquo;s becoming our expectation to the presence of other LPHs on all areas across Indonesia can be realized and functioned optimally as soon as possible. One of which is through the involvement of universities. Universities and community organizations can establish a Halal Center to become a companion for MSMEs to get halal certification&rdquo;, said Afdhal.</p>\r\n\r\n<p>Author : Khairana Izzati<br />\r\nChief Editor : Achmad Iqbal</p>	3	kneks	\N	NULL	0	0	null
140	JICA Berkomitmen Bantu Pengembangan Ekonomi Syariah	<p>KNKS&nbsp;dan JICA&nbsp;berdiskusi mengenai ekonomi syariah</p>	<p><span style="font-size: 13.44px;">KNKS&nbsp;dan JICA&nbsp;berdiskusi mengenai ekonomi syariah</span></p>	https://webdev.rifhandi.com/uploads/news/d.jpg	2019-05-09 08:05:00	1	JICA Berkomitmen Bantu Pengembangan Ekonomi Syariah	<span style="font-size: 13.44px;">KNKS&nbsp;dan JICA&nbsp;berdiskusi mengenai ekonomi syariah</span>	<span style="font-size: 13.44px;">KNKS&nbsp;dan JICA&nbsp;berdiskusi mengenai ekonomi syariah</span>	3	kneks	[{"value":"kneks"},{"value":"kdeks"},{"value":"syariah"},{"value":"indonesia"}]	2	0	0	null
27	KNKS Luncurkan Masterplan Keuangan Syariah pada 14 Mei 2019	Menteri Perencanaan dan Pembangunan Nasional dan Kepala Bappenas, Bambang Permadi Soemantri Brodjonegoro menyampaikan, Komite Nasional Keuangan Syariah (KNKS) akan meluncurkan Masterplan Ekonomi Syariah Indonesia 2019-2024 pada 14 Mei 2019.	<div>Sharianews, Bandung ~ Menteri Perencanaan dan Pembangunan Nasional dan Kepala Bappenas, Bambang Permadi Soemantri Brodjonegoro menyampaikan, Komite Nasional Keuangan Syariah (KNKS) akan meluncurkan Masterplan Ekonomi Syariah Indonesia 2019-2024 pada 14 Mei 2019.</div><div><br></div><div>Kerangka Masterplan Ekonomi Syariah Indonesia 2019-2024 merekomendasikan empat strategi utama untuk mengembangkan ekonomi syariah di Tanah Air.</div><div><br></div><div>"Pertama, penguatan rantai nilai halal atau halal value chain (HVC) dengan fokus pada sektor atau klaster yang dinilai potensial dan berdaya saing tinggi," jelasnya menegaskan, di Bandung, Jumat (26/4).</div><div><br></div><div>Kedua, penguatan sektor keuangan syariah, yang rencana induknya sudah dituangkan dalam Masterplan Arsitektur Keuangan Syariah Indonesia dan disempurnakan daIam rencana induk ini.</div><div><br></div><div>Ketiga penguatan Usaha Mikro, kecil dan Menengah (UMKM) sebagai penggerak utama rantai nilai halal.</div><div><br></div><div>Terakhir, yakni pemanfaatan dan penguatan platform ekonomi digital dalam hal perdagangan (e-commerce, market place) dan keuangan (teknologi finansial) yang diharapkan bisa mendorong dan mengakselerasi pencapaian strategi lainnya.</div><div><br></div><div>Pembuatan Masterplan Ekonomi Syariah Indonesia dilatarbelakangi karena melihat dalam tiga dasawarsa terakhir, ekonomi dan keuangan syariah mengalami perkembangan pesat baik secara global maupun nasional.</div><div><br></div><div>Menurut data The State of the Global Islamic Economy Report 2018/2019, pada tahun 2017 besaran pengeluaran makanan dan gaya hidup halal dunia mencapai 2,1 triliun dollar AS dan diperkirakan akan terus tumbuh mencapai 3 triliun dollar AS pada tahun 2023.</div><div><br></div><div>Faktor utama pertumbuhan tersebut adalah peningkatan jumlah penduduk Muslim di dunia yang mencapai 1,84 miliar orang di tahun 2017, dan diperkirakan akan terus meningkat hingga 27,5 persen dari total populasi dunia di tahun 2023. Peningkatan tersebut akan berdampak pada permintaan produk dan jasa halal yang terdiri dari makanan halal, pariwisata halal, fesyen muslim, rekreasi dan travel halal, serta farmasi dan kosmetik halal.</div><div><br></div><div>Indonesia sebagai negara dengan penduduk Muslim terbesar di dunia belum bisa berperan secara optimal dalam memenuhi permintaan tersebut.</div><div><br></div><div>Karenanya, dalam rapat Pleno KNKS pada 5 Februari 2018 lalu, Presiden Joko Widodo memberi arahan untuk menyusun Masterplan Ekonomi Syariah Indonesia 2019-2024 guna menjawab tantangan tersebut, sekaligus menjadi peta jalan dalam mengembangkan ekonomi syariah di Indonesia, sehingga dapat mendukung pengembangan ekonomi nasional.</div><div><br></div><div>Bambang yang juga menjabat sebagai Sekretaris Dewan Pengarah KNKS menjelaskan, sebagai negara dengan populasi Muslim terbanyak, Indonesia menjadi konsumen terbesar produk halal pada pasar internasional. Namun, sumbangsih dalam memproduksi produk halal dunia masih belum optimal.</div><div><br></div><div>"Dalam rangka mendukung pengembangan ekonomi syariah melalui industri halal, diharapkan Indonesia mampu memaksimalkan kearifan lokal dalam menangkap peluang global. Target ekonomi syariah pada tataran domestik mencakup peningkatan skala usaha, kemandirian dan kesejahteraan. Sementara pada tingkat internasional, berupa peningkatan pada peringkat Global Islamic Economy Indicator (GIEI)," ungkap Bambang.</div><div><br></div><div>Sebelum peluncuran Masterplan Ekonomi Syariah, KNKS mengadakan pre-launchlng event yang bernama lndonesia Islamic Economy Festival (IIEFest). Acara ini bertujuan untuk memperkenalkan industri halal di Indonesia kepada masyarakat, sekaligus sebagai bentuk upaya dalam rangka meningkatkan kesadaran masyarakat untuk menjalankan gaya hidup halal. (*)</div>	https://webdev.rifhandi.com/uploads/news/1557450484-foto-10.png	2019-05-09 08:05:42	\N	KNKS Launches the Sharia Finance Masterplan on May 14, 2019	Minister of National Development Planning and Head of Bappenas, Bambang Permadi Soemantri Brodjonegoro, announced that the National Sharia Finance Committee (KNKS) will launch the Indonesian Sharia Economic Masterplan 2019-2024 on May 14, 2019.	<div>Sharianews, Bandung ~ Minister of National Development Planning and Head of Bappenas, Bambang Permadi Soemantri Brodjonegoro, announced that the National Sharia Finance Committee (KNKS) will launch the Indonesian Sharia Economic Masterplan 2019-2024 on May 14, 2019.</div><div><br></div><div>The framework of the 2019-2024 Indonesian Sharia Economic Masterplan recommends four key strategies to develop the sharia economy in the country.</div><div><br></div><div>"First, strengthening the halal value chain (HVC) by focusing on sectors or clusters deemed to have high potential and competitiveness," he stated in Bandung on Friday (April 26).</div><div><br></div><div>Second, enhancing the sharia finance sector, the blueprint of which has been outlined in the Indonesian Sharia Finance Architecture Masterplan and further refined in this masterplan.</div><div><br></div><div>Third, empowering Micro, Small, and Medium Enterprises (MSMEs) as the main drivers of the halal value chain.</div><div><br></div><div>Lastly, leveraging and strengthening digital economic platforms in commerce (e-commerce, marketplaces) and finance (financial technology) to drive and accelerate the achievement of the other strategies.</div><div><br></div><div>The creation of the Indonesian Sharia Economic Masterplan was prompted by the rapid development of the sharia economy and finance globally and nationally over the past three decades.</div><div><br></div><div>According to The State of the Global Islamic Economy Report 2018/2019, global halal food and lifestyle expenditures reached $2.1 trillion in 2017 and are projected to grow to $3 trillion by 2023.</div><div><br></div><div>The primary factor behind this growth is the increasing Muslim population, which reached 1.84 billion in 2017 and is projected to constitute 27.5% of the global population by 2023. This growth drives demand for halal products and services, including halal food, halal tourism, Muslim fashion, halal recreation and travel, as well as halal pharmaceuticals and cosmetics.</div><div><br></div><div>As the country with the largest Muslim population, Indonesia has yet to fully optimize its role in meeting this demand.</div><div><br></div><div>Thus, during a KNKS Plenary Meeting on February 5, 2018, President Joko Widodo directed the formulation of the Indonesian Sharia Economic Masterplan 2019-2024 to address these challenges and serve as a roadmap for developing the sharia economy in Indonesia to support national economic development.</div><div><br></div><div>Bambang, who also serves as the Secretary of the KNKS Steering Council, explained that Indonesia, as the country with the largest Muslim population, is the largest consumer of halal products in the global market. However, its contribution to producing halal products globally remains suboptimal.</div><div><br></div><div>"In supporting the development of the sharia economy through the halal industry, Indonesia is expected to maximize local wisdom in seizing global opportunities. The domestic target of the sharia economy includes scaling up businesses, promoting self-reliance, and improving welfare. On the international level, the goal is to improve Indonesia's ranking on the Global Islamic Economy Indicator (GIEI)," Bambang explained.</div><div><br></div><div>Before the launch of the Sharia Economic Masterplan, KNKS held a pre-launch event called the Indonesia Islamic Economy Festival (IIEFest). This event aimed to introduce Indonesia’s halal industry to the public while raising awareness about adopting a halal lifestyle. (*)</div>	1	kneks	indonesia,kneks	{"2","1"}	0	0	null
157	KNKS Jalin Kerjasama dengan Kemendes PDTT untuk Pengembangan Layanan Keuangan Syariah Desa	<p>Memberikan layanan jasa keuangan Syariah bagi masyarakat desa</p>	<p><strong>KNKS, Jakarta -</strong> Komite Nasional Keuangan Syariah (KNKS) pada Kamis sore tanggal 14 Mei 2019 telah menandatangani nota kesepahaman atau MoU dengan Kementerian Desa, Pembangunan Daerah Tertinggal, dan Transmigrasi Republik Indonesia (Kemendes PDTT) dalam rangka pengembangan layanan keuangan dan ekonomi Syariah di desa, daerah tertinggal, dan kawasan transmigrasi. Kesepakatan kerjasama ditandatangani langsung oleh Sekretaris Jenderal Kemendes PDTT, Anwar Sanusi, dan Direktur Eksekutif KNKS, Ventje Rahardjo.</p>\n\n<p>Penandatanganan nota kesepahaman ini menjadi salah satu agenda dalam acara peluncuran Masterplan Ekonomi Syariah Indonesia 2019-2024 yang diadakan di Kantor Badan Perencanaan Pembangunan Nasional (Bappenas) yang diresmikan langsung oleh Presiden Republik Indonesia, Joko Widodo.</p>\n\n<p>Kepala Divisi Keuangan Inklusif Syariah KNKS, Jamil Abbas, menjelaskan bahwa kerjasama dengan Kemendes PDTT dilakukan sebagai usaha bersama untuk membantu Badan Usaha Milik Desa (BUMDes) agar dapat memberikan layanan jasa keuangan Syariah yang ideal dan bermanfaat bagi masyarakat desa. Lebih lanjut disebutkan bahwa saat ini tercatat ada lebih dari 40.000 BUMDes di seluruh Indonesia. Hal ini dianggap sebagai aset bangsa yang berpotensi meningkatkan inklusi keuangan Syariah jika dapat dimanfaatkan dengan baik.</p>\n\n<p>Ketika ditanya mengenai langkah terdekat yang akan dilakukan pasca dilakukannya penandatanganan nota kesepahaman ini, Jamil Abbas menuturkan bahwa KNKS akan berkoordinasi dengan Kemendes PDTT untuk menyiapkan <em>pilot project </em>program yang dimaksud. Secara singkat beliau menjelaskan bahwa program tersebut merupakan suatu gerakan yang akan dilakukan dengan cara kolaborasi antara BUMDes dengan lembaga keuangan Syariah formal, termasuk dengan perbankan syariah dan lembaga <em>financial technology </em>(<em>fintech</em>) syariah.</p>\n\n<p>&ldquo;Harapannya ke depan, masyarakat di desa bisa memperoleh akses terhadap produk-produk keuangan syariah yang selama ini umumnya beroperasi di kota-kota besar saja&rdquo;, jelas Jamil.</p>\n\n<p>Penulis : Yodi Izharivan<br />\nRedaktur : Ahmad Juwaini</p>	https://webdev.rifhandi.com/uploads/news/g.jpg	2019-05-09 08:05:42	1	KNKS Establishes Joint Cooperation with the Ministry of Villages, Rural Regions Development, and Transmigration of the Republic of Indonesia	<p>Provide the ideal and beneficial Islamic financial services to people in villages and rural areas</p>	<p><strong>KNKS, Jakarta -</strong> The National Islamic Finance Committee (KNKS) on Thursday evening 14/05/2019 agreed a Memorandum of Understanding (MoU) with the Ministry of Villages, Rural Regions Development, and Transmigration of the Republic of Indonesia (Kemendes PDTT) in order to develop the Islamic economic and financial services in villages, rural, and transmigration areas. The joint cooperation is signed directly by the General Secretary of Kemendes PDTT, Anwar Sanusi, and Executive Director of KNKS, Ventje Rahadrjo.</p>\n\n<p>The signing was part of the whole agenda of the Indonesia Islamic Economy Masterplan 2019-2024 launching event held at the Ministry of National Development Planning (Bappenas) office inaugurated by the current Indonesia&rsquo;s Presiden, Joko Widodo.</p>\n\n<p>The Deputy Director of KNKS&rsquo; Islamic Inclusive Finance Division, Jamil Abbas, explains that the partnership with Kemendes PDTT is done as a mutual effort to support the Village-owned companies (BUMDes) so they could provide the ideal and beneficial Islamic financial services to people in villages and rural areas. In addition he says that currently there are more than 40,000 existing BUMDes across the country. It is considered as the national assets that potentially increase the Islamic financial inclusion if it can be put optimally.</p>\n\n<p>When he is asked about the very next step after the MoU signing, Jamil Abbas says that KNKS will coordinate with Kemendes PDTT to prepare the pilot project of the desired programme. Concisely, he explains that the programme is considered as a movement in form of collaboration between BUMDes and many other formal Islamic financial institutions, involving Islamic banks and financial technology (fintech) companies.</p>\n\n<p>&ldquo;To the next we hope that people in villages and&nbsp;rural areas have access to the Islamic financial products and services that during this time generally operate only in the large urban centres&rdquo;, says Jamil.</p>\n\n<p>Reporter : Yodi Izharivan<br />\nEditor : Ahmad Juwaini</p>	4	kdeks	\N	{"4","2"}	1	14	null
35	International Webinar Halal Pharmaceutical & Healthcare Ecosystem Industry Forum	<span style="font-size: 13.44px;">Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) menyelenggarakan International Webinar Halal Pharmaceutical and Healthcare Ecosystem Industry Forum 2022 secara daring (06/07). Dalam acara ini hadir Principal Partner &amp; Halal Industry Strategist Rozi Osman International PLT. Roziatul Akmam, Operation Director PT. Bio Farma M. Rahman Roestan, Assosiate Professor ITB Dr. apt. Ilma Nugrahani, MSi., Vice President Business Development PT. Jababeka Onky Martha, Founder &amp; CEO LBB international Dr. Marco Tieman, Managing Director Barakah Taiwan Hub Dr. Nurundin N.H. Ting, sebagai pembicara.</span>	<div><span style="font-size: 13.44px;">Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS) menyelenggarakan International Webinar Halal Pharmaceutical and Healthcare Ecosystem Industry Forum 2022 secara daring (06/07). Dalam acara ini hadir Principal Partner &amp; Halal Industry Strategist Rozi Osman International PLT. Roziatul Akmam, Operation Director PT. Bio Farma M. Rahman Roestan, Assosiate Professor ITB Dr. apt. Ilma Nugrahani, MSi., Vice President Business Development PT. Jababeka Onky Martha, Founder &amp; CEO LBB international Dr. Marco Tieman, Managing Director Barakah Taiwan Hub Dr. Nurundin N.H. Ting, sebagai pembicara.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Acara ini merupakan tindak lanjut dari hasil riset KNEKS mengenai Preferensi Pasar Rumah Sakit berkompetensi syariah. Berdasarkan survey, masyarakat Indonesia menganggap nilai syariah sebagai tiga faktor utama dalam memilih layanan kesehatan. Selain itu, permintaan vaksin dan obat pendukung halal lainnya selama pandemi covid-19 menunjukan urgensi terhadap status halal pada produk kesehatan di Indonesia.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Permintaan atas layanan kesehatan berkompetensi syariah dan produk kesehatan halal yang besar di Indonesia serta dunia menjadi urgensi, sekaligus peluang ekonomi, dalam menciptakan layanan kesehatan yang kuat dan inklusif di Indonesia.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">“Acara ini sejalan dengan agenda prioritas G20 yakni memperkuat arsitektur kesehatan global. Agenda tersebut perlu diperkuat melalui koordinasi sektor keuangan dan kebijakan publik dalam rangka Pandemic Prevention, Preparedness and Response. Pandemi covid-19 telah menunjukkan perlunya sistem kesehatan yang lebih kuat, inklusif, dan berkelanjutan. Hal ini pun dapat diwujudkan melalui kolaborasi global dimana setiap negara berperan melalui kapasitas nya masing-masing. Meningkatnya kesadaran konsumen akan status halal pada produk kesehatan pun perlu diperhatikan. Hal ini adalah potensi yang besar bagi manufacturer Indonesia meningkatkan produksi halal nya,” Tutur Wempi Saputra, Staf Ahli Menteri Keuangan Bidang Ekonomi Makro dan Keuangan Internasional yang sekaligus menjabat sebagai Kepala Sekretariat KNEKS, dalam pembukaan webinar ini.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Industri kesehatan syariah merupakan ekosistem yang tidak hanya melibatkan rumah sakit berkompetensi syariah tetapi juga industri yang menyediakan fasilitas seperti alat kesehatan, vaksin, dan obat-obatan. Saat ini, Indonesia masih memiliki ketergantungan yang tinggi dalam memenuhi fasilitas kesehatan yang berasal dari negara non-OKI. Disisi lain, ketersediaan bahan penyusun, bahan pendukung, media kultur, yang tersertifikasi halal di dunia masih sangat rendah.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">“Saat ini Indonesia masih mengimpor 95% bahan penyusun produk dan fasilitas kesehatan. Namun banyak negara dunia yang belum memahami sistem jaminan halal itu sendiri. Untuk membangun ekosistem farmasi dan industri kesehatan yang sustainable yang juga menjamin status halal, diperlukan kolaborasi antar pihak memenuhi sistem jaminan halal dalam keseluruhan rantai suplai nya, mulai dari raw materials, supporting materials, dan supporting equipment. Public private partnerships atau PPP oleh seluruh pihak di dalam ekosistem kesehatan Indonesia bahkan dunia, dapat menjadi kunci sukses dalam mewujudkan hal ini,” tutur Operation Director PT. Bio Farma M. Rahman Roestan</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">“Strategi halal by design, yakni pembangunan produk halal dengan melibatkan aspek management halal di keseluruhan rantai produksi halal, mulai dari planning, pemilihan bahan, dan proses produksi dibawah pengawasan tim manajemen halal, diperlukan. Termasuk didalamnya pengawasan seluruh aktivitas dalam pengelolaan bahan mentah, proses manufaktur, pengemasan, distribusi, hingga pemasaran. Oleh karena itu, langkah awal yang dipastikan adalah internal stakeholders perusahaan, top level management, berpartisipasi dalam menjaga terjaminnya proses halal,” jelas Roziatul Akmam, Principal Partner &amp; Halal Industry Strategist Rozi Osman International PLT.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">“Pembangunan ekosistem layanan kesehatan syariah dunia memerlukan perspektif yang menyeluruh yakni dalam pencegahan, layanan emergency, penyembuhan (after-care), sampai dengan layanan khusus lanjut usia. Keterlibatan pihak dan network pun diperlukan seperti dari dukungan layanan keuangan syariah dalam dunia kesehatan serta kerjasama dan perdagangan internasional dalam rantai pasok halal,” Ujar Dr. Marco Tieman Founder &amp; CEO LBB international</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">Dari diskusi yang melibatkan pembicara ahli di bidang layanan kesehatan dunia ini menyimpulkan bahwa harmonisasi standar halal global, pembangunan klaster halal dan network untuk industri farmasi dan layanan kesehatan, penguatan big data, integrasi subjek halal dalam pendidikan dan pelatihan, penguatan research &amp; development, penguatan kerja sama antara institusi riset dan industri, kemudahan aktivitas manufacturing, serta adanya kebijakan insentif, di bidang medicines, science, dan layanan kesehatan, diperlukan dalam membangun ekosistem farmasi dan layanan kesehatan halal di Indonesia dan dunia.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">“Membangun ekosistem farmasi dan layanan kesehatan halal perlu waktu yang tidak sebentar dan perlu biaya, maka perlu kolaborasi yang kuat. Diawali dengan memahami kebutuhan konsumen dan pelaku industri, untuk menghasilkan inisiatif strategis yang dapat mempercepat hadirnya produk dan layanan kesehatan halal dan berkompetensi syariah. Serta menangkap peluang ekonomi dari industri sebesar 129 Miliar US dolar ini,” pungkas Afdhal Aliasar, Direktur Industri Produk Halal KNEKS menutup jalannya diskusi di webinar internasional ini.</span></div>	https://webdev.rifhandi.com/uploads/news/1658223755-WhatsAppImage 2022-07-19 at 4.27.15 PM1.jpg	2019-05-09 08:05:00	0	 International Webinar Halal Pharmaceutical & Healthcare Ecosystem Industry Forum	<span style="font-size: 13.44px;">The National Committee for Islamic Economy and Finance (KNEKS) held the International Webinar Halal Pharmaceutical and Healthcare Ecosystem Industry Forum 2022 virtually (06/07). The event featured prominent speakers, including Principal Partner &amp; Halal Industry Strategist of Rozi Osman International PLT, Roziatul Akmam; Operation Director of PT. Bio Farma, M. Rahman Roestan; Associate Professor at ITB, Dr. apt. Ilma Nugrahani, MSi.; Vice President of Business Development at PT. Jababeka, Onky Martha; Founder &amp; CEO of LBB International, Dr. Marco Tieman; and Managing Director of Barakah Taiwan Hub, Dr. Nurundin N.H. Ting.</span>	<div><span style="font-size: 13.44px;">The National Committee for Islamic Economy and Finance (KNEKS) held the International Webinar Halal Pharmaceutical and Healthcare Ecosystem Industry Forum 2022 virtually (06/07). The event featured prominent speakers, including Principal Partner &amp; Halal Industry Strategist of Rozi Osman International PLT, Roziatul Akmam; Operation Director of PT. Bio Farma, M. Rahman Roestan; Associate Professor at ITB, Dr. apt. Ilma Nugrahani, MSi.; Vice President of Business Development at PT. Jababeka, Onky Martha; Founder &amp; CEO of LBB International, Dr. Marco Tieman; and Managing Director of Barakah Taiwan Hub, Dr. Nurundin N.H. Ting.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">This event was a follow-up to KNEKS' research on the market preferences for sharia-compliant hospitals. According to the survey, Indonesians consider sharia values as one of the three main factors in choosing healthcare services. Additionally, the demand for halal-certified vaccines and other supporting medicines during the COVID-19 pandemic highlighted the urgency of halal status for healthcare products in Indonesia.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">The significant demand for sharia-compliant healthcare services and halal health products in Indonesia and globally presents both an urgency and an economic opportunity to establish a robust and inclusive healthcare system in the country.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">“This event aligns with the G20 priority agenda of strengthening the global health architecture. This agenda must be supported through coordination between the financial sector and public policy to enhance Pandemic Prevention, Preparedness, and Response. The COVID-19 pandemic has underscored the need for a stronger, more inclusive, and sustainable health system. This goal can be achieved through global collaboration, where every country contributes according to its capacity. The growing consumer awareness of halal status in health products must also be addressed. This is a significant potential for Indonesian manufacturers to expand their halal production,” stated Wempi Saputra, Special Advisor to the Minister of Finance on Macroeconomics and International Finance, and Head of the KNEKS Secretariat, during the webinar opening remarks.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">The sharia-compliant healthcare industry is an ecosystem that not only involves sharia-compliant hospitals but also industries providing facilities such as medical devices, vaccines, and medicines. Currently, Indonesia relies heavily on non-OIC countries to meet its healthcare facility needs. On the other hand, the availability of halal-certified raw materials, supporting materials, and culture media worldwide remains very low.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">“Currently, Indonesia imports 95% of the raw materials for healthcare products and facilities. However, many countries still lack understanding of the halal assurance system itself. To build a sustainable pharmaceutical and healthcare industry ecosystem that guarantees halal status, collaboration among stakeholders is needed to implement halal assurance throughout the supply chain, from raw materials and supporting materials to supporting equipment. Public-private partnerships (PPP) involving all stakeholders in the Indonesian and global healthcare ecosystem could be the key to achieving this,” explained M. Rahman Roestan, Operation Director of PT. Bio Farma.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">“A halal-by-design strategy, which involves incorporating halal management aspects throughout the halal production chain — from planning and material selection to production under the supervision of a halal management team — is essential. This includes monitoring all activities related to raw material management, manufacturing processes, packaging, distribution, and marketing. Therefore, the first step to ensure this process is the participation of internal company stakeholders, especially top-level management, in maintaining halal assurance,” elaborated Roziatul Akmam, Principal Partner &amp; Halal Industry Strategist at Rozi Osman International PLT.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">“The development of a global sharia-compliant healthcare ecosystem requires a comprehensive perspective that spans prevention, emergency care, recovery (after-care), and specialized elderly care. The involvement of various stakeholders and networks is also essential, including the support of Islamic financial services in healthcare, as well as international cooperation and trade within the halal supply chain,” stated Dr. Marco Tieman, Founder &amp; CEO of LBB International.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">The discussions involving expert speakers in global healthcare concluded that global halal standard harmonization, the development of halal clusters and networks for the pharmaceutical and healthcare industry, big data strengthening, integration of halal subjects into education and training, R&amp;D enhancement, strengthening cooperation between research institutions and industry, ease of manufacturing activities, and the provision of incentives in medicine, science, and healthcare policies are critical to building the halal pharmaceutical and healthcare ecosystem in Indonesia and globally.</span></div><div><span style="font-size: 13.44px;"><br></span></div><div><span style="font-size: 13.44px;">“Building a halal pharmaceutical and healthcare ecosystem requires significant time and investment, necessitating strong collaboration. It starts with understanding consumer and industry needs to generate strategic initiatives that accelerate the availability of halal and sharia-compliant healthcare products and services while capitalizing on the $129 billion economic opportunity this industry offers,” concluded Afdhal Aliasar, Director of Halal Product Industry at KNEKS, closing the international webinar discussion.</span></div>	1	kneks	[{"value":"kneks"},{"value":"kdeks"},{"value":"syariah"},{"value":"indonesia"}]	{"1","5"}	2	1	null
\.


--
-- Data for Name: news_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_categories (id, title, description, title_en, description_en, web_identity) FROM stdin;
1	Berita Terkini	tesst	Latest News	tesss	kneks
2	Liputan Media	tess	Media Coverage	\N	kneks
3	Siaran Pers	\N	Press Conference	\N	kneks
4	KDEKS	KDEKS 	KDEKS 	KDEKS 	kneks
5	ss	ddd	ss	ddd	kneks
\.


--
-- Data for Name: news_photos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_photos (id, title, photo, content, photos_datetime, title_en, content_en, web_identity, tag, directorat, id_province, is_publish, users_id, users_name) FROM stdin;
38	Pertemuan KNKS dengan Deloitte - 25 Juni 2019	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Pertemuan KNKS dengan Deloitte - 25 Juni 2019</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
48	Pertemuan KNKS dengan PT Penjaminan Infrastruktur Indonesia (Persero)	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Rabu, 26 Juni 2019 -&nbsp;Pertemuan KNKS dengan PT Penjaminan Infrastruktur Indonesia (Persero)</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
105	Logo Gerakan Nasional Wakaf Uang (GNWU)	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Logo Gerakan Nasional Wakaf Uang (GNWU)</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
110	Wawancara dengan Wakil Presiden	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Wawancara dan meminta arahan&nbsp;Prof. Dr. K. H. Ma&#39;ruf Amin selaku Wakil Presiden Indonesia sekaligus Ketua Harian KNEKS</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
106	Pengembangan dan Penguatan Lembaga Keuangan Mikro Syariah	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Diskusi dan koordinasi terkait Pengembangan dan Penguatan Lembaga Keuangan Mikro Syariah (KSPPS/BMT/Koperasi Syariah) melalui Digitalisasi BMT (BMT 4.0) di wilayah Kabupaten Lombok Utara</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
108	Diskusi dan sosialisasi BMT 4.0 di BMT Nurul Hakim	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Diskusi dan sosialisasi BMT 4.0 untuk memperkuat dan mengembangkan BMT Nurul Hakim yang merupakan BMT berbasis Pondok Pesantren</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
35	Kunjungan KNKS ke Kepala Departemen Ekonomi dan Keuangan Syariah BI	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Taufik Hidayat, Direktur Hukum,&nbsp; Promosi dan Hubuangan Eksternal KNKS melakukan pertemuan dengan Suhaedi, Kepala Departemen Ekonomi dan Keuangan Syariah BI dalam rangka persiapan penyelenggaraan Fesyar dan ISEF 2019.</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
45	Kunjungan KNKS ke Center of Islamic Business and Economic Studies (CIBEST)	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Kunjungan KNKS ke Center of Islamic Business and Economic Studies (CIBEST) IPB dalam rangka sinergi dan kolaborasi penelitian terkait pengukuran kemajuan ekonomi dan keuangan syariah daerah dalam klaster makanan halal. Turut hadir &nbsp;Ketua CIBEST IPB, Dekan Fakultas Ekonomi dan Manajemen IPB, serta Ketua Departemen Ekonomi Syariah IPB. Kolaborasi riset ini melibatkan banyak disiplin ilmu selain Ekonomi Syariah seperti Agribisnis, Manajemen, Pangan, Peternakan, dan Bisnis.</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
54	Pertemuan dengan Direksi BJBS dan Staf Ahli Gubernur Jawa Barat	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Rabu, 26 Juni 2019 -&nbsp;Meeting dengan TIM Percepatan Pembangunan dan BJB &nbsp;Syariah</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
1	KNKS dan IMTI	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>KNKS dan IMTI</p>	2024-11-14 00:38:08	KNKS dan IMTI	KNKS dan IMTI	kneks	\N	null	0	0	0	null
2	Kopdar KNKS	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Kopdar KNKS</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
3	Kunjungan Dewan Pengarah KNKS 12 April	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Kunjungan Dewan Pengarah KNKS 12 April</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
4	Kunjungan ISTN	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Kunjungan ISTN</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
5	Kunjungan ke Kuala Lumpur	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Kunjungan ke Kuala Lumpur</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
6	Kunjungan KNKS ke Kantor Wapres	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Kunjungan KNKS ke Kantor Wapres</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
7	Kunjungan PEBS	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Kunjungan Pusat Ekonomi dan Bisnis Syariah FEB UI ke kantor KNKS</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
8	Pelantikan Direksi KNKS	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Pelantikan Direksi KNKS</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
37	Pertemuan KNKS dengan Deloitte - 25 Juni 2019	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Pertemuan KNKS dengan Deloitte - 25 Juni 2019</p>	2019-05-09 08:05:00			kneks	[{"value":"kneks"},{"value":"kdeks"},{"value":"syariah"},{"value":"indonesia"}]	4	6	1	0	null
10	Berdiskusi dengan Bank Negara Malaysia	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Berdiskusi dengan Bank Negara Malaysia, untuk membahas Malaysia International Islamic Financial Centre.</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
11	Berdiskusi dengan Kumpulan Wang Persaraan (KWAP)	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Berdiskusi dengan Kumpulan Wang Persaraan (KWAP) terkait Dana Pensiun Syariah di Malaysia</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
12	Berdiskusi dengan Kumpulan Wang Simpanan Pekerja (KWSP)	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Berdiskusi dengan Kumpulan Wang Simpanan Pekerja (KWSP) terkait Simpanan Syariah sebagai produk alternatif berbasis Syariah bagi pekerjapegawai</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
13	Berdiskusi dengan Mr. Rafee Haneef selaku CEO CIMB Islamic Bank	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Berdiskusi dengan Mr. Rafee Haneef selaku CEO CIMB Islamic Bank dalam acara Kuala Lumpur Islamic Finance Forum</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
14	Diskusi Bersama International Islamic Liquidity Management, Malaysia.	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Diskusi Bersama International Islamic Liquidity Management, Kuala Lumpur Malaysia.</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
15	Islamic Finance Leader Talk Bersama MES Malaysia, IIUM 9 April 2019. (2)	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Islamic Finance Leader Talk Bersama MES Malaysia, IIUM 9 April 2019. (2)</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
16	Islamic Finance Leader Talk Bersama MES Malaysia, IIUM 9 April 2019.	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Islamic Finance Leader Talk Bersama MES Malaysia, IIUM 9 April 2019. Menjelaskan program kerja KNKS.</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
17	Islamic Finance Leader Talk Bersama MES Malaysia, IIUM 9 April 2019. (3)	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Islamic Finance Leader Talk Bersama MES Malaysia, IIUM 9 April 2019. Menjelaskan program kerja KNKS. (3)</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
18	Konferensi Pers Peluncuran Masterplan Ekonomi Syariah Indonesia	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Menteri PPN/Bapppenas selaku Sekretaris Komite Nasional Keuangan Syariah (KNKS), Bambang Brodjonegoro,&nbsp;menjelaskan Masterplan Ekonomi Syariah Indonesia didampingi Ventje Rahadrdjo (Direktur Eksekutif KNKS) dan Afdhal Aliasar (Direktur Pengembangan Ekonomi Syariah dan Industri Halal)</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
19	Kunjungan KNKS ke Departemen Ekonomi Syariah	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Direktorat Pendidikan dan Riset Keuangan Syariah KNKS mengunjungi Departemen Ilmu Ekonomi Syariah IPB untuk membahas kerjasama program pelaksanaan KKN Ekonomi Syariah. Hadir dalam kegiatan tersebut Ketua Departemen, Sekretaris Departemen dan beberapa dosen Departemen Ilmu Ekonomi Syariah, Ketua Divisi Pendidikan dan Pengembangan SDM Keuangan Syariah KNKS beserta tim</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
20	Kunjungan Universitas Pendidikan Indonesia (UPI) ke Kantor KNKS - 18/06/2019 (1)	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>KNKS dan Universitas Pendidikan Indonesia (UPI) membahas program pendidikan ekonomi syariah yang efektif untuk level sekolah. Turut hadir &nbsp;Kepala Program Studi Ilmu Ekonomi dan Keuangan Islam UPI, Direktur Pendidikan dan Riset Keuangan Syariah KNKS, dan Kepala Divisi Pendidikan dan Pengembangan SDM Keuangan Syariah KNKS serta tim.</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
21	Islamic Finance Leader Talk Bersama MES Malaysia, IIUM 9 April 2019.	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Islamic Finance Leader Talk Bersama MES Malaysia, IIUM 9 April 2019.</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
22	Pertemuan KNKS dengan DSN-MUI	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Direktur Hukum, Promosi, dan Kerja Sama Strategis KNEKS Taufik Hidayat berdiskusi&nbsp;dengan Ketua Bidang IKNB Syariah DSN-MUI&nbsp;Agus Haryadi</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
23	Pertemuan KNKS dengan DSN-MUI (2)	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Direktur Hukum, Promosi, dan Kerja Sama Strategis KNEKS Taufik Hidayat berdiskusi&nbsp;dengan Ketua Bidang IKNB Syariah DSN-MUI&nbsp;Agus Haryadi</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
24	KNKS dengan KPPIP ( Komite Percepatan Penyediaan Infrastruktur Prioritas)	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Manajemen Eksekutif KNKS dan&nbsp;KPPIP (Komite Percepatan Penyediaan Infrastruktur Prioritas) membahas penjelasan operasional &nbsp;KPPIP dalam percepatan Infrasruktur serta pengelolaan <em>multiple </em>stakeholder</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
25	Pertemuan KNKS dengan DSN-MUI	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Direktur Hukum, Promosi, dan Kerja Sama Strategis KNEKS Taufik Hidayat berdiskusi&nbsp;dengan Ketua Bidang IKNB Syariah DSN-MUI&nbsp;Agus Haryadi</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
26	KNKS bertemu dengan Rektor UIII (Universitas Islam Internasional)	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Senin, 24 Juni 2019 - Manajemen Eksekutif KNKS bertemu dengan KPPIP ( Komite Percepatan Penyediaan Infrastruktur Prioritas ) pertemuan kali ini membahas penjelasan operasional &nbsp;KPPIP dalam percepatan Infrasruktur serta pengelolaan multiple stakeholder</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
27	KNKS bertemu dengan  DJSN	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Pertemuan KNKS dengan DJSN</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
28	KNKS bertemu dengan  DJSN	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Pertemuan KNKS dengan DJSN</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
29	Pertemuan KNKS dengan DSN-MUI (2)	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Direktur Hukum, Promosi, dan Kerja Sama Strategis KNEKS Taufik Hidayat berdiskusi&nbsp;dengan Ketua Bidang IKNB Syariah DSN-MUI&nbsp;Agus Haryadi</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
30	KNKS bertemu dengan  DJSN	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Pertemuan KNKS dengan DJSN</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
31	KNKS bertemu dengan  DJSN	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Pertemuan KNKS dengan DJSN</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
32	Kunjungan KNKS ke Kepala Departemen Ekonomi dan Keuangan Syariah BI	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Taufik Hidayat, Direktur Hukum,&nbsp; Promosi dan Hubuangan Eksternal KNKS melakukan pertemuan dengan Suhaedi, Kepala Departemen Ekonomi dan Keuangan Syariah BI dalam rangka persiapan penyelenggaraan Fesyar dan ISEF 2019.<br />\r\n<br />\r\n&nbsp;</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
33	Pertemuan KNKS dengan Pak Ignatius Warsito (Direktur KPAII)	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Rabu, 19 Juni 2019 - Pertemuan KNKS dengan Pak Ignatius Warsito (Direktur KPAII)&nbsp;&nbsp;</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
36	Pertemuan KNKS dengan Deloitte - 25 Juni 2019	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Pertemuan KNKS dengan Deloitte - 25 Juni 2019</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
39	Silaturahim PT Ussy ke KNKS 25 Juni 2019	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Silaturahim PT Ussy ke KNKS 25 Juni 2019</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
40	Kunjungan P2H ke KNKS	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Kunjungan P2H ke KNKS</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
42	KNKS menghadiri acara Halal bi Halal DSN MUI	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Rabu, 3 Juli 2019 - Seluruh Direksi Komite Nasional Keuangan Syariah menghadiri acara Halal bi Halal DSN MUI yang dihadiri langsung oleh Ketua DSN MUI Bapak Prof. Dr. K.H. Ma&rsquo;ruf Amin.&nbsp;</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
43	Kunjungan JICA (Japan International Cooperation Agency) ke KNKS	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Kamis, 6 Juli 2019 - KNKS mendapat kunjungan dari JICA (Japan International Cooperation Agency) membahas tentang&nbsp;penjajakan kerja sama dan bantuan pengembangan ekonomi syariah Indonesia</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
44	Pertemuan KNKS dengan Bank Indonesia	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Jum&#39;at, 5 Juli 2019 - Pertemuan KNKS dengan pihak Bank Indonesia membahas tentang persiapan&nbsp;Indonesia Sharia Economic Festival (ISEF)</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
46	Media KataData dan KNKS	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Rabu, 3 Juli 2019 - Tapping dengan Media KataData di Kantor Komite Nasional Keuangan Syariah</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
49	Kunjungan ke Departemen Ekonomi Syariah IPB	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Senin, 17 Juni 2019 -&nbsp;KNKS berkunjung ke Departemen Ekonomi Syariah IPB</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
50	Silaturahim PT Sinar Mas ke KNKS	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Kamis, 20 Juni 2019 -&nbsp;Pak Hermawan dari Sinar Mas mengunjungi kantor KNKS&nbsp;</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
52	Silaturahim KNKS ke Islamic Development Bank Group	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Rabu, 26 Juni 2019 -&nbsp;Silaturahim KNKS ke Islamic Development Bank Group</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
53	Diskusi Revisi Perpres No. 91 tahun 2016	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Rabu, 26 Juni 2019 -&nbsp;Diskusi awal Revisi Perpres No. 91 tahun 2016</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
41	Silaturahim Code Base ke KNKS 25 Juni 2019	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Silaturahim Code Base ke KNKS 25 Juni 2019</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
51	KNKS mengunjungi Kampus Trisakti	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Rabu, 19 Juni 2019 - KNKS diwakili oleh Bp. Ronald Rulindo dan Bp. Sutan Emir berkunjung ke Kampus Trisakti dan memberikan kuliah umum tentang Ekonomi dan Keuangan Syariah</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
101	Penandatanganan Nota Kesepahaman Kemenag dan Kementrian Lembaga	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Penandatanganan&nbsp;Nota Kesepahaman dengan Kementerian Agama untuk fasilitas penyelenggaraan sertifikasi halal bagi pelaku Usaha Mikro &amp; Kecil</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
102	Dashboard Sistem Informasi dan Integrasi Data Institusi Keuangan Mikro Syariah	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Diskusi dengan Asdep Pengawasan Koperasi Kemenkop UKM terkait <em>dashboard </em>pelaporan dan pengawasan&nbsp;Sistem Informasi dan Integrasi Data Institusi Keuangan Mikro Syariah (SIID IKMS)</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
103	Dashboard Sistem Informasi dan Integrasi Data Institusi Keuangan Mikro Syariah	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Diskusi dengan Asdep Pengawasan Koperasi Kemenkop UKM terkait dashboard pelaporan dan pengawasan Sistem Informasi dan Integrasi Data Institusi Keuangan Mikro Syariah (SIID IKMS)</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
104	Logo Brand Ekonomi Syariah	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Logo Brand Ekonomi Syariah</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
107	Pengembangan dan Penguatan Lembaga Keuangan Mikro Syariah	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Diskusi dan koordinasi terkait Pengembangan dan Penguatan Lembaga Keuangan Mikro Syariah (KSPPS/BMT/Koperasi Syariah) melalui Digitalisasi BMT (BMT 4.0) di wilayah Kabupaten Lombok Utara</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
109	Diskusi dan sosialisasi BMT 4.0 di BMT Nurul Hakim	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Diskusi dan sosialisasi BMT 4.0 untuk memperkuat dan mengembangkan BMT Nurul Hakim yang merupakan BMT berbasis Pondok Pesantren</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
111	KDEKS Jawa Timur	https://kdeks.rifhandi.com/uploads/photo/IMG-20221216-WA0006.jpg		2019-05-09 08:05:42	East Java KDEKS		kneks	indonesia,kneks	null	0	0	0	null
114	Diskusi KNKS dengan BP Tapera	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Diskusi dengan BP Tapera terkait pengembangan skema pembiayaan syariah untuk perumahan rakyat dan ASN pada hari Selasa, 20 Agustus 2019</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
115	KNKS Mengisi Kuliah Umum di Universitas Islam Indonesia Jogjakarta	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Senin (19/08/19), Dr. Sutan Emir Hidayat selaku Direktur Pendidikan dan Riset Keuangan Syariah memberikan Kuliah Umum dalam Agenda Studium Generale &quot;The Role of Islamic Finance Graduates in Realizing Economic Prosperity&quot; di Universitas Islam Indonesia, Jogjakarta.</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
116	KNKS  di UIN Sunan Kalijaga Jogjakarta.	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Rabu (21/08/19), Direktur Pendidikan dan Riset Keuangan Syariah KNKS &nbsp;menghadiri undangan sebagai narasumber dalam kegiatan Forum Group Discussion (FGD) dan Penandatangan MoU mewakilkan kehadiran Direktur Eksekutif KNKS di UIN Sunan Kalijaga Jogjakarta.</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
117	Kunjungan KNKS ke Manajemen BJB	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Pertemuan KNKS dengan Dewan Komisaris dan Direksi BJB Syariah dengan pembahasan Kredit Mesra, Sharia Restricted Intermediary Account (SRIA), sukuk daerah &amp; sukuk BUMD, pembiayaan perumahan rakyat &amp; ASN, dan Gerakan Indonesia Ramah Zakat</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
118	KNKS silaturahmi ke Lembaga Amil Zakat (LAZ) Dompet Dhuafa	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Rabu (14/8/19), KNKS silaturahmi ke Lembaga Amil Zakat (LAZ) Dompet Dhuafa. Kunjungan KNKS yang diwakili oleh Analis Kebijakan M. Faris Afif dan M. Quraisy, disambut hangat oleh Direktur Utama DD Filantropi Drg. Imam Rulyawan dan Direktur Penghimpunan DD Filantropi Yuli Pujihardi. Perihal pertemuan tersebut adalah selain untuk diskusi tentang pengelolaan wakaf dan zakat juga wawancara untuk salah satu rubrik bulletin INSIGHT KNKS.</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
119	Kerjasama KNKS dengan Univ Islam Sultan Agung  Semarang	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Selasa (20/08/19), Direktur Pendidikan dan Riset Keuangan Syariah KNKS menghadiri undangan sebagai narasumber dalam kegiatan Workshop Penelitian dan sekaligus seremonial penandatanganan MoU dengan Universitas Islam Sultan Agung di Semarang.</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	null	0	0	0	null
34	Kunjungan KNKS ke Kepala Departemen Ekonomi dan Keuangan Syariah BI	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Taufik Hidayat, Direktur Hukum,&nbsp; Promosi dan Hubuangan Eksternal KNKS melakukan pertemuan dengan Suhaedi, Kepala Departemen Ekonomi dan Keuangan Syariah BI dalam rangka persiapan penyelenggaraan Fesyar dan ISEF 2019.</p>	2019-05-09 08:05:00	Kunjungan KNKS ke Kepala Departemen Ekonomi dan Keuangan Syariah BI	<span style="font-size: 13.44px;">Taufik Hidayat, Direktur Hukum,&nbsp; Promosi dan Hubuangan Eksternal KNKS melakukan pertemuan dengan Suhaedi, Kepala Departemen Ekonomi dan Keuangan Syariah BI dalam rangka persiapan penyelenggaraan Fesyar dan ISEF 2019.</span>	kneks	[{"value":"kneks"},{"value":"kdeks"},{"value":"syariah"},{"value":"indonesia"}]	{"2","4"}	15	1	0	null
9	Pelantikan Direksi KNKS	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Pelantikan Direksi KNKS</p>	2019-05-09 08:05:42	\N	\N	kneks	\N	{"1","2"}	3	14	0	null
113	KNKS melakukan diskusi dengan Universitas Muhammadiyah Yogyakarta	https://webdev.rifhandi.com/uploads/photo/sample.jpeg	<p>Senin (19/08/19), KNKS melakukan pertemuan untuk diskusi pembahasan pengembangan ekonomi syariah dengan Universitas Muhammadiyah Yogyakarta di Hotel Cavington. Turut hadir Dekan Fakultas Ekonomi dan Bisnis Islam UMY beserta jajarannya dan Direktur Pendidikan dan Riset Keuangan Syariah KNKS beserta tim.</p>	2019-05-09 08:05:42	\N	\N	kneks	indonesia,kneks	3	0	0	0	null
\.


--
-- Data for Name: news_videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_videos (id, title, video, duration, content, videos_datetime, title_en, content_en, web_identity, tag, directorat, id_province, is_publish, users_id, users_name) FROM stdin;
4	Rapat Pleno Komite Nasional Keuangan Syariah	CcrA0_8UkX0	00:05:41	\N	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
5	Peluncuran Komite Nasional Keuangan Syariah dan Pembukaan SILAKNAS IAEI	m7QQctvbdEc	00:06:10	\N	2019-05-09 08:05:42	\N	\N	kneks	\N	null	0	0	0	null
7	BAZNAS News - Sinergi KNKS dengan BAZNAS menuju Indonesia sebagai Pusat Ekonomi Syariah Dunia	bv3uErg_dNs	00:02:11	Pertemuan antara KNKS dan BAZNAS pada 31 Januari, membahas bagaimana pentingnya peran zakat yang signifikan dalam membangun visi Indonesia menjadi pusat ekonomi syariah dunia. Kerjasama yang dilakukan antara lain penelitian, pengembangan regulasi dan pengembangan sistem informasi. Apa yang akan dikerjakan oleh KNKS justru telah banyak dilakukan BAZNAS sehingga kerjasama ini berkomitmen untuk saling memperkuat.	2019-05-09 08:05:42	\N	\N	kneks	\N	{"4","5"}	14	1	0	null
9	BAZNAS News - Sinergi KNKS dengan BAZNAS menuju Indonesia sebagai Pusat Ekonomi Syariah Dunia	bv3uErg_dNs	00:02:11	<p>Pertemuan antara KNKS dan BAZNAS pada 31 Januari, membahas bagaimana pentingnya peran zakat yang signifikan dalam membangun visi Indonesia menjadi pusat ekonomi syariah dunia. Kerjasama yang dilakukan antara lain penelitian, pengembangan regulasi dan pengembangan sistem informasi. Apa yang akan dikerjakan oleh KNKS justru telah banyak dilakukan BAZNAS sehingga kerjasama ini berkomitmen untuk saling memperkuat.</p>	2019-06-14 03:50:46	\N	\N	kneks	\N	1	5	1	0	null
3	BANK INDONESIA SIAPKAN ROADMAP EKONOMI SYARIAH	rADjEQkBlXo	00:01:44	IDXCHANNEL - Dalam meningkatkan perekonomian syariah Bank Indonesia tengah menyiapkan roadmap ekonomi syariah yang akan segera diluncurkan dimana potensi ekonomi syariah begitu besar. Ekonomi syariah kedepan diharapkan akan mendorong akselerasi ekonomi syariah dimasyarakat, melihat potensi ini Bank Indonesia terus menginisiasi pengembangan ekonomi dan keuangan syariah dengan bekerjasama dengan pemerintah.   Melalui Komite Nasional Keuangan Syariah (KNKS) Bank Indonesia tengah menyusun roadmap untuk meningkatkan potensi ekonomi keuangan syariah, dalam prosesnya Bank Indonesia mendorong Bussines Matching antara pelaku ekonomi syariah berbasis pesantren dengan pembeli potensial dari negara lainya. Diharapkan cara ini akan lebih mendorong permintaan yang ditujukan kepada produk syariah dalam negeri.   Direktur Departemen Ekonomi dan Keuangan Syariah Bank Indonesia Anwar Bashori menegaskan bahwa Bank Indonesia telah meniapkan tiga pilar tetap yaitu penguatan ekonomi syariah, penguatan sektor keuangan syariah untuk pembiayaan dan penguatan riset assessment dan edukasi.	2019-05-09 08:05:42	\N	\N	kneks	\N	{"2","3"}	3	1	0	null
\.


--
-- Data for Name: opini; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.opini (id, title, title_en, content, content_en, web_identity, tagging, directorat, is_publish, date_created, users_id, users_name, id_province) FROM stdin;
1	Opini tentang Isu Lingkungan	Opinion on Environmental Issues	Pemerintah berkomitmen untuk meningkatkan upaya pelestarian lingkungan dengan mengurangi emisi karbon sebesar 30% pada tahun 2030 melalui kebijakan yang mendukung energi terbaharukan dan pelarangan pembakaran hutan secara ilegal.	The government is committed to increasing environmental conservation efforts by reducing carbon emissions by 30% by 2030 through policies that support renewable energy and prohibiting illegal forest burning.	kdeks	[{"value":"kneks"},{"value":"kdeks"},{"value":"syariah"},{"value":"indonesia"}]	{"3","5"}	on	2025-01-20	18	SuperAdmin	{"14","15"}
\.


--
-- Data for Name: pejabat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pejabat (id, name, "position", photo, web_identity, description, is_publish, position_en, description_en, organization, directorat, head) FROM stdin;
2	Ir. Putu Rahwidhiyasa, MBA, CIPM	Plt. Direktur Industri Produk Halal	https://webdev.rifhandi.com/uploads/structure/Putu_edit.png	kneks	<div>Ir. Putu Rahwidhiyasa, MBA, CIPM adalah salah satu tokoh penting dalam pengembangan ekonomi syariah di Indonesia. Ia memiliki pengalaman luas di berbagai sektor, termasuk keuangan syariah, industri halal, dan pembangunan ekonomi berbasis syariah. Perannya menonjol sebagai penggerak utama dalam mempromosikan Indonesia sebagai pusat ekonomi syariah global.</div><div><br></div><div><b>Pendidikan dan Awal Karier</b></div><div>Afdhal Aliasar memiliki latar belakang pendidikan ekonomi dan keuangan. Ia mendalami ilmu ekonomi syariah serta memulai kariernya di bidang yang terkait dengan pengembangan keuangan syariah dan industri halal.&nbsp;</div><div><br></div><div><b>Karier dan Kontribusi</b></div><div>Ir. Putu Rahwidhiyasa, MBA, CIPM pernah menjabat di sejumlah posisi strategis yang fokus pada pengembangan ekonomi syariah, termasuk:</div><div>1. Direktur Infrastruktur Ekosistem Syariah di Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS)&nbsp;&nbsp;</div><div>&nbsp; &nbsp;Dalam kapasitas ini, ia bertanggung jawab untuk membangun ekosistem ekonomi syariah yang berkelanjutan. Tugas utamanya meliputi:</div><div>&nbsp; &nbsp;- Pengembangan sektor industri halal seperti makanan, kosmetik, dan farmasi.</div><div>&nbsp; &nbsp;- Peningkatan daya saing pariwisata halal di Indonesia.</div><div>&nbsp; &nbsp;- Pemberdayaan usaha mikro, kecil, dan menengah (UMKM) berbasis syariah.</div><div><br></div><div>2. Penggerak Industri Halal Nasional&nbsp;&nbsp;</div><div>&nbsp; &nbsp;Afdhal Aliasar menjadi salah satu tokoh yang mendorong sertifikasi halal di Indonesia, meningkatkan kolaborasi antara pemerintah, pelaku industri, dan lembaga sertifikasi untuk memastikan produk halal Indonesia dapat bersaing di pasar global.</div><div><br></div><div>3. Promotor Inklusi Keuangan Syariah&nbsp;</div><div>&nbsp; &nbsp;Ia aktif dalam mendorong literasi keuangan syariah di masyarakat melalui kolaborasi dengan lembaga keuangan syariah, baik perbankan maupun non-perbankan, untuk meningkatkan akses masyarakat terhadap produk keuangan syariah.</div><div><br></div><div><b>Pencapaian</b></div><div>- Penguatan Ekosistem Halal Nasional*: Afdhal berperan dalam mempromosikan Indonesia sebagai pemain kunci di pasar halal global dengan fokus pada produk halal dan wisata halal.&nbsp;&nbsp;</div><div>- Kolaborasi Global*: Ia aktif menjalin hubungan dengan berbagai negara dan organisasi internasional untuk memperkuat posisi Indonesia di bidang ekonomi syariah.&nbsp;&nbsp;</div><div>- Pengembangan UMKM Syariah*: Afdhal Aliasar banyak mendukung pengembangan UMKM berbasis syariah melalui akses ke pembiayaan dan sertifikasi halal.</div>	0	null	null	null	null	null
4	Dwi Irianti Hadiningdyah, S.H., M.A.	Direktur Keuangan Sosial Syariah	https://webdev.rifhandi.com/uploads/structure/dwi_edit2.png	kneks	<div>Ahmad Juwaini adalah salah satu tokoh penting dalam pengembangan ekonomi syariah dan pemberdayaan masyarakat di Indonesia. Ia dikenal sebagai praktisi berpengalaman dalam bidang filantropi Islam, keuangan syariah, dan pengembangan sosial. Saat ini, Ahmad Juwaini menjabat sebagai salah satu direktur di <b>Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS)</b>, lembaga yang berfokus pada pengembangan ekonomi syariah di Indonesia.</div><div><br></div><div><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-size: 0.84rem; text-align: var(--bs-body-text-align);"><b>Pendidikan dan Awal Karier</b></span></div><div>Ahmad Juwaini memiliki latar belakang pendidikan yang kuat di bidang ekonomi dan keuangan syariah. Sebelum bergabung dengan KNEKS, ia telah lama aktif dalam organisasi yang bergerak di bidang filantropi dan pemberdayaan masyarakat, dengan fokus pada pengembangan berbasis syariah.</div><div><br></div><div><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-size: 0.84rem; text-align: var(--bs-body-text-align);"><b>Karier dan Kontribusi</b></span></div><div>1. Direktur Eksekutif Dompet Dhuafa (2004–2018)&nbsp;&nbsp;</div><div>&nbsp; &nbsp;Ahmad Juwaini pernah menjabat sebagai Direktur Eksekutif di *Dompet Dhuafa*, salah satu lembaga filantropi Islam terbesar di Indonesia. Dalam perannya, ia berhasil:</div><div>&nbsp; &nbsp;- Mengembangkan program-program pemberdayaan berbasis zakat, infak, sedekah, dan wakaf (ZISWAF).</div><div>&nbsp; &nbsp;- Memperluas jangkauan Dompet Dhuafa hingga ke skala global.</div><div>&nbsp; &nbsp;- Meningkatkan pengelolaan dana filantropi dengan pendekatan profesional.</div><div><br></div><div>2. Peran di KNEKS&nbsp;&nbsp;</div><div>&nbsp; &nbsp;Sebagai salah satu direktur di KNEKS, Ahmad Juwaini bertanggung jawab atas pengembangan infrastruktur dan ekosistem ekonomi syariah, termasuk:</div><div>&nbsp; &nbsp;- <b>Industri Halal</b>: Mendorong penguatan industri halal di sektor makanan, kosmetik, farmasi, dan lainnya.&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- <b>Keuangan Syariah</b>: Memperluas akses masyarakat terhadap layanan keuangan berbasis syariah.</div><div>&nbsp; &nbsp;- <b>Pemberdayaan UMKM Syariah</b>: Mendukung pelaku UMKM dalam mendapatkan akses pembiayaan dan sertifikasi halal.</div><div>&nbsp; &nbsp;- <b>Filantropi Islam</b>: Mengintegrasikan konsep filantropi Islam seperti zakat dan wakaf ke dalam pembangunan ekonomi nasional.</div><div><br></div><div>3. <b>Kontribusi Internasional</b>&nbsp;&nbsp;</div><div>&nbsp; &nbsp;Ahmad Juwaini aktif mempromosikan ekonomi syariah Indonesia di kancah internasional. Ia menjalin kolaborasi dengan berbagai organisasi global untuk memperkuat posisi Indonesia sebagai pusat ekonomi syariah dunia.</div>	0	null	null	null	null	null
3	Dr. Taufik Hidayat, M.Ec	Direktur Jasa Keuangan Syariah	https://webdev.rifhandi.com/uploads/structure/Taufik_edit.png	kneks	<div>aufik Hidayat adalah salah satu tokoh penting dalam pengembangan ekonomi dan keuangan syariah di Indonesia. Saat ini, ia menjabat sebagai *Direktur Jasa Keuangan Syariah di Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS)*. Dalam perannya, Taufik Hidayat bertanggung jawab atas pengembangan sektor keuangan syariah yang mencakup perbankan syariah, pasar modal syariah, dan asuransi syariah, serta mengkoordinasikan upaya untuk memperluas inklusi keuangan syariah di Indonesia.</div><div><br></div><div><b>Pendidikan dan Latar Belakang</b></div><div>Taufik Hidayat memiliki latar belakang pendidikan di bidang ekonomi atau keuangan, dengan fokus pada pengembangan sektor keuangan syariah. Ia memiliki pengalaman panjang di sektor keuangan dan telah terlibat dalam berbagai inisiatif pengembangan ekonomi syariah baik di tingkat nasional maupun internasional.</div><div><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-size: 0.84rem; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);"><br></span></div><div><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-size: 0.84rem; text-align: var(--bs-body-text-align);"><b>Peran dan Tanggung Jawab di KNEKS</b></span></div><div>Sebagai *Direktur Jasa Keuangan Syariah di KNEKS*, Taufik Hidayat bertanggung jawab atas berbagai inisiatif untuk mengembangkan sektor keuangan syariah di Indonesia. Tanggung jawab utamanya meliputi:</div><div><br></div><div>1. Pengembangan Perbankan Syariah&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Meningkatkan kualitas layanan perbankan syariah melalui inovasi produk dan pengembangan teknologi.&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Mendorong pertumbuhan pembiayaan syariah untuk mendukung sektor riil dan UMKM.&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Berkolaborasi dengan lembaga perbankan syariah untuk meningkatkan inklusi keuangan syariah.</div><div><br></div><div>2. Pengembangan Pasar Modal Syariah&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Memperkuat ekosistem pasar modal syariah, termasuk sukuk (obligasi syariah) dan instrumen investasi syariah lainnya.&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Meningkatkan pemahaman dan daya tarik masyarakat terhadap produk investasi syariah.</div><div><br></div><div>3. Asuransi Syariah&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Mendorong pengembangan produk asuransi syariah yang lebih inklusif dan dapat diakses oleh masyarakat.&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Bekerja sama dengan perusahaan asuransi syariah untuk memastikan keberlanjutan industri ini.</div><div><br></div><div>4. Inklusi Keuangan Syariah&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Memperluas akses masyarakat terhadap layanan keuangan syariah melalui edukasi dan penyuluhan.&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Meningkatkan literasi keuangan syariah di kalangan masyarakat, termasuk UMKM dan sektor informal.</div><div><br></div><div>5. Pengembangan Infrastruktur Keuangan Syariah&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Berkoordinasi dengan pemangku kepentingan di sektor keuangan dan pemerintah untuk mengembangkan infrastruktur yang mendukung pertumbuhan keuangan syariah, seperti regulasi, standar, dan sertifikasi.</div><div><br></div><div><span style="background-color: var(--bs-card-bg); color: var(--bs-card-color); font-size: 0.84rem; text-align: var(--bs-body-text-align);"><b>Kontribusi dan Pencapaian</b></span></div><div>- Pengembangan Produk Keuangan Syariah&nbsp;&nbsp;</div><div>&nbsp; Taufik Hidayat aktif dalam mendorong inovasi produk keuangan syariah, termasuk kredit syariah, pembiayaan usaha, dan sukuk yang dapat memberikan alternatif bagi masyarakat yang ingin berinvestasi secara syariah.&nbsp;&nbsp;</div><div><br></div><div>- Koordinasi dengan Lembaga Keuangan&nbsp;</div><div>&nbsp; Ia memfasilitasi kerja sama antara lembaga keuangan syariah seperti perbankan, pasar modal, dan asuransi untuk meningkatkan efisiensi dan pelayanan kepada masyarakat.&nbsp;&nbsp;</div><div><br></div><div>- Edukasi dan Inklusi Keuangan Syariah&nbsp;&nbsp;</div><div>&nbsp; Mengembangkan program edukasi dan kampanye literasi keuangan syariah untuk meningkatkan pemahaman masyarakat tentang produk dan layanan keuangan syariah.&nbsp;&nbsp;</div><div><br></div><div>- Pengembangan Regulasi dan Standar&nbsp;&nbsp;</div><div>&nbsp; Bekerja sama dengan otoritas terkait untuk menyusun regulasi dan standar yang mendukung pertumbuhan sektor jasa keuangan syariah di Indonesia.</div><div><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-size: 0.84rem; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);"><br></span></div><div><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-size: 0.84rem; text-align: var(--bs-body-text-align);"><b>Visi dan Komitmen</b></span></div><div>Taufik Hidayat memiliki visi untuk:&nbsp;&nbsp;</div><div>1. Menjadikan Indonesia sebagai pusat keuangan syariah global.&nbsp;&nbsp;</div><div>2. Meningkatkan inklusi keuangan syariah dengan memperluas akses masyarakat terhadap layanan keuangan berbasis syariah.&nbsp;&nbsp;</div><div>3. Mendorong pertumbuhan industri perbankan, pasar modal, dan asuransi syariah yang berkelanjutan dan inklusif.&nbsp;&nbsp;</div><div>4. Memperkuat ekosistem ekonomi dan keuangan syariah di Indonesia melalui kerja sama dengan berbagai pemangku kepentingan.</div>	\N	null	null	me	direktur	--
5	Ir. Putu Rahwidhiyasa, MBA, CIPM	Direktur Bisnis dan Kewirausahaan Syariah	https://webdev.rifhandi.com/uploads/structure/Putu_edit.png	kneks	<div>Putu Rahwidhiyasa adalah seorang profesional yang dikenal memiliki keahlian dalam bidang pengelolaan ekonomi, keuangan, serta pengembangan sistem berbasis syariah di Indonesia. Ia memiliki rekam jejak yang panjang di sektor publik dan swasta, khususnya dalam mendukung transformasi digital dan pengembangan ekonomi berbasis syariah.</div><div><br></div><div><b>Latar Belakang Pendidikan dan Karier</b></div><div>Putu Rahwidhiyasa memiliki latar belakang pendidikan di bidang ekonomi, manajemen, atau keuangan yang menjadi dasar pengembangan kariernya. Ia aktif dalam berbagai posisi strategis yang berfokus pada pengelolaan dan pengembangan ekonomi nasional, dengan penekanan pada integrasi teknologi dan pendekatan syariah.</div><div><br></div><div><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-size: 0.84rem; text-align: var(--bs-body-text-align);"><b>Jabatan Strategis</b></span></div><div>1. Peran di Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS)&nbsp;&nbsp;</div><div>&nbsp; &nbsp;Putu Rahwidhiyasa merupakan salah satu direktur di KNEKS. Dalam peran ini, ia bertanggung jawab atas berbagai inisiatif untuk memperkuat ekosistem ekonomi dan keuangan syariah di Indonesia. Fokus utamanya meliputi:</div><div>&nbsp; &nbsp;- Penguatan Infrastruktur Ekosistem Syariah*: Mendukung pengembangan industri halal, keuangan syariah, dan filantropi Islam.</div><div>&nbsp; &nbsp;- Inklusi Keuangan*: Mendorong masyarakat untuk mengakses layanan keuangan berbasis syariah.</div><div>&nbsp; &nbsp;- Digitalisasi Sistem Syariah*: Mengintegrasikan teknologi digital ke dalam layanan ekonomi dan keuangan syariah.</div><div><br></div><div>2. Transformasi Ekonomi Syariah Nasional</div><div>&nbsp; &nbsp;Sebagai seorang profesional, Putu Rahwidhiyasa mendukung transformasi ekonomi syariah di Indonesia melalui kolaborasi lintas sektor antara pemerintah, industri, dan masyarakat.</div><div><br></div><div><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-size: 0.84rem; text-align: var(--bs-body-text-align);"><b>Kontribusi dan Pencapaian</b></span></div><div>- Pengembangan Industri Halal*: Terlibat dalam upaya mempercepat sertifikasi halal untuk produk Indonesia agar dapat bersaing di pasar global.&nbsp;&nbsp;</div><div>- Kolaborasi Digital dan Keuangan Syariah*: Berkontribusi dalam pengembangan platform digital untuk memperluas akses masyarakat terhadap layanan keuangan syariah.&nbsp;&nbsp;</div><div>- Pengembangan Kebijakan Ekonomi Syariah*: Mendukung penyusunan kebijakan strategis yang membantu Indonesia mencapai visi sebagai pusat ekonomi syariah global.&nbsp;&nbsp;</div><div>- Pemberdayaan UMKM*: Meningkatkan keterlibatan UMKM dalam ekosistem ekonomi syariah, terutama melalui pembiayaan berbasis syariah dan pelatihan.</div><div><br></div><div><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-size: 0.84rem; text-align: var(--bs-body-text-align);"><b>Visi dan Komitmen</b></span></div><div>Putu Rahwidhiyasa berkomitmen untuk:</div><div>- Memperkuat posisi Indonesia di pasar global sebagai pemain utama dalam ekonomi syariah.</div><div>- Meningkatkan inklusi keuangan syariah melalui literasi dan akses layanan yang mudah dijangkau.</div><div>- Mendukung inovasi teknologi dalam keuangan syariah dan sektor halal.</div>	0	null	null	null	null	null
6	Dr. Sutan Emir Hidayat, MBA	Direktur Infrastruktur Ekosistem Syariah	https://webdev.rifhandi.com/uploads/structure/emir_edit2.png	kneks	<div><b>Sutan Emir Hidayat</b> adalah seorang akademisi, profesional, dan tokoh penting dalam pengembangan ekonomi dan keuangan syariah di Indonesia. Ia memiliki latar belakang akademik yang kuat di bidang keuangan syariah dan pengalaman yang luas dalam sektor pendidikan, pemerintahan, dan industri. Saat ini, ia menjabat sebagai <b>Direktur Infrastruktur Ekosistem Syariah di Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS)</b>.&nbsp;&nbsp;</div><div><br></div><div><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-size: 0.84rem; text-align: var(--bs-body-text-align);"><b>Pendidikan</b></span></div><div>Sutan Emir Hidayat memiliki latar belakang pendidikan yang sangat mengesankan, antara lain:&nbsp;&nbsp;</div><div>1. Gelar Sarjana</div><div>&nbsp; &nbsp;- Memperoleh gelar di bidang ekonomi atau keuangan dari universitas terkemuka di Indonesia.&nbsp;&nbsp;</div><div><br></div><div>2. Gelar Magister dan Doktor&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Meraih gelar master dan doktor di bidang keuangan syariah dari institusi internasional bergengsi.&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Penelitian dan disertasinya berfokus pada pengembangan keuangan syariah, termasuk strategi inovasi dan implementasinya di negara berkembang.&nbsp;&nbsp;</div><div><br></div><div><b>Karier dan Kontribusi</b></div><div>1. <b>Direktur Infrastruktur Ekosistem Syariah di KNEKS</b>&nbsp;&nbsp;</div><div>&nbsp; &nbsp;Dalam peran ini, Sutan Emir Hidayat memimpin berbagai inisiatif strategis untuk mengembangkan ekosistem ekonomi syariah di Indonesia. Tanggung jawabnya meliputi:&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Membangun infrastruktur ekonomi syariah yang berkelanjutan.&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Mengembangkan sektor industri halal, termasuk makanan, kosmetik, farmasi, dan pariwisata halal.&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Meningkatkan literasi dan inklusi keuangan syariah melalui program edukasi dan promosi.&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Mendorong pertumbuhan filantropi Islam seperti zakat dan wakaf.&nbsp;&nbsp;</div><div><br></div><div>2. Akademisi dan Peneliti&nbsp;&nbsp;</div><div>&nbsp; &nbsp;Sebelum bergabung dengan KNEKS, Sutan Emir Hidayat memiliki pengalaman panjang sebagai dosen dan peneliti. Ia mengajar di beberapa universitas terkemuka di Indonesia dan luar negeri, dengan fokus pada mata pelajaran:&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Keuangan Islam&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Perbankan Syariah&nbsp;&nbsp;</div><div>&nbsp; &nbsp;- Manajemen Risiko dalam Keuangan Syariah&nbsp;&nbsp;</div><div><br></div><div>3. <b>Konsultan dan Pembicara Internasional</b>&nbsp;&nbsp;</div><div>&nbsp; &nbsp;Sutan Emir sering menjadi pembicara dalam forum-forum internasional tentang keuangan syariah dan ekonomi Islam. Ia juga terlibat dalam proyek-proyek konsultasi yang berhubungan dengan implementasi keuangan syariah di berbagai negara.&nbsp;&nbsp;</div><div><br></div><div><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-size: 0.84rem; text-align: var(--bs-body-text-align);"><b>Pencapaian Penting</b></span></div><div>- <b>Peningkatan Daya Saing Industri Halal</b>&nbsp;&nbsp;</div><div>&nbsp; Mengembangkan program strategis untuk mendukung sertifikasi halal dan meningkatkan ekspor produk halal Indonesia.&nbsp;&nbsp;</div><div><br></div><div>- <b>Mendorong Kolaborasi Global</b>&nbsp;&nbsp;</div><div>&nbsp; Membawa Indonesia ke panggung internasional melalui kolaborasi dengan organisasi global di bidang ekonomi syariah.&nbsp;&nbsp;</div><div><br></div><div>- <b>Penguatan UMKM Syariah</b>&nbsp;</div><div>&nbsp; Membantu pelaku UMKM masuk ke ekosistem ekonomi syariah melalui akses pembiayaan syariah dan pelatihan kewirausahaan.&nbsp;&nbsp;</div><div><br></div><div>- *Pendidikan dan Literasi Keuangan Syariah*&nbsp;&nbsp;</div><div>&nbsp; Aktif dalam memberikan edukasi kepada masyarakat dan institusi untuk meningkatkan pemahaman tentang manfaat ekonomi syariah.&nbsp;&nbsp;</div><div><br></div><div><span style="color: var(--bs-card-color); background-color: var(--bs-card-bg); font-size: 0.84rem; text-align: var(--bs-body-text-align);"><b>Visi dan Komitmen</b></span></div><div>Sutan Emir Hidayat berkomitmen untuk:&nbsp;&nbsp;</div><div>1. Menjadikan Indonesia sebagai pusat ekonomi dan keuangan syariah dunia.&nbsp;&nbsp;</div><div>2. Mengembangkan industri halal yang kompetitif di pasar global.&nbsp;&nbsp;</div><div>3. Meningkatkan inklusi keuangan syariah, terutama di kalangan masyarakat kecil dan menengah.&nbsp;&nbsp;</div><div>4. Mengintegrasikan inovasi teknologi dalam pengembangan keuangan syariah.</div>	0	null	null	null	null	null
7	Oza Olavia,S.Si,Apt,M.Si	Plt. Kepala Sekretariat	1672214633-presiden.png	kneks	\N	0	null	null	null	null	null
8	Suroso, M. M.	Direktur Keuangan dan Umum	1672214644-wakil-presiden.png	kneks	\N	0	null	null	null	null	null
9	Gandy Setiawan,S.E.,M.P.P.	Direktur Pemantauan Program dan Kinerja	1672214653-img-kemenkeu.png	kneks	\N	0	null	null	null	null	null
10	Komite Nasional Ekonomi dan Keuangan Syariah	Manajemen Eksekutif	1672214708-img-knks_old_0721a.png	kneks	\N	0	null	null	null	null	null
11	Anggota	Anggota	1672214720-anggota.png	kneks	\N	0	null	null	null	null	null
12	Suroso, M. M.	Direktur Keuangan dan Umum	1698047837-pak suroso.png	kneks	\N	0	null	null	null	null	null
13	Gandy Setiawan, S.E., M.P.P.	Direktur Pemantauan Program dan Kinerja	1718428031-1698051145-pak Gandy.png	kneks	\N	0	null	null	null	null	null
1	KH. Sholahudin Al Aiyub, M.Si.	Direktur Eksekutif	https://webdev.rifhandi.com/uploads/structure/WhatsApp_Image_2024-09-12_at_09.50.24-removebg-preview.png	kneks	<div>KH. Sholahudin Al Aiyub, M.Si. adalah salah satu tokoh terkemuka di Indonesia dalam bidang ekonomi syariah, keuangan, dan transformasi digital. Beliau memiliki pengalaman yang sangat panjang dalam pemerintahan, perbankan, dan pengembangan ekonomi. Berikut adalah rangkuman perjalanan karier dan kiprahnya:</div><div><br></div><div><b>Pendidikan dan Awal Karier</b></div><div>Ventje Rahardjo menempuh pendidikan di bidang ekonomi dan keuangan, yang menjadi landasan bagi kariernya. Ia memulai karier di *Bank Indonesia (BI)*, lembaga otoritas moneter di Indonesia, di mana ia menjabat di berbagai posisi strategis. Selama berkarier di BI, Ventje aktif dalam pengembangan kebijakan makroekonomi dan keuangan nasional.</div><div><br></div><div><b>Karier di Bank Indonesia</b></div><div>Selama lebih dari dua dekade, Ventje berkontribusi dalam berbagai inisiatif strategis di Bank Indonesia, termasuk pengelolaan sistem pembayaran dan pengembangan kebijakan inklusi keuangan. Ia dikenal sebagai salah satu pemimpin yang mendorong adopsi teknologi dalam sistem keuangan Indonesia.</div><div><br></div><div><b>Kepala BPDPKS</b></div><div>Ventje Rahardjo pernah menjabat sebagai *Pelaksana Harian Kepala Badan Pengelola Dana Perkebunan Kelapa Sawit (BPDPKS)*, lembaga yang bertugas mengelola dana dari sektor sawit untuk mendukung berbagai program seperti pengembangan biodiesel, riset, dan dukungan bagi petani kelapa sawit. Selama menjabat, ia memperkuat pengelolaan dana sawit untuk memaksimalkan manfaat bagi perekonomian&nbsp; nasional.</div><div><br></div><div><b>Direktur Eksekutif KNEKS</b></div><div>Ventje kemudian diangkat sebagai *Direktur Eksekutif Komite Nasional Ekonomi dan Keuangan Syariah (KNEKS)*, lembaga yang bertujuan mengembangkan ekonomi syariah di Indonesia. Dalam perannya ini, Ventje bertanggung jawab memimpin berbagai inisiatif untuk menjadikan Indonesia sebagai pusat ekonomi dan keuangan syariah global.&nbsp;</div><div><br></div><div>Beberapa pencapaian pentingnya di KNEKS meliputi:</div><div>- Mengembangkan sektor industri halal di Indonesia, termasuk makanan, pariwisata, dan fesyen.</div><div>- Meningkatkan kolaborasi antara pemerintah, lembaga keuangan, dan pelaku industri untuk mendukung pengembangan ekonomi syariah.</div><div>- Mendorong inklusi keuangan berbasis syariah melalui inovasi teknologi.</div><div><br></div><div><b>Komitmen pada Transformasi Digital dan Inklusi Keuangan</b></div><div>Ventje Rahardjo juga aktif mendorong digitalisasi sebagai bagian dari strategi inklusi keuangan, termasuk pengembangan fintech berbasis syariah. Ia percaya bahwa teknologi dapat menjadi pendorong utama pertumbuhan ekonomi yang lebih inklusif dan berkelanjutan.</div><div><br></div><div>Dengan latar belakang yang kuat di bidang kebijakan, keuangan, dan teknologi, Ventje Rahardjo telah menjadi salah satu tokoh kunci dalam upaya memperkuat posisi Indonesia di bidang ekonomi syariah dan transformasi digital.</div>	on	null	null	1	null	null
\.


--
-- Data for Name: province; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.province (id, province_name, code) FROM stdin;
1	Aceh	11
2	Sumatera Utara	12
3	Sumatera Barat	13
4	Riau	14
5	Jambi	15
7	Sumatera Selatan	16
6	Bengkulu	17
9	Lampung	18
8	Bangka Belitung	19
11	DKI Jakarta	31
12	Jawa Barat	32
13	Jawa Tengah	33
14	DI Yogyakarta	34
15	Jawa Timur	35
10	Banten	36
16	Bali 	51
17	Nusa Tenggara Barat	52
18	Nusa Tenggara Timur	53
19	Kalimantan Barat	61
20	Kalimantan Tengah	62
21	Kalimantan Selatan	63
22	Kalimantan Timur	64
23	Kalimantan Utara	65
24	Sulawesi Utara	71
25	Sulawesi Tengah	72
26	Sulawesi Selatan	73
28	Sulawesi Tenggara	74
27	Sulawesi Barat	76
29	Gorontalo	75
30	Maluku 	81
\.


--
-- Data for Name: questbook; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questbook (id, name, email, phone_number, subjek, pesan) FROM stdin;
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
1	Penguatan Halal Value Chain Indonesia	\N	\N	<p id="val3">Memperkuat seluruh rantai nilai industri halal dari hulu ke hilir melalui pembangunan halal hub di daerah, pengembangan standar halal, kampanye gaya hidup halal, penyediaan insentif bagi pelaku usaha dan pembangunan pusat halal internasional.</p>	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Strengthening Halal Value Chain	<p id="val4">Strengthening the entire value chain of the halal industry from upstream to downstream through the development of halal hubs in the regions, developing halal standards, halal lifestyle campaigns, providing incentives for businesses and building international halal centers.</p>	kneks
2	Penguatan Usaha Mikro, Kecil, dan Menengah (UMKM)	../../images/lingkup/icons/ic-ekonomi-dan-keuangan-mikro-syariah.svg	../../images/lingkup/img-ekonomi-dan-keuangan-mikro-syariah.jpg	Memperkuat pelaku UMKM industri halal dan mendorong pencapaian pemerataan kesejahteraan dan kemandirian ekonomi bangsa melalui penyediaan program edukasi dan literasi, penyediaan fasilitas pembiayaan syariah terintegrasi, serta pembangunan database UMKM.	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Strengthening Micro, Small and Medium Enterprises (MSMEs)	Strengthen the halal MSME industry and encourage the achievement of equitable welfare and independence of the nation's economy through the provision of education and literacy programs, the provision of integrated Islamic financing facilities, and the construction of MSME databases.	kneks
3	Penguatan Fatwa, Regulasi dan Tata Kelola	../../images/lingkup/icons/ic-dana-sosial-keagamaan.svg	../../images/lingkup/img-dana-sosial-keagamaan.jpg	Memperkuat penyediaan iklim usaha Industri Keuangan Syariah Dan Industri Halal dengan adanya kepastian hukum, proses yang mudah dan tata kelola yang baik.	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Strengthening Fatwa, Regulations and Governance	Strengthening the provision of a business climate for the Sharia Financial Industry and Halal Industry with legal certainty, easy processes and good governance.	kneks
4	Penguatan Ekonomi Digital	../../images/lingkup/icons/ic-ekonomi-digital.svg	../../images/lingkup/img-ekonomi-digital.jpg	Memperkuat pelaku industri halal dengan memanfaat dan mengoptimalkan layanan digital baik pembiayaan, pemasaran dan kapasitas produksi melalui penyediaan hala market place, pembentukan incubator start-up, dan sistem informasi terintegrasi untuk traceability produk halal.	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	Strengthening the Digital Economy	Strengthening halal industry players by utilizing and optimizing digital services both financing, marketing and production capacity through the provision of hala market place, establishment of incubator start-ups, and integrated information systems for traceability of halal products.	kneks
\.


--
-- Data for Name: sk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sk (id, title, title_en, content, content_en, doc_link) FROM stdin;
1	sss	sss	\N	\N	\N
2	ssssaaaddd	ssssaaaddd	\N	\N	\N
\.


--
-- Data for Name: slideshow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.slideshow (id, image, title, title_en, content, content_en, web_identity, status, date_created) FROM stdin;
2	https://webdev.rifhandi.com/assets/images/banner/def.jpg	Mencapai Kesejahteraan dan Maqashid Syariah	Achieve Welfare and Maqashid Syariah	<p>Dengan mengembangkan ekonomi dan keuangan syariah yang kuat, sehat dan berkelanjutan serta sesuai maqashid syariah</p>	<p>by developing a strong, healthy and sustainable sharia economy and finance and in accordance with maqashid sharia.</p>	kneks	on	2025-12-12
1	https://webdev.rifhandi.com/assets/images/banner/asb.jpg	Menyatukan langkah, Memajukan Negeri Kita	Uniting steps, Advancing the Country	\N	\N	kneks	on	2025-12-12
\.


--
-- Data for Name: social_medias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_medias (id, name, logo, link, created_at, "updated_at	", deleted_at, web_identity) FROM stdin;
1	Instagram	fab fa-instagram	https://www.instagram.com/kneks.id/?hl=id	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	kneks
2	Youtube	fab fa-youtube	https://www.youtube.com/channel/UCkoy3PTHaKD5OIh3Jx-cGsg?view_as=subscriber	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	kneks
3	LinkedIn	fab fa-linkedin	https://www.linkedin.com/company/komite-nasional-keuangan-syariah/about/	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	kneks
4	Facebook	fab fa-fb	https://web.facebook.com/kneks.id/	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	kneks
5	X	fab fa-x	https://x.com/kneks_id	2019-05-09 08:05:42	2019-05-09 08:05:42	2019-05-09 08:05:42	kneks
\.


--
-- Data for Name: sourcedata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sourcedata (id, dataset, source, date_created, dataset_en, description, produsen_data, tanggal_update, api_data) FROM stdin;
6	Data Set G	OJK	2025-01-01 00:00:00	Data Set G	Ini Deskripsi	OJK	2025-02-13	https://dashboard-dev.kneks.go.id/api/aus/indikator-aus
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

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, role_id, web_identity, roles_user, active, approve, ip_address, directorat_id, id_province, approve_by, approve_date) FROM stdin;
2	Admin KNKS	humas@knks.go.id	\N	827ccb0eea8a706c4c34a16891f84e7b	zXytkhb0eQdVXb23VEqomsBJrBSOcox57ryZOxabvxcK7VaE5JKdL0o380S9	2019-05-10 00:22:13	2024-07-31 21:03:27	1	kneks	\N	\N	Y	\N	0	0	null	\N
4	multimedia	multimedia1@admin.com	\N	827ccb0eea8a706c4c34a16891f84e7b	\N	2019-06-14 01:16:36	2024-07-31 21:04:28	5	kneks	\N	\N	Y	\N	0	0	null	\N
6	ACHMAD IQBAL	achmad.iqbal@knks.go.id	\N	827ccb0eea8a706c4c34a16891f84e7b	4VlImWjTuXYFcQ5jIidHpcuN5OU75ooVGW2OGtGNT4RKcQ3UrtCsyClA5spS	2019-06-14 01:23:13	2024-07-31 21:05:17	4	kneks	\N	\N	Y	\N	0	0	null	\N
7	Ishmah Qurratu'ain	ishmah.qurratu@kneks.go.id	\N	827ccb0eea8a706c4c34a16891f84e7b	TCgOEBfIG55TbHhv0NEEhLJaRc2wVFTeiSJwiYSz8E14JGMzK1VL6BJquNzK	2019-06-14 01:45:42	2024-07-31 21:33:06	3	kneks	\N	\N	Y	\N	0	0	null	\N
8	Khairana Izzati	khairana.izzati@knks.go.id	\N	827ccb0eea8a706c4c34a16891f84e7b	kwDMjX2W6eXeZvY32v5IDJXzt9Q421aC2tOlkiX7pJwiiSn3PTHOu4MsOGSB	2019-06-14 02:05:02	2024-07-31 21:05:43	3	kneks	\N	\N	Y	\N	0	0	null	\N
9	Miftah Achyar	miftahul@kneks.go.id	\N	827ccb0eea8a706c4c34a16891f84e7b	sK4ArqHZ4U6RcATM9u9LugjY4Iz6hU47Ma19MMZpQkMp2stj5rpcvD8BEm7E	2022-04-13 02:53:30	2024-07-31 21:33:40	4	kneks	\N	\N	Y	\N	0	0	null	\N
15	Co-Admin	coadmin@kneks.go.id	\N	827ccb0eea8a706c4c34a16891f84e7b	\N	2024-12-13 03:28:05	2024-12-13 03:28:05	2	kneks	4	1	Y	110.138.84.193	0	0	null	\N
13	Kdeks	kdeks@kneks.go.id	\N	827ccb0eea8a706c4c34a16891f84e7b	\N	2024-12-13 02:37:07	2024-12-13 02:37:07	6	kneks	4	\N	Y	110.138.84.193	2	15	null	\N
12	Kontributor	kontributor@kneks.go.id	\N	827ccb0eea8a706c4c34a16891f84e7b	\N	2024-12-13 02:36:30	2024-12-13 02:36:30	3	kneks	4	\N	Y	110.138.84.193	2	0	null	\N
14	anggota	anggota@kneks.go.id	2024-12-13 02:37:28	827ccb0eea8a706c4c34a16891f84e7b	\N	2024-12-13 02:37:28	2024-12-13 02:37:28	7	kneks	4	1	Y	110.138.84.193	0	0	null	\N
18	SuperAdmin	superadmin@kneks.go.id	superadmin@kneks.go.id	827ccb0eea8a706c4c34a16891f84e7b		2019-05-09 08:05:42	2019-05-09 08:05:42	1	kneks	1	1	Y	110.138.84.193	0	0	Administrator	2019-05-09 08:05:42
11	Redaktur	redaktur@kneks.go.id	\N	827ccb0eea8a706c4c34a16891f84e7b	\N	2024-12-13 02:36:03	2024-12-13 02:36:03	4	kneks	4	\N	Y	110.138.84.193	0	0	null	\N
3	redaktur	redaktur1@admin.com	\N	827ccb0eea8a706c4c34a16891f84e7b	\N	2019-06-14 01:16:15	2024-07-31 21:03:49	4	kneks	\N	\N	Y	110.138.84.193	0	0	null	\N
10	Hafied Rum	hafied.rum@kneks.go.id	\N	827ccb0eea8a706c4c34a16891f84e7b	CMDFiUSE64nGAhkcFBogylHD4yLCuiziKCuqNDBSNJltonDbAd1okFU20ZRl	2022-07-11 07:49:13	2024-07-31 21:34:55	1	kneks	\N	\N	Y	36.93.93.156	0	0	null	\N
5	admin2	admin2@kneks.go.id	\N	827ccb0eea8a706c4c34a16891f84e7b	1TsyqOEsdl7vFXcH9ug6JTQn9zGqUF64XjRcTIoiic5gUl2AO2ErTECTbq7o	2019-06-14 01:17:04	2024-07-31 21:04:48	1	kneks	\N	\N	Y	140.213.139.217	2	14	null	\N
17	RifqiMuhammad	muhammad45rifqi@gmail.com	\N	827ccb0eea8a706c4c34a16891f84e7b	\N	2024-12-24 02:53:17	2024-12-24 02:53:17	1	kneks	1	1	Y	112.215.146.93	0	0	null	\N
1	Administrator	admin@kneks.go.id	NULL	827ccb0eea8a706c4c34a16891f84e7b		2019-05-09 08:05:42	2024-08-12 13:30:00	1	kneks	1	1	Y	110.138.84.193	0	0	null	\N
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
1	web titles	https://webdev.rifhandi.com/uploads/news/web13.jpg	https://webdev.rifhandi.com/uploads/news/web13.jpg	#FFFFFF
\.


--
-- Name: abouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.abouts_id_seq', 75, true);


--
-- Name: agendas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agendas_id_seq', 178, true);


--
-- Name: api_meta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_meta_id_seq', 3, true);


--
-- Name: banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banners_id_seq', 2, true);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacts_id_seq', 1, true);


--
-- Name: custom_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.custom_page_id_seq', 3, true);


--
-- Name: db_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.db_event_id_seq', 17, true);


--
-- Name: devisi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.devisi_id_seq', 2, true);


--
-- Name: directorats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.directorats_id_seq', 7, true);


--
-- Name: hot_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hot_categories_id_seq', 7, true);


--
-- Name: hot_issues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hot_issues_id_seq', 40, true);


--
-- Name: hot_subcategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hot_subcategories_id_seq', 16, true);


--
-- Name: institutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.institutions_id_seq', 16, true);


--
-- Name: ip_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ip_address_id_seq', 81, true);


--
-- Name: kdeks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kdeks_id_seq', 58, true);


--
-- Name: khas_zone_city_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.khas_zone_city_seq', 1, false);


--
-- Name: khas_zone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.khas_zone_id_seq', 21, true);


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

SELECT pg_catalog.setval('public.map_id_seq', 1, true);


--
-- Name: menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_id_seq', 9, true);


--
-- Name: menu_sub_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_sub_id_seq', 15, true);


--
-- Name: naration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.naration_id_seq', 6, true);


--
-- Name: news_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_categories_id_seq', 5, true);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_id_seq', 182, true);


--
-- Name: news_photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_photos_id_seq', 121, true);


--
-- Name: news_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_videos_id_seq', 12, true);


--
-- Name: opini_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.opini_id_seq', 8, true);


--
-- Name: province_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.province_id_seq', 31, true);


--
-- Name: questbook_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questbook_id_seq', 1, false);


--
-- Name: report_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.report_categories_id_seq', 10, true);


--
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reports_id_seq', 223, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 7, true);


--
-- Name: scopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.scopes_id_seq', 4, true);


--
-- Name: sk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sk_id_seq', 2, true);


--
-- Name: social_medias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_medias_id_seq', 5, true);


--
-- Name: sourcedata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sourcedata_id_seq', 6, true);


--
-- Name: statistic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.statistic_id_seq', 7, true);


--
-- Name: statistic_slide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.statistic_slide_id_seq', 5, true);


--
-- Name: structure_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.structure_assets_id_seq', 16, true);


--
-- Name: sub_slide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sub_slide_id_seq', 3, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tags_id_seq', 6, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 18, true);


--
-- Name: web_identity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_identity_id_seq', 1, false);


--
-- Name: web_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_profile_id_seq', 1, true);


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
-- Name: data_dashboard api_meta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_dashboard
    ADD CONSTRAINT api_meta_pkey PRIMARY KEY (id);


--
-- Name: slideshow banners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slideshow
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: banner custom_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banner
    ADD CONSTRAINT custom_page_pkey PRIMARY KEY (id);


--
-- Name: db_event db_event_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.db_event
    ADD CONSTRAINT db_event_pkey PRIMARY KEY (id);


--
-- Name: devisi devisi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devisi
    ADD CONSTRAINT devisi_pkey PRIMARY KEY (id);


--
-- Name: directorats directorats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directorats
    ADD CONSTRAINT directorats_pkey PRIMARY KEY (id);


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
-- Name: khas_zone id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.khas_zone
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- Name: opini id_opini; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opini
    ADD CONSTRAINT id_opini PRIMARY KEY (id);


--
-- Name: sk id_sk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sk
    ADD CONSTRAINT id_sk PRIMARY KEY (id);


--
-- Name: institutions institutions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_pkey PRIMARY KEY (id);


--
-- Name: ip_address ip_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ip_address
    ADD CONSTRAINT ip_address_pkey PRIMARY KEY (id);


--
-- Name: kdeks kdeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kdeks
    ADD CONSTRAINT kdeks_pkey PRIMARY KEY (id);


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
-- Name: files_categories report_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_categories
    ADD CONSTRAINT report_categories_pkey PRIMARY KEY (id);


--
-- Name: files reports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
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
-- Name: sourcedata sourcedata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sourcedata
    ADD CONSTRAINT sourcedata_pkey PRIMARY KEY (id);


--
-- Name: data_menu statistic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_menu
    ADD CONSTRAINT statistic_pkey PRIMARY KEY (id);


--
-- Name: data_slider statistic_slide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_slider
    ADD CONSTRAINT statistic_slide_pkey PRIMARY KEY (id);


--
-- Name: pejabat structure_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pejabat
    ADD CONSTRAINT structure_assets_pkey PRIMARY KEY (id);


--
-- Name: data_submenu sub_slide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_submenu
    ADD CONSTRAINT sub_slide_pkey PRIMARY KEY (id);


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

