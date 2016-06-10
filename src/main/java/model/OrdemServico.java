package model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="TB_ORDEM_SERVICO")
public @Data class OrdemServico {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@Column(nullable = false, length = 11)
	private Integer status;
	
	@Column(nullable = false)
	@Temporal(TemporalType.DATE)
	private Date dataAgendamento;
	
	@ManyToOne(optional = true, fetch = FetchType.EAGER)
	private Cliente cliente;
	
	@ManyToOne(optional = true, fetch = FetchType.EAGER)
	private Veiculo veiculo;
	
	@OneToMany(mappedBy = "OSVItemProduto", targetEntity = OSVItemProduto.class, fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	private List<OSVItemProduto> itens = new ArrayList<OSVItemProduto>();
	
	public void adicionar(OSVItemProduto item) {
		this.itens.add(item);
	}
	
	public void remove(OSVItemProduto item) {
		this.itens.remove(item);
	}
}