package br.com.aula.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
    
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:login";
    }
    
    @RequestMapping("/logar")
    public String logar(HttpSession session, HttpServletRequest request){
        String usuario = request.getParameter("inputLogin");
        String senha = request.getParameter("inputPassword");
        
        if(usuario.equals("java") && senha.equals("alfa")) {
            session.setAttribute("usuario", usuario);
            return "redirect:inicio";
        } else {
            request.setAttribute("submitDone","done");
            return "login";
            //return "redirect:login";
        }
    }
}
