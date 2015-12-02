package br.com.obitecnologia.obi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
@Controller
public class InformacaoController 
{

    /**
     *
     * @return
     */
    @RequestMapping("sobre")
    public String mostraPaginaSobre()
    {
    return "frm_sobre";    
    }
}