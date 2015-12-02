package br.com.obitecnologia.obi.dao.implementacao;

import br.com.obitecnologia.obi.dao.interfaces.Dao;
import br.com.obitecnologia.obi.infra.geradorcodigo.GeradorCodigo;
import br.com.obitecnologia.obi.model.implementacao.Cupom;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Ayran Andrade <ayranandrade@hotmail.com>
 */
public class CupomDaoImpl implements Dao<Cupom>
{
private final GeradorCodigo geradorCodigo;
private final JdbcTemplate jdbcTemplate;

    public CupomDaoImpl(DataSource dataSource,GeradorCodigo geradorCodigo) 
    {
    this.geradorCodigo=geradorCodigo;
    this.jdbcTemplate=new JdbcTemplate(dataSource);
    }
    
    @Override
    public void adiciona(Cupom t) 
    {
    }

    @Override
    public void atualiza(Cupom t) 
    {
    }

    @Override
    public void deleta(Cupom t) 
    {
    }
}