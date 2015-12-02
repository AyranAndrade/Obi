package br.com.obitecnologia.obi.model.implementacao;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public class DoacaoDinheiro
{
private String nomeEntidade;
private String valorDoacao;
private int cd;

    public String getNomeEntidade() 
    {
    return this.nomeEntidade;
    }

    public void setNomeEntidade(String nomeEntidade) 
    {
    this.nomeEntidade=nomeEntidade;
    }

    public String getValorDoacao() 
    {
    return this.valorDoacao;
    }

    public void setValorDoacao(String valorDoacao) 
    {
    this.valorDoacao=valorDoacao;
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