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
						<div>

							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#home"
									aria-controls="home" role="tab" data-toggle="tab">Cliente</a></li>
								<li role="presentation"><a href="#profile"
									aria-controls="profile" role="tab" data-toggle="tab">Ve�culo</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="home">
									<div class="modal-body">
										<div class=" row">

											<form data-toggle="validator" role="form">
												<div class="form-group col-sm-12">
													<label for="inputName" class="control-label">Name</label> <input
														type="text" class="form-control" id="inputName"
														value="${cliente.nome}" required>
												</div>
												<div class="form-group col-sm-6">
													<label for="cliente.fone" class="control-label">Telefone:</label>
													<input type="text" class="form-control" id="cliente.fone"
														name="cliente.fone" value="${cliente.fone}" required>
												</div>
												<div class="form-group col-sm-2">
													<label for="cliente.uf" class="control-label">Uf:</label> <select
														class="form-control col-sm-2" id="cliente.uf"
														name="cliente.uf">
														<option>"SC"</option>
														<option>"PR"</option>

														<%-- 															<c:forEach items="${ufview}" var="uf"> --%>
														<%-- 																<option>${uf.nome}</option> --%>
														<%-- 															</c:forEach> --%>
													</select>
												</div>
												<div class="form-group col-sm-4">
													<label for="cliente.cidade" class="control-label">Cidade:</label>
													<select class="form-control col-sm-2" id="cliente.cidade"
														name="cliente.cidade">
														<option>Xanxer�</option>
														<option>"chapec�"</option>
														<option>"Guarapuava"</option>
													</select>
												</div>
												<div class="form-group col-sm-6">
													<label for="cliente.bairro" class="control-label">Bairro:</label>
													<input type="text" class="form-control" id="cliente.bairro"
														name="cliente.bairro" value="${cliente.bairro}" required>
												</div>
												<div class="form-group col-sm-6">
													<label for="cliente.endereco" class="control-label">Endere�o:</label>
													<input type="text" class="form-control"
														id="cliente.endereco" name="cliente.endereco"
														value="${cliente.Endereco}" required>
												</div>
												<div class="form-group col-sm-4">
													<label for="cliente.numero" class="control-label">Numero:</label>
													<input type="text" class="form-control"
														data-mask="999-99-999-9999-9" id="cliente.numero"
														name="cliente.numero" value="${cliente.numero}" required>
												</div>
												<div class="form-group col-sm-4">
													<label for="cliente.cpf" class="control-label">CPF:</label>
													<input type="text" class="form-control" id="cliente.cpf"
														name="cliente.cpf" value="${cliente.cpf}" required>
												</div>
												<div class="checkbox col-sm-3 col-sm-offset-1 foraUso">
													<label for="cliente.fora" class=""><input
														type="checkbox" value="" name="cliente.fora">Fora
														de uso</label>
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
								<div role="tabpanel" class="tab-pane" id="profile">
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
												<div class="checkbox col-sm-3 col-sm-offset-1 foraUso">
													<label for="veiculo.fora" class=""> <input
														type="checkbox" value="" name="veiculo.fora"> Fora
														de uso
													</label>
												</div>
												<div class="modal-footer col-xs-12">
													<button type="button" class="btn btn-danger"
														data-dismiss="modal">Cancelar</button>
													<button type="submit" class="btn btn-success">
														Salvar</button>
												</div>
												<div class="tabela">
													<table class="table table-bordered">
														<thead>
															<tr>
																<th class="col-sm-4">Nome</th>
																<th class="col-sm-4">Placa</th>
																<th class="col-sm-1">A��o</th>
															</tr>
														</thead>
														<tr>
															<td>Honda Civic</td>
															<td>AAA-0099</td>
															<td>
																<button type="button" class="btn btn-danger btn-xs"
																	data-toggle="modal"">Excluir</button>
															</td>
															</td>
														</tr>
													</table>
												</div>
											</form>
										</div>
									</div>
								</div>
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
							<th class="col-sm-1">A��o</th>
						</tr>
					</thead>
					<c:forEach items="${clienteview}" var="cliente">
						<tr>
							<td>${cliente.nome}</td>
							<td>${cliente.fone}</td>
							<td>${cliente.cpf}</td>
							<td>
								<button type="button" class="btn btn-success btn-xs"
									data-toggle="modal" data-target="#addUsuario"">Editar</button>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>
<%@include file="../rodape.jsp"%>