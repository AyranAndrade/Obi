package br.com.obitecnologia.obi.model.implementacao;

/**
 *
 * @author Ayran Andrade <ayranandrade@hotmail.com>
 */
public class Cadastrador
{
private String nome;
private Login login;
private boolean novidade;
private boolean exibirAjuda;
private boolean excluirConta;

    public String getNome() 
    {
    return this.nome;
    }

    public void setNome(String nome) 
    {
    this.nome=nome;
    }

    public Login getLogin() 
    {
    return this.login;
    }

    public void setLogin(Login login) 
    {
    this.login=login;
    }

    public boolean isNovidade() 
    {
    return this.novidade;
    }

    public void setNovidade(boolean novidade) 
    {
    this.novidade=novidade;
    }

    public boolean isExibirAjuda() 
    {
    return this.exibirAjuda;
    }

    public void setExibirAjuda(boolean exibirAjuda) 
    {
    this.exibirAjuda=exibirAjuda;
    }

    public boolean isExcluirConta() 
    {
    return this.excluirConta;
    }

    public void setExcluirConta(boolean excluirConta) 
    {
    this.excluirConta=excluirConta;
    }
}