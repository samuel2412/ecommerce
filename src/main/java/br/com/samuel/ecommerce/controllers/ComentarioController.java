package br.com.samuel.ecommerce.controllers;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.samuel.ecommerce.daos.ProdutoDAO;
import br.com.samuel.ecommerce.models.Comentario;
import br.com.samuel.ecommerce.models.Produto;
import br.com.samuel.ecommerce.models.Usuario;

@Controller
@RequestMapping("/opiniao")
public class ComentarioController {

	@Autowired
	private ProdutoDAO produtoDao;
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView finalizar(Integer id,RedirectAttributes redirectAttributes,Comentario comentario) {
		Produto produto = produtoDao.find(id);
		System.out.println("METODO POST DO CC \n"+ comentario.getUsuarioEmail() +"\n"+ produto);
		
		List<Comentario> comentarios = produto.getComentarios();
		
		comentario.setDataComentario(Calendar.getInstance());
		
		
		comentarios.add(comentario);
		
		produto.setComentarios(comentarios);
		
		produtoDao.alterarProduto(produto);

		redirectAttributes.addFlashAttribute("sucesso", "Opinião cadastrada com sucesso!");
		return new ModelAndView("redirect:/produto/detalhe/"+produto.getId());
	}

	
	
	@RequestMapping("/{id}")
	public ModelAndView form(@PathVariable("id")Integer id, @AuthenticationPrincipal Usuario usuario) {
		ModelAndView modelAndView = new ModelAndView("produtos/opiniao");
		//System.out.println("METODO GET DO CC \n"+ id);
		Produto produto = produtoDao.find(id);
		modelAndView.addObject("produto", produto);
		modelAndView.addObject("usuario", usuario);
		modelAndView.addObject("comentario", new Comentario());
		
		//System.out.println("METODO GET DO CC \n"+ usuario +"\n"+ produto);
		
		return modelAndView;
	}

	
}
