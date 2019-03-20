package com.example;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
public class CartController extends HttpServlet {
  
 //public static final String addToCart
  
 public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
  
  String strAction = request.getParameter("action");
  //String strActiondel = request.getParameter("actiondel");
   HttpSession session = request.getSession();
   
   String r_name=session.getAttribute("rest2_name").toString();
   
   
   System.out.println("Inside Controller Restaurant Name:"+r_name);
   String back="";
   
   
   String id="";
   String id2=null;
   
   if(session.getAttribute("goBack")!=null)
   {
	   back=session.getAttribute("goBack").toString();
	   session.setAttribute("back", back);
   }
   String page="";
   if(page=="checkoutTemp.jsp")
   {
	   id2=session.getAttribute("id2").toString();	  
   }
   System.out.println("ID2::::::::"+id2);
   System.out.println("ACTION::::::::"+strAction);
   //System.out.println("ACTIONDEL::::::::"+strActiondel);
   
   if(strAction.contains("&"))
   {
	   id=strAction.split("&")[1];   
   }
   
   if(id2!=null)
   {
	   id=id2;
	   System.out.println("ID::"+id);
   }     
   System.out.println("IDDDDDDD::"+id);   
  if(strAction!=null && !strAction.equals("")) {
   if(strAction.equals("add&"+id)) {
    addToCart(request);
    page="cartTemp"+id+".jsp";
    
   } else if (strAction.equals("Update")) {
    updateCart(request);
    //session.setAttribute("id", id);
    page="checkoutTemp.jsp?id="+id;
    
   } else if(strAction.equals("EmptyCart& ")) {
		 
		deleteAllCart(request);
		//session.setAttribute("id", id);
		page="checkoutTemp.jsp";
	}else if (strAction.equals("Delete")) {
		   deleteCart(request);
	    //	session.setAttribute("id", id);
		   page="checkoutTemp.jsp";
	    
	   }else if (strAction.equals("EmptyCart&"+id)) {
	 deleteAllCart(request);
	 page="cartTemp"+id+".jsp";
	}
//	   else if (strAction.equals("Back&"+id)) {
//		page="cartTemp"+id+".jsp";	    
//	   }
   
//   else if(strAction.equals("add1")) {
//	    addToCart(request);
//	    response.sendRedirect("cartTemp1.jsp");
//	    
//	   }
//   else if(strAction.equals("add2")) {
//	    addToCart(request);	   
   		
	
	   
  }
  String rrtname =session.getAttribute("rest2_name").toString();
  System.out.println("Cart COntroller Name"+rrtname);
  session.setAttribute("rest3_name", rrtname);
  response.sendRedirect(page);
  
  //response.sendRedirect("/ShoppingCart/ShoppingCart.jsp");
  
 }
  
 protected void deleteCart(HttpServletRequest request) {
  HttpSession session = request.getSession();
  String strItemIndex = request.getParameter("itemIndex");
  CartBean cartBean = null;
   
  Object objCartBean = session.getAttribute("cart");
  if(objCartBean!=null) {
   cartBean = (CartBean) objCartBean ;
  } else {
   cartBean = new CartBean();
  }
  cartBean.deleteCartItem(strItemIndex);
 }
 
 protected void deleteAllCart(HttpServletRequest request) {
	  HttpSession session = request.getSession();
	  String strItemIndex = request.getParameter("itemIndex");
	  CartBean cartBean = null;
//	 System.out.println("Inside Controller:::::\nCalling Cartbean class");  
	  Object objCartBean = session.getAttribute("cart");
	  if(objCartBean!=null) {
	   cartBean = (CartBean) objCartBean ;
	  } else {
	   cartBean = new CartBean();
	  }
	  cartBean.deleteAllCartItem(strItemIndex);
	 }
  
 protected void updateCart(HttpServletRequest request) {
  HttpSession session = request.getSession();
  String strQuantity = request.getParameter("quantity");
  String strItemIndex = request.getParameter("itemIndex");
  
  CartBean cartBean = null;
   
  Object objCartBean = session.getAttribute("cart");
  if(objCartBean!=null) {
   cartBean = (CartBean) objCartBean ;
  } else {
   cartBean = new CartBean();
  }
  cartBean.updateCartItem(strItemIndex, strQuantity);
 }
  
 protected void addToCart(HttpServletRequest request) {
  HttpSession session = request.getSession();
  String strModelNo = request.getParameter("modelNo");
  String strDescription = request.getParameter("description");
  String strPrice = request.getParameter("price");
  String strQuantity = request.getParameter("quantity");
   
  CartBean cartBean = null;
   
  Object objCartBean = session.getAttribute("cart");
 
  if(objCartBean!=null) {
   cartBean = (CartBean) objCartBean ;
  } else {
   cartBean = new CartBean();
   session.setAttribute("cart", cartBean);
  }
   
  cartBean.addCartItem(strModelNo, strDescription, strPrice, strQuantity);
 }
 
}