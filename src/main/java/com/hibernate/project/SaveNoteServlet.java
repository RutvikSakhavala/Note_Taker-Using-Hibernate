package com.hibernate.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
           
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String context = request.getParameter("context");
			
			Note note = new Note(title,context,new Date());			
			SessionFactory factory = FactoryProvider.getFactory();
			
			Session session = factory.openSession();
			Transaction tx = session.beginTransaction();
				session.persist(note);
			tx.commit();
			session.close();
			
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1>Note Added</h1>");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
