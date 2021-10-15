package br.com.alura.gerenciador.acao;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

public class NovaEmpresa implements Acao {
	
	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String empresaNovaNome = request.getParameter("nome");
		String empresaNovaCnpj = request.getParameter("cnpj");
		String paramCapital = request.getParameter("capital");
		String paramDataEmpresa = request.getParameter("data");
		String empresaNovaEmail = request.getParameter("email");
		
		Date dataAbertura = null;
		double EmpresaCapital = 0;
		
		
        try {
        	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			dataAbertura = sdf.parse(paramDataEmpresa);
			EmpresaCapital = Double.parseDouble(paramCapital);
		} catch (ParseException e) {
			throw new ServletException(e);
		}
		
		
		Empresa empresa = new Empresa();
		empresa.setCnpj(empresaNovaCnpj);
		empresa.setCapital(EmpresaCapital);
		empresa.setNome(empresaNovaNome);
		empresa.setDataAbertura(dataAbertura);
		empresa.setEmail(empresaNovaEmail);
				
		
		
		Banco banco = new Banco();
		banco.adiciona(empresa);
		
		return "redirect:paginaInicial?acao=ListaEmpresas";
	}

}
