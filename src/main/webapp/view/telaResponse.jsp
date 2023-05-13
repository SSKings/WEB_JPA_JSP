<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">
<title>Gerencia Tudo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
 	 <header class="navbar">
		<h1>Gerencia Tudo</h1>
		<a href="../login.jsp" class="btn btn-primary bt-lg" >Login</a>
	</header>
	<%
		String corpoHtml = (String) request.getAttribute("corpoPagina");
    
    	out.print(corpoHtml);
	%>
	</div>
</body>
</html>