package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="TB_OSV_ITEM_PRODUTO")
public class OSVItemProduto {
	
	@Column(nullable = false, precision = 10, scale = 2)
	private Double valor;
	
	@Column(nullable = false, length = 11)
	private Integer quantidade;
	
	@ManyToOne(optional = true, targetEntity = OrdemServico.class)
	private OrdemServico ordemServico;
	
	@ManyToOne(optional = true, targetEntity = Produto.class)
	private Produto produto;
}