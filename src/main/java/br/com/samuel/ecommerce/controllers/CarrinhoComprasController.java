package br.com.samuel.ecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.samuel.ecommerce.daos.ProdutoDAO;
import br.com.samuel.ecommerce.models.CarrinhoCompras;
import br.com.samuel.ecommerce.models.CarrinhoItem;
import br.com.samuel.ecommerce.models.Produto;

@Controller
@RequestMapping("/carrinho")
@Scope(value=WebApplicationContext.SCOPE_REQUEST)
public class CarrinhoComprasController {

    @Autowired
    private ProdutoDAO produtoDao;

    @Autowired
    private CarrinhoCompras carrinho;

    @RequestMapping("/add")
    public ModelAndView add(Integer produtoId) {
    	System.out.println(produtoId);
        ModelAndView modelAndView = new ModelAndView("redirect:/carrinho");
        CarrinhoItem carrinhoItem = criaItem(produtoId);

        carrinho.add(carrinhoItem);

        return modelAndView;   
    }

    private CarrinhoItem criaItem(Integer produtoId) {
    	

        Produto produto = produtoDao.find(produtoId);
        CarrinhoItem carrinhoItem = new CarrinhoItem(produto);

        return carrinhoItem;
    }
    
    @RequestMapping("/remover")
    public ModelAndView remover(Integer produtoId) {
        carrinho.remover(produtoId);
        return new ModelAndView("redirect:/carrinho");
    }
    
    
    @RequestMapping(value="/finalizar", method=RequestMethod.POST)
    public ModelAndView finalizar(RedirectAttributes model) {

        //System.out.println(carrinho.getTotal());
        model.addFlashAttribute("sucesso", "Pagamento realizado com sucesso");

        return new ModelAndView("redirect:/");
    }
    
    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView itens(){
        return new ModelAndView("carrinho/itens");
    }
}