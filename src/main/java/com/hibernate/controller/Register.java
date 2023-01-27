package com.hibernate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.hibernate.model.User;

/**
 * Servlet implementation class adminController
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			// create user
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
		    User user = new User(username,password);
		    session.persist(user);
		    
		    session.getTransaction().commit();
		    response.sendRedirect("/");
		}catch(Exception e) {
			System.out.println("Error adding user");
		}
		
	}

}
