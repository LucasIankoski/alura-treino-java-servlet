<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/listaEmpresas" var="linkListaEmpresas" />
<c:url value="/alteraEmpresa" var="linkAlteraEmpresa" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alterando empresa</title>
</head>
<body>
	<form action="/gerenciador/alteraEmpresa" method="post">
		Nome da empresa:<input type="text" name="nome" value="${empresa.nome }" /> 
		Data de abertura: <input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>" />
		<input type="hidden" name="id" value="${empresa.id }">
		<input type="submit" value="Salvar"/> 
	</form>

</body>
</html>