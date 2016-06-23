<%@include file="../cabecalho.jsp"%>

<div class="container-fluid">
	<div class="row">
		<%@include file="../sidebar.jsp"%>

		<div class="col-sm-9">
			<div class="col-xs-12">
				<h2 class="navbar-brand">Veículo</h2>
			</div>
			<div class="well col-xs-12">
				<div class="col-xs-3 col-md-4">
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#addVeiculo">
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
			<div class="modal fade " id="addVeiculo${cliente.codigo}"
				tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">

						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Veículo</h4>
						</div>
						<div class="modal-body">
							<div class=" row">
								<form data-toggle="validator" role="form"
									action="<c:url value='/veiculo'/>" method="post">
									<input type="hidden" name="veiculo.cliente.codigo"
										value="${cliente.codigo}">
									<div class="form-group col-sm-6">
										<label for="inputName" class="control-label">Name</label> <input
											type="text" class="form-control" id="inputName"
											name="veiculo.nome" value="${veiculo.nome}" required>
									</div>
									<div class="form-group col-sm-6">
										<label for="veiculo_placa" class="control-label">Placa:</label>
										<input type="text" class="form-control" id="veiculo_placa"
											name="veiculo.placa" value="${veiculo.placa}" required>
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
							<th class="col-sm-4">Cliente</th>
							<th class="col-sm-4">Veículo</th>
							<th class="col-sm-3">Placa</th>
							<th class="col-sm-1">Ação</th>
						</tr>
					</thead>
					<c:forEach items="${veiculoView}" var="veiculo">
						<tr>
							<td>${veiculo.cliente.nome}</td>
							<td>${veiculo.nome}</td>
							<td>${veiculo.placa}</td>
							<td>
								<button type="button" class="btn btn-danger btn-xs"
									onclick="RemoveTableRow(this)">Excluir</button>
							</td>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>
<%@include file="../rodape.jsp"%>