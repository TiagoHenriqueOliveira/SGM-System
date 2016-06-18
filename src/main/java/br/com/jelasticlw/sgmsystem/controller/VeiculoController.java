package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class VeiculoController {

	@Inject
	private Result result;

	protected VeiculoController() {
		this(null);
	}

	@Inject
	public VeiculoController(Result result) {
		this.result = result;
	}
	
	@Path("/veiculo")
	public void veiculo() {
		result.include("variable", "");
	}
}