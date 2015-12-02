package br.com.obitecnologia.obi.controller;

import br.com.obitecnologia.obi.dao.interfaces.CadastradorDao;
import br.com.obitecnologia.obi.dao.interfaces.LoginDao;
import br.com.obitecnologia.obi.infra.geradorrelatorio.GeradorRelatorio;
import br.com.obitecnologia.obi.infra.validador.Validador;
import br.com.obitecnologia.obi.model.implementacao.Cadastrador;
import br.com.obitecnologia.obi.model.implementacao.Login;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Ayran Andrade <ayranandrade@hotmail.com>
 */
@Controller
public class CadastradorController
{
private final CadastradorDao daoCadastrador;
private final LoginDao daoLogin;
private final GeradorRelatorio geradorRelatorio;
private final Validador validador;

    /**
     *
     * @param daoCadastrador
     * @param geradorRelatorio
     * @param validador
     * @param daoLogin
     */
    @Autowired
    public CadastradorController(CadastradorDao daoCadastrador,
    GeradorRelatorio geradorRelatorio,Validador validador,LoginDao daoLogin)
    {
    this.daoCadastrador=daoCadastrador;
    this.geradorRelatorio=geradorRelatorio;
    this.validador=validador;
    this.daoLogin=daoLogin;
    }

    @RequestMapping("mostraRelatorioCadastrador")
    public String mostraRelatorio()
    {
    return "frm_relatorio_cadastrador";
    }
            
    @RequestMapping("mostraAlteracaoCadastrador")
    public String mostraPaginaAlteracao(Model model,HttpSession session)
    {
    model.addAttribute("cadastrador",this.daoCadastrador.
    buscaPorEmail(session.getAttribute("usuarioLogado").toString()));
    return "frm_alteracao_cadastro_cadastrador";
    }
    
    @RequestMapping("mostraCadastroCadastrador")
    public String mostraPaginaCadastro()
    {
    return "frm_cadastro_cadastrador";
    }
    
    @RequestMapping("menuCadastrador")
    public String mostraMenu(Model model,HttpSession session)
    {
    model.addAttribute("nome",this.daoCadastrador.buscaNomePorEmail
    (session.getAttribute("usuarioLogado").toString()));
    return "frm_menu_cadastrador";
    }
    
    @RequestMapping("adicionaCadastroCadastrador")
    public String adicionaCadastro(HttpSession session,Cadastrador cadastrador,
    Login login,BindingResult result,Model model)
    {
      if(result.hasErrors())
      {
      return "redirect:mostraCadastroCadastrador";
      }
      if(this.daoLogin.existeEmail(login.getEmail()))
      {
      cadastrador.setLogin(login);
      model.addAttribute("cadastrador",cadastrador);
      model.addAttribute("erro","Email Ja Existe !");
      return "frm_cadastro_cadastrador";
      }
      if(!validador.isEmailValido(login.getEmail()))
      {
      cadastrador.setLogin(login);
      model.addAttribute("cadastrador",cadastrador);
      model.addAttribute("erro","Email Invalido !");
      return "frm_cadastro_cadastrador";          
      }
    this.daoLogin.adiciona(login);
    login.setCd(this.daoLogin.buscaCodigoPorLogin(login));
    cadastrador.setLogin(login);
    this.daoCadastrador.adiciona(cadastrador);
    session.setAttribute("usuarioLogado",login.getEmail());
    return "redirect:menuCadastrador";
    }
    
    @RequestMapping("alteracaoCadastrador")
    public String alteraCadastro(HttpSession session,Cadastrador cadastrador,
    Login login,BindingResult result,Model model)
    {
      if(result.hasErrors())
      {
      return "redirect:mostraAlteracaoCadastrador";
      }
      if(this.daoLogin.existeEmail(login.getEmail()))
      {
        if(!login.getEmail().equals(session.getAttribute("usuarioLogado").
        toString()))
        {
        cadastrador.setLogin(login);
        model.addAttribute("cadastrador",cadastrador);
        model.addAttribute("erro","Email Ja Existe !");
        return "frm_alteracao_cadastro_cadastrador";
        }
      }
      if(!validador.isEmailValido(login.getEmail()))
      {
      cadastrador.setLogin(login);
      model.addAttribute("cadastrador",cadastrador);
      model.addAttribute("erro","Email Invalido !");
      return "frm_alteracao_cadastro_cadastrador";          
      }
    String emailAntigo=session.getAttribute("usuarioLogado").toString();
    login.setCd(this.daoLogin.atualiza(login,emailAntigo));
    cadastrador.setLogin(login);
    this.daoCadastrador.atualiza(cadastrador);
    session.setAttribute("usuarioLogado",login.getEmail());
    model.addAttribute("sucesso","Cadastro Atualizado Com Sucesso !");
    return "frm_alteracao_cadastro_cadastrador";
    }
}
//DADOS DA TABELA LOGIN DEVEM SER CRIPTOGRAFADOS ANTES DE SEREM PERSISTIDOS