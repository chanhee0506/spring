package com.earth.rod;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

class Car{}
class Engine {}
class Door {}

public class SpringDITest {

	public static void main(String[] args) {
		
		ApplicationContext ac = new GenericXmlApplicationContext("config.xml");
		
		Car car = (Car) ac.getBean("car");		//byName 이름으로 검색
		Car car2 =  ac.getBean("car", Car.class);
		Car car3 = ac.getBean(Car.class);
		
		Engine engine =	(Engine) ac.getBean("engine");
		Engine engine2 =  ac.getBean("engine", Engine.class);
		Engine engine3 = ac.getBean(Engine.class);		
		
		Door door = (Door) ac.getBean("door");
		Door door2 =  ac.getBean("door", Door.class);
		Door door3 = ac.getBean(Door.class);	
		
		
		System.out.println("car = " + car);
		System.out.println("car2 = " + car2);
		System.out.println("car3 = " + car3);
		System.out.println("============================================");
		
		System.out.println("engine = " + engine);
		System.out.println("engine = " + engine2);
		System.out.println("engine = " + engine3);		
		System.out.println("============================================");
		
		System.out.println("door = " + engine);
		System.out.println("door = " + engine2);
		System.out.println("door = " + engine3);		
	
		
	}
}
