package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.jelasticlw.sgmsystem.dao.ProdutoDAO;
import br.com.jelasticlw.sgmsystem.dao.UnidadeDAO;
import br.com.jelasticlw.sgmsystem.model.Produto;
import br.com.jelasticlw.sgmsystem.model.Unidade;

@Controller
public class ProdutoController {

	@Inject
	private Result result;
	
	@Inject
	private UnidadeDAO unidadeDao;
	
	@Inject
	private ProdutoDAO produtoDao;
	
	protected ProdutoController() {
		this(null);
	}

	@Inject
	public ProdutoController(Result result) {
		this.result = result;
	}
	
	@Get("/produtoCarrega")
	public void produto() {
		result.include("produtoView", produtoDao.listarTodos(Produto.class));
		result.include("unidadeView", unidadeDao.listarTodos(Unidade.class));
	}
	
	@Post("/produto")
	public void produto(Produto produto) {
		if(produto!= null){
			try {
				produtoDao.salvar(produto);				
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		result.redirectTo(ProdutoController.class).produto();
	}
}