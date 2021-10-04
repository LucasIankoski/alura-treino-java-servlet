<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.servlet.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/removeEmpresa" var="linkRemoveEmpresa" />
<c:url value="/formCadastroEmpresa.jsp" var="linkCadastroEmpresas" />

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
				<a href="${linkRemoveEmpresa}?id=${empresa.id}">Remover</a>
			
			</li>
		
		</c:forEach>	
	</ul>
	<form action="${linkCadastroEmpresas}">
		<input type="submit" value="Cadastrar nova empresa">
	</form>
	
	
	

</body>
</html>