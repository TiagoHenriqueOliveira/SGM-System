package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.jelasticlw.sgmsystem.dao.CidadeDAO;
import br.com.jelasticlw.sgmsystem.dao.ClienteDAO;
import br.com.jelasticlw.sgmsystem.model.Cidade;
import br.com.jelasticlw.sgmsystem.model.Cliente;

@Controller
public class ClienteController {

	@Inject
	private Result result;

	@Inject
	private ClienteDAO clienteDao;

	@Inject
	private CidadeDAO cidadeDao;

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