package controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;
public class RestaurantLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public RestaurantLoginServlet() {
        super();    
    }
    
    public static String md5(String input) {
		
 		String md5 = null;
 		
 		if(null == input) return null;
 		
 		try {
 			
 		//Create MessageDigest object for MD5
 		MessageDigest digest = MessageDigest.getInstance("MD5");
 		
 		//Update input string in message digest
 		digest.update(input.getBytes(), 0, input.length());

 		//Converts message digest value in base 16 (hex) 
 		md5 = new BigInteger(1, digest.digest()).toString(16);

 		} catch (NoSuchAlgorithmException e) {

 			e.printStackTrace();
 		}
 		return md5;
 	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String page="";
		String uname=request.getParameter("rest_user");
		String password=md5(request.getParameter("rest_pass"));
		//String name = request.getParameter("rest_name");
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
			loginquery="Select * from Restaurant where Username='"+uname+"' and Password='"+password+"'";			
			ResultSet rs=Dao.login(m,loginquery);
			
			if(rs.next())
			{
				HttpSession session=request.getSession();
				session.setAttribute("rname",rs.getString(1)); 								
				session.setAttribute("runameurl",uname+".html");
				session.setAttribute("rcno",rs.getString(8));
				page="RestaurantDashboard.jsp?msg=successfull";
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
		}
		response.sendRedirect(page);
	}
}
