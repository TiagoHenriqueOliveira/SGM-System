<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../cabecalho.jsp"%>

<div class="container-fluid">
	<div class="row">
		<%@include file="../sidebar.jsp"%>

		<div class="col-sm-9">
			<div class="well col-xs-12">
				<div class="col-xs-6 col-sm-2">
					<select class="form-control" id="os.status" name="os.status">
						<option>Todas</option>
						<option>Abertas</option>
						<option>Concluídas</option>
						<option>Canceladas</option>
					</select>
				</div>
				<div class="col-xs-6 col-sm-6 ">
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
			<div class="tabela">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th class="col-sm-1">Cod</th>
							<th class="col-sm-3">Cliente</th>
							<th class="col-sm-2">Veículo</th>
							<th class="col-sm-2">Placa</th>
							<th class="col-sm-1">Serviço</th>
							<th class="col-sm-1">Produto</th>
							<th class="col-sm-1">Valor total</th>
							<th class="col-sm-1">Ação</th>
						</tr>
					</thead>
					<tr>
						<td>1</td>
						<td>Joao da Silva</td>
						<td>Honda Civic</td>
						<td>AAA-0099</td>
						<td>Troca de óleo</td>
						<td>Óleo</td>
						<td>100,0</td>
						<td>
							<button type="button" class="btn btn-success btn-xs"
								data-toggle="modal" data-target="#addServico">
								Visualizar</button>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<%@include file="../rodape.jsp"%>