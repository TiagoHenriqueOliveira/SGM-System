package br.com.jelasticlw.sgmsystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
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
@Table(name="TB_CIDADE")
@NamedQueries({
	@NamedQuery(name = Cidade.PesquisaPorDescricao, 
			query = "from tb_cidade tbCid "
					+ "inner join tb_uf tbUF "
					+ "on tbCid.codigo_uf = tbUF.codigo_uf "
					+ "inner join tb_pais tbPais"
					+ "on tbUF.codigo_pais = tbPais.codigo_pais "
					+ "where tbCid.nome like ? "
					+ "order by tbCid.nome"),
	@NamedQuery(name = Cidade.ListarTodos,
			query = "from tb_cidade tbCid "
					+ "inner join tb_uf tbUF "
					+ "on tbCid.codigo_uf = tbUF.codigo_uf "
					+ "inner join tb_pais tbPais"
					+ "on tbUF.codigo_pais = tbPais.codigo_pais "
					+ "order by tbCid.nome")
})
public @Data class Cidade implements Entidade {
	
	public static final String PesquisaPorDescricao = "PesquisaPorNome";
	public static final String ListarTodos = "PesquisaTodos";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@Column(nullable = false, length = 255)
	private String nome;
	
	@Column(name = "codigo_uf")
	@ManyToOne(optional = true, fetch = FetchType.EAGER)
	private UF uf;
	
}
