package br.com.obitecnologia.obi.dao.interfaces;

import br.com.obitecnologia.obi.model.implementacao.Entidade;
import java.util.List;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public interface EntidadeDao extends Dao<Entidade>
{

    /**
     *
     * @return
     */
    public List<Entidade> getListaNomeIdEntidade(); 

    /**
     *
     * @return
     */
    public int getTotalEntidade();
    
    /**
     *
     * @param cdEntidade
     * @return
     */
    public int buscaIdEntidadeNome(String cdEntidade);
    
    /**
     *
     * @param email
     * @return
     */
    public String buscaNomePorEmail(String email);

    public Entidade buscaPorEmail(String string);
}