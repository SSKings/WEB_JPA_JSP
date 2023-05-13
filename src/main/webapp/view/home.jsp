<%@page import="model.dto.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="ssr">
</head>
<body>
	<%
	if (session == null || session.getAttribute("usuario") == null) {
		response.sendRedirect("../login.jsp");
	} else {
		Usuario usuario = (Usuario) session.getAttribute("usuario");
		out.println("Bem Vindo " + usuario.getNomeDeUsuario() + "<br>");
	}
	%>
	<header class="navbar bg-primary">
		<h1 class="m-2">Gerencia Tudo</h1>
		<a href="../logout.jsp"
			class="btn btn-light bt-lg justify-content-end m-2">Logout</a>
	</header>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
				<ul class="navbar-nav">
					<li class="nav-item dropdown">
						<button class="btn btn-dark dropdown-toggle"
							data-bs-toggle="dropdown" aria-expanded="false">
							SERVIÇOS</button>
						<ul class="dropdown-menu dropdown-menu-dark">
							<li><a class="dropdown-item" href="#">Controle De
									Estoque</a></li>
							<li><a class="dropdown-item" href="#">Controle De Vendas</a></li>
							<li><a class="dropdown-item" href="#">...</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
</html>