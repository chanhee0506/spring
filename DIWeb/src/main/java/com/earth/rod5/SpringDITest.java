package com.earth.rod5;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Component;

@Component class Engine {}
@Component class SuperEngine extends Engine {}
@Component class TurboEngine extends Engine {}
@Component class Door {}
@Component
class Car {
	@Value("blue") private String color;
	@Value("500") private int oil;
	@Autowired 
	@Qualifier("superEngine")
	private Engine engine;	//@Autowired : 의존성 주입(DI) - 사용할 객체를 외부에서 주입하는 것. 자동 지정함
	@Autowired private Door[] doors;
	
	public Car() {}			//기본생성자 꼭 만들어줘야 함

	public Car(String color, int oil, Engine engine, Door[] doors) {
		this.color = color;
		this.oil = oil;
		this.engine = engine;
		this.doors = doors;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public void setOil(int oil) {
		this.oil = oil;
	}

	public void setEngine(Engine engine) {
		this.engine = engine;
	}

	public void setDoors(Door[] doors) {
		this.doors = doors;
	}

	@Override
	public String toString() {
		return "Car [color=" + color + ", oil=" + oil + ", engine=" + engine + ", doors=" + Arrays.toString(doors)
				+ "]";
	}
	
	
}


public class SpringDITest {

	public static void main(String[] args) {
		ApplicationContext ac = new GenericXmlApplicationContext("config5.xml");
		
		Car car = (Car) ac.getBean("car");
		Engine engine = (Engine) ac.getBean("engine");
		Door door = (Door) ac.getBean("door");
		
		System.out.println("car = " + car);
	}
}





































