package controller;

import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AdminLoginServlet() {
        super();    
    }
    

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String page="";
		String uname=request.getParameter("admin_user");
		String password=request.getParameter("admin_pass");		
		String loginquery="";
		if(uname.equals("") || password.equals(""))
		{
			page="error.jsp?msg=fields";
			
		}
		else
		{
			try{
			Model m=new Model();
			m.setUname(uname);
			m.setPassword(password);
			loginquery="Select * from admin where Username='"+uname+"' and Password='"+password+"'";
			ResultSet rs=Dao.login(m,loginquery);
			if(rs.next())
			{				
				HttpSession session=request.getSession();
				session.setAttribute("auname",uname);  
				session.setAttribute("apassword",password);									
				page="AdminDashboard.jsp?msg=sucessful";
			}
			else
			{
				page="error.jsp?msg=wrongad";
			}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		response.sendRedirect(page);
	}
}
