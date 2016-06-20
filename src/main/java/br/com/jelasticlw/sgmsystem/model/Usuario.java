package br.com.jelasticlw.sgmsystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="TB_USUARIO")
@NamedQueries({
	@NamedQuery(name = Usuario.Login,
			query = "select u from Usuario u "
					+ "where u.login = :login "
					+ "and u.senha = :senha") //função da query é para verificar o login
})
public @Data class Usuario implements Entidade {
	
	public static final String Login = "Login";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@Column(nullable = false, length = 255)
	private String nome;
	
	@Column(nullable = false, length = 20, unique = true)
	private String login;
	
	@Column(nullable = false, length = 15)
	private String senha;
}