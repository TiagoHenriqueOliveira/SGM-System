package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.jelasticlw.sgmsystem.dao.CidadeDAO;
import br.com.jelasticlw.sgmsystem.dao.ClienteDAO;
import br.com.jelasticlw.sgmsystem.dao.UFDAO;
import br.com.jelasticlw.sgmsystem.model.Cidade;
import br.com.jelasticlw.sgmsystem.model.Cliente;
import br.com.jelasticlw.sgmsystem.model.UF;

@Controller
public class ClienteController {

	@Inject
	private Result result;

	@Inject
	private ClienteDAO clienteDao;

	@Inject
	private CidadeDAO cidadeDao;
	
	@Inject
	private UFDAO ufDao;
	
	protected ClienteController() {
		this(null);
	}
	@Inject
	public ClienteController(Result result) {
		this.result = result;
	}

	@Get("/clienteCarrega")
	public void cliente() {
		result.include("clienteView", clienteDao.listarTodos(Cliente.class));
		result.include("ufView", ufDao.listarTodos(UF.class));
		result.include("cidadeView", cidadeDao.listarTodos(Cidade.class));
	}

	@Post("/cliente")
	public void cliente(Cliente cliente) {
		if (cliente != null) {
			try {
				clienteDao.salvar(cliente);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		result.redirectTo(ClienteController.class).cliente();
	}
}