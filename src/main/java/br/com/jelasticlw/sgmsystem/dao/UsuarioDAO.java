package br.com.jelasticlw.sgmsystem.dao;

import javax.enterprise.context.RequestScoped;
import javax.persistence.TypedQuery;

import br.com.jelasticlw.sgmsystem.model.Entidade;
import br.com.jelasticlw.sgmsystem.model.Usuario;

@RequestScoped
public class UsuarioDAO<T extends Entidade> extends HibernateDAO<T> {

	public Usuario login(String login, String senha) {
		super.conectar();
		try {
			TypedQuery<Usuario> query = em.createNamedQuery(Usuario.Login, Usuario.class);
			query.setParameter("login", login);
			query.setParameter("senha", senha);
			return query.getSingleResult();
		} finally {
			super.desconectar();
		}
	}
}