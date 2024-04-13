<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    
    <link href="css/style.css" rel="stylesheet"/>
  </head>
  <body>
        
    <div class="container-fluid p-0">
    	<%@include file="Navbar.jsp"%>
    </div>
          
    <div class="container text-center my-5">
		<div class="jumbotron">
				<img src="images/notes.png" class="img-fluid" width="100px" alt="Responsive image">
		  		<h1 class="display-4 mt-5">Start Taking Your Notes</h1>		  		
		    	<a class="btn btn-primary btn-lg mt-5" href="AddNote.jsp" role="button">Add Note</a>
		  		
		</div>
    
    </div>      
             
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>