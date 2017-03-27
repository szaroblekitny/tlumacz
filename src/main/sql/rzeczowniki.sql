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
    CONSTRAINT pk_rzeczowniki PRIMARY KEY (kod_rzeczownika)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.rzeczowniki
    OWNER to postgres;
COMMENT ON TABLE public.rzeczowniki
    IS 'Tabelka na polskie rzeczowniki. Na początek trzy kolumny: kod, temat i grupa deklinacyjna. Tematów musi być kilka, bo jedne formy przechodzą w inne, np. brat -- bracia i trzeba to uwzględnić';

-- Index: ux1_rzeczowniki
CREATE INDEX ux1_rzeczowniki
    ON public.rzeczowniki USING btree
    (grupa_deklin)
    TABLESPACE pg_default;

COMMENT ON INDEX public.ux1_rzeczowniki
    IS 'Grupy deklinacyjne rzeczowników. ';
