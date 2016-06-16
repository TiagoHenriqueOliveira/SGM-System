package br.com.jelasticlw.sgmsystem.model;

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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
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
@NamedQueries({
	@NamedQuery(name = OrdemServico.PesquisaPorDescricao,
			query = "from OrdemServico tbOSV "
					+ "where tbOSV.veiculo.cliente.nome like ?1 "
					+ "order by tbOSV.veiculo.cliente.nome"),
	@NamedQuery(name = OrdemServico.PesquisaPorPlaca,
			query = "from OrdemServico tbOSV "
					+ "where tbOSV.veiculo.cliente.placa = ?1 "),
	@NamedQuery(name = OrdemServico.ListarTodos,
			query = "from OrdemServico tbOSV "
					+ "order by tbOSV.veiculo.cliente.nome")
})
public @Data class OrdemServico implements Entidade {
	
	public static final String PesquisaPorDescricao = "PesquisaPorDescricao";
	public static final String PesquisaPorPlaca = "PesquisaPorPlaca";
	public static final String ListarTodos = "ListarTodos";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_ordem_servico")
	private Long codigo;
	
	@Column(nullable = false, length = 11)
	private Integer status;
	
	@Column(nullable = false)
	@Temporal(TemporalType.DATE)
	private Date dataAgendamento;
	
	@ManyToOne(optional = true, fetch = FetchType.EAGER)
	@Column(name = "id_veiculo")
	private Veiculo veiculo;
	
	@OneToOne(optional = true, fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@Column(name = "id_servico")
	private Servico servico;
	
	@OneToMany(mappedBy = "OSVItemProduto", targetEntity = OSVItemProduto.class, fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	private List<OSVItemProduto> itens = new ArrayList<OSVItemProduto>();
	
	public void adicionar(OSVItemProduto item) {
		this.itens.add(item);
	}
	
	public void remove(OSVItemProduto item) {
		this.itens.remove(item);
	}
}