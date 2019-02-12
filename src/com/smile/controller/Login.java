package com.smile.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smile.model.Database;
import com.smile.model.Utente;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String logemail = request.getParameter("logemail");
		String logpwd = request.getParameter("logpwd");
		String redirect = "";
		boolean logged = false;
		Database.initAccount();
		
		for (Utente u : Database.utenti) {
			if(u.getEmail().equals(logemail) && u.getPassword().equals(logpwd)) {
				HttpSession session=request.getSession();  
				session.setAttribute("username",u.getUsername());
				session.setAttribute("email", u.getEmail());
				logged = true;
				System.out.println("Nuovo utente loggato: " + logemail);
			}
		}
		if(logged) {
			redirect = "play.jsp";
		}else{
			redirect = "index.html?login=failed";
		}
		response.sendRedirect(redirect);
	}

}
