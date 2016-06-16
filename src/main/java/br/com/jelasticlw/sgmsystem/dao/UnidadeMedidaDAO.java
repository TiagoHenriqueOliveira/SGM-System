package br.com.jelasticlw.sgmsystem.dao;

import javax.enterprise.context.RequestScoped;

import br.com.jelasticlw.sgmsystem.model.Entidade;

@RequestScoped
public class UnidadeMedidaDAO<T extends Entidade> extends HibernateDAO<T> {

}
