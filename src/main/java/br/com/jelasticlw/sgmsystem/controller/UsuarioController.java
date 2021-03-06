package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.jelasticlw.sgmsystem.dao.UsuarioDAO;
import br.com.jelasticlw.sgmsystem.model.Usuario;

@Controller
public class UsuarioController {

	@Inject
	private Result result;
	
	@Inject
	private UsuarioDAO usuarioDao;

	protected UsuarioController() {
		this(null);
	}

	@Inject
	public UsuarioController(Result result) {
		this.result = result;
	}
	
	@Get("/usuarioCarrega")
	public void usuario() {
		result.include("usuarioview", usuarioDao.listarTodos(Usuario.class));
	}
	
	@Post("/usuario")
	public void usuario(Usuario usuario) {
		if(usuario!= null){
			try {
				usuarioDao.salvar(usuario);				
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		result.redirectTo(UsuarioController.class).usuario();
	}
}