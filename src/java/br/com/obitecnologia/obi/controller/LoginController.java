package br.com.obitecnologia.obi.controller;

import br.com.obitecnologia.obi.dao.interfaces.CadastradorDao;
import br.com.obitecnologia.obi.dao.interfaces.EntidadeDao;
import br.com.obitecnologia.obi.dao.interfaces.LoginDao;
import br.com.obitecnologia.obi.model.implementacao.Login;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Ayran Andrade <ayranandrade@hotmail.com>
 */
@Controller
public class LoginController 
{
private final LoginDao daoLogin;
private final EntidadeDao daoEntidade;
private final CadastradorDao daoCadastrador;

    /**
     *
     * @param daoLogin
     * @param daoEntidade
     * @param daoCadastrador
     */
    @Autowired
    public LoginController(LoginDao daoLogin,EntidadeDao daoEntidade,
    CadastradorDao daoCadastrador) 
    {
    this.daoLogin=daoLogin;
    this.daoEntidade=daoEntidade;
    this.daoCadastrador=daoCadastrador;
    }//PRECISO TER CONSULTA POR WEBSERVICE AOS CORREIOS PELO CEP
    
    @RequestMapping("inicio")
    public String inicio(Model model)
    {
    model.addAttribute("entidade",this.daoEntidade.getListaNomeIdEntidade());
    model.addAttribute("numero",this.daoEntidade.getTotalEntidade());
    model.addAttribute("numeroCadastrador",
    this.daoCadastrador.getTotalCadastrador());
    return "frm_login";    
    }
    
    @RequestMapping("entrar")
    public String login(Model model,HttpSession session,Login login)
    {
    int i=this.daoLogin.existeUsuario(login);
      if(i!=0)
      {
      this.daoLogin.adicionaAcesso(i);
      session.setAttribute("usuarioLogado",login.getEmail());
      return "redirect:menu"+this.daoLogin.
      buscaTipoClientePorLogin(i);
      }
    model.addAttribute("erro_login","Email Ou Senha Incorretos. "
    +"Tente Novamente.");
    model.addAttribute("entidade",this.daoEntidade.getListaNomeIdEntidade());
    model.addAttribute("numero",this.daoEntidade.getTotalEntidade());
    model.addAttribute("numeroCadastrador",
    this.daoCadastrador.getTotalCadastrador());
    return "frm_login";    
    }
    
    @RequestMapping("sair")
    public String logout(HttpSession session)
    {
    session.invalidate();
    return "redirect:inicio";    
    }
}
//UMA ENTIDADE SOCIAL FAZ UM ACORDO COMIGO PARA EU INCENTIVAR AS PESSOAS A DOAR PRA ELA E 
//ELA FAZ DIVULGACAO DO MEU SITE

//TALVEZ NAO PRECISE DE EMAIL