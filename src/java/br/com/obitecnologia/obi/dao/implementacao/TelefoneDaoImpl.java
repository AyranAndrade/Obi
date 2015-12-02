package br.com.obitecnologia.obi.dao.implementacao;

import br.com.obitecnologia.obi.dao.interfaces.TelefoneDao;
import br.com.obitecnologia.obi.infra.geradorcodigo.GeradorCodigo;
import br.com.obitecnologia.obi.model.implementacao.Telefone;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public class TelefoneDaoImpl implements TelefoneDao
{
private final JdbcTemplate jdbcTemplate;
private final GeradorCodigo geradorCodigo;

    @Autowired
    public TelefoneDaoImpl(DataSource dataSource,GeradorCodigo geradorCodigo)
    {
    this.jdbcTemplate=new JdbcTemplate(dataSource);
    this.geradorCodigo=geradorCodigo;
    }
    
    @Override
    public int buscaCodigoPeloTelefone(Telefone telefone)
    {
    int cd=0;
      try
      {
      cd=this.jdbcTemplate.queryForObject("select cd_codigo_telefone from "
      +"telefone where cd_ddd=? and cd_telefone=?",new Object[] 
      {telefone.getDdd(),telefone.getNumeroTelefone()},Integer.class);
      }
      catch(EmptyResultDataAccessException ex)
      {
      //Adiciona Um Interceptador
      System.out.println("Erro TelefoneDaoImpl Linha 40: "+ex.getMessage());
      }
    return cd; 
    }

    @Override
    public void adiciona(Telefone t) 
    {
    this.jdbcTemplate.update("insert into telefone values (?,?,?)",new Object[]
    {this.geradorCodigo.geraIdDaTabela("telefone"),t.getDdd(),
    t.getNumeroTelefone()});
    }

    @Override
    public void atualiza(Telefone t) 
    {
    }

    @Override
    public void deleta(Telefone t) 
    {
    }

    @Override
    public int atualiza(Telefone telefone, String email) 
    {
    int cd=0;
      try
      {
      cd=this.jdbcTemplate.queryForObject("select cd_codigo_telefone from tipo "
      +"inner join login on tipo.cd_login=login.cd_login where nm_email=?",
      new Object[]{email},Integer.class);
      this.jdbcTemplate.update("update telefone set cd_ddd=?,cd_telefone=? where "
      +"cd_codigo_telefone=?",new Object[]{Integer.parseInt(telefone.getDdd()),
      Integer.parseInt(telefone.getNumeroTelefone()),cd});
      }
      catch(EmptyResultDataAccessException ex)
      {
      //Adiciona Um Interceptador
      System.out.println("Erro Na Classe TelefoneDaoImpl Na Linha 74: "+
      ex.getMessage());
      }
    return cd;
    }
}