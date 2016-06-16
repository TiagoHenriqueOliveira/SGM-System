package br.com.jelasticlw.sgmsystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
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
@Table(name="TB_SERVICO")
@NamedQueries({
	@NamedQuery(name = Servico.PesquisaPorDescricao,
			query = "from Servico tbServ "
					+ "where tbServ.nome like ? "
					+ "ordem by tbServ.nome"),
	@NamedQuery(name = Servico.ListarTodos,
			query = "from Servico tbServ"
					+ "ordem by tbServ.nome")
})
public @Data class Servico implements Entidade {
	
	public static final String PesquisaPorDescricao = "PesquisaPorDescricao";
	public static final String ListarTodos = "ListarTodos";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_servico")
	private Long codigo;
	
	@Column(nullable = false, length = 255, unique = true)
	private String nome;
	
	@Column(nullable = false, precision = 10, scale = 2)
	private Double valor;
	
	@Column(nullable = false)
	private Boolean foraDeUso;
	
	@Enumerated(EnumType.STRING)
	private TipoItem tipoItem;
}
