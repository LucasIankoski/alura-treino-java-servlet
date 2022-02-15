<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/paginaInicial" var="linkListaEmpresas" />
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
  <%@include file="../css/cadastro-empresas.css" %>
  <%@include file="../css/popup.css" %>
</style>
<script>
<%@include file="../js/scripts.js" %>
</script>
<meta charset="ISO-8859-1">
<title>Cadastro</title>
</head>
<body>
	<c:import url="logout-link.jsp"></c:import> <!-- importa jsp com o link de deslogar -->
	<div>
		<h1 id="titulo">Cadastro de empresa</h1>
		<p id="subtitulo">Preencha os dados da empresa.</p>

	</div>
	<form action="${linkListaEmpresas}" method="post">
		<div id="box">			
				
			<fieldset class="grupo">		
				<div class="campo">
					<label><strong>Nome da empresa</strong></label>	 
					<input type="text" name="nome" />
				</div>
				
				<div class="campo">
					<label><strong>CNPJ</strong></label>				 
					<input type="text" name="cnpj" />
				</div>	
				<div class="campo">
					<label><strong>Email</strong></label>				 	
					<input type="text" name="email" />
				</div>					
			</fieldset>
			
			
			<fieldset class="grupo">
				<div class="campo">
					<label><strong>Capital social</strong></label>				 
					<input type="text" name="capital"/>
				</div>
				<div class="campo">
					<label><strong>Data de abertura</strong></label>						
					<input type="text" name="data"/>
				</div>			
			</fieldset>
		</div>
				<div id="box-botoes">
					<input type="hidden" name="acao" value="NovaEmpresa" />	
					<input class="botao" type="submit" value="Cadastrar" />						
					<button class="botao" type="reset" onclick="javascript:abrePopUp()">Cancelar</button>
					<div class="popup-wrapper">
						<div class="popup">
							<div class="popup-content">
								<h3>Deseja cancelar o preenchimento?</h3>
								<div class="botoes-popup">
									<a class="voltar" href="javascript:fecharPopUp()">Voltar</a> <a class="cancelar" href="paginaInicial?acao=ListaEmpresas">Cancelar</a>
								</div>
							</div>
						</div>
					</div>		
						 	
				</div>	 	
	</form>
	
</body>
</html>