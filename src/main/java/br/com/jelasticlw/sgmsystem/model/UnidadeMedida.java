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
@Table(name="TB_UNIDADE_MEDIDA")
@NamedQueries({
	@NamedQuery(name = UnidadeMedida.PesquisaPorDescricao,
			query = "from tb_unidade_medida tbUnid "
					+ "where tbUnid.nome like ?"),
	@NamedQuery(name = UnidadeMedida.ListarTodos,
			query = "from tb_unidade_medida ")
})
public @Data class UnidadeMedida implements Entidade {
	
	public static final String PesquisaPorDescricao = "PesquisaPorDescricao";
	public static final String ListarTodos = "ListarTodos";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_unidade_medida")
	private Long codigo;
	
	@Column(nullable = false, length = 255, unique = true)
	private String nome;
	
	@Column(nullable = false, length = 3, unique = true)
	private String abreviatura;
}