package br.com.obitecnologia.obi.dao.interfaces;

import br.com.obitecnologia.obi.model.implementacao.Cadastrador;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public interface CadastradorDao extends Dao<Cadastrador>
{

    /**
     *
     * @param email
     * @return
     */
    public String buscaNomePorEmail(String email);

    public Cadastrador buscaPorEmail(String string);

    public int getTotalCadastrador();
}