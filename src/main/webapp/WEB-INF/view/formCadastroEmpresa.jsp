<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/paginaInicial" var="linkListaEmpresas" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro</title>
</head>
<body>
	<c:import url="logout-link.jsp"></c:import> <!-- importa jsp com o link de deslogar -->
	
	<form action="${linkListaEmpresas}" method="post">
		<table>
			 <tr>
			 	 <td>		
					 Nome da empresa:
				 </td>
				 <td>
					 <input type="text" name="nome" />
				 </td>
			 </tr>     
			
			 <tr>
			 	 <td>
				 	Data de abertura:
				 </td>
				 <td> 			
				 	<input type="text" name="data" />
				 </td>
			 </tr>   
			
			<input type="hidden" name="acao" value="NovaEmpresa" />
			
			 <td>
				<input type="submit" value="Cadastrar" />
			</td>	 
		</table>
	</form>

</body>
</html>