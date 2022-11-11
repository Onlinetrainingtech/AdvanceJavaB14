package SetterInject;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp {

	public static void main(String[] args) {
		
		ApplicationContext context=new ClassPathXmlApplicationContext("Beans.xml");
		
		FootballPlayer obj=context.getBean("azar",FootballPlayer.class);
		
		System.out.println(obj.getFootball());

	}

}
