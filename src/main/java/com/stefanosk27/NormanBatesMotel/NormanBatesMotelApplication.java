package com.stefanosk27.NormanBatesMotel;

import org.hibernate.SessionFactory;
import org.hibernate.jpa.HibernateEntityManagerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@SpringBootApplication
@Configuration
public class NormanBatesMotelApplication {

	public static void main(String[] args) {
		SpringApplication.run(NormanBatesMotelApplication.class, args);


	}
	
    @Bean  
    public SessionFactory sessionFactory(HibernateEntityManagerFactory hemf){  
        return hemf.getSessionFactory();  
    }  
	
	
	
	
}
