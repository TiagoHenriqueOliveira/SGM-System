package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.jelasticlw.sgmsystem.dao.UnidadeDAO;
import br.com.jelasticlw.sgmsystem.model.Unidade;

@Controller
public class UnidadeController {

	@Inject
	private Result result;
	
	@Inject
	private UnidadeDAO unidadeDao;

	protected UnidadeController() {
		this(null);
	}

	@Inject
	public UnidadeController(Result result) {
		this.result = result;
	}
	
	@Get("/unidadeCarrega")
	public void unidade() {
		result.include("unidadeView", unidadeDao.listarTodos(Unidade.class));
	}
	
	@Post("/unidade")
	public void unidade(Unidade unidade) {
		if(unidade != null) {
			try {
				unidadeDao.salvar(unidade);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		result.redirectTo(UnidadeController.class).unidade();
	}
}