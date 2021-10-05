<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/paginaInicial" var="linkRemoveEmpresa" />
<c:url value="/paginaInicial" var="linkAlteraEmpresa" />
<c:url value="/paginaInicial" var="linkCadastroEmpresas" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro da empresa</title>
</head>
<body>
	Listas: <br />
	
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
				<a href="/gerenciador/paginaInicial?acao=MostraEmpresas&id=${empresa.id }">Editar</a>
				<a href="/gerenciador/paginaInicial?acao=RemoveEmpresa&id=${empresa.id }">Remover</a>
				
			
			</li>
		
		</c:forEach>	
	</ul>
	<form action="${linkCadastroEmpresas}">
		<input type="hidden" name="acao" value="NovaEmpresaForm">
		<input type="submit" value="Cadastrar nova empresa">
	</form>
	
	
	

</body>
</html>