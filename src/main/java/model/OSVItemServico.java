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
@Table(name="TB_OSV_ITEM_SERVICO")
public class OSVItemServico {
	
	@Column(nullable = false, precision = 10, scale = 2)
	private Double valor;
}