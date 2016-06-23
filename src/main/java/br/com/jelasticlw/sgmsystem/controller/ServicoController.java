package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.jelasticlw.sgmsystem.dao.ServicoDAO;
import br.com.jelasticlw.sgmsystem.model.Servico;

@Controller
public class ServicoController {

	@Inject
	private Result result;
	
	@Inject
	private ServicoDAO servicoDao;

	protected ServicoController() {
		this(null);
	}

	@Inject
	public ServicoController(Result result) {
		this.result = result;
	}
	
	@Get("/servicoCarrega")
	public void servico() {
		result.include("servicoView", servicoDao.listarTodos(Servico.class));
	}
	
	@Post("/servico")
	public void servico(Servico servico) {
		if(servico!= null){
			try {
				servicoDao.salvar(servico);				
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		result.redirectTo(ServicoController.class).servico();
	}
}