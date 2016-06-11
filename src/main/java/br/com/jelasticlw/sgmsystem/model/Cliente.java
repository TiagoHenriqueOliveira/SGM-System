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
@Table(name="TB_CLIENTE")
@NamedQueries({
	@NamedQuery(name = Cliente.PesquisaPorDescricao,
			query = "from tb_cliente tbCli "
					+ "inner join tb_cidade tbCid "
					+ "on tbCli.id_cidade = tbCid.id_cidade "
					+ "inner join tb_uf tbUF "
					+ "on tbCid.id_uf = tbUF.id_uf "
					+ "inner join tb_pais tbPais "
					+ "on tbUF.id_pais = tbPais.id_pais "
					+ "where tbCli.nome like ? "
					+ "order by tbCli.nome"),
	@NamedQuery(name = Cliente.PesquisaPorCpf,
			query = "from tb_cliente tbCli "
					+ "inner join tb_cidade tbCid "
					+ "on tbCli.id_cidade = tbCid.id_cidade "
					+ "inner join tb_uf tbUF "
					+ "on tbCid.id_uf = tbUF.id_uf "
					+ "inner join tb_pais tbPais "
					+ "on tbUF.id_pais = tbPais.id_pais "
					+ "where tbCli.cpf = ? "),
	@NamedQuery(name = Cliente.ListarTodos,
			query = "from tb_cliente tbCli "
					+ "inner join tb_cidade tbCid "
					+ "on tbCli.id_cidade = tbCid.id_cidade "
					+ "inner join tb_uf tbUF "
					+ "on tbCid.id_uf = tbUF.id_uf "
					+ "inner join tb_pais tbPais "
					+ "on tbUF.id_pais = tbPais.id_pais "
					+ "order by tbCli.nome")
})
public @Data class Cliente implements Entidade {
	
	public static final String PesquisaPorDescricao = "PesquisaPorDescricao";
	public static final String PesquisaPorCpf = "PesquisaPorCpf";
	public static final String ListarTodos = "PesquisaTodos";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_cliente")
	private Long codigo;
	
	@Column(nullable = false, length = 255)
	private String nome;
	
	@Column(nullable = false, length = 11, unique = true)
	private String cpf;
	
	@Column(nullable = false, length = 255)
	private String rua;
	
	@Column(nullable = false, length = 255)
	private String bairro;
	
	@Column(nullable = false, length = 11)
	private Integer numero;
	
	@Column(length = 10)
	private String telCelular;
	
	@Column(length = 10)
	private String telResidencial;
	
	@Column(nullable = false, length = 255, unique = true)
	private String email;
	
	@Column(nullable = false)
	private Boolean foraDeUso;
	
	@ManyToOne(optional = true, fetch = FetchType.EAGER)
	@Column(name = "id_cidade")
	private Cidade cidade;
}
