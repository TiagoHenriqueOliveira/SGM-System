<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="../../favicon.ico">
		<title>SGM-System | Cadastro</title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/estilo.css" rel="stylesheet" />
	</head>

	<body>

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">SGM-System</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="#">Nome</a>
						</li>
						<li>
							<a href="#">Sair <span class="glyphicon glyphicon-off" aria-hidden="true"></span> </a>
						</li>
					</ul>

				</div>
			</div>
		</nav>

		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-3">
					<div class="sidebar well">

						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> Cadastro </a></h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
									<div class="list-group">
										<a href="<c:url value='/cliente'/>" class="list-group-item active"> Cliente <span class="glyphicon glyphicon-user rigth" aria-hidden="true"></span> </a>
										<a href="<c:url value='/produto'/>" class="list-group-item"> Produto <span class="glyphicon glyphicon-oil rigth" aria-hidden="true"></span> </a>
										<a href="<c:url value='/servico'/>" class="list-group-item"> Serviço <span class="glyphicon glyphicon-wrench rigth" aria-hidden="true"></span> </a>
										<a href="<c:url value='/usuario'/>" class="list-group-item"> Usuario <span class="glyphicon glyphicon-user rigth" aria-hidden="true"></span> </a>
										<a href="<c:url value='/veiculo'/>" class="list-group-item"> Veículo <span class="glyphicon glyphicon-bed rigth" aria-hidden="true"></span> </a>
									</div>

								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title"><a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"> Ordem de Serviço </a></h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
									<div class="list-group">
										<a href="OsvNovo.html" class="list-group-item">Nova OSV</a>
										<a href="ordemServico.html" class="list-group-item">Listar OSV</a>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title"><a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree"> Relatórios</a></h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
									<div class="list-group">
										<a href="#" class="list-group-item"> Relatório OSV </a>
										<a href="#" class="list-group-item">Cliente</a>
									</div>
								</div>
							</div>
						</div>
					</div><!--/sidebar-->
				</div>
			</div><!--row-->
		</div><!-- /container -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/bootstrap-timepicker.js"></script>
		<script src="js/cadastro.js"></script>
	</body>
</html>