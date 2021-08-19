import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import msg.Message;
import msg.MessageDao;

public class Sample extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		Message msg = new Message();
		
		msg.title = request.getParameter("title");
		msg.contents = request.getParameter("contents");
		msg.date = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(new Date());
		
		MessageDao messages = new MessageDao();
		messages.save(msg);
		
		request.setAttribute("messages", messages);
		
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}
}