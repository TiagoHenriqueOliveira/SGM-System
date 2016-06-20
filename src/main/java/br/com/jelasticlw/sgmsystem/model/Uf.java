package br.com.jelasticlw.sgmsystem.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="TB_Uf")
//@NamedQuery(name = Uf.ListarTodos,
//			query = "select uf from Uf uf")
public @Data class Uf implements Entidade{
//	public static final String ListarTodos = "ListarTodos";
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long codigo;
	private String nome;
	
	@ManyToOne
	private Pais codigo_Pais;
}