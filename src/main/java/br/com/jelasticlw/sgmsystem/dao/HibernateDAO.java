package br.com.jelasticlw.sgmsystem.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Produces;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import br.com.jelasticlw.sgmsystem.model.Entidade;

@RequestScoped
public abstract class HibernateDAO<T extends Entidade> implements GenericDAO<T> {
	
	@Produces
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("sgmsystem");
	
	@Produces
	protected EntityManager em;
	
	@Produces
	protected EntityTransaction et;
	
	protected void conectar() {
		em = emf.createEntityManager();
	}
	
	protected void desconectar() {
		em.close();
	}
	
	@Override
	public void salvar(T entidade) {
		this.conectar();
		et = em.getTransaction();
		try {
			et.begin();
			if(entidade.getCodigo() == null) {
				em.persist(entidade);
			} else {
				em.merge(entidade);
			}
			et.commit();
		} catch (Exception e) {
			if(et.isActive()) {
				et.rollback();
			}
		} finally {
			this.desconectar();
		}
	}
	
	@Override
	public void excluir(T entidade) {
		this.conectar();
		et = em.getTransaction();
		try {
			et.begin();
			Object objeto = em.find(entidade.getClass(), entidade.getCodigo());
			em.remove(objeto);
			et.commit();
		} catch (Exception e) {
			if(et.isActive()) {
				et.rollback();
			}
		} finally {
			this.desconectar();
		}
	}
	
	@Override
	public T buscarPorCodigo(Class<T> classe, Long codigo) {
		this.conectar();
		try {
			return em.find(classe, codigo);
		} finally {
			this.desconectar();
		}
	}
	
	@Override
	public List<T> buscarPorDescricao(Class<T> classe, String descricao) {
		this.conectar();
		try {
			TypedQuery<T> query = em.createNamedQuery("PesquisaPorDescricao", classe);
			query.setParameter(1, "%" + descricao + "%");
			return query.getResultList();
		} finally {
			this.desconectar();
		}
	}
	
	@Override
	public List<T> listarTodos(Class<T> classe) {
		this.conectar();
		try {
			TypedQuery<T> query = em.createNamedQuery("ListarTodos", classe);
			return query.getResultList();
		} finally {
			this.desconectar();
		}
	}
}