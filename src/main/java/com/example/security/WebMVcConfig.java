package com.example.security;

import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
public class WebMVcConfig {
    @Bean("mysqlDatasource")
    public DataSource getDataSource() {
        DataSourceBuilder<?> dataSourceBuilder = DataSourceBuilder.create();
        dataSourceBuilder.driverClassName("com.mysql.jdbc.Driver");
        dataSourceBuilder.url("jdbc:mysql://localhost:3306/eswtmvc?characterEncoding=UTF-8");
        dataSourceBuilder.username("root");
        dataSourceBuilder.password("fas96");
        return dataSourceBuilder.build();
    }
}
