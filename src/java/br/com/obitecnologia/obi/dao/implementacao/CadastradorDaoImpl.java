package br.com.obitecnologia.obi.dao.implementacao;

import br.com.obitecnologia.obi.dao.interfaces.CadastradorDao;
import br.com.obitecnologia.obi.infra.geradorcodigo.GeradorCodigo;
import br.com.obitecnologia.obi.model.implementacao.Cadastrador;
import br.com.obitecnologia.obi.model.implementacao.CadastradorRowMapper;
import java.util.Calendar;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Ayran Andrade <ayranandrade@hotmail.com>
 */
@Repository
public class CadastradorDaoImpl implements CadastradorDao
{
private final GeradorCodigo geradorCodigo;
private final JdbcTemplate jdbcTemplate;

    @Autowired
    public CadastradorDaoImpl(DataSource dataSource,GeradorCodigo geradorCodigo)
    {
    this.geradorCodigo=geradorCodigo;
    this.jdbcTemplate=new JdbcTemplate(dataSource);
    }
    
    @Override
    public void adiciona(Cadastrador t) 
    {
    this.jdbcTemplate.update("insert into tipo values (?,?,?,?,?,?,?,?,?,?,?)",
    new Object[] {this.geradorCodigo.geraIdDaTabela("tipo"),t.getNome(),
    Calendar.getInstance(),true,false,null,null,null,null,t.getLogin().getCd(),
    null});    
    }
    
    @Override
    public void atualiza(Cadastrador t) 
    {
    int cd=0;
      try
      {
      cd=this.jdbcTemplate.queryForObject("select cd_tipo from tipo inner join "
      +"login on tipo.cd_login=login.cd_login where nm_email=?",new Object[]{
      t.getLogin().getEmail()},Integer.class);
      }
      catch(EmptyResultDataAccessException ex)
      {
      //Adiciona Um Interceptador
      System.out.println("Erro No CadastradorDaoImpl Linha 52: "+
      ex.getMessage());    
      }
    this.jdbcTemplate.update("update tipo set nome=?,ic_exibir_ajuda=?,"
    +"ic_excluir_conta=? where cd_tipo=?",new Object[] {t.getNome(),
    t.isExibirAjuda(),t.isExcluirConta(),cd});    
    }

    @Override
    public void deleta(Cadastrador t) 
    {
    }

    @Override
    public String buscaNomePorEmail(String email)
    {
    String res="Usuario";
      try
      {
      res=this.jdbcTemplate.queryForObject("select nome from tipo inner join "
      +"login on tipo.cd_login=login.cd_login where nm_email=?",
      new Object[] {email},String.class);
      }
      catch(EmptyResultDataAccessException ex)
      {
      //Adiciona Um Interceptador
      System.out.println("Erro CadastradorDaoImpl Linha 62 "+ex.getMessage());
      }
    return res;
    }

    @Override
    public Cadastrador buscaPorEmail(String email) 
    {
    Cadastrador t=null;
      try
      {
      t=(Cadastrador)jdbcTemplate.queryForObject("select nome,ic_exibir_ajuda,"
      +"ic_excluir_conta,nm_email,nm_senha from tipo inner join login on "
      +"tipo.cd_login=login.cd_login where nm_email=?",new Object[] {email},
      new CadastradorRowMapper());
      }
      catch(EmptyResultDataAccessException ex)
      {
      //Adiciona Um Interceptador
      System.out.println("Erro CadastradorDaoImpl Linha 80 "+ex.getMessage());
      }
    return t;
    }

    @Override
    public int getTotalCadastrador() 
    {
    return this.jdbcTemplate.queryForObject("select count(*) from tipo where "
    +"cd_entidade is null",Integer.class);
    }
}