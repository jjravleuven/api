BEGIN;

CREATE TABLE IF NOT EXISTS crm.organization (
    "id" uuid DEFAULT uuid_generate_v4() NOT NULL, -- PRIMARY KEY
    "name" character varying(255) DEFAULT NULL::character varying, -- ORGANIZATION NAME
    "group" text, -- GROUP UUID KEY
    "role" text, -- ROLE UUID KEY
    "created" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL, -- DATE ORG CREATED
    "street" character varying(150) DEFAULT NULL::character varying, -- ORG STREET (ADDRESS_1)
    "suite" character varying(150) DEFAULT NULL::character varying, -- ORG SUITE (ADDRESS_2)
    "city" text, -- ORG CITY UUID KEY -> INTEGER FROM public.city TABLE
    "state" text, -- ORG STATE UUID KEY -> 	INTEGER FROM public.city TABLE
    "country" text, -- ORG COUNTRY UUID KEY -> INTEGER FROM public.country TABLE
    "zipcode" text, -- ORG POSTAL/ZIPCODE
    "geoip" text[], -- ORG GPS LONG/LAT STRING IN AN ARRAY FOR GOOGLE-MAPS
    "lang" text[], -- ORG LANGUAGE DEFAULT ARRAY -> PRIMARY LANGAUGE IS DEFAULT IN ARRAY OF ELEMENTS
    PRIMARY KEY(id)
);

COMMIT;