package br.com.jelasticlw.sgmsystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="TB_CLIENTE")
public @Data class Cliente implements Entidade {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
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
	private Cidade cidade;
}
