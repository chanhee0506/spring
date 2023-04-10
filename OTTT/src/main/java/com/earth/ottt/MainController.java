package com.earth.ottt;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MainController {
	
	@RequestMapping(value = "/otttmain")
	public String main() {
		return "/main/otttmain";
	}
}
