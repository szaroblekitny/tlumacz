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
package pl.lepszetlumaczenia.logika;

import pl.lepszetlumaczenia.tabele.Rzeczownik;

/**
 * Reprezentacja polskich rzeczowników. Metody zwracają poszczególne przypadki
 * rzeczownika. Implementacja tego interfejsu musi uwzględnić wszelkie
 * nieregularności tematów i grup deklinacyjnych. Musi wziąć z bazy danych
 * rzeczownik i grupę deklinacyjną i inteligentnie wymyslić formę dla
 * odpowiedniego przypadku.
 * 
 * @author Wojciech Zaręba
 *
 */
public interface PolskiRzeczownik {
	public String mianownikLp();
	
	public String dopelniaczLp();
	
	public String celownikLp();
	
	public String biernikLp();
	
	public String narzednikLp();
	
	public String miejscownikLp();
	
	public String wolaczLp();
	
	public String mianownikLmn();
	
	public String dopelniaczLmn();
	
	public String celownikLmn();
	
	public String biernikLmn();
	
	public String narzednikLmn();
	
	public String miejscownikLmn();
	
	public Rzeczownik getRzecz();
	
	public void setRzecz(Rzeczownik rzecz);
	
}
