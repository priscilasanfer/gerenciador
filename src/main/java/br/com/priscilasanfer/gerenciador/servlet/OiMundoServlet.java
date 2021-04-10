package br.com.priscilasanfer.gerenciador.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/oi")
public class OiMundoServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		var out = resp.getWriter();

		out.println("<html>");
		out.println("<body>");
		out.println("Olá Mundo, parabéns para mim! Eu escrevi um Servlet");
		out.println("</body>");
		out.println("</html>");	

		System.out.println("o servlet foi chamado");
	}

}
