<%@include file="../cabecalho.jsp"%>

<div class="container-fluid">
	<div class="row">
		<%@include file="../sidebar.jsp"%>

		<div class="col-sm-9">
			<div class="col-xs-12">
				<h2>Usuario</h2>
			</div>
			<div class="well col-xs-12">
				<div class="col-xs-3 col-md-4">
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#addUsuario">
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
			<div class="modal fade " id="addUsuario" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">

						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Usuario</h4>
						</div>
						<div class="modal-body">
							<div class=" row">

								<form data-toggle="validator" role="form"
									action="<c:url value='/usuario'/>" method="post">
									<div class="form-group col-sm-6">
										<label for="inputName" class="control-label">Name</label> <input
											type="text" class="form-control" id="inputName"
											name="usuario.nome" value="${usuario.nome}" required>
									</div>
									<div class="form-group col-sm-6">
										<label for="usuario.login" class="control-label">Login:</label>
										<input type="text" class="form-control" id="usuario.login"
											name="usuario.login" value="${usuario.login}" required>
									</div>
									<div class="form-group col-sm-6">
										<label for="usuario.senha" class="control-label">Senha:</label>
										<input type="password" class="form-control" id="usuario.senha"
											name="usuario.senha" value="${usuario.senha}" required>
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
			<div class="tabela col-sm-8 paddingOff">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th class="col-sm-4">Nome</th>
							<th class="col-sm-4">Login</th>
							<th class="col-sm-1">A��o</th>
						</tr>
					</thead>
					<c:forEach items="${usuarioview}" var="usuario">
						<tr>
							<td>${usuario.nome}</td>
							<td>${usuario.login}</td>
							<td>
								<button type="button" class="btn btn-success btn-xs"
									data-toggle="modal" data-target="#addUsuario${usuario.codigo}">Editar</button>
							</td>
						</tr>
						<div class="modal fade " id="addUsuario${usuario.codigo}"
							tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">

									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">Usuario</h4>
									</div>
									<div class="modal-body">
										<div class=" row">
											<form data-toggle="validator" role="form"
												action="<c:url value='/usuario'/>" method="post">
												<input type="hidden" name="usuario.codigo"
													value="${usuario.codigo}">
												<div class="form-group col-sm-6">
													<label for="inputName" class="control-label">Name</label> <input
														type="text" class="form-control" id="inputName"
														name="usuario.nome" value="${usuario.nome}" required>
												</div>
												<div class="form-group col-sm-6">
													<label for="usuario.login" class="control-label">Login:</label>
													<input type="text" class="form-control" id="usuario.login"
														name="usuario.login" value="${usuario.login}" required>
												</div>
												<div class="form-group col-sm-6">
													<label for="usuario.senha" class="control-label">Senha:</label>
													<input type="password" class="form-control"
														id="usuario.senha" name="usuario.senha"
														value="${usuario.senha}" required>
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
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>
<%@include file="../rodape.jsp"%>