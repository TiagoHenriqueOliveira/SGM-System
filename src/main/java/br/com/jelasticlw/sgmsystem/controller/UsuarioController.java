package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class UsuarioController {

	@Inject
	private Result result;

	protected UsuarioController() {
		this(null);
	}

	@Inject
	public UsuarioController(Result result) {
		this.result = result;
	}
	
	@Path("/usuario")
	public void usuario() {
		result.include("variable", "");
	}
}