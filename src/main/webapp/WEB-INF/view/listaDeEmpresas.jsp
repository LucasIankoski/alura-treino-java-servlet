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
<style type="text/css">
  <%@include file="../css/cadastro-empresas.css" %>
</style>
<meta charset="ISO-8859-1">
<title>Lista de empresas</title>
</head>
<body>

	<c:import url="logout-link.jsp"></c:import>
	
	
	<!--<c:if test="${empty empresa}"> 
		Nenhuma empresa cadastrada <br />
	</c:if>
	<c:if test="${not empty empresas}"> -->

	Listas:
	<br />

	<div class="informacoes-empresas">
		<table id="table-listas">
			<ul>			
				<tr>
					<th>Empresa</th>
					<th>CNPJ</th>
					<th>Capital social</th>
					<th>Contato</th>
					<th>Data de criação</th>
				</tr>
				<c:forEach items="${empresas}" var="empresa">
					<tr>
					
						<td>					
							${empresa.nome}						
						</td>
						
						<td>					
							${empresa.cnpj}					
						</td>
						
						<td>					
							R$ ${empresa.capital}					
						</td>
						<td>					
							${empresa.email}						
						</td>
							
						<td>
							<fmt:formatDate	value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />
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
	</div>
	
	<br />
	
	<form action="${linkCadastroEmpresas}">
		<input type="hidden" name="acao" value="NovaEmpresaForm"> 
		<input type="submit" value="Cadastrar nova empresa">
	</form>




</body>
</html>