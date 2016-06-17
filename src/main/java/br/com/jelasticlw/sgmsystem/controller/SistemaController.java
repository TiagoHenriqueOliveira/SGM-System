package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.jelasticlw.sgmsystem.dao.UsuarioDAO;
import br.com.jelasticlw.sgmsystem.model.Usuario;

@Controller
public class SistemaController {
	
	@Inject
	private Result result;
	
	@Inject
	private UsuarioDAO usuarioDao;
	
	private Usuario usuario = new Usuario();
	
	protected SistemaController() {
		this(null);
	}
	
	@Inject
	public SistemaController(Result result) {
		this.result = result;
	}
	
	@Post("/sistema")
	public void sistema(String login, String senha) {
		this.usuario = usuarioDao.login(login, senha);
		if(this.usuario != null) {
			result.include("variable", "");
		}
	}
}