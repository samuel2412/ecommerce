package br.com.samuel.ecommerce.models;

import java.math.BigInteger;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Produto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String nome;
	private String descricao;
	private String marca;
	private String imagem;
	private BigInteger preco;


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

	public BigInteger getPreco() {
		return preco;
	}

	public void setPreco(BigInteger preco) {
		this.preco = preco;
	}

	@Override
	public String toString() {
		return "Produto [id=" + id + ", nome=" + nome + ", descricao=" + descricao + ", marca=" + marca + ", imagem="
				+ imagem + ", preco=" + preco + "]";
	}

	
	

	
	
}