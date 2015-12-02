package br.com.obitecnologia.obi.dao.implementacao;

import br.com.obitecnologia.obi.dao.interfaces.DoacaoDinheiroDao;
import br.com.obitecnologia.obi.infra.geradorcodigo.GeradorCodigo;
import br.com.obitecnologia.obi.model.implementacao.DoacaoDinheiro;
import java.util.Calendar;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Ayran Andrade <ayranandrade@hotmail.com>
 */
@Repository
public class DoacaoDinheiroDaoImpl implements DoacaoDinheiroDao
{
private final JdbcTemplate jdbcTemplate; 
private final GeradorCodigo geradorCodigo;

    @Autowired
    public DoacaoDinheiroDaoImpl(DataSource dataSource,
    GeradorCodigo geradorCodigo) 
    {
    this.geradorCodigo=geradorCodigo;
    this.jdbcTemplate=new JdbcTemplate(dataSource);
    }
    
    @Override
    public void adicionaDoacaoIdentificada(DoacaoDinheiro doacaoDinheiro) 
    {
    double valor=Double.parseDouble(doacaoDinheiro.getValorDoacao());
    this.jdbcTemplate.update("insert into doacao values (?,?,?,?,?)",new 
    Object[] {this.geradorCodigo.geraIdDaTabela("doacao"),
    Calendar.getInstance(),valor,null,
    doacaoDinheiro.getCd()});
    }
}