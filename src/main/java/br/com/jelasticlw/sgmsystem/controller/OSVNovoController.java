package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class OSVNovoController {

	@Inject
	private Result result;

	protected OSVNovoController() {
		this(null);
	}

	@Inject
	public OSVNovoController(Result result) {
		this.result = result;
	}
	
	@Path("/osvNovo")
	public void osvNovo() {
		result.include("variable", "");
	}
}