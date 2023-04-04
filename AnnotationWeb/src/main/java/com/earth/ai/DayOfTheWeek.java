package com.earth.ai;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
/*
 * 년,월,일 입력하면 해당 요일 알려주는 프로그램을 작성하시오.
 * 
 * 1) URL을 입력해서 호출을 하면 톰캣이 HttpServletRequest 객체를 만듦
 * 2) 브라우저에서 요청한 정보를 HttpServletRequest 객체에 담아서 자동으로
 *    main()메서드의 매개변수로 넘겨줌
 */
@Controller				//1.원격 호출가능한 프로그램 등록
public class DayOfTheWeek {
	
	@RequestMapping("/getdaymvc")			//2. URL과 메서드를 연결
	public String main(@RequestParam(required = true) int year,
					 @RequestParam(required = true) int month, 
					 @RequestParam(required = true) int day, Model model) {
		
		//1. 유효성 검사
		if (!isValid(year, month, day))
				return "dayofWeekError";				// /WBB-INF/views/dayofWeekError.jsp
		
		//2. 요일 계산 		
		char dayOfTheWeek = getDayOfWeek(year, month, day);
		
		//3. Model에 작업 결과 저장
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("day", day);
		model.addAttribute("dayOfTheWeek", dayOfTheWeek);
		
		return "dayOfWeek";							// /WBB-INF/views/dayOfWeek.jsp
		//jsp 파일(view)이 없을때는 @RequestMapping()에서 설정한 url과 동일한 파일을 찾게됨  
		
	}

	private char getDayOfWeek(int year, int month, int day) {
		Calendar cal = Calendar.getInstance();
		cal.set(year, month-1, day); 		// 날짜 setting
		
		int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);		//요일 리턴 
		
		/*
		 * " 일월화수목금토".charAt(1) => 일
		 * " 일월화수목금토".charAt(2) => 월
		 */
		char dayOfTheWeek = " 일월화수목금토".charAt(dayOfWeek);
		return dayOfTheWeek;
	}

	private boolean isValid(int year, int month, int day) {
		if(year == -1 || month == -1 || day == -1)
			return false; 
		return (month >=1 && month <= 12) && (day >=1 && day <= 31);
	}
	
	@ExceptionHandler(Exception.class)
	public String catchar(Exception ex) {
		return "dayofWeekError";
	}

}
