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
import dao.Dao;
import model.Model;
public class CustomerSignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public CustomerSignupServlet() {
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
		String name=request.getParameter("custs_name").trim();
		String uname=request.getParameter("custs_user").trim();
		String password= md5(request.getParameter("custs_pass"));
		String cmpassword = md5(request.getParameter("custs_cpass"));
		String contact_no = request.getParameter("custs_cno").trim();
		 
		String registerquery="";
		String profilequery="";
		
	
		
		if(!password.equals(cmpassword))
		{
			page="error.jsp?msg=passcmpcust";
		}
		else
		{
			if(contact_no.matches("[0-9]+"))
			{
				if(contact_no.length() == 10)
				{
					try{
						Model m=new Model();
						m.setName(name);
						m.setUname(uname);
						m.setPassword(password);
						m.setCpassword(cmpassword);
						m.setContact_no(contact_no);
						String query = "select username from customer_profile where username='"+uname+"'";
						ResultSet rs = Dao.login(m, query);
						while(rs.next())
						{
							page="error.jsp?msg=custusernameexist";
						}
						if(!page.equals("error.jsp?msg=custusernameexist"))
						{
							//registerquery="insert into customer_signup(NAME,USERNAME,PASSWORD,CONFIRM_PASSWORD,CONTACT_NO) values('"+name+"','"+uname+"','"+password+"','"+cmpassword+"','"+contact_no+"')";
							profilequery="insert into customer_profile(NAME,USERNAME,PASSWORD,CONFIRM_PASSWORD,CONTACT_NO) values('"+name+"','"+uname+"','"+password+"','"+cmpassword+"','"+contact_no+"')";
							
							//boolean i1=Dao.Register(m,registerquery);
							
							boolean i2=Dao.Register(m,profilequery);
							//if(i1==false && i2==false)
							if(i2==false)
							{
								page="Customer_login.jsp?msg=successfull";
							}
							else
							{
								page="error.jsp?error";
							}
						}
						
					}
					catch(Exception e)
					{
						e.printStackTrace();
					}
				}
				else
				{
					page="error.jsp?msg=custwrongcontact";
				}
			}
			else
			{
				page="error.jsp?msg=custwrongcontact";
			}
		}
			
			if(name.equals("") || uname.equals("") || password.equals("") || cmpassword.equals("") || contact_no.equals(""))
			{
				page="error.jsp?msg=fields";
			}
			response.sendRedirect(page);
	}
}

