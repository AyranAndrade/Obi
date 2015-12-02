package br.com.obitecnologia.obi.model.implementacao;

/**
 *
 * @author Ayran Andrade <ayranandrade@hotmail.com>
 */
public class Entidade
{
private Endereco endereco;
private int cd;
private Telefone telefone;
private String nome;
private String cnpj;
private String cpf;
private boolean novidade;
private Login login;
private boolean exibirAjuda;
private boolean excluirConta;

    public Endereco getEndereco() 
    {
    return this.endereco;
    }

    public void setEndereco(Endereco endereco) 
    {
    this.endereco=endereco;
    }

    public int getCd() 
    {
    return this.cd;
    }

    public void setCd(int cd) 
    {
    this.cd=cd;
    }

    public String getNome() 
    {
    return this.nome;
    }

    public void setNome(String nome) 
    {
    this.nome=nome;
    }

    public String getCnpj() 
    {
    return this.cnpj;
    }

    public void setCnpj(String cnpj) 
    {
    this.cnpj=cnpj;
    }

    public String getCpf() 
    {
    return this.cpf;
    }

    public void setCpf(String cpf)
    {
    this.cpf=cpf;
    }

    public Login getLogin() 
    {
    return this.login;
    }

    public void setLogin(Login login) 
    {
    this.login=login;
    }

    public Telefone getTelefone() 
    {
    return this.telefone;
    }

    public void setTelefone(Telefone telefone) 
    {
    this.telefone=telefone;
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

    public void setExibirAjuda(boolean exibirAJuda) 
    {
    this.exibirAjuda=exibirAJuda;
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