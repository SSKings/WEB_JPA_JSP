<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gerencia Tudo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid-sm">
		<header class="navbar bg-primary">
			<h1 class="m-2">Gerencia Tudo</h1>
			<a href="login.jsp" class="btn btn-light bt-lg m-2">Login</a>
		</header>
		<div id="carouselExampleSlidesOnly"
			class="carousel slide col-6 mx-auto" data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="view/imgs/estoque.png" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="view/imgs/vendas.png" class="d-block w-100" alt="...">
				</div>

			</div>
		</div>
		<div class="card col-sm-6 mx-auto  bg-primary">
			<h3 class="text-center my-3">FAÇA O SEU CADASTRO E ACESSE AO
				SERVIÇO</h3>
			<div class="card-body bg-white col-sm-6 mx-auto m-5">
				<form action="Usuario/Cadastrar" method="post">

					<div class="row my-3">

						<div class="col">
							<input type="text" name="nome" class="form-control"
								placeholder="Nome" required>
						</div>
					</div>

					<div class="row my-3">

						<div class="col">
							<input type="text" name="email" class="form-control"
								placeholder="E-mail" required>
						</div>
					</div>

					<div class="row my-3">

						<div class="col">
							<input type="text" name="usuario" class="form-control"
								placeholder="Usuário" required>
						</div>
					</div>

					<div class="row my-3">

						<div class="col">
							<input type="password" name="senha" class="form-control"
								placeholder="Nome" required>
						</div>
					</div>

					
						<div class="row">
							<input type=submit name="btn-cadastrar"
								class="btn btn-success btn-lg" value="Cadastrar">
						</div>
				

				</form>

			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
</html>