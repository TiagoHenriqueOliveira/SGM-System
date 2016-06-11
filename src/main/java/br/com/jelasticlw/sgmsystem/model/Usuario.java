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
	@NamedQuery(name = Usuario.PesquisaPorDescricao,
			query = "from tb_usuario tbUsu "
					+ "where tbUsu.nome like ? "
					+ "ordem by tbUsu.nome"),
	@NamedQuery(name = Usuario.ListarTodos,
			query = "from tb_usuario tbUsu"
					+ "ordem by tbUsu.nome")
})
public @Data class Usuario implements Entidade {
	
	public static final String PesquisaPorDescricao = "PesquisaPorDescricao";
	public static final String ListarTodos = "ListarTodos";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_usuario")
	private Long codigo;
	
	@Column(nullable = false, length = 255)
	private String nome;
	
	@Column(nullable = false, length = 20, unique = true)
	private String login;
	
	@Column(nullable = false, length = 15)
	private String senha;
	
	@Column(nullable = false)
	private Boolean foraDeUso;
}