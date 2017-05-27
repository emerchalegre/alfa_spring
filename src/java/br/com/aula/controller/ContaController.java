
package br.com.aula.controller;

import br.com.aula.model.Conta;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContaController {
    Double saldo = 0.0;
    @RequestMapping("/cadastrarConta")
    public String conta(HttpSession session){
        if(session.getAttribute("usuario") == null)
            return "redirect:login";
        return "contas/cadastroConta";
    }
    
    @RequestMapping("/listarContas")
    public String listarContas(HttpSession session){
        if(session.getAttribute("usuario") == null)
            return "redirect:login";
        return "contas/listagemContas";
    }
    
    List<Conta> contas = null;
    @RequestMapping("/persisteConta")
    public String persisteConta(HttpSession session, Conta c) {
        if(session.getAttribute("contas") == null && contas == null) {
            contas = new ArrayList<Conta>();
        }
        contas.add(c);
        session.setAttribute("contas", contas);
        return "contas/listagemContas";
    }
    
    @RequestMapping("/transacaoBancaria")
    public String movimentarConta(HttpSession session, HttpServletRequest request){
        if(session.getAttribute("usuario") == null)
            return "redirect:login";
        
        request.setAttribute("hiddenTransaction", "hidden");
        request.setAttribute("fieldset", "");
        return "contas/buscarContas";
    }
    
    @RequestMapping("/transacaoMovimento")
    public String transacaoMovimento(HttpSession session, HttpServletRequest request){
        if(session.getAttribute("usuario") == null)
            return "redirect:login";
        
        request.setAttribute("hiddenTransaction", "hidden");
        request.setAttribute("fieldset", "");
        return "contas/transacao";
    }
    
    @RequestMapping("/buscarConta")
    public String buscarConta(HttpSession session, HttpServletRequest request) {
        if(session.getAttribute("contas") == null) {
            request.setAttribute("hiddenTransaction", "hidden");
            request.setAttribute("msgErro", "Conta não encontrada na base de dados");
            return "redirect:transacaoBancaria";
        }
        
        Conta conta = null;
        for(Conta c : (ArrayList<Conta>)session.getAttribute("contas")) {
            if( request.getParameter("agencia").equals(c.getAgencia()) && 
                    request.getParameter("banco").equals(c.getBanco()) &&
                    request.getParameter("conta").equals(c.getConta()) &&
                    request.getParameter("digito").equals(c.getDigito()) ) {
                conta = c;
            }
        }
        
        if (conta == null ) {
            request.setAttribute("hiddenTransaction", "hidden");
            request.setAttribute("msgErro", "Conta não encontrada na base de dados");
            return "redirect:transacaoBancaria";
        }
            
        
        request.setAttribute("hiddenTransaction", "");
        request.setAttribute("inputDisabled", "disabled");
        request.setAttribute("fieldset", "disabled");
        request.setAttribute("banco", request.getParameter("banco"));
        request.setAttribute("agencia", request.getParameter("agencia"));
        request.setAttribute("conta", request.getParameter("conta"));
        request.setAttribute("digito", request.getParameter("digito"));
        request.setAttribute("saldo", conta.getSaldo());
        return "contas/transacao";
    }
    
    @RequestMapping("/movimentar")
    public String movimentar(HttpSession session, HttpServletRequest request) {
        
        if(session.getAttribute("contas") == null) {
            return "redirect:transacaoBancaria";
        }
        Conta conta = null;
        for(Conta c : (ArrayList<Conta>)session.getAttribute("contas")) {
            if( request.getParameter("agencia").equals(c.getAgencia()) && 
                    request.getParameter("banco").equals(c.getBanco()) &&
                    request.getParameter("conta").equals(c.getConta()) &&
                    request.getParameter("digito").equals(c.getDigito()) ) {
                conta = c;
            }
        }
        
        if (conta == null ) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Conta inválida');");
            out.println("</script>");
            
            return "contas/transacao";
        }
            
        
        
        Double valor = Double.valueOf(request.getParameter("valor"));
        Integer tipotransacao = Integer.parseInt(request.getParameter("tipotransacao"));
        
        if(valor <= 0) {
            request.setAttribute("msgErrorTransacao","Valor inválido");
            request.setAttribute("banco", request.getParameter("banco"));
            request.setAttribute("agencia", request.getParameter("agencia"));
            request.setAttribute("conta", request.getParameter("conta"));
            request.setAttribute("digito", request.getParameter("digito"));
            request.setAttribute("saldo", conta.getSaldo());
            return "contas/transacao";
        }
        
        if(tipotransacao == 1) {
            conta.setSaldo(conta.getSaldo() + valor);
        } else {
            if(validarSaque(conta.getSaldo(), valor)) {
                conta.setSaldo(conta.getSaldo() - valor);
            } else {
                request.setAttribute("msgErrorTransacao","Saldo insuficiente");
                request.setAttribute("banco", request.getParameter("banco"));
                request.setAttribute("agencia", request.getParameter("agencia"));
                request.setAttribute("conta", request.getParameter("conta"));
                request.setAttribute("digito", request.getParameter("digito"));
                request.setAttribute("saldo", conta.getSaldo());
                return "contas/transacao";
            }
        }
        
        return "redirect:transacaoBancaria";
    }
    
    private Boolean validarSaque(Double saldo, Double valor) {
        if(saldo <= 0 || saldo < valor)
            return false;
        return true;
    }
}
