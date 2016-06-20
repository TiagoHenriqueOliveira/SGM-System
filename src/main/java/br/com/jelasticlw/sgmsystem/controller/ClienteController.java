package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.jelasticlw.sgmsystem.dao.ClienteDAO;
import br.com.jelasticlw.sgmsystem.dao.UfDAO;
import br.com.jelasticlw.sgmsystem.model.Cliente;
import br.com.jelasticlw.sgmsystem.model.Uf;
import br.com.jelasticlw.sgmsystem.model.Usuario;

@Controller
public class ClienteController {

	@Inject
	private Result result;
	
//	@Inject
//	private ClienteDAO clienteDao;

	protected ClienteController() {
		this(null);
	}

	@Inject
	public ClienteController(Result result) {
		this.result = result;
	}
	
	@Path("/cliente")
	public void cliente(Cliente cliente) {
//		if(cliente != null){
//			try {
//				clienteDao.salvar(cliente);
//			} catch (Exception e) {
//				// TODO: handle exception
//			}
//		}
//		result.include("clienteview", clienteDao.listarTodos(Cliente.class));
		result.include("variable","");
	}
	
//	public void adicionar(Uf uf){
//		result.include("ufview",ufDao.listarTodos(Uf.class));
//	}
	
	
}