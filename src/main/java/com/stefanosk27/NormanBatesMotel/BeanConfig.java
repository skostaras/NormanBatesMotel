package com.stefanosk27.NormanBatesMotel;

import org.hibernate.SessionFactory;
import org.hibernate.jpa.HibernateEntityManagerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.orm.hibernate3.AbstractSessionFactoryBean;
import org.springframework.orm.hibernate3.annotation.AnnotationSessionFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaSessionFactoryBean;

import javax.persistence.EntityManagerFactory;

//@Configuration
//@EnableAutoConfiguration
public class BeanConfig {
//	@Autowired
//	private EntityManagerFactory entityManagerFactory;

//	@Bean
//	public SessionFactory getSessionFactory() {
//		if (entityManagerFactory.unwrap(SessionFactory.class) == null) {
//			throw new NullPointerException("factory is not a hibernate factory");
//		}
//		return entityManagerFactory.unwrap(SessionFactory.class);
//	}
//	
	
	
//	@Bean
//	public HibernateJpaSessionFactoryBean sessionFactory(EntityManagerFactory emf) {
//	    HibernateJpaSessionFactoryBean fact = new HibernateJpaSessionFactoryBean();
//	    fact.setEntityManagerFactory(emf);
//	    return fact;
//	}
	
//	@Bean
//	public HibernateJpaSessionFactoryBean sessionFactory() {
//	    return new HibernateJpaSessionFactoryBean();
//	}
	
//	@Bean
//	public SessionFactory sessionFactory() {
//	    return new SessionFactory();
//	}
//	
	
//	@Bean
//	public SessionFactory sessionFactory(HibernateEntityManagerFactory hemf){
//	    return hemf.getSessionFactory();
//	}
}