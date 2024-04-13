<!doctype html>
<%@page import="com.hibernate.project.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.hibernate.project.FactoryProvider"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    
    <link href="css/style.css" rel="stylesheet"/>
  </head>
  <body>
        <%@include file="Navbar.jsp"%>
    	    <h1 class="display-4 text-center my-3">Notes</h1>
    <div class="container" style="width:50%">
       
    			<%
				    Session s = FactoryProvider.getFactory().openSession();
				    Query query = s.createQuery("from Note");
				    List<Note> list = query.list();
				   
				    for(Note note:list)
				    {
			    %>
			    	<div class="card mt-3">
					  <div class="card-body">
					  <img src="images/notes.png" class="img-fluid" width="50px" alt="Responsive image">
					    <h5 class="card-title"><%= note.getTitle()%></h5>
					    <p class="card-text"><%=note.getContent()%></p>
					    <a href="DeleteServlet?id=<%=note.getId()%>" class="btn btn-danger mt-5">Delete</a>
					    <a href="UpdateNote.jsp?id=<%=note.getId()%>" class="btn btn-primary mt-5">Update</a>
					  </div>
					</div>
			    
			    <% 
				    }
				    s.close();    
			    %>    	
       
    
    
    </div>
    
             
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>