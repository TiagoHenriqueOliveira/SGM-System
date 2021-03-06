package br.com.jelasticlw.sgmsystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "TB_CLIENTE")
public @Data class Cliente implements Entidade {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;

	@Column(nullable = false, length = 255)
	private String nome;
	
	@Column(nullable = false, length = 14)
	private String cpf;

	@Column(nullable = false, length = 14)
	private String telefone;

	@Column(nullable = false, length = 255)
	private String rua;

	@Column(nullable = false, length = 255)
	private String bairro;

	@Column(nullable = false, length = 10)
	private Integer numero;

	@ManyToOne(optional = true, fetch = FetchType.EAGER)
	@JoinColumn(name = "id_cidade")
	private Cidade cidade;
}
