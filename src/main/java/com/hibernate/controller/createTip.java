package com.hibernate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import com.hibernate.model.Tip;

/**
 * Servlet implementation class createTip
 */
@WebServlet("/createTip")
public class createTip extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			// create tip
			String title = request.getParameter("title");
			String description = request.getParameter("description");
			String htmlDetail = request.getParameter("exampleHtmlEscape");
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
		    Tip tip = new Tip(title,description,htmlDetail);
		    session.persist(tip);
		    
		    session.getTransaction().commit();
		    response.sendRedirect("home.jsp");
		}catch(Exception e) {
			System.out.println("Error adding tip");
		}
		
	}

}
