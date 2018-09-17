BEGIN;

CREATE TABLE IF NOT EXISTS public.city (
    "id" uuid DEFAULT uuid_generate_v4() NOT NULL, -- PRIMARY KEY
    "s_id" text DEFAULT NULL, -- STATE UUID KEY
    "name" character varying(255) DEFAULT NULL::character varying, -- CITY NAME
    "province" character varying(255) DEFAULT NULL::character varying, -- CITY MAILING ISO CODE
    PRIMARY KEY(id)
);

COMMIT;