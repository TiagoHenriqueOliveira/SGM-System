package br.com.jelasticlw.sgmsystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
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
@Table(name="TB_OSV_ITEM_PRODUTO")
@NamedQueries({
	@NamedQuery(name = OSVItemProduto.ListarItensDaOrdemServico,
			query = "from OSVItemProduto tbItemProd "
					+ "where tbOSV.ordemServico.id_ordem_servico = ?")
})
public @Data class OSVItemProduto implements Entidade {
	
	public static final String PesquisaPorDescricao = "PesquisaPorDescricao";
	public static final String ListarTodos = "ListarTodos";
	public static final String ListarItensDaOrdemServico = "ListarItensDaOrdemServico";
	
	@Column(nullable = false, length = 11)
	private Integer quantidade;
	
	@Id
	@ManyToOne(optional = true, targetEntity = OrdemServico.class)
	@Column(name = "id_ordem_servico")
	private OrdemServico ordemServico;
	
	@Id
	@ManyToOne(optional = true, targetEntity = Produto.class)
	@Column(name = "id_produto")
	private Produto produto;

	@Override
	public Long getCodigo() {
		// TODO Auto-generated method stub
		return null;
	}
}