<%@include file="../cabecalho.jsp"%>

<div class="container-fluid">
	<div class="row">
		<%@include file="../sidebar.jsp"%>

		<div class="col-sm-9">
			<div class="col-xs-12">
				<h2 class="navbar-brand">VEICULO</h2>
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
			<div class="modal fade " id="addVeiculo" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">

						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Veiculo</h4>
						</div>
						<div class="modal-body">
							<div class=" row">

								<form data-toggle="validator" role="form">
									<div class="form-group col-lg-5">
										<label for="inputName" class="control-label">Nome</label> <input
											type="text" class="form-control" id="inputName" required>
									</div>
									<div class="form-group col-sm-5">
										<label for="veiculo.placa" class="control-label">Placa:</label>
										<input type="text" class="form-control" id="veiculo.placa"
											name="veiculo.placa" required>
									</div>
									<div class="form-group col-sm-8">
										<label for="veiculo-cliente" class="control-label">Cliente:</label>
										<div class="input-group">
											<input type="text" class="form-control" id="osv.cliente"
												name="osv.cliente" required> <span
												class="input-group-btn">
												<button class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-search"></span>
												</button>
											</span>
										</div>
									</div>

									<div class="checkbox col-sm-3 col-sm-offset-1 foraUso">
										<label for="veiculo.fora" class=""> <input
											type="checkbox" value="" name="veiculo.fora"> Fora de
											uso
										</label>
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
							<th class="col-sm-4">Placa</th>
							<th class="col-sm-3">Cliente</th>
							<th class="col-sm-1">Ação</th>
						</tr>
					</thead>
					<tr>
						<td>Honda Civic</td>
						<td>AAA-0099</td>
						<td>Joao da Silva</td>
						<td>
							<button type="button" class="btn btn-success btn-xs"
								data-toggle="modal" data-target="#addVeiculo">Editar</button>
						</td>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<%@include file="../rodape.jsp"%>