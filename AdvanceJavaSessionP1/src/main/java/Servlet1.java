

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Servlet1
 */
@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out=resp.getWriter();
		String uname=req.getParameter("uname");
		String pass=req.getParameter("pass");
		
		if(uname.equals("admin")&&pass.equals("admin"))
		{
			HttpSession sess=req.getSession();
			sess.setAttribute("u1",uname);
			RequestDispatcher rd=req.getRequestDispatcher("Servlet2");
			rd.forward(req, resp);
		}
		else
		{
			//out.println("LoginFail!!");
			Cookie ck=new Cookie("u1",uname);
			resp.addCookie(ck);
			RequestDispatcher rd=req.getRequestDispatcher("Servlet3");
			rd.forward(req, resp);
		}
			
		
		
	}

}
