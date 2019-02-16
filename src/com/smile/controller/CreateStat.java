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
import com.smile.model.Statistica;

/**
 * Servlet implementation class CreateStat
 */
@WebServlet("/CreateStat")
public class CreateStat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Statistica toReturn = new Statistica(request.getParameter("nomeGioco"), Integer.parseInt(request.getParameter("ndomande")), Integer.parseInt(request.getParameter("corrette")), Integer.parseInt(request.getParameter("punteggio")), request.getParameter("tempo"));
		HttpSession session=request.getSession();
		Database.addStatToUser(""+session.getAttribute("email"), toReturn);
		
		request.setAttribute("statistica", toReturn);
		request.setAttribute("useremail", ""+session.getAttribute("email"));
		RequestDispatcher rd = request.getRequestDispatcher("Risultati.jsp");
		rd.forward(request, response);
	}



}
