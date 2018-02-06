package com.stefanosk27.NormanBatesMotel;

import java.awt.Desktop;
import java.net.URI;
import org.hibernate.SessionFactory;
import org.hibernate.jpa.HibernateEntityManagerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import java.io.IOException;
import java.net.URISyntaxException;


@SpringBootApplication
@Configuration
public class NormanBatesMotelApplication /*extends SpringBootServletInitializer*//* extends WebMvcConfigurerAdapter*/ {

	public static void main(String[] args) {
		SpringApplication.run(NormanBatesMotelApplication.class, args);
		
		 String url = "http://localhost:8080/getAllComments";

	        if(Desktop.isDesktopSupported()){
	            Desktop desktop = Desktop.getDesktop();
	            try {
	                desktop.browse(new URI(url));
	            } catch (IOException | URISyntaxException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	        }else{
	            Runtime runtime = Runtime.getRuntime();
	            try {
	                runtime.exec("rundll32 url.dll,FileProtocolHandler " + url);
	            } catch (IOException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	        }


	}
	
    @Bean  
    public SessionFactory sessionFactory(HibernateEntityManagerFactory hemf){  
        return hemf.getSessionFactory();  
    }  
	
	
	
	
}
