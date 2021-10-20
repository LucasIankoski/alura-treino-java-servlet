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

public class AlteraEmpresas implements Acao {
	
	public String executa(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String empresaNome = request.getParameter("nome");			
		String empresaCnpj = request.getParameter("cnpj");
		String paramCapital = request.getParameter("capital");
		String paramDataEmpresa = request.getParameter("data");	
		String empresaEmail = request.getParameter("email");
		String paramId = request.getParameter("id");
		
		Integer id = Integer.valueOf(paramId);
		double EmpresaCapital = 0;
		Date dataAbertura = null;
		
		
        try {
        	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			dataAbertura = sdf.parse(paramDataEmpresa);
			EmpresaCapital =  Double.parseDouble(paramCapital);
		} catch (ParseException e) {
			throw new ServletException(e);
		}
        
        Banco banco = new Banco();
        Empresa empresa = banco.buscaPeloIdEmpresa(id);
        empresa.setNome(empresaNome);
        empresa.setCnpj(empresaCnpj);
        empresa.setCapital(EmpresaCapital);
        empresa.setDataAbertura(dataAbertura);
        empresa.setEmail(empresaEmail);
        
        
        return "redirect:paginaInicial?acao=ListaEmpresas";
		
	}

}
