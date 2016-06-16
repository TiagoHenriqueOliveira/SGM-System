<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
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
                                <li><a href="<c:url value='/orcamento'/>">Orçamento</a></li>
                            </ul>
                        </nav><!-- final do menu-->
                    </div>
                </header><!-- final do header-->
            </div><!-- final do banner-->

            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="col-xs-12 col-sm-12 col-sm-offset-0 col-md-11 col-md-offset-1 col-lg-11 col-lg-offset-1 fale-conosco">
                    <h3>Fale Conosco</h3>
                </div>

                <div class="col-xs-12 col-sm-8 col-md-7 col-md-offset-1 col-lg-7 col-lg-offset-1 form-fale-conosco">
                    <form method="post" id="formFaleConosco" name="form-fale-conosco" onsubmit="return(enviar())">
                        <fieldset class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <legend>Identificação</legend>
                            <label for="cNome" class="col-xs-12">Nome</label>
                            <input type="text" name="txtNome" id="cNome" maxlength="80" placeholder="Nome completo"
                                   class="col-xs-12" required autofocus/>
                            <label for="cTelefone" class="col-xs-12">Telefone</label>
                            <input type="text" name="txtTelefone" id="cTelefone" maxlength="12" placeholder="(ddd)____-____"
                                   class="col-xs-12" required autofocus/>
                            <label for="cEmail" class="col-xs-12">Email</label>
                            <input type="email" name="txtEmail" id="cEmail" maxlength="80" placeholder="Seu email"
                                   class="col-xs-12" required autofocus/>
                            <label for="cAssunto" class="col-xs-12">Assunto</label>
                            <input type="text" name="txtAssunto" id="cassunto" maxlength="80" placeholder="Informar o assunto"
                                   class="col-xs-12" required autofocus/>
                            <label for="cMensagem" class="col-xs-12">Mensagem</label>
                            <textarea name="txtMensagem" id="cMensagem" cols="45" rows="8"
                                      placeholder="Digite sua mensagem aqui!" class="col-xs-12" required autofocus></textarea>
                            <input type="submit" value="Enviar" class="enviar"/>
                        </fieldset><!--final do fieldset orcamento-->
                    </form><!--final do form orcamento-->
                </div><!--final da div informacoes-->

                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 info-localizacao">
                    <div class="col-xs-12 col-sm-11 col-sm-offset-1 col-md-11 col-md-offset-1 col-lg-11 col-lg-offset-1">
                        <h3>Nossa localização</h3>
                        <h4>Telefone</h4>
                        <p>
                            49 9916 2984
                        </p>
                        <h4>Endereço</h4>
                        <p>
                            Rua das Palmeiras, nº 20<br/>
                            Sufiatti<br/>
                            Próximo ao Freio Sábia<br/>
                            CEP: 89.820-000<br/>
                            Xanxerê - SC
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 menu-rodape">
                    <nav>
                        <ul>
                            <li><a href="<c:url value='/'/>">Home</a></li>
                            <li><a href="<c:url value='/orcamento'/>">Orçamento</a></li>
                        </ul>
                    </nav>
                </div><!--final do menu nav footer-->

                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 rodape">
                    <footer>
                        <p>Todos os direitos reservados à SGM System</p>
                        <p>Copyright &copy <em>by F&T Smart Solutions</em></p>
                    </footer>
                </div><!--final do rodape-->
            </div><!--final da quinta linha-->
        </div>
    </body>
</html>