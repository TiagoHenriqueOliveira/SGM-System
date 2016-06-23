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

								<form data-toggle="validator" role="form"
									action="<c:url value='/cliente'/>" method="post">
									<div class="form-group col-sm-12">
										<label for="inputName" class="control-label">Name</label> <input
											type="text" class="form-control" id="inputName"
											name="cliente.nome" value="${cliente.nome}" required>
									</div>
									<div class="form-group col-sm-6">
										<label for="cliente_telefone" class="control-label">Telefone:</label>
										<input type="text" class="form-control" id="cliente_telefone"
											name="cliente.telefone" value="${cliente.telefone}" required>
									</div>
									<div class="form-group col-sm-2">
										<label for="cliente_uf" class="control-label">UF:</label> <select
											class="form-control col-sm-2" id="cliente_uf"
											name="cliente.cidade.uf.codigo">
											<c:forEach items="${ufView}" var="uf">
												<option value="${uf.codigo}">
													${uf.sigla}
												</option>
											</c:forEach>
										</select>
									</div>
									<div class="form-group col-sm-4">
										<label for="cliente.cidade" class="control-label">Cidade:</label>
										<select class="form-control col-sm-2" id="cliente.cidade"
											name="cliente.cidade.codigo">
											<c:forEach items="${cidadeView}" var="cidade">
												<option value="${cidade.codigo}">
													${cidade.nome}
												</option>
											</c:forEach>
										</select>
									</div>
									<div class="form-group col-sm-6">
										<label for="cliente.rua" class="control-label">Rua:</label> <input
											type="text" class="form-control" id="cliente.rua"
											name="cliente.rua" value="${cliente.rua}" required>
									</div>
									<div class="form-group col-sm-6">
										<label for="cliente.bairro" class="control-label">Bairro:</label>
										<input type="text" class="form-control" id="cliente.bairro"
											name="cliente.bairro" value="${cliente.bairro}" required>
									</div>
									<div class="form-group col-sm-4">
										<label for="cliente.numero" class="control-label">Numero:</label>
										<input type="text" class="form-control"
											data-mask="999-99-999-9999-9" id="cliente.numero"
											name="cliente.numero" value="${cliente.numero}" required>
									</div>
									<div class="form-group col-sm-4">
										<label for="cliente.cpf" class="control-label">CPF:</label> <input
											type="text" class="form-control" id="cliente.cpf"
											name="cliente.cpf" value="${cliente.cpf}" required>
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
							<td>
								<button type="button" class="btn btn-success btn-xs"
									data-toggle="modal" data-target="#addCliente${cliente.codigo }"">Editar</button>
								<a href="<c:url value='/veiculoCarrega'/>"><input
									type="submit" class="btn btn-default btn-xs" value="Veículo"></a>
							</td>
						</tr>
						<div class="modal fade " id="addCliente" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel">
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

											<form data-toggle="validator" role="form"
												action="<c:url value='/cliente'/>" method="post">
												<input type="hidden" name="cliente.codigo"
													value="${cliente.codigo}">
												<div class="form-group col-sm-12">
													<label for="inputName" class="control-label">Name</label> <input
														type="text" class="form-control" id="inputName"
														name="cliente.nome" value="${cliente.nome}" required>
												</div>
												<div class="form-group col-sm-6">
													<label for="cliente_telefone" class="control-label">Telefone:</label>
													<input type="text" class="form-control"
														id="cliente_telefone" name="cliente.telefone"
														value="${cliente.telefone}" required>
												</div>
												<div class="form-group col-sm-2">
													<label for="cliente_uf" class="control-label">UF:</label> <select
														class="form-control col-sm-2" id="cliente_uf"
														name="cliente.cidade.uf.codigo">
														<c:forEach items="${ufView}" var="uf">
															<option value="${uf.codigo}">
																${uf.sigla}
															</option>
														</c:forEach>
													</select>
												</div>
												<div class="form-group col-sm-4">
													<label for="cliente.cidade" class="control-label">Cidade:</label>
													<select class="form-control col-sm-2" id="cliente.cidade"
														name="cliente.cidade.codigo">
														<c:forEach items="${cidadeView}" var="cidade">
															<option value="${cidade.codigo}">
																${cidade.nome}
															</option>
														</c:forEach>
													</select>
												</div>
												<div class="form-group col-sm-6">
													<label for="cliente.rua" class="control-label">Rua:</label>
													<input type="text" class="form-control" id="cliente.rua"
														name="cliente.rua" value="${cliente.rua}" required>
												</div>
												<div class="form-group col-sm-6">
													<label for="cliente.bairro" class="control-label">Bairro:</label>
													<input type="text" class="form-control" id="cliente.bairro"
														name="cliente.bairro" value="${cliente.bairro}" required>
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