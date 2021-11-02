package com.example.security;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Bean(name = "mySqlDataSource")
    @Primary
    public DataSource mySqlDataSource()
    {
        DataSourceBuilder dataSourceBuilder = DataSourceBuilder.create();
        dataSourceBuilder.url("jdbc:mysql://localhost/eswtmvc");
        dataSourceBuilder.username("root");
        dataSourceBuilder.password("fas96");
        return dataSourceBuilder.build();
    }
    @Qualifier("mySqlDataSource")
    @Autowired
    private DataSource dataSource;

    @Bean
    PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
//        ,"**/ShopmeAdmin/**/**", "/home"
        http
                .csrf().disable()
                .authorizeRequests()
                .antMatchers("/css/**","/ShopmeAdmin/users/new","/ShopmeAdmin/" ).permitAll()
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/login")
                .loginProcessingUrl("/doLogin")
                .usernameParameter("email")
                .passwordParameter("password")
                .permitAll()
                .and()
                .logout()
                .permitAll();
    }
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth)
            throws Exception {
        auth.jdbcAuthentication()
                .dataSource(dataSource)
                .passwordEncoder(passwordEncoder())
                .usersByUsernameQuery("select email ,password,enabled "
                        + "from  users "
                        + "where email = ?")
                .authoritiesByUsernameQuery("select u.email,r.name  from users_roles ur inner join  users u on ur.user_id=u.id  inner join roles r on ur.role_id=r.id  where u.email =?");
    }

}