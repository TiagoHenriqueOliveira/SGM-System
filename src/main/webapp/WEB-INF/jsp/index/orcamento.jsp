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
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    </head>
    <body>
        <div>
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
                           		<li><a href="<c:url value='/contato'/>">Contato</a></li>
                            </ul>
                        </nav><!-- final do menu-->
                    </div>
                </header><!-- final do header-->
            </div><!-- final do banner-->

            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 orcamento">
                <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-8 col-lg-8 solicite-orcamento">
                    <h3>Solicite um orçamento</h3>
                </div>
                <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-8 col-lg-8 form-orcamento">
                    <form method="post" id="formOrcamento" name="orcamento" onsubmit="return(enviar())">
                        <fieldset class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <legend>Identificação</legend>
                            <label for="cNome" class="col-xs-12">Nome</label>
                            <input type="text" name="txtNome" id="cNome" maxlength="80" placeholder="Nome completo"
                                   class="col-xs-12" required autofocus/>
                            <label for="cEmpresa" class="col-xs-12">Empresa</label>
                            <input type="text" name="txtEmpresa" id="cEmpresa" maxlength="255" placeholder="Nome da Empresa"
                                   class="col-xs-12" required autofocus/>
                            <label for="cEmail" class="col-xs-12">Email</label>
                            <input type="email" name="txtEmail" id="cEmail" maxlength="80" placeholder="Seu email"
                                   class="col-xs-12" required autofocus/>
                            <label for="cCidade" class="col-xs-12">Cidade</label>
                            <input type="text" name="txtCidade" id="cCidade" maxlength="80" placeholder="Sua cidade"
                                   class="col-xs-12" required autofocus/>
                            <label for="cComentario" class="col-xs-12">Comentário</label>
                            <textarea name="txtComentario" id="cComentario" cols="45" rows="8"
                                      placeholder="Digite sua mensagem aqui!" class="col-xs-12" required autofocus></textarea>
                            <input type="submit" value="Enviar orçamento" class="envia-orcamento"/>
                        </fieldset><!--final do fieldset orcamento-->
                    </form><!--final do form orcamento-->
                </div><!--final da div informacoes-->
            </div><!--final da div orcamento-->

            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 menu-rodape">
                    <nav>
                        <ul>
                            <li><a href="<c:url value='/'/>">Home</a></li>
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
    </body>
</html>