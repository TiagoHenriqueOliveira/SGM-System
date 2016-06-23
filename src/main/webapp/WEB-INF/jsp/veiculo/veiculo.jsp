<%@include file="../cabecalho.jsp"%>

<div class="container-fluid">
	<div class="row">
		<%@include file="../sidebar.jsp"%>

		<div class="col-sm-9">
			<div class="col-xs-12">
				<h2 class="navbar-brand">VEICULO</h2>
			</div>
			<div class="tabela">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th class="col-sm-4">Nome</th>
							<th class="col-sm-4">Placa</th>
							<th class="col-sm-1">Ação</th>
						</tr>
					</thead>
					<c:forEach items="${veiculoView}" var="veiculo">
						<tr>
							<td>${veiculo.nome}</td>
							<td>${veiculo.placa}</td>
							<td>
								<a href="<c:url value='/excluir/${veiculo.codigo}'/>"> EXCLUIR </a>
							</td>
						</tr>

					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>
<%@include file="../rodape.jsp"%>