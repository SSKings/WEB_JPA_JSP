<%@page import="model.dao.UsuarioDao"%>
<%@page import="model.dto.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acesso</title>
</head>
<body>
	<% 
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		if(!email.isEmpty() || !senha.isEmpty()){
			try{
				Usuario usuario = new Usuario();
				usuario.setEmail(email);
				usuario = new UsuarioDao().pesquisar(usuario);
				if(usuario.getId() > 0 && usuario.getSenha().equals(senha)){
					session.setAttribute("usuario", usuario);
					response.sendRedirect("view/home.jsp");
				}
				else{
					out.print("<h1>email ou senha incorretos.</h1>");
				}
			}catch(Exception e){
				out.print("<h1>erro ao tentar fazer login.</h1>");
			}
		}else{
			out.print("<h1>Campos vazios</h1>");
		}
		
	%>
</body>
</html>