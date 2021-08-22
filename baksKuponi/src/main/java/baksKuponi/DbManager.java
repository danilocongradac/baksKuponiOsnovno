package baksKuponi;

import java.util.ArrayList;


import org.hibernate.HibernateException; 
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.transform.AliasToEntityMapResultTransformer;

public class DbManager {
	private static SessionFactory factory; 
	
	DbManager(){
		 try {
	         factory = new Configuration().configure().buildSessionFactory();
	      } catch (Throwable ex) { 
	         System.err.println("Failed to create sessionFactory object." + ex);
	         throw new ExceptionInInitializerError(ex); 
	      }
	}
	
	ArrayList<Kupon> getSviKuponi(){
		ArrayList<Kupon> sviKuponi = new ArrayList<Kupon>();
		Session session = factory.openSession();
	    Transaction tx = null;
	      
		 try {
	         tx = session.beginTransaction();
	         sviKuponi = (ArrayList<Kupon>) session.createQuery("FROM Kupon").list();
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
		
		return sviKuponi;
	}

	ArrayList<Kupon> getKuponi(){
		ArrayList<Kupon> sviKuponi = new ArrayList<Kupon>();
		Session session = factory.openSession();
	    Transaction tx = null;
	      
		 try {
	         tx = session.beginTransaction();
	         sviKuponi = (ArrayList<Kupon>) session.createQuery("FROM Kupon K WHERE K.crven = 0").list();
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
		
		return sviKuponi;
	}
	
	ArrayList<Kupon> getCrveniKuponi(){
		ArrayList<Kupon> sviKuponi = new ArrayList<Kupon>();
		Session session = factory.openSession();
	    Transaction tx = null;
	      
		 try {
	         tx = session.beginTransaction();
	         sviKuponi = (ArrayList<Kupon>) session.createQuery("FROM Kupon K WHERE K.crven = 1").list();
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
		
		return sviKuponi;
	}
	
	Kupon getKupon(int id){
		Session session = factory.openSession();
	    Transaction tx = null;
	    Kupon kupon = new Kupon();
		 
	     try {
	         tx = session.beginTransaction();
	         kupon = (Kupon) session.createQuery("FROM Kupon K WHERE K.id = " + id).getSingleResult();
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
		
		return kupon;
	}
	
	public void addKupon(Kupon kupon){
	      Session session = factory.openSession();
	      Transaction tx = null;
	      
	      try {
	         tx = session.beginTransaction();
	         session.saveOrUpdate(kupon); 
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
	  }
	
	public void deleteKupon(Integer kuponId) {
		 Session session = factory.openSession();
	      Transaction tx = null;
	      
	      try {
	         tx = session.beginTransaction();
	         Kupon kupon = (Kupon)session.get(Kupon.class, kuponId); 
	         session.delete(kupon); 
	         tx.commit();
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	      }
	}
}