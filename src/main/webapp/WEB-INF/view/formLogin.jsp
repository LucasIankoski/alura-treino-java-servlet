<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/paginaInicial" var="linkPaginaInicial" />
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
  <%@include file="../css/estilo.scss" %>
</style>
<script>
<%@include file="../js/animacao.js" %>
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>			
    
    <div class="wrapper">
	  <form class="login" action="${linkPaginaInicial}" method="post">
	    <p class="title">Log in</p>
	    <input type="text" placeholder="Username" name="login" autofocus/>
	    <i class="fa fa-user"></i>
	    <input type="password" placeholder="Password" name="senha" />
	    <input type="hidden" name="acao" value="Login" />
	    <i class="fa fa-key"></i>
	    <a href="#">Forgot your password?</a>
	    <button>
	      <i class="spinner"></i>
	      <span class="state">Log in</span>
	    </button>
	  </form>
	  <footer><a target="blank" href="http://boudra.me/">boudra.me</a></footer>
	  </p>
	</div>

</body>
</html>