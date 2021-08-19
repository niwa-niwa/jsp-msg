import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Sample2 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		String param = request.getParameter("count");
		
		int count = Integer.parseInt(param);
		
		PrintWriter out = response.getWriter();
		
		Random rand = new Random();
		
		for(int i = 0; i<count ; i++) {
			int r = rand.nextInt(256);
			int g = rand.nextInt(256);
			int b = rand.nextInt(256);
			
			String color = "rgb(" + r + "," + g + "," + b + ")";
			
			out.print("<span style=\"color:" + color + "\">");
			out.print("■");
			out.println("</span>");
		}
		
		out.close();
		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("firstname");
		String age = request.getParameter("age");
		
		PrintWriter out = response.getWriter();
		
		out.println("<h1>Result</h1>");
		out.println("名前 : " + name + "<br/>");
		out.println("年齢 : " + age + "才<br/>");
		out.println("<a href=\"post.jsp\">戻る</a>");
		
		out.close();
		
	}
}