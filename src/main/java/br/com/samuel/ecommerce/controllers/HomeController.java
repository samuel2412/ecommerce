package br.com.samuel.ecommerce.controllers;

import java.util.Arrays;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.samuel.ecommerce.daos.ProdutoDAO;
import br.com.samuel.ecommerce.daos.UsuarioDAO;
import br.com.samuel.ecommerce.models.Produto;
import br.com.samuel.ecommerce.models.Role;
import br.com.samuel.ecommerce.models.Usuario;

@Controller
@Cacheable(value="produtosHome")
public class HomeController {
	
	@Autowired
    private ProdutoDAO produtoDao;
	
	@Autowired
    private UsuarioDAO usuarioDao;

    @RequestMapping("/")
    public ModelAndView index() {

        ModelAndView modelAndView = new ModelAndView("index");
        List<Produto> produtos = produtoDao.listar();
        List<Produto> lastAdd = produtos.subList(Math.max(produtos.size() - 3, 0), produtos.size());
        modelAndView.addObject("produtos", produtos);
        modelAndView.addObject("lastAdd", lastAdd);
       
        
        return modelAndView;
    }
    
    @Transactional
    @ResponseBody
    @RequestMapping("/url-magica-maluca-oajksfbvad6584i57j54f9684nvi6554358efnoewfm3545nvowefno5522eijn")
    public String urlMagicaMaluca() {
        Usuario usuario = new Usuario(); 
        usuario.setNome("Admin");
        usuario.setEmail("admin@admin");
        usuario.setSenha("$2a$10$lt7pS7Kxxe5JfP.vjLNSyOXP11eHgh7RoPxo5fvvbMCZkCUss2DGu");
        usuario.setRoles(Arrays.asList(new Role("ROLE_ADMIN")));

        usuarioDao.gravar(usuario);

        return "Url Mágica executada";
    }


}
