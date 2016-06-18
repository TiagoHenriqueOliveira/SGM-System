function cadastrarCliente() {
	var nome = document.getElementById("cliente.nome");
	var fone = document.getElementById("cliente.fone");
	var cidade = document.getElementById("cliente.cidade");
	var bairro = document.getElementById("cliente.bairro");
	var endereco = document.getElementById("cliente.endereco");
	var numero = document.getElementById("cliente.numero");
	var cpf = document.getElementById("cliente.cpf");

	if (nome.value == "") {
		alert("É necessário informar um nome");
		document.cadastroForm.cliente.nome.focus();
		return false;
	};
	alert('Cadastro efetuado com sucesso!');
}


$(document).ready(function() {
	$('#osv-data').datepicker({
		format : "dd/mm/yyyy",
		todayBtn : "linked",
		language : "pt-BR",
		todayHighlight : true
	});
});

$('#cadastro.hora').timepicker({
	minuteStep : 1,
	template : 'modal',
	appendWidgetTo : 'body',
	showSeconds : true,
	showMeridian : false,
	defaultTime : false
});

jQuery(function($) {
	$("#cliente.cpf").mask("999.999.999-99");
}); 