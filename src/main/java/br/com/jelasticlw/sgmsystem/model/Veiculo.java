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
@Table(name="TB_VEICULO")
@NamedQueries({
	@NamedQuery(name = Veiculo.PesquisaPorDescricao,
			query = "from tb_veiculo tbVeiculo"
					+ "inner join tb_cliente tbCli "
					+ "on tbVeiculo.id_cliente = tbCli.id_cliente "
					+ "where tbVeiculo.nome like ? "
					+ "order by tbVeiculo.nome"),
	@NamedQuery(name = Veiculo.PesquisaPorPlaca,
			query = "from tb_veiculo tbVeiculo"
					+ "inner join tb_cliente tbCli "
					+ "on tbVeiculo.id_cliente = tbCli.id_cliente "
					+ "where tbVeiculo.placa = ?"),
	@NamedQuery(name = Veiculo.ListarTodos,
			query = "from tb_veiculo tbVeiculo"
					+ "inner join tb_cliente tbCli "
					+ "on tbVeiculo.id_cliente = tbCli.id_cliente "
					+ "order by tbVeiculo.nome")
})
public @Data class Veiculo implements Entidade {
	
	public static final String PesquisaPorDescricao = "PesquisaPorDescricao";
	public static final String PesquisaPorPlaca = "PesquisaPorPlaca";
	public static final String ListarTodos = "ListarTodos";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_veiculo")
	private Long codigo;
	
	@Column(nullable = false, length = 255)
	private String nome;
	
	@Column(nullable = false, length = 7, unique = true)
	private String placa;
	
	@Column(nullable = false)
	private Boolean foraDeUso;
	
	@ManyToOne(optional = true, fetch = FetchType.EAGER)
	@Column(name = "id_cliente")
	private Cliente cliente;
}