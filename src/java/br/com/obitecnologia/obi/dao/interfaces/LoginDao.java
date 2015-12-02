package br.com.obitecnologia.obi.dao.interfaces;

import br.com.obitecnologia.obi.model.implementacao.Login;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public interface LoginDao extends Dao<Login>
{

    /**
     *
     * @param login
     * @return
     */
    public int existeUsuario(Login login);

    /**
     *
     * @param i
     */
    public void adicionaAcesso(int i);

    /**
     *
     * @param i
     * @return
     */
    public String buscaTipoClientePorLogin(int i);

    /**
     *
     * @param login
     * @return
     */
    public int buscaCodigoPorLogin(Login login);
    
    /**
     *
     * @param email
     * @return
     */
    boolean existeEmail(String email);

    public int atualiza(Login login, String email);
}