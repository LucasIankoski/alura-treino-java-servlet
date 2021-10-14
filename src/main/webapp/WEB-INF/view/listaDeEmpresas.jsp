<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

	<c:import url="logout-link.jsp"></c:import>

	USUARIO: ${usuarioLogado.login }
	<br />
	<br />

	<!--<c:if test="${empty empresa}"> 
		Nenhuma empresa cadastrada <br />
	</c:if>
	<c:if test="${not empty empresas}"> -->

	Listas:
	<br />

	<table>
		<ul>			
			<tr>
				<th>Empresa</th>
				<th>Data de cria��o</th>
			</tr>
			<c:forEach items="${empresas}" var="empresa">
				<tr>
					
						<td>					
							<li>${empresa.nome}</li>						
						</td>
						
						<td>
							<li><fmt:formatDate	value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" /></li>
						</td>
						<td>
							<a href="/gerenciador/paginaInicial?acao=MostraEmpresas&id=${empresa.id }">Editar</a>
						</td>
						<td>
							<a href="/gerenciador/paginaInicial?acao=RemoveEmpresa&id=${empresa.id }">Remover</a>
						</td>
						
					
				</tr>
			</c:forEach>		
		</ul>		
	<!--</c:if>-->
	</table>
	
	<br />
	
	<form action="${linkCadastroEmpresas}">
		<input type="hidden" name="acao" value="NovaEmpresaForm"> <input
			type="submit" value="Cadastrar nova empresa">
	</form>




</body>
</html>