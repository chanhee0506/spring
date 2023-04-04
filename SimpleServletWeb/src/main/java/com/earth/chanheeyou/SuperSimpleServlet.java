package com.earth.chanheeyou;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;



@WebServlet("/super-simple")
public class SuperSimpleServlet extends HttpServlet {

	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html;char=utf-8");
		request.setCharacterEncoding("utf-8");		
		String name = request.getParameter("name");
		
		request.setAttribute("ServletName", getServletName());	
		request.setAttribute("name", name);
		

		request.getRequestDispatcher("WEB-INF/views/helloearth.jsp").forward(request, response);
		
		
	}
}
