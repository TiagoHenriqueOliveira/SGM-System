package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class SistemaController {

	@Inject
	private Result result;

	protected SistemaController() {
		this(null);
	}

	@Inject
	public SistemaController(Result result) {
		this.result = result;
	}

	@Path("/principal")
	public void sistema() {
		result.include("", "");
	}
}