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
    <title>Search</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    
    <link href="css/style.css" rel="stylesheet"/>
  </head>
  <body>
        
    <div class="container-fluid p-0">
    	<%@include file="Navbar.jsp"%>
    </div>
    
    <%
    	String str = request.getParameter("query");    
    	String[] arr = str.split(" ");
    	
    	Session s = FactoryProvider.getFactory().openSession();
    	Query q = s.createQuery("from Note");
    	List<Note> list= q.list();
    	
    	for(int i=0; i<list.size(); i++)
    	{
    		out.println(list.get(i).getTitle().contains(arr[0]));
    		
    			%>
    			
    			
    			    			    			    		
    			<% 
    		
    	}
    	s.close();           
    
    %>
                                                     
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>