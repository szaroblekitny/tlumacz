/*
 * Copyright (c) 2017 Wojciech Zaręba
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

-- Table: public.grupy_deklinacyjne

CREATE TABLE public.grupy_deklinacyjne
(
    grupa_deklin integer NOT NULL,
    dod_opis character varying(10) COLLATE pg_catalog."default",
    mianownik_lp character varying(10) COLLATE pg_catalog."default",
    dopelniacz_lp character varying(10) COLLATE pg_catalog."default",
    celownik_lp character varying(10) COLLATE pg_catalog."default",
    biernik_lp character varying(10) COLLATE pg_catalog."default",
    narzednik_lp character varying(10) COLLATE pg_catalog."default",
    miejscownik_lp character varying(10) COLLATE pg_catalog."default",
    wolacz_lp character varying(10) COLLATE pg_catalog."default",
    mianownik_lm character varying(10) COLLATE pg_catalog."default",
    dopelniacz_lm character varying(10) COLLATE pg_catalog."default",
    celownik_lm character varying(10) COLLATE pg_catalog."default",
    biernik_lm character varying(10) COLLATE pg_catalog."default",
    narzednik_lm character varying(10) COLLATE pg_catalog."default",
    miejscownik_lm character varying(10) COLLATE pg_catalog."default",
    CONSTRAINT grupy_deklinacyjne_pkey PRIMARY KEY (grupa_deklin)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.grupy_deklinacyjne
    OWNER to postgres;

COMMENT ON TABLE public.grupy_deklinacyjne
    IS 'Tabelka na grupy deklinacyjne rzeczowników. Wołacz liczby mnogiej jest jak mianownik.';
