package br.com.samuel.ecommerce.controllers;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.samuel.ecommerce.daos.UsuarioDAO;
import br.com.samuel.ecommerce.models.Role;
import br.com.samuel.ecommerce.models.Usuario;

@Controller
@RequestMapping("/usuario")
public class UsuarioController{

	@Autowired
	private UsuarioDAO usuarioDao;

	@RequestMapping("/cadastro")
	public ModelAndView form(Usuario usuario) {
		ModelAndView modelAndView = new ModelAndView("usuarios/cadastro");
		return modelAndView;
	}
	
	@Transactional
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView gravar(Usuario usuario, RedirectAttributes redirectAttributes) {

		usuario.setSenha(usuario.criptrografaSenha(usuario.getSenha()));
		usuario.setRoles(Arrays.asList(new Role("ROLE_USER")));
		usuarioDao.gravar(usuario);

		redirectAttributes.addFlashAttribute("mensagem", "Usuario cadastrado com sucesso!");
		return new ModelAndView("redirect:/");
	}
	

}
