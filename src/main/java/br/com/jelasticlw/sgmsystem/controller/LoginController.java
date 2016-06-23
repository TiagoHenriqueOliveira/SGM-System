package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.jelasticlw.sgmsystem.dao.UsuarioDAO;
import br.com.jelasticlw.sgmsystem.model.Usuario;

@Controller
public class LoginController {

	@Inject
	private Result result;

	@Inject
	private UsuarioDAO usuarioDao;

	private Usuario usuario = new Usuario();

	protected LoginController() {
		this(null);
	}

	@Inject
	public LoginController(Result result) {
		this.result = result;
	}
	
	@Get("/login")
	public void login() {
		result.include("", "");
	}

	@Post("/sistema")
	public void login(Usuario usuario) {
		this.usuario = usuarioDao.login(usuario);
		try {
			if(this.usuario != null) {
				result.forwardTo(SistemaController.class).sistema();
			} else {
				result.forwardTo(LoginController.class).login();
			}
		} catch (Exception e) {
			result.forwardTo(LoginController.class).login();
		}
	}
}