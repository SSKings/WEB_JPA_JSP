<%@page import="model.dao.UsuarioDao"%>
<%@page import="model.dto.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
</head>
<body>


	<header class="navbar navbar-dark bg-primary">
		<h1 class="m-2 ">Gerencia Tudo</h1>
		<a href="index.jsp" class="btn btn-light bt-lg m-2">Cadastrar</a>
	</header>
	<div class="container-fluid-sm p-5 m-5">
		<div class="row justify-content-center ">
			<div class="col-sm-4 text-center ">
				<h1>Faça Login</h1>
				
				<form class="form-group border p-5" action="Login" method="post">
					<div class="form-group row my-3">
						
						<div class="col">
							<input type="text" name="email" class="form-control" placeholder="Email" required>
						</div>
					</div>
					<div class="form-group row my-3">
					
						<div class="col">
							<input type="password" name="senha" class="form-control" placeholder="Senha" required>
						</div>
					</div>
					<div class="d-grid mx-auto">
						<input type="submit" value="Log in" class="btn btn-primary my-2">
					</div>

				</form>


			</div>
		</div>
	</div>

</body>
</html>