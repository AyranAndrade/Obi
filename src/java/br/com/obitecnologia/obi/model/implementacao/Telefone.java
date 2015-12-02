package br.com.obitecnologia.obi.model.implementacao;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public class Telefone 
{
private String ddd;
private String numeroTelefone;
private int cd;

    public String getDdd() 
    {
    return this.ddd;
    }

    public void setDdd(String ddd) 
    {
    this.ddd=ddd;
    }

    public String getNumeroTelefone() 
    {
    return this.numeroTelefone;
    }

    public void setNumeroTelefone(String numeroTelefone) 
    {
    this.numeroTelefone=numeroTelefone;
    }

    public int getCd() 
    {
    return this.cd;
    }

    public void setCd(int cd) 
    {
    this.cd=cd;
    }
}