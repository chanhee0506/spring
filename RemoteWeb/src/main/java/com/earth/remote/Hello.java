package com.earth.remote;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//1. 원격 호출가능한 프로그램으로 등록
@Controller
public class Hello {
	int iv = 10;			//인스턴스 변수
	static int cv = 20;		//static 변수
	
	//2. URL과 메서드를 연결
	/*
	 * 톰캣에서 객체를 만들어 주기 때문에 메서드가 static이던지 아니던지 상관없음
	 * 접근제어자 private, public 등 상관없이 외부에서 호출 가능
	 * - 왜냐하면 reflection api를 사용하기 때문임
	 */
	@RequestMapping("/hello")
	private void main() {			//인스턴스 메서드 - 인스턴스 변수, static 변수 둘다 사용가능
		System.out.println("Hello - private");
		System.out.println(iv);
		System.out.println(cv);
	}
	
}
