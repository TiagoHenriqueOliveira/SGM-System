<%@include file="../cabecalho.jsp"%>

<div class="container-fluid">
	<div class="row">
		<%@include file="../sidebar.jsp"%>

		<div class="col-sm-9">
			<div class="well col-md-8">
				<div class=" row">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#novaOSV"
							aria-controls="novaOSV" role="tab" data-toggle="tab">Nova OSV</a>
						</li>
						<li role="presentation"><a href="#produto"
							aria-controls="produto" role="tab" data-toggle="tab">Produto</a>
						</li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="novaOSV">
							<form data-toggle="validator" role="form">
								<div class="form-group col-sm-12">
									<label for="osv.cliente" class="control-label">Cliente:</label>
									<div class="input-group">
										<input type="text" class="form-control" id="osv.cliente"
											name="osv.cliente" required> <span
											class="input-group-btn">
											
										<!-- implementar botão com input para buscar a lista de cliente -->
											
											<button class="btn btn-default" type="button"
												data-toggle="modal" data-target="#listaCliente">
												<span class="glyphicon glyphicon-search"></span>
											</button>
											
											
										</span>
									</div>
								</div>
								<div class="form-group col-sm-6">
									<label for="osv.servico" class="control-label">Serviço:</label>
									<div class="input-group">
										<input type="text" class="form-control" id="osv.servico"
											name="osv.servico" required> <span
											class="input-group-btn">
											
					<!-- implementar botão com input para buscar a lista de servico -->
					
											<button class="btn btn-default" type="button"
												data-toggle="modal" data-target="#listaServico">
												<span class="glyphicon glyphicon-search"></span>
											</button>
											
											
										</span>
									</div>
								</div>
								<div class="form-group col-sm-6">
									<label for="osv.veiculo" class="control-label">Veículo:</label>
									<div class="input-group">
										<input type="text" class="form-control" id="osv.veiculo"
											name="osv.veiculo" required> <span
											class="input-group-btn">
											
											<!-- implementar botão com input para buscar a lista de veiculo -->
											
											<button class="btn btn-default" type="button"
												data-toggle="modal" data-target="#listaVeiculo">
												<span class="glyphicon glyphicon-search"></span>
											</button>
											
											
										</span>
									</div>
								</div>
								<div class="form-group col-sm-4">
									<label for="osv.status" class="control-label">Status:</label> <select
										class="form-control col-sm-2" id="osv.status"
										name="osv.status">
										<option>Aberta</option>
										<option>Concluída</option>
										<option>Cancelada</option>
									</select>
								</div>
								<div class="form-group col-xs-4">
									<label for="osv-data" class="control-label">Data de
										agendamento:</label>
									<div class="input-group date">
										<input type="text" class="form-control" id="osv-data" required>
										<span class="input-group-addon"> <span
											class="glyphicon glyphicon-calendar"></span>
										</span>
									</div>
								</div>
								<div class="form-group col-sm-3 col-sm-offset-1">
									<label for="osv.total" class="control-label">Valor
										total:</label> <input type="text" class="form-control" id="osv.total"
										name="osv.total" readonly="readonly" required>
								</div>
								<div class="modal-footer col-xs-12">
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">Cancelar</button>
									<button type="submit" class="btn btn-success">Salvar</button>
								</div>
							</form>
						</div>
						<div role="tabpanel" class="tab-pane" id="produto">
							<form data-toggle="validator" role="form">
								<div class="form-group col-sm-12">
									<label for="osv.produto" class="control-label">Produto:</label>
									<div class="input-group">
										<input type="text" class="form-control" id="osv.produto"
											name="osv.produto" required> <span
											class="input-group-btn">
											<button class="btn btn-default" type="button"
												data-toggle="modal" data-target="#listaProduto">
												<span class="glyphicon glyphicon-search"></span>
											</button>
										</span>
									</div>
								</div>
								<div class="form-group col-sm-3">
									<label for="osv.quantidade" class="control-label">Quantidade:</label>
									<input type="text" class="form-control" id="osv.quantidade"
										name="osv.quantidade" required>
								</div>
								<div class="form-group col-sm-3">
									<label for="osv.veiculo" class="control-label">Valor
										Un:</label> <input type="text" class="form-control" id="osv.veiculo"
										name="osv.veiculo" required>
								</div>
								<div class="form-group col-sm-4 col-sm-offset-2">
									<label for="osv.totalProd" class="control-label">Valor
										total produtos:</label> <input type="text" class="form-control"
										id="osv.totalProd" name="osv.totalProd" readonly="readonly"
										required>
								</div>
								<div class="modal-footer col-xs-12">
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">Cancelar</button>
									<button type="submit" class="btn btn-success">Salvar</button>
								</div>

								<div class="tabela col-xs-12">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th class="col-sm-5">Produto</th>
												<th class="col-xs-1 col-sm-2">Quant.</th>
												<th class="col-sm-2">Valor total</th>
												<th class="col-sm-1">Ação</th>
											</tr>
										</thead>
										<tr>
											<td>Óleo</td>
											<td>2</td>
											<td>60,00</td>
											<td>
												<button type="button" class="btn btn-danger btn-xs"
													data-toggle="modal" data-target="#addCliente"
													onclick="RemoveTableRow(this)">Excluir</button>
											</td>
										</tr>
										<tr>
											<td>Óleo</td>
											<td>2</td>
											<td>60,00</td>
											<td>
												<button type="button" class="btn btn-danger btn-xs"
													data-toggle="modal" data-target="#addCliente"
													onclick="RemoveTableRow(this)">Excluir</button>
											</td>
										</tr>
										<tr>
											<td>Óleo</td>
											<td>2</td>
											<td>60,00</td>
											<td>
												<button type="button" class="btn btn-danger btn-xs"
													data-toggle="modal" data-target="#addCliente"
													onclick="RemoveTableRow(this)">Excluir</button>
											</td>
										</tr>
										<tr>
											<td>Óleo</td>
											<td>2</td>
											<td>60,00</td>
											<td>
												<button type="button" class="btn btn-danger btn-xs"
													data-toggle="modal" data-target="#addCliente"
													onclick="RemoveTableRow(this)">Excluir</button>
											</td>
										</tr>

									</table>
								</div>

							</form>

						</div>
						<div class="modal fade " id="listaCliente" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">

									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">Clientes</h4>
									</div>
									<div class="modal-body">


										<div class="tabela">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th class="col-sm-4">Nome</th>
														<th class="col-sm-4">Telefone</th>
														<th class="col-sm-2">CPF</th>
														<th class="col-sm-2" align="center">Ação</th>
													</tr>
												</thead>
												<c:forEach items="${clienteView}" var="cliente">
													<tr>
														<td align="center">${cliente.nome}</td>
														<td>${cliente.telefone}</td>
														<td>${cliente.cpf}</td>
														<td><a href="<c:url value='/veiculoCarrega'/>"><input
																type="submit" class="btn btn-default btn-xs"
																value="Veículo"></a></td>
													</tr>
												</c:forEach>
											</table>
										</div>

									</div>
									<div class="modal-footer col-xs-12">
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">Fechar</button>
									</div>
								</div>
							</div>
						</div>
						
						<div class="modal fade " id="listaVeiculo" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel">
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


										<div class="tabela">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th class="col-sm-4">Nome</th>
														<th class="col-sm-4">Telefone</th>
														<th class="col-sm-2">CPF</th>
														<th class="col-sm-2" align="center">Ação</th>
													</tr>
												</thead>
												<c:forEach items="${clienteView}" var="cliente">
													<tr>
														<td align="center">${cliente.nome}</td>
														<td>${cliente.telefone}</td>
														<td>${cliente.cpf}</td>
														<td><a href="<c:url value='/veiculoCarrega'/>"><input
																type="submit" class="btn btn-default btn-xs"
																value="Veículo"></a></td>
													</tr>
												</c:forEach>
											</table>
										</div>

									</div>
									<div class="modal-footer col-xs-12">
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">Fechar</button>
									</div>
								</div>
							</div>
						</div>
						
						
						<div class="modal fade " id="listaServico" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">

									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">Servico</h4>
									</div>
									<div class="modal-body">


										<div class="tabela">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th class="col-sm-4">Nome</th>
														<th class="col-sm-4">Telefone</th>
														<th class="col-sm-2">CPF</th>
														<th class="col-sm-2" align="center">Ação</th>
													</tr>
												</thead>
												<c:forEach items="${clienteView}" var="cliente">
													<tr>
														<td align="center">${cliente.nome}</td>
														<td>${cliente.telefone}</td>
														<td>${cliente.cpf}</td>
														<td><a href="<c:url value='/veiculoCarrega'/>"><input
																type="submit" class="btn btn-default btn-xs"
																value="Veículo"></a></td>
													</tr>
												</c:forEach>
											</table>
										</div>

									</div>
									<div class="modal-footer col-xs-12">
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">Fechar</button>
									</div>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="../rodape.jsp"%>