package br.com.jelasticlw.sgmsystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="TB_PRODUTO")
@NamedQueries({
	@NamedQuery(name = Produto.PesquisaPorDescricao,
			query = "from Produto tbProd "
					+ "where tbProd.nome like ? "
					+ "order by tbProd.nome"),
	@NamedQuery(name = Produto.ListarTodos,
			query = "from Produto tbProd "
					+ "order by tbProd.nome")
})
public @Data class Produto implements Entidade {
	
	public static final String PesquisaPorDescricao = "PesquisaPorDescricao";
	public static final String ListarTodos = "ListarTodos";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_produto")
	private Long codigo;
	
	@Column(nullable = false, length = 255, unique = true)
	private String nome;
	
	@Column(nullable = false, precision = 10, scale = 2)
	private Double valor;
	
	@Column(nullable = false)
	private Boolean foraDeUso;
	
	@ManyToOne(optional = true, fetch = FetchType.EAGER)
	@Column(name = "id_unidade_medida")
	private UnidadeMedida unidade;
	
	@Enumerated(EnumType.STRING)
	private TipoItem tipoItem;
}
