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
                                <li><a href="<c:url value='/login'/>">Acesso ao Sistema</a></li>
                                <li><a href="<c:url value='/contato'/>">Contato</a></li>
                            </ul>
                        </nav><!-- final do menu-->
                    </div>
                </header><!-- final do header-->
            </div><!-- final do banner-->


            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 destaque">
                    <div class="intro col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <h2>Facilite o gerenciamento!</h2>
                        <p>
                            Gerencie melhor sua oficina de maneira fácil e descomplicada. Temos o software ideal para você, 100%
                            online,
                            aonde você pode gerenciar vários processos de sua empresa de maneira simples e ágil. Software
                            especializado em gestão de Oficinas em qualquer ramo!
                        </p>
                    </div><!-- final da introducao ao sistema-->

                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 relatorio">
                        <h2>De maneira fácil e precisa você obtem relatórios para ajudar na gestão de sua empresa!</h2>
                        <ul>
                            <li>Total de serviços prestados, por período ou cliente</li>
                            <li>Relação cadastral de clientes</li>
                            <li>Ordens de serviço por veículos</li>
                            <li>Registro de veículos</li>
                        </ul>
                    </div><!-- final do informativo do relatorio-->
                </div><!-- final da introdução-->
            </div><!-- final da div-->
            <section class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 conteudo">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 agendamento-servico">
                        <div class="col-xs-10 col-sm-9 col-md-4 col-lg-4 imagem-agenda">
                            <img src="imgs/agenda.jpg" alt="agenda"
                                 class="col-lg-12 col-md-12 col-md-offset-0 col-sm-6 col-sm-offset-1 col-xs-10 col-xs-offset-1"/>
                        </div><!-- final da imagem da agenda-->

                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 informacoes_agenda">
                            <h2>Gerencie a agenda de serviços</h2>
                            <p>
                                De forma fácil e rápida você define sua grade de horários.
                            </p>
                            <p>
                                Sempre que um serviço é agendado o sistema envia um email de confirmação para o cliente. No dia
                                anterior a ser realizado o serviço,
                                o cliente recebe outro email lembrando do serviço agendado e junto ao mesmo é enviado uma opção
                                de confirmação.
                                Dessa forma você aumenta a taxa de comparecimento na empresa e rentabiliza mais.
                            </P>
                        </div><!-- final das informacoes da agenda-->
                    </div><!-- final da agenda-->

                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 controle-estoque">
                        <div class="col-xs-10 col-sm-9 col-md-4 col-lg-4 imagem-estoque">
                            <img src="imgs/estoque.jpg" alt="estoque"
                                 class="col-lg-12 col-md-12 col-md-offset-0 col-sm-6 col-sm-offset-1 col-xs-10 col-xs-offset-1"/>
                        </div><!-- final da imagem do estoque-->

                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 informacoes_estoque">
                            <h2>Controle de estoque</h2>
                            <p>
                                Esqueça a planilha de controle de estoque e abra espaço para uma gestão de estoque totalmente
                                online, tudo sem complicação.
                            </p>
                            <p>
                                Tenha um estoque confiável para nunca mais ter dor de cabeça e perder tempo comprando peças de
                                última hora.
                                Cadastre-se já e garanta a entrega do serviço no prazo.
                            </p>
                        </div><!-- final das informacoes do estoque-->
                    </div><!-- final da div controle de estoque-->
                </div><!-- final da div agenda e estoque-->

                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 conteudo">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 cadastro-cliente">
                        <div class="col-xs-10 col-sm-9 col-md-4 col-lg-4 imagem-cadastro">
                            <img src="imgs/cadastos.jpg" alt="cadastro"
                                 class="col-lg-9 col-md-9 col-md-offset-0 col-sm-5 col-sm-offset-1 col-xs-10 col-xs-offset-1"/>
                        </div><!-- final da imagem do cadastro de cliente-->

                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 informacoes_cadastros">
                            <h2>Cadastro de Clientes</h2>
                            <p>
                                O SGM System oferece um formulário de cadastro de clientes completo para melhor organizar e
                                adquirir os dados de seus consumidores.
                                Cadastre seus clientes com nome, foto, endereço, CPF, data de nascimento e muito mais. Opção
                                também de cadastro do cliente como Empresa (Pessoa Jurídica com CNPJ ao invés do CPF).
                            </p>
                            <p>
                                Disponibilizamos relatórios de lucro do cliente por período, ordem de servico, registro de
                                veículos, relação cadastral e muito mais.
                            </P>
                        </div><!-- final das informacoes do cadastro-->
                    </div><!-- final do cadastro cliente-->

                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 dispositivo">
                        <div class="col-xs-10 col-sm-9 col-md-4 col-lg-4 imagem-dispositivo">
                            <img src="imgs/dispositivo-movel.jpg" alt="dispositivo móvel"
                                 class="col-lg-12 col-md-12 col-md-offset-0 col-sm-6 col-sm-offset-1 col-xs-11 col-xs-offset-1"/>
                        </div><!-- final da imagem dos dispositivos-->

                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 informacoes-dispositivo">
                            <h2>Acesso simultâneo e de qualquer dispositivo</h2>
                            <p>
                                O acesso simultâneo possibilita o maior uso de recurso do software, pois, a medida que sua
                                empresa cresce nosso software estará apto a suprir suas necessidades.
                            </p>
                            <p>
                                Damos a você toda a praticidade para usar o sistema de qualquer dispositivo móvel em qualquer
                                hora e lugar!
                                <br/><br/>
                                Você poderá acessar de dispositivos como:
                            </p>
                            <ul>
                                <li>Notebook</li>
                                <li>Tablet</li>
                                <li>Smartphone</li>
                                <li>IPhone</li>
                            </ul>
                        </div>
                    </div><!-- final das informacoes do dispositivo-->
                </div><!-- final da terceira linha-->
            </section><!-- final da seção-->

            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 orcamento">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 info-orcamento">
                    <div class="col-xs-8 col-sm-12 col-md-6 col-lg-6 imagem-orcamento">
                        <img src="imgs/orcamento.jpg" alt="solicitar um orçamento"
                             class="col-xs-12 col-sm-6 col-md-10 col-md-offset-2 col-lg-8">
                    </div><!-- final da imagem do orcamento-->

                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <h3>O Software ideal para sua empresa!</h3>
                        <h4>Solicite um orçamento!<br/>Possuímos diversos planos que são do tamanho de sua empresa!</h4>
                        <div col-xs-4>
                            <a href="<c:url value='/orcamento'/>"><input type="submit" value="Solicite um Orçamento"
                                                            class="solicita-orcamento"/></a>
                        </div><!-- final do botao enviar orcamento-->
                    </div><!-- final da div solicitar orcamento-->
                </div><!-- final do orcamento-->
            </div><!-- final da quarta linha-->

            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 menu-rodape">
                    <nav>
                        <ul>
                            <li><a href="<c:url value='/login'/>">Acesso ao Sistema</a></li>
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
            </div><!--final da quinta linha-->
        </div><!-- final do corpo-->
    </body>
</html>