package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.thoughtworks.xstream.XStream;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

/**
 * Servlet implementation class EmpresasServlet
 */
@WebServlet("/empresas")
public class EmpresasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Banco banco = new Banco();
		List<Empresa> empresas = banco.getEmpresas();

		String RequisicaoDeArquivo = request.getHeader("Accept");

		if (RequisicaoDeArquivo.contains("xml")) {

			// criando refer�ncia para o objeto XStream que ir� transformar a lista de
			// empresas em informa��o xml
			XStream xtream = new XStream();
			String xml = xtream.toXML(empresas);

			response.setContentType("application/xml");
			response.getWriter().print(xml);
		} else if (RequisicaoDeArquivo.contains("json")) {

			// criando refer�ncia para o objeto Gson que ir� transformar a lista de empresas
			// em informa��o json
			Gson gson = new Gson();
			String json = gson.toJson(empresas);

			response.setContentType("application/json");
			response.getWriter().print(json);

		}

	}

}
