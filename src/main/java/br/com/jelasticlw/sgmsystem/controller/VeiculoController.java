package br.com.jelasticlw.sgmsystem.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.jelasticlw.sgmsystem.dao.ClienteDAO;
import br.com.jelasticlw.sgmsystem.dao.VeiculoDAO;
import br.com.jelasticlw.sgmsystem.model.Cliente;
import br.com.jelasticlw.sgmsystem.model.Veiculo;

@Controller
public class VeiculoController {

	@Inject
	private Result result;

	@Inject
	private VeiculoDAO veiculoDao;
	
	@Inject
	private ClienteDAO clienteDao;
	
	private Cliente cliente = new Cliente();

	protected VeiculoController() {
		this(null);
	}

	@Inject
	public VeiculoController(Result result) {
		this.result = result;
	}

	@Get("/veiculoCarrega/{codigo}")
	public void veiculo(Long codigo) {
		this.cliente = clienteDao.buscarPorCodigo(Cliente.class, codigo);
		result.include("cliente", this.cliente);
		result.include("veiculoView", veiculoDao.listaVeiculosCliente(Veiculo.class, codigo));
	}

	@Post("/veiculo")
	public void veiculo(Veiculo veiculo) {
		if (veiculo != null) {
			try {
				veiculoDao.salvar(veiculo);
			} catch (Exception e) {
				// TODO: handle exception
			}
			result.include("veiculoView", veiculoDao.listarTodos(Veiculo.class));
		}
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Veiculo veiculo = veiculoDao.buscarPorCodigo(Veiculo.class, codigo);
		try {
			veiculoDao.excluir(veiculo);
		} catch (Exception e) {

		}
	}
}