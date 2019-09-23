package br.com.samuel.ecommerce.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.samuel.ecommerce.daos.ProdutoDAO;
import br.com.samuel.ecommerce.models.Produto;

@Controller
@Cacheable(value="produtosHome")
public class HomeController {
	
	@Autowired
    private ProdutoDAO produtoDao;

    @RequestMapping("/")
    public ModelAndView index() {

        ModelAndView modelAndView = new ModelAndView("home");
        List<Produto> produtos = produtoDao.listar();
        List<Produto> lastAdd = produtos.subList(Math.max(produtos.size() - 3, 0), produtos.size());
        modelAndView.addObject("produtos", produtos);
        modelAndView.addObject("lastAdd", lastAdd);
        
        return modelAndView;
    }

}
