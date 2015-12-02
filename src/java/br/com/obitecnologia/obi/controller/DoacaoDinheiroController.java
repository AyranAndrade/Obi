package br.com.obitecnologia.obi.controller;

import br.com.obitecnologia.obi.dao.interfaces.DoacaoDinheiroDao;
import br.com.obitecnologia.obi.dao.interfaces.EntidadeDao;
import br.com.obitecnologia.obi.model.implementacao.DoacaoDinheiro;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
@Controller
public class DoacaoDinheiroController
{
private final DoacaoDinheiroDao daoDoacaoDinheiro;
private final EntidadeDao daoEntidade;

    /**
     *
     * @param daoDoacaoDinheiro
     * @param daoEntidade
     */
    @Autowired
    public DoacaoDinheiroController(DoacaoDinheiroDao daoDoacaoDinheiro,
    EntidadeDao daoEntidade) 
    {
    this.daoDoacaoDinheiro=daoDoacaoDinheiro;
    this.daoEntidade=daoEntidade;
    }
    
    @RequestMapping("doarDinheiro")
    public String doarDinheiroIdentificado(DoacaoDinheiro doacaoDinheiro)
    {
    doacaoDinheiro.setCd(this.daoEntidade.buscaIdEntidadeNome
    (doacaoDinheiro.getNomeEntidade()));
    this.daoDoacaoDinheiro.adicionaDoacaoIdentificada(doacaoDinheiro);
    return null;
    }
}