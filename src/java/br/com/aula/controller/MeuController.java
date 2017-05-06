/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.aula.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Faculdade Alfa
 */
@Controller
public class MeuController {
    
    @RequestMapping("/inicio")
    public String index(){
        return "index";
    }
    
    @RequestMapping("/cadastrarAlguem")
    public String cadastro(){
        return "pessoas/cadastroPessoa";
    }
}
