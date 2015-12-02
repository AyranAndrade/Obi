package br.com.obitecnologia.obi.model.implementacao;

/**
 *
 * @author Ayran Andrade <ayranandrade@hotmail.com>
 */
public class Endereco 
{
private String rua;
private String numero;
private String complemento;
private String estado;
private String bairro;
private String cidade;
private int cd;

    public String getRua() 
    {
    return this.rua;
    }

    public void setRua(String rua) 
    {
    this.rua=rua;
    }

    public String getNumero() 
    {
    return this.numero;
    }

    public void setNumero(String numero) 
    {
    this.numero=numero;
    }

    public String getComplemento() 
    {
    return this.complemento;
    }

    public void setComplemento(String complemento) 
    {
    this.complemento=complemento;
    }

    public String getEstado() 
    {
    return this.estado;
    }

    public void setEstado(String estado) 
    {
    this.estado=estado;
    }

    public String getCidade() 
    {
    return this.cidade;
    }

    public void setCidade(String cidade) 
    {
    this.cidade=cidade;
    }

    public int getCd() 
    {
    return this.cd;
    }

    public void setCd(int cd) 
    {
    this.cd=cd;
    }

    public String getBairro() 
    {
    return this.bairro;
    }

    public void setBairro(String bairro) 
    {
    this.bairro=bairro;
    }
}