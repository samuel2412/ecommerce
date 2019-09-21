package br.com.samuel.ecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.samuel.ecommerce.daos.ProdutoDAO;
import br.com.samuel.ecommerce.models.Produto;

@Controller
@RequestMapping("/produtos")
public class ProdutosController {
	
	@Autowired
	ProdutoDAO produtoDao;
	
	 @RequestMapping("/cadastro")
	    public ModelAndView form() {
		 
	        return new ModelAndView("produtos/cadastro"); //local da view
	        
	    }
	 
	 @RequestMapping(method = RequestMethod.POST)
	 public String gravar(Produto produto) {
		  produtoDao.gravar(produto);

	        return "produtos/ok";
	 }

}
