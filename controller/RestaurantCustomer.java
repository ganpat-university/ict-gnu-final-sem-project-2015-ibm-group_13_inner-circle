package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;

/**
 * Servlet implementation class RestaurantCustomer
 */
@WebServlet("/RestaurantCustomer")
public class RestaurantCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestaurantCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page="";
		String uname=request.getParameter("rname");
		//System.out.println(uname);
		//String name = request.getParameter("rest_name");
		String loginquery="";		
		
		
		
			try{
			Model m=new Model();
			m.setUname(uname);			
			loginquery="Select * from Restaurant where Name='"+uname+"'";			
			ResultSet rs=Dao.login(m,loginquery);
			
			if(rs.next())
			{
				HttpSession session=request.getSession();
				session.setAttribute("rname",rs.getString(1)); 								
				session.setAttribute("runameurl",rs.getString(2)+".html");
				session.setAttribute("rcno",rs.getString(8));
				page="Restaurant.jsp?msg=successfull";
			}
			else
			{
				page="error.jsp?msg=wrongrest";
			}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			response.sendRedirect(page);
		}
			

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
