package com.example.security;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.mysql.cj.jdbc.Driver;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.lang.NonNull;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.Logger;

@Configuration
@EnableWebMvc
@ComponentScan("com.example")
@PropertySource("classpath:databaseconnection.properties")
public class WebMVcConfig implements ServletContextListener {
    @Autowired
    Environment env;

    private Logger logger=Logger.getLogger(getClass().getName());


    @Bean
    public PasswordEncoder passwordEncoder(){
        return new PasswordEnconderTest();
    }

    //datasource
    @Bean("securitytest")
    public DataSource dataSource(){
        //create connection pool
        ComboPooledDataSource comboPooledDataSource = new ComboPooledDataSource();

        //set the jdbc driver

        try {
            comboPooledDataSource.setDriverClass(env.getProperty("jdbc.driver"));

        } catch (PropertyVetoException e) {
            e.printStackTrace();
        }

        logger.info("::::::::::::::jdbc.url:"+env.getProperty("jdbc.url"));
        logger.info("::::::::::::::jdbc.user:"+env.getProperty("jdbc.user"));
        //set database connection properties
        comboPooledDataSource.setJdbcUrl(env.getProperty("jdbc.url"));
        comboPooledDataSource.setUser(env.getProperty("jdbc.user"));
        comboPooledDataSource.setPassword(env.getProperty("jdbc.password"));

        //set connection pool props
        comboPooledDataSource.setInitialPoolSize(Integer.parseInt(env.getProperty("connection.pool.initialPoolsize")));
        comboPooledDataSource.setMaxPoolSize(Integer.parseInt(env.getProperty("connection.pool.maxPoolsize")));
        comboPooledDataSource.setMinPoolSize(Integer.parseInt(env.getProperty("connection.pool.minPoolsize")));
        comboPooledDataSource.setMaxIdleTime(Integer.parseInt(env.getProperty("connection.pool.maxIdleTime")));

        return comboPooledDataSource;

    }

    @Bean
    public SqlSessionFactory sqlSessionFactory() throws Exception {
        SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
        factoryBean.setDataSource(dataSource());
        return factoryBean.getObject();
    }

    //    view resolver
    @Bean
    public ViewResolver viewResolver(){
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();

        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".jsp");
        return  viewResolver;
    }




    /**
     * Deregisters the JDBC drivers distributed with the application.
     */
    @Override
    public void contextDestroyed(ServletContextEvent event) {
        final ClassLoader cl = event.getServletContext().getClassLoader();
        final Enumeration<java.sql.Driver> drivers = DriverManager.getDrivers();
        while (drivers.hasMoreElements()) {
            final Driver driver = (Driver) drivers.nextElement();
            // We deregister only the classes loaded by this application's classloader
            if (driver.getClass().getClassLoader() == cl) {
                try {
                    DriverManager.deregisterDriver(driver);
                } catch (SQLException e) {
                    event.getServletContext().log("JDBC Driver deregistration failure.", e);
                }
            }
        }
    }

    /**
     * Registers the JDBC drivers distributed with the application.
     */
    @Override
    public void contextInitialized(ServletContextEvent event) {
        Iterator<Driver> driversIterator = ServiceLoader.load(Driver.class).iterator();
        while (((Iterator<?>) driversIterator).hasNext()) {
            try {
                // Instantiates the driver
                driversIterator.next();
            } catch (Throwable t) {
                event.getServletContext().log("JDBC Driver registration failure.", t);
            }
        }
    }

}
