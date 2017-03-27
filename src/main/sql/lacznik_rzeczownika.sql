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

-- Table: public.lacznik_rzeczownika

CREATE TABLE public.lacznik_rzeczownika
(
    kod_slowa integer NOT NULL,
    kod_rzeczownika integer NOT NULL
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.lacznik_rzeczownika
    OWNER to postgres;
COMMENT ON TABLE public.lacznik_rzeczownika
    IS 'Połączenie pomiędzy angielskim slowem a polskim rzeczownikiem.';

-- Index: ux1_lacznik_rzeczownika
CREATE INDEX ux1_lacznik_rzeczownika
    ON public.lacznik_rzeczownika USING btree
    (kod_slowa)
    TABLESPACE pg_default;

COMMENT ON INDEX public.ux1_lacznik_rzeczownika
    IS 'Łącznik po kodzie słowa ang.';

-- Index: ux2_lacznik_rzeczownika
CREATE INDEX ux2_lacznik_rzeczownika
    ON public.lacznik_rzeczownika USING btree
    (kod_rzeczownika)
    TABLESPACE pg_default;

COMMENT ON INDEX public.ux2_lacznik_rzeczownika
    IS 'Łącznik rzeczownika po kodzie rzeczownika.';
