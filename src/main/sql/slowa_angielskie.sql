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

-- Table: public.slowa_angielskie

CREATE TABLE public.slowa_angielskie
(
    kod_slowa integer NOT NULL,
    slowo character varying(200) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_slowa_angielskie PRIMARY KEY (kod_slowa)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.slowa_angielskie
    OWNER to postgres;
COMMENT ON TABLE public.slowa_angielskie
    IS 'Tu trzymam tylko słowo i jego kod cyfrowy. Wszystkie powiązania w innych tabelach.';

-- Index: ux1_slowa_angielskie

CREATE UNIQUE INDEX ux1_slowa_angielskie
    ON public.slowa_angielskie USING btree
    (slowo COLLATE pg_catalog."default")
    TABLESPACE pg_default;

COMMENT ON INDEX public.ux1_slowa_angielskie
    IS 'Indeks na słowa angielskie. Dla ułatwienia unikalny, oszczędzi to mnóstwa kłopotów.';
