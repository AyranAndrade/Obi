package br.com.obitecnologia.obi.controller;

import br.com.obitecnologia.obi.dao.interfaces.Dao;
import br.com.obitecnologia.obi.model.implementacao.Cupom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
@Controller
public class CupomController
{
private final Dao<Cupom> daoCupom;

    /**
     *
     * @param daoCupom
     */
    @Autowired
    public CupomController(Dao<Cupom> daoCupom)
    {
    this.daoCupom=daoCupom;
    }
    
    @RequestMapping("cadastroCupomManual")
    public String adicionaCupomManual(Cupom[] cupom)
    {
    return null;    
    }
    
    @RequestMapping("cadastroCupomAutomatico")
    public String cadastroCupomAutomatico(MultipartFile[] cupom)
    {
    return null;    
    }
}//PRECISO TROCAR O OCR