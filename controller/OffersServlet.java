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
 * Servlet implementation class OffersServlet
 */
@WebServlet("/OffersServlet")
public class OffersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OffersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page="";
		HttpSession session=request.getSession();
		String name = session.getAttribute("restname").toString();
		System.out.println(name);
		//String name="Barbeque Nation";
		String offer_name = request.getParameter("offerName");
		int offer_disc = Integer.parseInt(request.getParameter("offerDisc"));
		String offer_id = request.getParameter("offerId");
		String loginquery="";
		if(offer_name.equals("") || (offer_disc==0) || name.equals("null"))
		{
			page="error.jsp?msg=fields";
			
		}
		else
		{
			try {
					Model m=new Model();
					m.setOffer_name(offer_name);
		
			System.out.println("Offer Name:"+offer_name);
			System.out.println("Offer Discount:"+offer_disc);
			System.out.println("Offer Id:"+offer_id);
			System.out.println("Restaurant Name:"+name);
			String squery="select name,username,contact_no from restaurant where Name='"+name+"'";
			loginquery="update restaurant set "+offer_id+"_name='"+offer_name+"',"+offer_id+"_discount="+offer_disc+" where Name='"+name+"'";
			//System.out.println(loginquery);
			boolean i=Dao.Register(m,loginquery);
			ResultSet rs=Dao.login(m,squery);
				
				if(i==false)
				{
					if(rs.next())
					{
						session.setAttribute("rname",rs.getString(1)); 								
						session.setAttribute("runameurl",rs.getString(2)+".html");
						session.setAttribute("rcno",rs.getString(3));
						page="RestaurantDashboard.jsp?msg=sucessful";
					}
				}
				else
				{
					page="error.jsp?msg=wrongrest";
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
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
