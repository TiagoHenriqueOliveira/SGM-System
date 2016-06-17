<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>SGM System</title>
        <meta name="description" content="">
        <meta name="author" content="Tiago">
        <link rel="shortcut icon" href="/favicon.ico">
        <link rel="apple-touch-icon" href="/apple-touch-icon.png">
        <meta name="viewport" content="width=device-width; initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/estilo.css" media="all">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" media="all">
    </head>
    <body>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="banner">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 banner">
                <header>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 logo">
                        <hgroup>
                            <a href="<c:url value='/'/>"><h1>SGM SYSTEM</h1></a>
                            <a href="<c:url value='/'/>"><h2>Simplifique seu negócio!</h2></a>
                        </hgroup>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 menu">
                        <nav>
                            <ul>
                                <li><a href="<c:url value='/'/>">Home</a></li>
	                            <li><a href="<c:url value='/orcamento'/>">Orçamento</a></li>
	                            <li><a href="<c:url value='/contato'/>">Contato</a></li>
                            </ul>
                        </nav><!-- final do menu-->
                    </div>
                </header><!-- final do header-->
            </div><!-- final do banner-->
        </div>

        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <form class="form-signin" action="<c:url value='/sistema'/>" method="post">
                <h2 class="form-signin-heading">Acesso ao Sistema</h2>
                <input type="text" class="form-control login"
                	placeholder="Login" name="usuario.login" value="${usuario.login}" required autofocus>
                <input type="password" class="form-control senha-login"
                	placeholder="Senha" name="usuario.senha" value="${usuario.senha}" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Acessar</button>
            </form>
        </div> <!-- /login -->

        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="rodape">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 menu-rodape">
                    <nav>
                        <ul>
                            <li><a href="<c:url value='/'/>">Home</a></li>
                            <li><a href="<c:url value='/orcamento'/>">Orçamento</a></li>
                            <li><a href="<c:url value='/contato'/>">Contato</a></li>
                        </ul>
                    </nav>
                </div><!--final do menu nav footer-->
                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 rodape">
                    <footer>
                        <p>Todos os direitos reservados à SGM System</p>
                        <p>Copyright &copy <em>by F&T Smart Solutions</em></p>
                    </footer>
                </div><!--final do rodape-->
            </div><!--final da div rodape-->
        </div>

        <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
    </body>
</html>