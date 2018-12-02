package com.mahavir.MahavirProject.service;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mahavir.MahavirProject.model.Item;

public class SetItemService {

	public boolean addHolder(Item item) {
		HibernateUtil hUtil = new HibernateUtil();
		Session session = hUtil.getHibernateSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(item);
			transaction.commit();
			return true;
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
			return false;
		} finally {
			session.close();

		}
	}

}
