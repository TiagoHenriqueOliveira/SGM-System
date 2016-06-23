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
		<title>SGM-System</title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/estilo.css" rel="stylesheet" />
	</head>

	<body>
		<div class="col-sm-3 sidebar">
			<div class="nav nav-sidebar">
	
				<div class="list-group">
					<li class="list-group-item active">Cadastro</li> <a
						href="<c:url value='/clienteCarrega'/>" class="list-group-item ">
						Cliente <span class="glyphicon glyphicon-user rigth"
						aria-hidden="true"></span>
					</a> <a href="<c:url value='/produtoCarrega'/>" class="list-group-item">
						Produto <span class="glyphicon glyphicon-oil rigth"
						aria-hidden="true"></span>
					</a> <a href="<c:url value='/servicoCarrega'/>" class="list-group-item">
						Serviço <span class="glyphicon glyphicon-wrench rigth"
						aria-hidden="true"></span>
					</a> <a href="<c:url value='/usuarioCarrega'/>" class="list-group-item">
						Usuario <span class="glyphicon glyphicon-user rigth"
						aria-hidden="true"></span>
					</a>
					<a href="<c:url value='/unidadeCarrega'/>" class="list-group-item">
						Unidade de Medida <span class="glyphicon glyphicon-asterisk rigth"
						aria-hidden="true"></span>
					</a>
				</div>
	
				<div class="list-group">
					<li class="list-group-item active">Ordem de serviço</li>
					<a href="<c:url value='/osv'/>" class="list-group-item">Nova OSV</a>
					<a href="<c:url value='/listaOsv'/>" class="list-group-item">Listar OSV</a>
				</div>
			</div>
		</div>
		<!--/sidebar-->
	
	</body>
</html>
