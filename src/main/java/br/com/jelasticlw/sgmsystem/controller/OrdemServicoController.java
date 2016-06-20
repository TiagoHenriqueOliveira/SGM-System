package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class OrdemServicoController {

	@Inject
	private Result result;

	protected OrdemServicoController() {
		this(null);
	}

	@Inject
	public OrdemServicoController(Result result) {
		this.result = result;
	}
	
	@Path("/ordemServico")
	public void ordemServico() {
		result.include("variable", "");
	}
}