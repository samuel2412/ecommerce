package br.com.samuel.ecommerce.models;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Produto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String nome;
	private String descricao;
	private String marca;
	private String imagem;
	private BigDecimal preco;

	@DateTimeFormat
    private Calendar dataAnuncio;

	public int getId() {
		return id;
	}

	public String getNome() {
		return nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public String getMarca() {
		return marca;
	}

	public String getImagem() {
		return imagem;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public void setImagem(String imagem) {
		this.imagem = imagem;
	}

	public BigDecimal getPreco() {
		return preco;
	}

	public void setPreco(BigDecimal preco) {
		this.preco = preco;
	}

	

	public Calendar getDataAnuncio() {
		return dataAnuncio;
	}

	public void setDataAnuncio(Calendar dataAnuncio) {
		this.dataAnuncio = dataAnuncio;
	}
	
	

	@Override
	public String toString() {
		return "Produto [id=" + id + ", nome=" + nome + ", descricao=" + descricao + ", marca=" + marca + ", imagem="
				+ imagem + ", preco=" + preco + ", dataAnuncio=" + dataAnuncio + "]";
	}

	
	@Override
	public int hashCode() {
		 final int prime = 31;
	        int result = 1;
	        result = prime * result + id;
	        return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Produto other = (Produto) obj;
        if (id != other.id)
            return false;
        return true;
	}
	
	
	

	
	
}