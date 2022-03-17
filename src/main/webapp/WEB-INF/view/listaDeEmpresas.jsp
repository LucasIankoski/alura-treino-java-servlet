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
  <%@include file="../css/lista-empresas.css" %>
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

	<h1 id="titulo">Consulta de Empresas</h1>
	<br />
	
	<div class="informacoes-empresas">
		<table id="table-listas">
			<ul>			
				<tr>
					<th class="titulos">Empresa</th>
					<th class="titulos">CNPJ</th>
					<th class="titulos">Capital social</th>
					<th class="titulos">Contato</th>
					<th class="titulos">Data de criação</th>
				</tr>
				<c:forEach items="${empresas}" var="empresa">
					<tr>
					
						<td class="linha-empresas">					
							${empresa.nome}						
						</td>
						
						<td class="linha-empresas">					
							${empresa.cnpj}					
						</td>
						
						<td class="linha-empresas">					
							R$ ${empresa.capital}					
						</td>
						<td class="linha-empresas">					
							${empresa.email}						
						</td>
							
						<td class="linha-empresas">
							<fmt:formatDate	value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />
						</td>
						<td class="linha-empresas">
						<a class="editaveis" href="/gerenciador/paginaInicial?acao=MostraEmpresas&id=${empresa.id }"><div class="box-editaveis">Editar</div></a>
						</td>
						<td class="linha-empresas">
							<a class="editaveis" href="/gerenciador/paginaInicial?acao=RemoveEmpresa&id=${empresa.id }"><div class="box-editaveis">Remover</div></a>
						</td>						
						
					</tr>
				</c:forEach>		
			</ul>		
		<!--</c:if>-->
		</table>
	</div>
	
	<div class="box-botoes">
		<form action="${linkCadastroEmpresas}">
			<input type="hidden" name="acao" value="NovaEmpresaForm"> 
			<input class="botao" type="submit" value="Adicionar empresa">
		</form>
	</div>




</body>
</html>