package br.com.jelasticlw.sgmsystem.dao;

import javax.enterprise.context.RequestScoped;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.com.jelasticlw.sgmsystem.model.Usuario;

@RequestScoped
public class UsuarioDAO extends HibernateDAO<Usuario> {

	public Usuario login(Usuario usuario) {
		super.conectar();
		try {
			TypedQuery<Usuario> query = em.createNamedQuery(Usuario.Login, Usuario.class);
			query.setParameter("login", usuario.getLogin());
			query.setParameter("senha", usuario.getSenha());
			return query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		} finally {
			super.desconectar();
		}
	}
}