package com.hibernate.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import javax.persistence.Query;
import com.hibernate.model.User;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sessionWeb = request.getSession();
		
		try {
			// login
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			Query query = session.createQuery("from User where username=:username and password=:password");
			query.setParameter("username", username);
			query.setParameter("password", password);
			System.out.println("here");
			List<User> users = (List<User>)query.getResultList();
			
			if( users.size() > 0) {
				System.out.println();
//				System.out.println(query.getParameterValue(1));
				sessionWeb.setAttribute("user_id", users.get(0).getAdmin_id());
				sessionWeb.setAttribute("username",users.get(0).getUsername());
				response.sendRedirect("home.jsp");
			}else {
				response.sendRedirect("login.jsp");
			}
			
			session.getTransaction().commit();
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
