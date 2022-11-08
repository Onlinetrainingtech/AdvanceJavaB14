package str;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
public class ForOurLogic {

	public static void main(String[] args) {
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		
		Criteria crit=session.createCriteria(Product.class);
		
		Criterion cn=Restrictions.lt("price",new Double(16000));
		
		crit.add(cn);
		
		crit.addOrder(Order.asc("price"));
		
		List l=crit.list();
		
		System.out.println("List Total size is::"+l.size());

		Iterator it=l.iterator();
		
		while(it.hasNext())
		{
			Product p=(Product)it.next();
			System.out.println(p.getProductId());
			System.out.println(p.getProName());
			
		}
		session.close();
		
		factory.close();


	}

}
