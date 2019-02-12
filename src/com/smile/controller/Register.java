package com.smile.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smile.model.Database;
import com.smile.model.Utente;


@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String newemail = request.getParameter("newemail");
		String newpwd = request.getParameter("newpwd");

		Database.utenti.add(new Utente(username, newemail, newpwd));
		
		HttpSession session=request.getSession();  
		session.setAttribute("username",username);
		session.setAttribute("email", newemail);
		response.sendRedirect("play.jsp");
	}

}
