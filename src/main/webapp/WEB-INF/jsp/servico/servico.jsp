<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../cabecalho.jsp"%>

<div class="container-fluid">
	<div class="row">
		<%@include file="../sidebar.jsp"%>

		<div class="col-sm-9">
			<div class="col-xs-12">
				<h2>Serviço</h2>
			</div>
			<div class="well col-xs-12">
				<div class="col-xs-3 col-md-4">
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#addServico">
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
			<div class="modal fade " id="addServico" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">

						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Serviço</h4>
						</div>
						<div class="modal-body">
							<div class=" row">

								<form data-toggle="validator" role="form"
									action="<c:url value='/servico'/>" method="post">
									<div class="form-group col-sm-12">
										<label for="inputName" class="control-label">Nome</label> <input
											type="text" class="form-control" id="inputName"
											name="servico.nome" value="${servico.nome}" required>
									</div>
									<div class="form-group col-sm-4">
										<label for="servico.valor" class="control-label">Valor
											R$:</label> <input type="text" class="form-control"
											id="servico.valor" name="servico.valor"
											value="${servico.valor}" required>
									</div>
									<div class="modal-footer col-xs-12">
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">Cancelar</button>
										<button type="submit" class="btn btn-success">Salvar</button>
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
							<th class="col-sm-4">Valor R$</th>
							<th class="col-sm-1">Ação</th>
						</tr>
					</thead>
					<c:forEach items="${servicoView}" var="servico">
						<tr>
							<td>${servico.nome}</td>
							<td>${servico.valor}</td>
							<td>
								<button type="button" class="btn btn-success btn-xs"
									data-toggle="modal" data-target="#addServico${servico.codigo}">Editar</button>
							</td>
						</tr>
						<div class="modal fade " id="addServico${servico.codigo}"
							tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">

									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">Serviço</h4>
									</div>
									<div class="modal-body">
										<div class=" row">

											<form data-toggle="validator" role="form"
												action="<c:url value='/servico'/>" method="post">
												<input type="hidden" name="servico.codigo"
													value="${servico.codigo}">
												<div class="form-group col-sm-12">
													<label for="inputName" class="control-label">Nome</label> <input
														type="text" class="form-control" id="inputName"
														name="servico.nome" value="${servico.nome}" required>
												</div>
												<div class="form-group col-sm-4">
													<label for="servico.valor" class="control-label">Valor
														R$:</label> <input type="text" class="form-control"
														id="servico.valor" name="servico.valor"
														value="${servico.valor}" required>
												</div>
												<div class="modal-footer col-xs-12">
													<button type="button" class="btn btn-danger"
														data-dismiss="modal">Cancelar</button>
													<button type="submit" class="btn btn-success">Salvar</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>
<%@include file="../rodape.jsp"%>