package br.com.alura.gerenciador.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.alura.gerenciador.acao.Acao;
import br.com.alura.gerenciador.acao.AlteraEmpresas;
import br.com.alura.gerenciador.acao.ListaEmpresas;
import br.com.alura.gerenciador.acao.MostraEmpresas;
import br.com.alura.gerenciador.acao.NovaEmpresa;
import br.com.alura.gerenciador.acao.NovaEmpresaForm;
import br.com.alura.gerenciador.acao.RemoveEmpresa;

/**
 * Servlet implementation class EntradaServlet
 */
@WebServlet("/paginaInicial")
public class EntradaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String paramAcao = request.getParameter("acao");
		
				
		String nomeDaClasse = "br.com.alura.gerenciador.acao." + paramAcao;
		
		String nome;
		
		try {
			Class classe = Class.forName(nomeDaClasse); //Carrega a classe com o nome
			Acao acao = (Acao) classe.newInstance();
			nome = acao.executa(request, response);
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException | ServletException
				| IOException e) {
			throw new ServletException(e);
			
		}
		
		String[] enderecoRedirecionamento = nome.split(":");
		if(enderecoRedirecionamento[0].equals("forward")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/" + enderecoRedirecionamento[1]); //caminho para a requisição
			rd.forward(request, response);	
			
		} else if(enderecoRedirecionamento[0].equals("redirect")) {
			
			response.sendRedirect(enderecoRedirecionamento[1]);
			
		}
	/*	
		if(paramAcao.equals("ListaEmpresas")) {
			
			ListaEmpresas acao = new ListaEmpresas();
			nome = acao.executa(request, response);
			
		} else if(paramAcao.equals("NovaEmpresa")) {
			
			NovaEmpresa acao = new NovaEmpresa();
			nome = acao.executa(request, response);
			
		} else if(paramAcao.equals("MostraEmpresas")) {
			
			MostraDadosEmpresas acao = new MostraDadosEmpresas();
			nome = acao.executa(request, response);
			
		} else if(paramAcao.equals("AlteraEmpresa")) {
			
			AlteraEmpresas acao = new AlteraEmpresas();
			nome = acao.executa(request, response);
			
		}else if(paramAcao.equals("RemoveEmpresa")) {
			
			RemoveEmpresa acao = new RemoveEmpresa();
			nome = acao.executa(request, response);
		} else if(paramAcao.equals("NovaEmpresaForm")) {
			
			NovaEmpresaForm acao = new NovaEmpresaForm();
			nome = acao.executa(request, response);
		}
	*/	
		
		
	}

}
