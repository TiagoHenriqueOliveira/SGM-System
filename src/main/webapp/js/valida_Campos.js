function enviar() {
	var nome = document.getElementById("cNome");
	if(nome.value == "") {
		alert('Nome inválido, por gentileza informe um nome válido!');
		document.orcamento.cNome.focus();
		return false;
	}
	
	var email = document.getElementById("cEmail");
	if(email.value == "") {
		alert('Email inválido, por gentileza informe um Email válido!');
		document.orcamento.cEmail.focus();
		return false;
	}

	var empresa = document.getElementById("cEmpresa");
	if(empresa.value == "") {
		alert('Nome da empresa inválido, por gentileza informe um nome válido!');
		document.orcamento.cEmpresa.focus();
		return false;
	}
	
	var cidade = document.getElementById("cCidade");
	if(cidade.value == "") {
		alert('Cidade inválida, por gentileza informe um cidade válida!');
		document.orcamento.cCidade.focus();
		return false;
	}
	
	var comentario = document.getElementById("cComentario");
	if(comentario.value == "") {
		alert('É necessário informar um comentário!');
		document.orcamento.cComentario.focus();
		return false;
	}
	
	alert('Orçamento enviado com sucesso! Em breve algum de nossos colaboradores irá entrar em contato');
}

function login() {
	var usuario = document.getElementById("cUsuario");
	var senha = document.getElementById("cSenha");
	
	if(usuario.value == "" && senha.value == "") {
		alert('Usuário e senha não informados!');
		document.mostra-login.cUsuario.focus();
	} else if(usuario.value == "" || senha.value == "") {
		alert('Usuário ou senha incorretos!');
		document.mostra-login.cUsuario.focus();
	}
}