<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="paginaInicial" var="linkPaginaInicial" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alterando empresa</title>
</head>
<body>
	<c:import url="logout-link.jsp"></c:import>
	
	<form action="${linkPaginaInicial}" method="post">
		<table>
			 <tr>
			 	 <td>		
					 Nome da empresa:
				 </td>
				 <td>
					 <input type="text" name="nome" value="${empresa.nome}" />
				 </td>
			 </tr>    
			 
			 <tr>
			 	 <td>		
					 CNPJ:
				 </td>
				 <td>
					 <input type="text" name="cnpj" value="${empresa.cnpj}" />
				 </td>
			 </tr>  
			 
			 <tr>
			 	 <td>		
					 Capital social
				 </td>
				 <td>
					 <input type="text" name="capital" value="${empresa.capital}" />
				 </td>
			 </tr>
			
			 <tr>
			 	 <td>
				 	Data de abertura:
				 </td>
				 <td> 			
				 	<input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"  />
				 </td>
			 </tr>   
			 
			 <tr>
			 	 <td>
				 	E-mail:
				 </td>
				 <td> 			
				 	<input type="text" name="email" value="${empresa.email}"/>
				 </td>
			 </tr>
			<input type="hidden" name="id" value="${empresa.id }">
			<input type="hidden" name="acao" value="AlteraEmpresas" />
			<td>
				<input type="submit" value="Salvar"/> 
			</td>	 
		</table>
	</form>

</body>
</html>