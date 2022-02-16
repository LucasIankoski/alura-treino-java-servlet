<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/paginaInicial" var="linkPaginaInicial" />
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
  <%@include file="../css/formLogin.css" %>
</style>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>			

	    
    <div class="login-box">
	  <form class="login" action="${linkPaginaInicial}" method="post">
	    <p class="title">Login</p>
	    <div class="login-campo">
	    	<input class="campo" type="text" placeholder="Usuário" name="login" autofocus/>
	    </div>	    
	    <div class="senha-campo">
	    	<input class="campo" type="password" placeholder="Senha" name="senha" />
	    </div>	    
	    <input type="hidden" name="acao" value="Login" />	
	    <div class="link">
	    	<a href="#">Esqueci minha senha</a>
	    </div> 
	    <div class="btn">
	   		<button class="botao">	      
	      		<span>Acessar</span>
	    	</button>
	    </div>    
	  </form>	  
	</div>
	
	

</body>
</html>