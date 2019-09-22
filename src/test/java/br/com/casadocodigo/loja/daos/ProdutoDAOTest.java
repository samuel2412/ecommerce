package br.com.casadocodigo.loja.daos;

import java.math.BigDecimal;
import java.util.List;

import javax.transaction.Transactional;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import br.com.casadocodigo.loja.confi.DataSourceConfigurationTest;
import br.com.samuel.ecommerce.builders.ProdutoBuilder;
import br.com.samuel.ecommerce.conf.JPAConfiguration;
import br.com.samuel.ecommerce.daos.ProdutoDAO;
import br.com.samuel.ecommerce.models.Produto;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {ProdutoDAO.class, 
    JPAConfiguration.class, DataSourceConfigurationTest.class})
@ActiveProfiles("test")
public class ProdutoDAOTest {

    @Autowired
    private ProdutoDAO produtoDao;

    @Test
    @Transactional
    public void deveSomarTodosPrecosPorTipoLivro() {        

        List<Produto> livrosImpressos = ProdutoBuilder
                .newProduto(BigDecimal.TEN)
                .mais(3).buildAll();
        livrosImpressos.stream().forEach(produtoDao::gravar);

        List<Produto> livrosEbook = ProdutoBuilder
                .newProduto(BigDecimal.TEN)
                .mais(3).buildAll();
        livrosEbook.stream().forEach(produtoDao::gravar);

        BigDecimal valor = produtoDao.somaPrecos();
        Assert.assertEquals(new BigDecimal(10).setScale(2), valor);

    }
}