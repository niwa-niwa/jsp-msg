package visit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Sample extends HttpServlet {

	public void doGet( HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession(true);
		
		int count = 1;
		
		Object value = session.getAttribute("count");
		
		if (value != null) {
			count = (Integer)value;
		}
		
		PrintWriter out = response.getWriter();
		
		out.println("訪問回数 : " + count + "回");
		
		session.setAttribute("count", ++count);
		
		out.close();
	}
}
