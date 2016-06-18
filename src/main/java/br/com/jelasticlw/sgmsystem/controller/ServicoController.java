package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class ServicoController {

	@Inject
	private Result result;

	protected ServicoController() {
		this(null);
	}

	@Inject
	public ServicoController(Result result) {
		this.result = result;
	}
	
	@Path("/servico")
	public void servico() {
		result.include("variable", "");
	}
}