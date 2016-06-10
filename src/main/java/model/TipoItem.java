package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Getter
public enum TipoItem {
	
	SERVICO("servico"),
	PRODUTO("produto");
	
	private String descricao;
}