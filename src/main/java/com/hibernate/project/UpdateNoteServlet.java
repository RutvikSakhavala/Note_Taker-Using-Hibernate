package com.hibernate.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		Session session = FactoryProvider.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		Note obj = (Note)session.get(Note.class, id);
		
		obj.setTitle(request.getParameter("updatedTitle"));
		obj.setContent(request.getParameter("updatedContext"));
		
		tx.commit();
		session.close();
		response.sendRedirect("ShowAllNotes.jsp");
	}

}
