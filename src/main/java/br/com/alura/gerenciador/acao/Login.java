package br.com.alura.gerenciador.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Usuario;

public class Login implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		System.out.println("logando " + login);
		
		Banco banco = new Banco();
		Usuario usuarioVerificacao = banco.verificaAutenticidade(login, senha);
		
		if(usuarioVerificacao != null) {
			HttpSession sessao = request.getSession();
			sessao.setAttribute("usuarioLogado", usuarioVerificacao);
			
			return "redirect:paginaInicial?acao=ListaEmpresas";	
			
		} else {
			
			return "redirect:paginaInicial?acao=LoginForm";
			
		}
				
		
	}

}
