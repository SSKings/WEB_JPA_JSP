package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.UsuarioDao;
import model.dto.Usuario;

@WebServlet(name = "UsuarioController", urlPatterns = { "/Usuario/Cadastrar", "/Usuario/Listar", "/Usuario/Alterar",
		"/Usuario/Deletar", "/Usuario/Pesquisar" })
public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UsuarioController() {
		super();

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processarRequisicao(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processarRequisicao(request, response);

	}

	private void processarRequisicao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String rota = request.getServletPath();

		switch (rota) {
		case "/Usuario/Cadastrar":
			cadastrar(request, response);
			break;
		case "/Usuario/Alterar":

			break;
		case "/Usuario/Listar":

			break;
		case "/Usuario/Excluir":

			break;
		case "/Usuario/Pesquisar":

			break;

		}

	}

	private void cadastrar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String html = "";
		
		if (request.getParameter("nome") == null || request.getParameter("email") == null
				|| request.getParameter("usuario") == null || request.getParameter("senha") == null){
			
			try {

				Usuario usuario = new Usuario();
				usuario.setNome(request.getParameter("nome"));
				usuario.setEmail(request.getParameter("email"));
				usuario.setNomeDeUsuario(request.getParameter("usuario"));
				usuario.setSenha(request.getParameter("senha"));

				new UsuarioDao().cadastrar(usuario);

				html += "<h3>Cadastro realizado!</h3>";

			} catch (Exception e) {

				html += "<h3>Erro ao tentar cadastrar usuario.</h3>";
			} finally {

				request.setAttribute("corpoPagina", html);
				RequestDispatcher rd = request.getRequestDispatcher("../view/telaResponse.jsp");
				rd.forward(request, response);

			}
		}else {
			response.sendRedirect("../index.jsp");
		}
	}

}
