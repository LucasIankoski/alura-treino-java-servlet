<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/paginaInicial" var="linkListaEmpresas" />
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
  <%@include file="../css/cadastro-empresas.css" %>
</style>
<meta charset="ISO-8859-1">
<title>Cadastro</title>
</head>
<body>
	<c:import url="logout-link.jsp"></c:import> <!-- importa jsp com o link de deslogar -->
	
	<div>
		<h1 id="titulo">Cadastro de empresa</h1>
		<p id="subtitulo">Preencha os dados da empresa.</p>
		<br/>
		<br/>
	</div>
	
	<form action="${linkListaEmpresas}" method="post">		
		<fieldset class="grupo">		
			<div class="campo">
				<label><strong>Nome da empresa</strong></label>	 
				<input type="text" name="nome" required/>
			</div>
			
			<div class="campo">
				<label><strong>CNPJ</strong></label>				 
				<input type="text" name="cnpj" required />
			</div>	
			<div class="campo">
				<label><strong>Email</strong></label>				 	
				<input type="text" name="email" required/>
			</div>					
		</fieldset>
		
		
		
		
		<fieldset class="grupo">
			<div class="campo">
				<label><strong>Capital social</strong></label>				 
				<input type="text" name="capital" required />
			</div>
			<div class="campo">
				<label><strong>Data de abertura</strong></label>						
				<input type="text" name="data" required/>
			</div>			
		</fieldset>
		
			<input type="hidden" name="acao" value="NovaEmpresa" />	
			<input class="botao" type="submit" value="Cadastrar" />		 		 	
	</form>

</body>
</html>