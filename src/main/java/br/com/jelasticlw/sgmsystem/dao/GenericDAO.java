package br.com.jelasticlw.sgmsystem.dao;

import java.util.List;

import br.com.jelasticlw.sgmsystem.model.Entidade;

public interface GenericDAO<T extends Entidade> {
	
	void salvar(T entidade);
	void excluir(T entidade);
	T buscarPorCodigo(Class<T> classe, Long codigo);
	List<T> buscarPorDescricao(Class<T> classe, String descricao);
	List<T> listarTodos(Class<T> classe);
	
}