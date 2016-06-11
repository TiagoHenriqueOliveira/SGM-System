package br.com.jelasticlw.sgmsystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="TB_OSV_ITEM_PRODUTO")
public @Data class OSVItemProduto {
	
	@Column(nullable = false, length = 11)
	private Integer quantidade;
	
	@ManyToOne(optional = true, targetEntity = OrdemServico.class)
	@Column(name = "id_ordem_servico")
	private OrdemServico ordemServico;
	
	@ManyToOne(optional = true, targetEntity = Produto.class)
	@Column(name = "id_produto")
	private Produto produto;
}