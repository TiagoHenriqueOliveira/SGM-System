package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.jelasticlw.sgmsystem.dao.VeiculoDAO;
import br.com.jelasticlw.sgmsystem.model.Veiculo;

@Controller
public class VeiculoController {

	@Inject
	private Result result;
	
	@Inject 
	private VeiculoDAO veiculoDao;
	

	protected VeiculoController() {
		this(null);
	}
	@Inject
	public VeiculoController(Result result) {
		this.result = result;
	}
	@Post("/veiculo")
	public void veiculo(Veiculo veiculo) {
		if (veiculo != null) {
			try {
				veiculoDao.salvar(veiculo);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		result.include("variable", "");
	}
}