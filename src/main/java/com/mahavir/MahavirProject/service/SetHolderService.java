package com.mahavir.MahavirProject.service;

import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.mahavir.MahavirProject.model.Holder;

public class SetHolderService {

	public boolean addHolder(Holder holder) {
		HibernateUtil hUtil = new HibernateUtil();
		Session session = hUtil.getHibernateSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(holder);
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
