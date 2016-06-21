package br.com.jelasticlw.sgmsystem.model;

import javax.persistence.Entity;
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
@Table(name="TB_CIDADE")
//@NamedQueries({
//	@NamedQuery(name = Cidade.ListarCidadePorUf,
//			query = "select ci.nome from Cidade ci"
//					+ "join Uf u on ci.codigo_Uf = u.codigo")
//})

public @Data class Cidade {
//	public static final String ListarCidadePorUf = "ListarCidadePorUf";
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long codigo;
	private String nome;
	@ManyToOne
	private UF codigo_Uf;
}
