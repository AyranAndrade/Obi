package br.com.obitecnologia.obi.dao.implementacao;

import br.com.obitecnologia.obi.dao.interfaces.LoginDao;
import br.com.obitecnologia.obi.infra.geradorcodigo.GeradorCodigo;
import br.com.obitecnologia.obi.model.implementacao.Login;
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
public class LoginDaoImpl implements LoginDao
{
private final JdbcTemplate jdbcTemplate;
private final GeradorCodigo geradorCodigo;

    @Autowired
    public LoginDaoImpl(DataSource dataSource,GeradorCodigo geradorCodigo)
    {
    this.jdbcTemplate=new JdbcTemplate(dataSource);
    this.geradorCodigo=geradorCodigo;
    }

    @Override
    public int existeUsuario(Login login)
    {
    int i=0;
      try
      {
      i=this.jdbcTemplate.queryForObject("select cd_tipo from login inner "
      +"join tipo on login.cd_login=tipo.cd_login where nm_email=? and "
      +"nm_senha=?",new Object[] {login.getEmail(),login.getSenha()},
      Integer.class);
      }
      catch(EmptyResultDataAccessException ex)
      {
      //Adiciona Um Interceptador    
      }
    return i;
    }

    @Override
    public void adicionaAcesso(int i)
    {
    this.jdbcTemplate.update("insert into acesso values (?,?,?,?)",new Object[] 
    {this.geradorCodigo.geraIdDaTabela("acesso"),
    Calendar.getInstance(),null,i});
    }

    @Override
    public String buscaTipoClientePorLogin(int i)
    {
    String res=null;
      try
      {
        if(this.jdbcTemplate.queryForObject("select cd_entidade from tipo where"
        +" cd_tipo=?",new Object[] {i},Integer.class)==null)
        {
        res="Cadastrador";  
        }
        else
        {
        res="Entidade";    
        }
      }
      catch(EmptyResultDataAccessException ex)
      {
      //Adiciona Um Interceptador    
      }
    return res;
    }

    @Override
    public void adiciona(Login t)
    {
    this.jdbcTemplate.update("insert into login values (?,?,?)",new Object[] 
    {this.geradorCodigo.geraIdDaTabela("login"),t.getEmail(),t.getSenha()});
    }

    @Override
    public void atualiza(Login t) 
    {
    }

    @Override
    public void deleta(Login t) 
    {
    }

    @Override
    public int buscaCodigoPorLogin(Login login) 
    {
    return this.jdbcTemplate.queryForObject("select cd_login from login where "
    +"nm_email=? and nm_senha=?",new Object[] {login.getEmail(),
    login.getSenha()},Integer.class);
    }
    
    @Override
    public boolean existeEmail(String email)
    {
    boolean existe=false;
      try
      {
      existe=this.jdbcTemplate.queryForObject("select cd_login from login where"
      +" nm_email=?",new Object[]{email},Integer.class)!=null;
      }
      catch(EmptyResultDataAccessException ex)
      {
      //Adiciona Um Interceptador    
      }
    return existe;
    }

    @Override
    public int atualiza(Login login, String email)
    {
    int cd=0;
      try
      {
      cd=this.jdbcTemplate.queryForObject("select cd_login from login where "
      +"nm_email=?",new Object[]{email},Integer.class);
      this.jdbcTemplate.update("update login set nm_email=?, nm_senha=? "
      +"where cd_login=?",new Object[] {login.getEmail(),login.getSenha(),cd});
      }
      catch(EmptyResultDataAccessException ex)
      {
      System.out.println("Erro Na Classe LoginDaoImpl Linha 134: "+
      ex.getMessage());
      //Adiciona Um Interceptador    
      }
    return cd;
    }
}