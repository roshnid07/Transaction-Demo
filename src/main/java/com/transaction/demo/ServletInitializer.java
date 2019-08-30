package com.transaction.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;


public class ServletInitializer extends SpringBootServletInitializer {

    public static void main(String[] args) throws Exception {
        SpringApplication.run(MybatisDemoApplication.class, args);

        // Load region details in the cache
//        new MyBatisMapperManager().loadRegionDetails();
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        setRegisterErrorPageFilter(false);

        return application.sources(MybatisDemoApplication.class);
    }
}
