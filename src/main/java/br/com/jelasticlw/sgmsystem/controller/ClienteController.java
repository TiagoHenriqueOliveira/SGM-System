package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class ClienteController {

	@Inject
	private Result result;

	protected ClienteController() {
		this(null);
	}

	@Inject
	public ClienteController(Result result) {
		this.result = result;
	}
	
	@Path("/cliente")
	public void cliente() {
		result.include("variable", "");
	}
}