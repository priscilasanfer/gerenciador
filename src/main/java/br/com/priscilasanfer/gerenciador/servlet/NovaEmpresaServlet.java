package br.com.priscilasanfer.gerenciador.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/novaEmpresa")
public class NovaEmpresaServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String nomeEmpresa = req.getParameter("nome");
		String cnpjEmpresa = req.getParameter("cnpj");
		String paramDataAbertura = req.getParameter("data");
		
		Date dataAbertura = null;
		
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		    dataAbertura = sdf.parse(paramDataAbertura);
		} catch (ParseException e) {
			throw new ServletException(e);
		}
		
		Empresa empresa = new Empresa();
		empresa.setNome(nomeEmpresa);
		empresa.setCnpj(cnpjEmpresa);
		empresa.setDataAbertura(dataAbertura);
		
		Banco banco = new Banco();
		banco.adiciona(empresa);
		
		req.setAttribute("nomeEmpresa", empresa.getNome());
		req.setAttribute("cnpjEmpresa", empresa.getCnpj());
		req.setAttribute("dataAbertura", empresa.getDataAbertura());

		resp.sendRedirect("listaEmpresas");		
		
		
		// Chamar a JSP
//		RequestDispatcher rd = req.getRequestDispatcher("/listaEmpresas");
//		req.setAttribute("nomeEmpresa", empresa.getNome());
//		req.setAttribute("cnpjEmpresa", empresa.getCnpj());
//		req.setAttribute("dataAbertura", empresa.getDataAbertura());
//		rd.forward(req, resp);
	}

}
