package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
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

	@Get("/veiculoCarrega")
	public void veiculo() {
		result.include("veiculoView", veiculoDao.listarTodos(Veiculo.class));
	}

	@Post("/veiculo")
	public void veiculo(Veiculo veiculo) {
		if (veiculo != null) {
			try {
				veiculoDao.salvar(veiculo);
			} catch (Exception e) {
				// TODO: handle exception
			}
			result.redirectTo(VeiculoController.class).veiculo();
		}
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Veiculo vei = veiculoDao.buscarPorCodigo(Veiculo.class, codigo);
		try {
			veiculoDao.excluir(vei);
		} catch (Exception e) {

		}
	}
}