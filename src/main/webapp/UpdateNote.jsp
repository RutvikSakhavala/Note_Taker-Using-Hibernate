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
    <div class="container">
    	    <h1 class="display-4 text-center mt-3">Update Your Note</h1>
        <div class="row">
        	<div class="col-12">
    			<% String id = request.getParameter("id"); %>
			    	<div class="container">
				    <form action="UpdateNoteServlet" method="post">
				    <div class="mb-3">				    
				    <input type="hidden" value=<%=id%> name="id" class="form-control"  aria-describedby="emailHelp">
				    
				  </div>
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Enter New Title</label>
				    <input type="text" name="updatedTitle" class="form-control" aria-describedby="emailHelp">
				    
				  </div>
				  <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Enter New Content</label>
				    <textarea rows="5" cols="" name="updatedContext" class="form-control"></textarea>
				  </div>
				  
				  <button type="submit" class="btn btn-primary">Update</button>
				</form>
				    </div>
    			        
        	</div>
        </div>
    
    
    </div>
    
             
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>