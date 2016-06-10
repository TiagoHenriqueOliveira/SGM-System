package model;

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
@Table(name="TB_VEICULO")
public @Data class Veiculo implements Entidade {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	
	@Column(nullable = false, length = 255)
	private String nome;
	
	@Column(nullable = false, length = 7, unique = true)
	private String placa;
	
	@Column(nullable = false)
	private Boolean foraDeUso;
	
	@ManyToOne(optional = true, fetch = FetchType.EAGER)
	private Cliente cliente;
}