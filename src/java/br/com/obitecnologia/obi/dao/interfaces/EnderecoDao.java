package br.com.obitecnologia.obi.dao.interfaces;

import br.com.obitecnologia.obi.model.implementacao.Endereco;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public interface EnderecoDao extends Dao<Endereco>
{

    /**
     *
     * @param endereco
     * @return
     */
    public int buscaCodigoPorEndereco(Endereco endereco);

    public int atualiza(Endereco endereco, String emailAntigo);
}