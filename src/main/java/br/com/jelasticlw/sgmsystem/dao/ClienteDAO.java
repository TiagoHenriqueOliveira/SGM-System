package br.com.jelasticlw.sgmsystem.dao;

import javax.enterprise.context.RequestScoped;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.com.jelasticlw.sgmsystem.model.Cliente;
import br.com.jelasticlw.sgmsystem.model.Usuario;

@RequestScoped
public class ClienteDAO extends HibernateDAO<Cliente> {
}