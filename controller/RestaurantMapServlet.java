package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.Arrays;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Model;

/**
 * Servlet implementation class MapRestaurantServlet
 */
public class RestaurantMapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestaurantMapServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page="";
		double user_lat = Double.parseDouble(request.getParameter("lat"));
		double user_long = Double.parseDouble(request.getParameter("long"));
//		double user_lat = 23.0117;
//		double user_long = 72.5116;
		String[] name=new String[20];
		String[] url=new String[20];
		double[] lat=new double[10];
		double[] lon=new double[10];
		String[] contact_no=new String[20];
		double distance=0;
		String backString="";
		System.out.println(user_lat);
		
		
		
			
			
				if(!((user_lat==0.0) && (user_long==0.0)))
				{
					try{
						Model m=new Model();
						int i=0,count=0;
						
						String query = "select NAME,LAT,LONG,USERNAME,CONTACT_NO from restaurant";
						ResultSet rs = Dao.login(m, query);
						//rs.next();
						//System.out.println(rs.getString(2));
						while(rs.next())
						{
							name[i]=rs.getString(1);
							lat[i]=Double.parseDouble(rs.getString(2));
							lon[i]=Double.parseDouble(rs.getString(3));
							url[i]=rs.getString(4)+".html";
							contact_no[i]=rs.getString(5);
							count++;
							i++;
						}/*
						for(i=0;i<count;i++)
						{
							System.out.println("Name::"+name[i]);
							System.out.println("Latitude::"+lat[i]);
							System.out.println("Longitude::"+lon[i]);
						}*/
						
						for(i=0;i<count;i++)
						{
							System.out.println("\nName::"+name[i]);
							System.out.println("Latitude::"+lat[i]);
							System.out.println("Longitude::"+lon[i]);
							
							distance=Haversine.distance(user_lat, user_long, lat[i], lon[i]);
							System.out.println("Distance::"+distance);
							if(distance<2.00)
							{
								//backString=backString+i+"n="+name[i]+"&"+i+"la="+lat[i]+"&"+i+"lo="+lon[i]+"&";
								backString=backString+	"n="+name[i]+"&"+"la="+lat[i]+"&"+"lo="+lon[i]+"&"+"url="+url[i]+"&"+"cn="+contact_no[i]+"&";
								//backString=backString+	"n="+name[i]+"&"+"la="+lat[i]+"&"+"lo="+lon[i]+"&";
							}
						}
						page="ShowMap.jsp?"+backString;
						
					}
					catch(Exception e)
					{
						e.printStackTrace();
					}
				}
				else
				{
					page="error.jsp?msg=wronglocation";
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