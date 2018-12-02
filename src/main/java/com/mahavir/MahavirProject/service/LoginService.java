package com.mahavir.MahavirProject.service;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mahavir.MahavirProject.model.User;

public class LoginService {

	public boolean authenticate(String username, String password) {
		HibernateUtil hUtil = new HibernateUtil();
		Session session = hUtil.getHibernateSession();
		try {
			Query query = session.createQuery("from User where username = :username");
			query.setString("username", username);
			List<User> list = query.list();
			if(list.isEmpty()) {
					return false;
			}
			if(!(password.equals(list.get(0).getPassword()))){
				return false;
			}
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
			
		} finally {
			session.close();

		}
	}

}
