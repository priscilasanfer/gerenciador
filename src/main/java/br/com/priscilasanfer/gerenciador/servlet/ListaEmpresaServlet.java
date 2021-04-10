package br.com.priscilasanfer.gerenciador.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/listaEmpresas")
public class ListaEmpresaServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	
		Banco banco = new Banco();
		List<Empresa> lista = banco.getEmpresas();
		
		// Chamar a JSP
		RequestDispatcher rd = request.getRequestDispatcher("/listaEmpresas.jsp");
		request.setAttribute("empresas", lista);
		rd.forward(request, response);

	}

}
