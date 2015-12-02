package br.com.obitecnologia.obi.model.implementacao;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public class Login 
{
private String email;
private String senha;
private String confirmarLogin;
private int cd;

    public String getEmail() 
    {
    return this.email;
    }

    public void setEmail(String email) 
    {
    this.email=email;
    }

    public String getSenha() 
    {
    return this.senha;
    }

    public void setSenha(String senha) 
    {
    this.senha=senha;
    }

    public String getConfirmarLogin() 
    {
    return this.confirmarLogin;
    }

    public void setConfirmarLogin(String confirmarLogin) 
    {
    this.confirmarLogin=confirmarLogin;
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