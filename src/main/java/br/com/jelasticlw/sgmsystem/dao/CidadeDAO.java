package br.com.jelasticlw.sgmsystem.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.persistence.TypedQuery;

import br.com.jelasticlw.sgmsystem.model.Cidade;

@RequestScoped
public class CidadeDAO extends HibernateDAO<Cidade> {
	
	public List<Cidade> cidadesPorEstado(Cidade cidade) {
		super.conectar();
		try {
			TypedQuery<Cidade> query = em.createNamedQuery(Cidade.ListaCidadesPorEstado, Cidade.class);
			query.setParameter("id_uf", cidade.getUf().getCodigo());
			return query.getResultList();
		} finally {
			super.desconectar();
		}
	}
}