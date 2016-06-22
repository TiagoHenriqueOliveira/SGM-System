package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;

@Controller
public class PrincipalController {

	@Inject
	private Result result;

	protected PrincipalController() {
		this(null);
	}

	@Inject
	public PrincipalController(Result result) {
		this.result = result;
	}

	@Get("/sistema")
	public void principal() {
		result.redirectTo("/sistema");
	}
}