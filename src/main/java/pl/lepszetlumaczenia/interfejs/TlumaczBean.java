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
package pl.lepszetlumaczenia.interfejs;

import java.io.Serializable;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import org.apache.log4j.Logger;

/**
 * Klasa obsługi strony tlumacz.xhtml.
 * 
 * @author Wojciech Zaręba
 *
 */
@SessionScoped
@ManagedBean
public class TlumaczBean implements Serializable {
	private static final long serialVersionUID = 263621857734020784L;

	private static final Logger LLG = Logger.getLogger(TlumaczBean.class.getName());
	
	private String tekstAngielski;
	private String tekstPrzetlumaczony;
	

	public String getTekstAngielski() {
		return tekstAngielski;
	}

	public void setTekstAngielski(String tekstAngielski) {
		this.tekstAngielski = tekstAngielski;
	}
	
	

}
