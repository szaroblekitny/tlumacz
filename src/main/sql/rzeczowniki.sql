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

-- Table: public.rzeczowniki

CREATE TABLE public.rzeczowniki
(
    kod_rzeczownika integer NOT NULL,
    temat character varying(200) COLLATE pg_catalog."default" NOT NULL,
	grupa_deklin integer NOT NULL,
	mianownik_lp character varying(200) COLLATE pg_catalog."default",
	dopel_lp character varying(200) COLLATE pg_catalog."default",
	celow_lp character varying(200) COLLATE pg_catalog."default",
	biernik_lp character varying(200) COLLATE pg_catalog."default",
	miejsc_lp character varying(200) COLLATE pg_catalog."default",
	narzednik_lp character varying(200) COLLATE pg_catalog."default",
	wolacz_lp character varying(200) COLLATE pg_catalog."default",
	mianownik_lm character varying(200) COLLATE pg_catalog."default",
	dopel_lm character varying(200) COLLATE pg_catalog."default",
	celow_lm character varying(200) COLLATE pg_catalog."default",
	biernik_lm character varying(200) COLLATE pg_catalog."default",
	miejsc_lm character varying(200) COLLATE pg_catalog."default",
	narzednik_lm character varying(200) COLLATE pg_catalog."default",
	tylko_lp boolean DEFAULT FALSE,
	tylko_lmn boolean DEFAULT FALSE,
    CONSTRAINT pk_rzeczowniki PRIMARY KEY (kod_rzeczownika)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.rzeczowniki
    OWNER to postgres;
COMMENT ON TABLE public.rzeczowniki
    IS 'Tabelka na polskie rzeczowniki. Główne trzy kolumny: unikalny kod, temat i grupa deklinacyjna. Ponieważ odmiany są bardzo różne i grupy deklinacyjne są jedynie pomocniczym wskaźnikiem, muszą istnieć pola do trzymania wszystkich form rzeczownika, choć większość z nich będzie nie wypełniona, jeśli grupa deklinacyjna zapewni prawidłową odmianę. Pola tylko_lp i tylko_lmn są wskaźnikami, że rzeczownik może wystąpić tylko w liczbie pojedynczej albo tylko mnogiej';

-- Index: ux1_rzeczowniki
CREATE INDEX ux1_rzeczowniki
    ON public.rzeczowniki USING btree
    (grupa_deklin)
    TABLESPACE pg_default;

COMMENT ON INDEX public.ux1_rzeczowniki
    IS 'Grupy deklinacyjne rzeczowników. ';
