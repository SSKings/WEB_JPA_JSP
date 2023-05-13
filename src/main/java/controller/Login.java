package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.UsuarioDao;
import model.dto.Usuario;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		PrintWriter out = response.getWriter();
		
		if(!email.isEmpty() || !senha.isEmpty()){
			try{
				Usuario usuario = new Usuario();
				usuario.setEmail(email);
				usuario = new UsuarioDao().pesquisar(usuario);
				if(usuario.getId() > 0 && usuario.getSenha().equals(senha)){
					HttpSession session = request.getSession(true);
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
	}

}
