package br.com.obitecnologia.obi.controller;

import br.com.obitecnologia.obi.dao.interfaces.EnderecoDao;
import br.com.obitecnologia.obi.dao.interfaces.EntidadeDao;
import br.com.obitecnologia.obi.dao.interfaces.LoginDao;
import br.com.obitecnologia.obi.dao.interfaces.TelefoneDao;
import br.com.obitecnologia.obi.infra.geradorrelatorio.GeradorRelatorio;
import br.com.obitecnologia.obi.infra.validador.Validador;
import br.com.obitecnologia.obi.model.implementacao.Endereco;
import br.com.obitecnologia.obi.model.implementacao.Entidade;
import br.com.obitecnologia.obi.model.implementacao.Login;
import br.com.obitecnologia.obi.model.implementacao.Telefone;
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
public class EntidadeController
{
private final EntidadeDao daoEntidade;
private final LoginDao daoLogin;
private final EnderecoDao daoEndereco;
private final TelefoneDao daoTelefone;
private final GeradorRelatorio geradorRelatorio;
private final Validador validador;

    /**
     *
     * @param daoEntidade
     * @param geradorRelatorio
     * @param daoLogin
     * @param validador
     * @param daoEndereco
     * @param daoTelefone
     */
    @Autowired
    public EntidadeController(EntidadeDao daoEntidade,
    GeradorRelatorio geradorRelatorio,LoginDao daoLogin, Validador validador,
    EnderecoDao daoEndereco,TelefoneDao daoTelefone)
    {
    this.daoEntidade=daoEntidade;
    this.geradorRelatorio=geradorRelatorio;
    this.validador=validador;
    this.daoLogin=daoLogin;
    this.daoEndereco=daoEndereco;
    this.daoTelefone=daoTelefone;
    }

    @RequestMapping("mostraRelatorioEntidade")
    public String mostraRelatorio()
    {
    return "frm_relatorio_entidade";
    }
            
    @RequestMapping("menuEntidade")
    public String mostraMenu(Model model,HttpSession session)
    {
    model.addAttribute("nome",this.daoEntidade.buscaNomePorEmail
    (session.getAttribute("usuarioLogado").toString()));
    return "frm_menu_entidade";
    }
            
    @RequestMapping("mostraAlteracaoEntidade")
    public String mostraPaginaAlteracao(Model model,HttpSession session)
    {
    model.addAttribute("entidade",this.daoEntidade.
    buscaPorEmail(session.getAttribute("usuarioLogado").toString()));
    return "frm_alteracao_cadastro_entidade";
    }
    
    @RequestMapping("mostraCadastroEntidade")
    public String mostraPaginaCadastro()
    {
    return "frm_cadastro_entidade";
    }
    
    @RequestMapping("adicionaCadastroEntidade")
    public String adicionaCadastro(HttpSession session,Entidade entidade,
    Login login,Endereco endereco,Telefone telefone,BindingResult result,
    Model model)
    {
      if(result.hasErrors())
      {
      return "redirect:cadastroEntidade";
      }
      if(this.daoLogin.existeEmail(login.getEmail()))
      {
      entidade.setLogin(login);
      entidade.setEndereco(endereco);
      entidade.setTelefone(telefone);
      model.addAttribute("entidade",entidade);
      model.addAttribute("erro","Email Ja Existe !");
      return "frm_cadastro_entidade";
      }
      if(!validador.isEmailValido(login.getEmail()))
      {
      entidade.setLogin(login);
      entidade.setEndereco(endereco);
      entidade.setTelefone(telefone);
      model.addAttribute("entidade",entidade);
      model.addAttribute("erro","Email Invalido !");
      return "frm_cadastro_entidade";          
      }
    this.daoLogin.adiciona(login);
    login.setCd(this.daoLogin.buscaCodigoPorLogin(login));
    entidade.setLogin(login);
    this.daoEndereco.adiciona(endereco);
    endereco.setCd(this.daoEndereco.buscaCodigoPorEndereco(endereco));
    entidade.setEndereco(endereco);
    this.daoTelefone.adiciona(telefone);
    telefone.setCd(this.daoTelefone.buscaCodigoPeloTelefone(telefone));
    entidade.setTelefone(telefone);
    this.daoEntidade.adiciona(entidade);
    session.setAttribute("usuarioLogado",login.getEmail());
    return "redirect:menuEntidade";
    }
    
    @RequestMapping("alteracaoEntidade")
    public String alteraCadastro(HttpSession session,Entidade entidade,
    Login login,Endereco endereco,Telefone telefone,BindingResult result,
    Model model)
    {
      if(result.hasErrors())
      {
      return "redirect:mostraAlteracaoEntidade";
      }
      if(this.daoLogin.existeEmail(login.getEmail()))
      {
        if(!login.getEmail().equals(session.getAttribute("usuarioLogado").
        toString()))
        {
        entidade.setLogin(login);
        entidade.setEndereco(endereco);
        entidade.setTelefone(telefone);
        model.addAttribute("entidade",entidade);
        model.addAttribute("erro","Email Ja Existe !");
        return "frm_alteracao_cadastro_entidade";
        }
      }
      if(!validador.isEmailValido(login.getEmail()))
      {
      entidade.setLogin(login);
      entidade.setEndereco(endereco);
      entidade.setTelefone(telefone);
      model.addAttribute("entidade",entidade);
      model.addAttribute("erro","Email Invalido !");
      return "frm_alteracao_cadastro_entidade";          
      }
    String emailAntigo=session.getAttribute("usuarioLogado").toString();
    login.setCd(this.daoLogin.atualiza(login,emailAntigo));
    entidade.setLogin(login);
    endereco.setCd(this.daoEndereco.atualiza(endereco,login.getEmail()));
    entidade.setEndereco(endereco);
    telefone.setCd(this.daoTelefone.atualiza(telefone,login.getEmail()));
    entidade.setTelefone(telefone);
    this.daoEntidade.atualiza(entidade);
    session.setAttribute("usuarioLogado",login.getEmail());
    model.addAttribute("sucesso","Cadastro Atualizado Com Sucesso !");
    return "frm_alteracao_cadastro_entidade";
    }    
}//O CADASTRADOR DEVE ESCOLHER ENTRE DOAR UM CUPOM PRA CADA ENTIDADE
//OU DOAR TODOS OS CUPONS PARA UMA MESMA ENTIDADE    