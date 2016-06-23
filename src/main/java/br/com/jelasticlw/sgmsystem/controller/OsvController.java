package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class OsvController {

	@Inject
	private Result result;

	protected OsvController() {
		this(null);
	}

	@Inject
	public OsvController(Result result) {
		this.result = result;
	}
	
	@Path("/osv")
	public void osv() {
		result.include("variable", "");
	}
}