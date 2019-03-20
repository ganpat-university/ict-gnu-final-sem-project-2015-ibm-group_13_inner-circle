package controller;

import java.io.IOException;
import java.io.PrintWriter;
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
public class AddRestaurantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AddRestaurantServlet() {
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
		String name=request.getParameter("addrest_name").trim();		
		String uname=request.getParameter("addrest_uname").trim();
		String password=md5(request.getParameter("addrest_pass"));
		String cmpassword = md5(request.getParameter("addrest_cpass"));		
		String latitude = request.getParameter("addrest_lat");
		String longitude = request.getParameter("addrest_long");
		String area = request.getParameter("addrest_area");
		String contact_no = request.getParameter("addrest_conno").trim();
		String registerquery="";
		String profilequery="";		
		
		//String password = "MyPassword123";

		
				
		
		if(!password.equals(cmpassword))
		{
			page="error.jsp?msg=passcmprest";
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
						m.setLatitude(latitude);						
						m.setLongitude(longitude);
						m.setArea(area);
						m.setContact_no(contact_no);
						
						String query = "select NAME,USERNAME from restaurant where NAME='"+name+"' OR USERNAME='"+uname+"'";
						ResultSet rs = Dao.login(m, query);
						while(rs.next())
						{
							page="error.jsp?msg=restusernameexist";
						}
						if(!page.equals("error.jsp?msg=restusernameexist"))
						{
							registerquery="insert into restaurant(NAME,USERNAME,PASSWORD,CONFIRM_PASSWORD,LAT,LONG,AREA,CONTACT_NO) values('"+name+"','"+uname+"','"+password+"','"+cmpassword+"','"+latitude+"','"+longitude+"','"+area+"','"+contact_no+"')";
							profilequery="insert into restaurant_profile(NAME,USERNAME,PASSWORD,CONFIRM_PASSWORD,LAT,LONG,AREA,CONTACT_NO) values('"+name+"','"+uname+"','"+password+"','"+cmpassword+"','"+latitude+"','"+longitude+"','"+area+"','"+contact_no+"')";
							
							boolean i1=Dao.Register(m,registerquery);
							
							boolean i2=Dao.Register(m,profilequery);
							if(i1==false && i2==false)
							{																
								page="AdminDashboard.jsp?msg=restaurantadded";
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
					page="error.jsp?msg=restwrongcontact";
				}
			}
			else
			{
				page="error.jsp?msg=restwrongcontact";
			}
		}
			
			if(name.equals("") || uname.equals("") || password.equals("") || cmpassword.equals("") || contact_no.equals(""))
			{
				page="error.jsp?msg=fields";
			}
			response.sendRedirect(page);
	}
}

