package com.xyz.first;
import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
public class StoreData {

	public static void main(String[] args) {
StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		
		Metadata meta=new MetadataSources(ssr).getMetadataBuilder().build();
		
		SessionFactory factory=meta.getSessionFactoryBuilder().build();
		
		Session session=factory.openSession();
		
		Transaction t=session.beginTransaction();
		
		ArrayList<String>list1=new ArrayList<String>();
		
		list1.add("motoes");
		
		list1.add("oppoes");
		
         Category c1=new Category();
		
		c1.setCname("mobile");
		
		c1.setProductname(list1);
		
		session.save(c1);
		
		t.commit();
		
		session.close();
		
		System.out.println("Inserted...");

	}

}
