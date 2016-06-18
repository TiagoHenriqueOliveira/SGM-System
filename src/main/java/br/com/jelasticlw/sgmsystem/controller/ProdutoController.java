package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class ProdutoController {

	@Inject
	private Result result;

	protected ProdutoController() {
		this(null);
	}

	@Inject
	public ProdutoController(Result result) {
		this.result = result;
	}
	
	@Path("/produto")
	public void produto() {
		result.include("variable", "");
	}
}