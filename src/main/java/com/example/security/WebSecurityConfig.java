package com.example.security;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.User;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
//
//    @Qualifier("mysqlDatasource")
//    @Autowired
//    DataSource dataSource;

    @Qualifier("securitytest")
    @Autowired
    DataSource securitydatasource;

    @Bean
    PasswordEnconderTest passwordEncoder() {
        return new PasswordEnconderTest();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .authorizeRequests()
                .antMatchers("/admin/**").hasAnyRole("PROFESSOR","DEV","ASSIST")
//                .antMatchers("/admin/question/**").hasAnyRole("PROFESSOR","DEV")
//                .antMatchers("/student/**").hasAnyRole("STUDENT","DEV","PROFESSOR")
//                .antMatchers("/assist/**").hasAnyRole("ASSIST","DEV","PROFESSOR")
//                .antMatchers("/prof/**","/dev/**").hasAnyRole("DEV","PROFESSOR")
                .and()
                .formLogin()
                .loginPage("/login")
                .loginProcessingUrl("/authenticateTheUser")//note the authenticateTheUser is not created.
                .successForwardUrl("/home")
                .permitAll()
                .usernameParameter("member_id")
                .passwordParameter("member_password")
                .and()
                .logout()
                .logoutSuccessUrl("/login?logout=true")
                .invalidateHttpSession(true)
                .permitAll()
                .and()
                .exceptionHandling()
                .accessDeniedPage("/access-denied");
    }
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {

        auth.jdbcAuthentication().dataSource(securitydatasource)
                .passwordEncoder(passwordEncoder())
                .usersByUsernameQuery("select member_id as username, member_password as password,enabled from member u where u.member_id=?")
                .authoritiesByUsernameQuery("select  username,authority from member_roles r inner join member u on u.member_id=r.username where u.member_id=?");
    }



}

class PasswordEnconderTest implements PasswordEncoder {
    @Override
    public String encode(CharSequence charSequence) {
        return charSequence.toString();
    }

    @Override
    public boolean matches(CharSequence charSequence, String s) {
        return charSequence.toString().equals(s);
    }
}