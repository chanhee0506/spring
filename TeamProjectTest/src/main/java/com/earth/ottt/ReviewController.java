package com.earth.ottt;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ReviewController {

	@RequestMapping(value = "/review")
	public String review() {
		return "review";					
	}
}
