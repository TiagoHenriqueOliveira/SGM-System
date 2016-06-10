package br.com.jelasticlw.sgmsystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
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
@Table(name="TB_PRODUTO")
public @Data class Produto implements Entidade {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@Column(nullable = false, length = 255, unique = true)
	private String descricao;
	
	@Column(nullable = false, precision = 10, scale = 2)
	private Double valor;
	
	@Column(nullable = false)
	private Boolean foraDeUso;
	
	@ManyToOne(optional = true, fetch = FetchType.EAGER)
	private UnidadeMedida unidade;
	
	@Enumerated(EnumType.STRING)
	private TipoItem tipoItem;
}
