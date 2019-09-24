package br.com.samuel.ecommerce.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import br.com.samuel.ecommerce.daos.UsuarioDAO;

@EnableWebSecurity 
public class SecurityConfiguration 
    extends WebSecurityConfigurerAdapter {
	
	@Autowired
    private UsuarioDAO usuarioDao;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
	    http.authorizeRequests()
	    .antMatchers("/produto/cadastro").hasRole("ADMIN")
	    .antMatchers("/produto/").hasRole("ADMIN")
	    .antMatchers("/produto/**").permitAll()
	    .antMatchers("/carrinho/**").permitAll()     
	    .antMatchers("/pagamento/**").permitAll()
	    .antMatchers("/usuario/**").permitAll()
	    .antMatchers("/").permitAll()
//	    .antMatchers("/produto/cadastro").hasRole("ADMIN")
//        .antMatchers("/carrinho/**").permitAll()        
//        .antMatchers("/produto").hasRole("ADMIN")
//        .antMatchers("/produto/**").permitAll()
//        .antMatchers("/pagamento/**").permitAll()
        
               
        .anyRequest().authenticated()
        .and().formLogin().loginPage("/login")
            .defaultSuccessUrl("/").permitAll()
        .and().logout()
            .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .permitAll().logoutSuccessUrl("/");    
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(usuarioDao)
        .passwordEncoder(new BCryptPasswordEncoder());
	}
	  // Forma recomendada de ignorar no filtro de segurança as requisições para recursos estáticos
    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/resources/**");
    }

}