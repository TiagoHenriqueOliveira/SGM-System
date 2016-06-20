package br.com.jelasticlw.sgmsystem.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="TB_CLIENTE")
//@NamedQueries({
//	@NamedQuery(name = Cliente.ListarTodos,
//			query = "select cl from Cliente cl "),
//})
public @Data class Cliente implements Entidade {
	
//	public static final String ListarTodos = "ListarTodos";
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long codigo;
	
	private String nome;
	private String telefone;
	private String bairro;
	private String endereco;
	private Integer numero;
	private Integer cpf;
//	@OneToMany
	
	
}
