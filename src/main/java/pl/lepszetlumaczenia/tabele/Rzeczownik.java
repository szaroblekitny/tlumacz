/** 
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
package pl.lepszetlumaczenia.tabele;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Klasa reprezentująca tabelkę rzeczowniki. Tu wrzucam rzeczowniki
 * bez odmiany. Za odmianę odpowiada klasa PolskiRzeczownik.
 *
 * @author Wojciech Zaręba
 *
 */
@Entity
@Table(name="rzeczowniki", schema="public")
public class Rzeczownik {
	/**
	 * Identyfikator - klucz główny.
	 */
	@Id
	@Column(name="kod_rzeczownika", nullable=false)
	private int kodReczownika;
	
	/**
	 * Temat rzeczownika - rdzeń, do którego przyklejane są
	 * przedroski i przyrostki. Niestety temat może też mieć
	 * swoje wersje, bo ą przechodzi w ę, o w ó itd.
	 */
	@Column(name="temat", nullable=false)
	private String temat;
	
	/**
	 * Grupa deklinacyjna. Istnieje ok. 150 grup deklinacyjnych,
	 * po tym identyfikatorze przeprowadzane jest przetwarzanie
	 * do ostatecznej formy rzeczownika.
	 */
	@Column(name="grupa_deklin", nullable=false)
	private int grupaDeklinacyjna;
	
	//------------------
	
	/**
	 * Pusty konstruktor klasy.
	 */
	public Rzeczownik() {
	}

	public int getKodReczownika() {
		return kodReczownika;
	}

	public void setKodReczownika(int kodReczownika) {
		this.kodReczownika = kodReczownika;
	}

	public String getTemat() {
		return temat;
	}

	public void setTemat(String temat) {
		this.temat = temat;
	}

	public int getGrupaDeklinacyjna() {
		return grupaDeklinacyjna;
	}

	public void setGrupaDeklinacyjna(int grupaDeklinacyjna) {
		this.grupaDeklinacyjna = grupaDeklinacyjna;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Rzeczownik [kodReczownika=" + kodReczownika + ", temat=" + temat + ", grupaDeklinacyjna="
				+ grupaDeklinacyjna + "]";
	}
	
	
}
