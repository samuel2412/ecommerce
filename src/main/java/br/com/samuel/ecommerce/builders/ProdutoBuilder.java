package br.com.samuel.ecommerce.builders;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.samuel.ecommerce.models.Produto;

public class ProdutoBuilder {
	
	private List<Produto> produtos = new ArrayList<>();

    private ProdutoBuilder(Produto produto) {
        produtos.add(produto);
    }

    public static ProdutoBuilder newProduto(BigDecimal valor) {
        Produto p = create("Livro 1", valor);
        return new ProdutoBuilder(p);
    }

    public static ProdutoBuilder newProduto() {
        Produto livro = create("Livro 1", BigDecimal.TEN);
        return new ProdutoBuilder(livro);
    }

    private static Produto create(String nome, BigDecimal valor) {

        Produto produto = new Produto();
        produto.setNome(nome);
        produto.setDataAnuncio(Calendar.getInstance());
        produto.setMarca("marca");
        produto.setDescricao("Ótimo livro sobre testes");
        produto.setImagem("https://www.outbrain.com/techblog/wp-content/uploads/2017/05/road-sign-361513_960_720.jpg");
        produto.setPreco(valor);


        return produto;
    }

    public ProdutoBuilder mais(int quantidade) {
        for (int i = 0; i < quantidade; i++) {
            produtos.add(create("Livro " + i, BigDecimal.TEN ));
        }
        return this;
    }

    public Produto buildOne() {
        return produtos.get(0);
    }

    public List<Produto> buildAll() {
        return produtos;
    }
	
	
	
}
