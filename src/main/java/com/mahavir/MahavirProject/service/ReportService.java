package com.mahavir.MahavirProject.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


import com.mahavir.MahavirProject.model.Holder;
import com.mahavir.MahavirProject.model.Item;
import com.mahavir.MahavirProject.model.User;

public class ReportService {
	HibernateUtil hUtil = new HibernateUtil();
	Session session = hUtil.getHibernateSession();

	public ArrayList<Holder> getHolderReport() {

		ArrayList<Holder> emptyList = new ArrayList<>();
		Holder emptyHolder = new Holder();
		emptyHolder.setId(-1);
		emptyHolder.setName("Empty");
		emptyHolder.setContact("Empty");
		emptyHolder.setPlace("Empty");
		emptyList.add(emptyHolder);

		try {
			Query query = session.createQuery("from Holder");
			ArrayList<Holder> list = (ArrayList<Holder>) query.list();
			for (Holder holder : list) {
				System.out.println(holder.getId());
			}
			if (list.isEmpty())
				return emptyList;
			return list;
		} catch (HibernateException e) {
			e.printStackTrace();
			return emptyList;

		} finally {
			session.close();

		}
	}

	public Item getItemReport() {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean updateHolder(Holder holder) {
		Transaction transaction = session.beginTransaction();

		try {
			//session.save(holder);
			session.update(holder);
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
