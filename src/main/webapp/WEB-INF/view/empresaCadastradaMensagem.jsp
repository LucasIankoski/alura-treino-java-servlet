<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/listaEmpresas" var="linkListaEmpresas" />
<c:url value="/formCadastroEmpresa.jsp" var="linkCadastroEmpresas" />


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro da empresa</title>
</head>
<body>
	<c:import url="logout-link.jsp"></c:import>

	<c:if test="${not empty empresa}">
		Empresa ${nomeEmpresa} cadastrada com sucesso!
	</c:if>
	<c:if test="${empty empresa}">
		Nenhuma empresa foi cadastrada.
	</c:if>
	
	<form action="${linkListaEmpresas}">
		<input type="submit" value="Visualizar lista">
	</form>
	<form action="${linkCadastroEmpresas}">
		<input type="submit" value="Cadastrar nova empresa">
	</form>

</body>
</html>