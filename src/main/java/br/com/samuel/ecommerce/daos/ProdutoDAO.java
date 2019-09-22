package br.com.samuel.ecommerce.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.samuel.ecommerce.models.Produto;

@Repository
@Transactional
public class ProdutoDAO {

    @PersistenceContext
    private EntityManager manager;

    public void gravar(Produto produto) {
    	System.out.println(produto.getDataAnuncio());
        manager.persist(produto);
    }
    
    public List<Produto> listar() {
        return manager.createQuery("select p from Produto p", Produto.class)
            .getResultList();
    }
    
    public Produto find(Integer id) {
        return manager.createQuery("select distinct(p) from Produto p where p.id = :id", Produto.class)
                .setParameter("id", id).getSingleResult();
    }
}