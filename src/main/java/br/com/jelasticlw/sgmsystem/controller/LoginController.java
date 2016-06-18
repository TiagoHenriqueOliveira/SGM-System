package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.jelasticlw.sgmsystem.dao.UsuarioDAO;
import br.com.jelasticlw.sgmsystem.model.Usuario;

@Controller
public class LoginController {

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;

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
	
	@Path("/login")
	public void login() {
		result.include("variable", "");
	}

//	@Post("/sistema")
//	public void acessar(String login, String senha) {
//		this.usuario = usuarioDao.login(login, senha);
//		try {
//			if((this.usuario != null) && (this.usuario.getLogin().equals(login)) && (this.usuario.getSenha().equals(senha))) {
//				result.include("variable", "");
//			} else {
//				result.redirectTo(LoginController.class).acessar(null, null);;
//			}
//		} catch (Exception e) {
//			
//		}
//	}
}