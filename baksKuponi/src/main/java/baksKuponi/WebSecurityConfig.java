package baksKuponi;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder  auth) throws Exception {
		auth.inMemoryAuthentication()
        .withUser("baks")
        .password("{noop}najomiljenija")
        .roles("USER")
        .and()
        .withUser("dac")
        .password("{noop}najjaci")
        .roles("ADMIN");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.csrf().disable()
		.authorizeRequests()
		//.antMatchers("/baksbaks/uslovi").hasRole("USER")
		.antMatchers("/baksbaks/home","baksbaks/uslovi","baksbaks/sviKuponi").permitAll()
		.antMatchers("/baksbaks/crveni/**").hasAnyRole("USER","ADMIN")
		.and()
		.formLogin()
		.and()
		.logout()
		.logoutSuccessUrl("/baksbaks/homeLogout");
	}
	
//	@Bean
//	@Override
//	public UserDetailsService userDetailsService() {
//		UserDetails user =
//			 User.withDefaultPasswordEncoder()
//				.username("baks")
//				.password("1234")
//				.roles("USER")
//				.build();
//
//		return new InMemoryUserDetailsManager(user);
//	}
}