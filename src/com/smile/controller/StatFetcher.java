package com.smile.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smile.model.Database;
import com.smile.model.Utente;

@WebServlet("/StatFetcher")
public class StatFetcher extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String emailUser = "" + session.getAttribute("email");
		System.out.println("stat fetcher:" + emailUser);
		Utente x = Database.getUserByEmail(emailUser);
		System.out.println(x);
		
		request.setAttribute("utente", x);	
		RequestDispatcher rd = request.getRequestDispatcher("stats.jsp");
		rd.forward(request, response);
	}


}
