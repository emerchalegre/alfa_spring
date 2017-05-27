package br.com.aula.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.aula.model.Pessoa;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Faculdade Alfa
 */
@Controller
public class MeuController {
    
    @RequestMapping("/inicio")
    public String index(HttpSession session){
        if(session.getAttribute("usuario") == null)
            return "redirect:login";
        return "index";
    }
    
    @RequestMapping("/cadastrarAlguem")
    public String cadastro(HttpSession session){
        if(session.getAttribute("usuario") == null)
            return "redirect:login";
        return "pessoas/cadastroPessoa";
    }
    
    @RequestMapping("/persistePessoa")
    public String persistePessoa(HttpSession session, Pessoa p) {
    	
    	//m.addAttribute("pessoa", p);
        session.setAttribute("pessoa", p);
    	
    	return "pessoas/mensagemCadastro";
    }
}
