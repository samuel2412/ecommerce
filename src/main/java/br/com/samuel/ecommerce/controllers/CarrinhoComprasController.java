package br.com.samuel.ecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.samuel.ecommerce.daos.ProdutoDAO;
import br.com.samuel.ecommerce.models.CarrinhoCompras;
import br.com.samuel.ecommerce.models.CarrinhoItem;
import br.com.samuel.ecommerce.models.Produto;

@Controller
@RequestMapping("/carrinho")
public class CarrinhoComprasController {

    @Autowired
    private ProdutoDAO produtoDao;

    @Autowired
    private CarrinhoCompras carrinho;

    @RequestMapping("/add")
    public ModelAndView add(Integer produtoId) {
    	System.out.println(produtoId);
        ModelAndView modelAndView = new ModelAndView("redirect:/produto");
        CarrinhoItem carrinhoItem = criaItem(produtoId);

        carrinho.add(carrinhoItem);

        return modelAndView;   
    }

    private CarrinhoItem criaItem(Integer produtoId) {
    	

        Produto produto = produtoDao.find(produtoId);
        CarrinhoItem carrinhoItem = new CarrinhoItem(produto);

        return carrinhoItem;
    }
}