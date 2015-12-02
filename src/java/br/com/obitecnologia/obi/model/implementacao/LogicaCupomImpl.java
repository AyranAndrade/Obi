package br.com.obitecnologia.obi.model.implementacao;

import br.com.obitecnologia.obi.model.interfaces.LogicaCupom;
import br.com.obitecnologia.obi.model.interfaces.EnviadorCupom;
import ru.com.abby.ocrsdk.ocr.ConversorImagemTexto;

/**
 *
 * @author Ayran Andrade <ayranandrade@hotmail.com>
 */
public class LogicaCupomImpl implements LogicaCupom
{
private final EnviadorCupom cupom;
private final ConversorImagemTexto conversor;

    /**
     *
     * @param cupom
     * @param conversor
     */
    public LogicaCupomImpl(EnviadorCupom cupom, ConversorImagemTexto conversor)
    {
    this.cupom=cupom;
    this.conversor=conversor;
    }
    
    @Override
    public void run() 
    {
    }
}