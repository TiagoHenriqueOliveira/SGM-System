<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
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
	<%@include file="../cabecalho.jsp"%>

	<div class="container-fluid">
		<div class="row">
			<%@include file="../sidebar.jsp"%>

			<div class="col-sm-9">
				<div class="col-xs-12">
					<h2 class="navbar-brand">CLIENTE</h2>
				</div>
				<div class="well col-xs-12">
					<div class="col-xs-3 col-md-4">
						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#addCliente">
							<span class="glyphicon glyphicon-plus"></span> Adicionar
						</button>
					</div>
					<div class="col-xs-7 col-xs-offset-2 col-sm-6 col-sm-offset-2">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-default" type="button">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</span>
						</div>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-6 -->
				</div>
				<div class="modal fade " id="addCliente" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">

							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">Cliente</h4>
							</div>
							<div class="modal-body">
								<div class=" row">

									<form data-toggle="validator" role="form">
										<div class="form-group col-sm-12">
											<label for="inputName" class="control-label">Name</label> <input
												type="text" class="form-control" id="inputName" required>
										</div>
										<div class="form-group col-sm-6">
											<label for="cliente.fone" class="control-label">Telefone:</label>
											<input type="text" class="form-control" id="cliente.fone"
												name="cliente.fone" required>
										</div>
										<div class="form-group col-sm-6">
											<label for="cliente.cidade" class="control-label">Cidade:</label>
											<select class="form-control col-sm-2" id="cliente.cidade"
												name="cliente.cidade">
												<option>Xanxerê</option>
											</select>
										</div>
										<div class="form-group col-sm-6">
											<label for="cliente.bairro" class="control-label">Bairro:</label>
											<input type="text" class="form-control" id="cliente.bairro"
												name="cliente.bairro" required>
										</div>
										<div class="form-group col-sm-6">
											<label for="cliente.endereco" class="control-label">Endereço:</label>
											<input type="text" class="form-control" id="cliente.endereco"
												name="cliente.endereco" required>
										</div>
										<div class="form-group col-sm-4">
											<label for="cliente.numero" class="control-label">Numero:</label>
											<input type="text" class="form-control"
												data-mask="999-99-999-9999-9" id="cliente.numero"
												name="cliente.numero" required>
										</div>
										<div class="form-group col-sm-4">
											<label for="cliente.cpf" class="control-label">CPF:</label> <input
												type="text" class="form-control" id="cliente.cpf"
												name="cliente.cpf" required>
										</div>
										<div class="checkbox col-sm-3 col-sm-offset-1 foraUso">
											<label for="cliente.fora" class=""><input
												type="checkbox" value="" name="cliente.fora">Fora de
												uso</label>
										</div>
										<div class="modal-footer col-xs-12">
											<button type="button" class="btn btn-danger"
												data-dismiss="modal">Cancelar</button>
											<button type="submit" class="btn btn-success">
												Salvar</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tabela">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th class="col-sm-4">Nome</th>
								<th class="col-sm-4">Telefone</th>
								<th class="col-sm-3">CPF</th>
								<th class="col-sm-1">Ação</th>
							</tr>
						</thead>
						<tr>
							<td>Joao da Silva</td>
							<td>49 9999-9999</td>
							<td>999.999.999-99</td>
							<td>
								<button type="button" class="btn btn-success btn-xs"
									data-toggle="modal" data-target="#addCliente">Editar</button>
							</td>
							</td>
						</tr>

					</table>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/bootstrap-timepicker.js"></script>
	<script src="js/cadastro.js"></script>
</body>
</html>