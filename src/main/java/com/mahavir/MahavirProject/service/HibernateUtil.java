package com.mahavir.MahavirProject.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;




public class HibernateUtil {

	 Session session = null;
	 SessionFactory sessionFactory = null;



	public  Session getHibernateSession() {
		session=getHibernateSessionFactory().openSession();
		return session;
	}

	public  SessionFactory getHibernateSessionFactory() {
		sessionFactory = new AnnotationConfiguration().configure("hibernate.cfg.xml").buildSessionFactory();
		return sessionFactory;
	}
	

}
