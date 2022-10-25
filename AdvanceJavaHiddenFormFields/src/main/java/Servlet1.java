

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet1
 */
@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");

		PrintWriter out=resp.getWriter();
		
		String e1=req.getParameter("email");
		
		out.println("<form action='Servlet2' method='get'>");
		
		out.println("<input type='hidden' name='em' value='"+e1+"'/>");
		
		out.println("<input type='submit' value='ClickHere'/>");
		
		out.println("</form>");
	}

}
