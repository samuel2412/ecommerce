package br.com.samuel.ecommerce.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.samuel.ecommerce.daos.ProdutoDAO;
import br.com.samuel.ecommerce.models.Produto;




@Controller
@RequestMapping("/produto")
public class ProdutosController {
	
	@Autowired
	private ProdutoDAO produtoDao;

	@RequestMapping("/cadastro")
	public ModelAndView form() {

	    ModelAndView modelAndView = new ModelAndView("produtos/cadastro");
	   
	    return modelAndView;    
	}
	
	@RequestMapping(method= RequestMethod.POST)
	public ModelAndView gravar(Produto produto, RedirectAttributes redirectAttributes){
		produtoDao.gravar(produto);
		redirectAttributes.addFlashAttribute("sucesso", "Produto cadastrado com sucesso!");
		return new ModelAndView("redirect:/produto");
	}
	
	@RequestMapping(method= RequestMethod.GET)
	public ModelAndView listar() {
	    List<Produto> produtos = produtoDao.listar();
	    ModelAndView modelAndView = new ModelAndView("produtos/lista");
	    modelAndView.addObject("produtos", produtos);

	    return modelAndView;
	}
}
