package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class ListaOsvController {

	@Inject
	private Result result;

	protected ListaOsvController() {
		this(null);
	}

	@Inject
	public ListaOsvController(Result result) {
		this.result = result;
	}
	
	@Path("/listaOsv")
	public void listaOsv() {
		result.include("variable", "");
	}
}