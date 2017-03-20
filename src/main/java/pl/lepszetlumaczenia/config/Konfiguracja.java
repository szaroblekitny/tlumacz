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
package pl.lepszetlumaczenia.config;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;

/**
 * Klasa konfiguracji beanów Springa. Tutaj konfiguruję wszystkie beany, które są używane
 * zarówno dla testów jak i normalnej pracy aplikacji, gdyż jest ona przewidziana jako
 * klasa importowana do innych klas konfiguracyjnych.
 * 
 * @author Wojciech Zaręba
 *
 */
@Configuration
@ComponentScan(basePackages={"pl.lepszetlumaczenia.logika", "pl.lepszetlumaczenia.interfejs"})
public class Konfiguracja {
	private static final Logger LLG = Logger.getLogger(Konfiguracja.class.getName());
	
	@Bean
	public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
		LLG.debug("--------->>> konfiguracja PersistenceExceptionTranslationPostProcessor ");
		return new PersistenceExceptionTranslationPostProcessor();
	}

}
