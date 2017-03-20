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
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.jta.JtaTransactionManager;

/**
 * Klasa z konfiguracją bazy danych Postgres. Cała reszta konfiguracji jest
 * importowana z klasy Konfiguracja. Takiego rozdzielenia dokonałem ze względu
 * na fakt, że testy jednostkowe są robione na bazie danych tworzonej dynamicznie
 * w pamięci operacyjnej (hsqldb). 
 * 
 * @author Wojciech Zaręba
 *
 */
@Configuration
@EnableTransactionManagement
@EnableJpaRepositories("pl.lepszetlumaczenia.repozytoria")
@Import(Konfiguracja.class)
public class GlownaKonfiguracja {
	private static final Logger LLG = Logger.getLogger(GlownaKonfiguracja.class.getName());
	
	
	/**
	 * Manager transakcji odpowiada za spójność danych utrwalanych w
	 * w bazie, czyli transakcyjność.
	 * 
	 * @return zawiadowcę transakcji typu JTA (Java Transaction API), deleguje
	 *         obsługę transakcji do kontenera JEE (Java Enterprise Edition)
	 */
	@Bean
	public PlatformTransactionManager transactionManager() {
		LLG.debug("----->>> PlatformTransactionManager bean configuration");
		JtaTransactionManager transactionManager = new JtaTransactionManager();

		return transactionManager;
	}

}
