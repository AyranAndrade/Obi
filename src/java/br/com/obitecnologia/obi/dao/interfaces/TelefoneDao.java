package br.com.obitecnologia.obi.dao.interfaces;

import br.com.obitecnologia.obi.model.implementacao.Telefone;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public interface TelefoneDao extends Dao<Telefone>
{

    /**
     *
     * @param telefone
     * @return
     */
    public int buscaCodigoPeloTelefone(Telefone telefone);

    public int atualiza(Telefone telefone, String emailAntigo);
}