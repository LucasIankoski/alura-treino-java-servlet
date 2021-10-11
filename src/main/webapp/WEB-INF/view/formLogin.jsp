<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/paginaInicial" var="linkPaginaInicial" />
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
  <%@include file="../css/estilo.scss" %>
</style>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>			

	    
    <div class="wrapper">
	  <form class="login" action="${linkPaginaInicial}" method="post">
	    <p class="title">Login</p>
	    <input type="text" placeholder="Usuário" name="login" autofocus/>
	    <i class="fa fa-user"></i>
	    <input type="password" placeholder="Senha" name="senha" />
	    <input type="hidden" name="acao" value="Login" />
	    <i class="fa fa-key"></i>
	    <a href="#">Esqueci minha senha</a>
	    <button>
	      <i class="spinner"></i>
	      <span class="state">Acessar</span>
	    </button>
	  </form>	  
	</div>
	
	

</body>
</html>