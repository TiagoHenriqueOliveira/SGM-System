package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.jelasticlw.sgmsystem.model.Usuario;

@Controller
public class LoginController {
	
	private final Result result;

	/**
	 * @deprecated CDI eyes only
	 */
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
	
	@Post("/sistema")
	public void sistema(Usuario usuario) {
		
	}
}