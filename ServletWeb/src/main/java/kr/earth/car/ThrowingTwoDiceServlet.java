package kr.earth.car;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ThrowingTwoDiceServlet
 */
@WebServlet("/twodiceservlet")
public class ThrowingTwoDiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("[ThrowingTwoDiceServlet] init() 호출");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("[ThrowingTwoDiceServlet] destroy() 호출");
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[HelloServlet] service() 호출");
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out;
		
		int id1 = (int)(Math.random()*6+1);
		int id2 = (int)(Math.random()*6+1);
		
		try {
			out = response.getWriter();
			out.println("<html>");
			out.println("<head>");			
			out.println("</head>");
			out.println("<body>");
			out.println("<img src='img/dice"+id1+".jpg' />");	
			out.println("<img src='img/dice"+id2+".jpg' />");
			
			out.println("</body>");
			out.println("</html>");
		} catch (IOException e) {e.printStackTrace();}
	}

}
