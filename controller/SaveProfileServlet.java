package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;

/**
 * Servlet implementation class SaveProfileServlet
 */
@WebServlet("/SaveProfileServlet")
public class SaveProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession();
		String page="CustomerViewProfile.jsp";
		String name=session.getAttribute("cname").toString();
		String uname=request.getParameter("uname");		
		String contact_no=request.getParameter("contact_no");
		String loyalty_point=request.getParameter("loyalty_point");
		
		
		
		System.out.println("Name:"+name);
		System.out.println("Username:"+uname);		
		System.out.println("Contact No:"+contact_no);
		System.out.println("loyalty point:"+loyalty_point);
		try{
			Model m=new Model();
			
			
			String query = "UPDATE customer_profile SET name='"+name+"',"
											+"username = '"+uname+"',"											
											+"contact_no = '"+contact_no+"',"
											+"loyalty_point = '"+loyalty_point+"' WHERE Name = '"+name+"'";
												
			System.out.println("Query:"+query);
			//ResultSet rs = Dao.login(m, query);
			boolean i1=Dao.Register(m,query);
			System.out.println("i1:::"+i1);
			if(i1==false)
			{
				response.sendRedirect(page+"?success");
				
			}else {
				response.sendRedirect(page+"?failed");
				
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
