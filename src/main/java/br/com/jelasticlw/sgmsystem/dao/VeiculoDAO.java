package br.com.jelasticlw.sgmsystem.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.persistence.TypedQuery;

import br.com.jelasticlw.sgmsystem.model.Veiculo;

@RequestScoped
public class VeiculoDAO extends HibernateDAO<Veiculo> {
	
	public List<Veiculo> listaVeiculosCliente(Class<Veiculo> veiculo, Long codigo) {
		super.conectar();
		try {
			String hql = "from Veiculo v where v.cliente.codigo = ?";
			TypedQuery<Veiculo> query = em.createQuery(hql, Veiculo.class);
			query.setParameter(1, codigo);
			return query.getResultList();
		} finally {
			super.desconectar();
		}
	}
}