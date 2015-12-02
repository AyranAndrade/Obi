package br.com.obitecnologia.obi.dao.implementacao;

import br.com.obitecnologia.obi.dao.interfaces.EnderecoDao;
import br.com.obitecnologia.obi.infra.geradorcodigo.GeradorCodigo;
import br.com.obitecnologia.obi.model.implementacao.Endereco;
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
public class EnderecoDaoImpl implements EnderecoDao
{
private final JdbcTemplate jdbcTemplate;
private final GeradorCodigo geradorCodigo;
 
    @Autowired
    public EnderecoDaoImpl(DataSource dataSource,GeradorCodigo geradorCodigo)
    {
    this.jdbcTemplate=new JdbcTemplate(dataSource);
    this.geradorCodigo=geradorCodigo;
    }

    @Override
    public void adiciona(Endereco t)
    {
    int cidade=buscaCidade(t.getEstado(),t.getCidade());
    int bairro=adicionaBairro(t,cidade);
    adicionaEndereco(t,bairro);
    }

    @Override
    public void atualiza(Endereco t) 
    {
    }

    @Override
    public void deleta(Endereco t) 
    {
    }

    @Override
    public int buscaCodigoPorEndereco(Endereco endereco)
    {
    int cd=0;
      try
      {
      cd=this.jdbcTemplate.queryForObject("select cd_endereco from endereco "
      +"inner join bairro on endereco.cd_bairro=bairro.cd_bairro inner join "
      +"cidade on bairro.cd_cidade=cidade.cd_cidade inner join estado on "
      +"cidade.cd_estado=estado.cd_estado where nm_estado=? and nm_cidade=? and"
      +" nm_bairro=? and nm_endereco=? and cd_numero_endereco=? and "
      +"nm_complemento_endereco=?",new Object[]{endereco.getEstado(),
      endereco.getCidade(),endereco.getBairro(),endereco.getRua(),
      endereco.getNumero(),endereco.getComplemento()},Integer.class);
      }
      catch(EmptyResultDataAccessException ex)
      {
      //Adiciona Um Interceptador
      System.out.println("Erro EnderecoDaoImpl Linha 59 "+ex.getMessage());
      }
    return cd;
    }

    private int buscaCidade(String estado, String cidade) 
    {
    return this.jdbcTemplate.queryForObject("select cd_cidade from cidade inner"
    +" join estado on cidade.cd_estado=estado.cd_estado where nm_estado=? and "
    +"nm_cidade=?",new Object[] {estado,cidade},Integer.class);
    }

    private int adicionaBairro(Endereco t, int cidade)
    {
    int id=this.geradorCodigo.geraIdDaTabela("bairro");
    this.jdbcTemplate.update("insert into bairro values (?,?,?)",new Object[] 
    {id,t.getBairro(),cidade});
    return id;
    }

    private int adicionaEndereco(Endereco t, int bairro) 
    {
    int id=this.geradorCodigo.geraIdDaTabela("endereco");
    this.jdbcTemplate.update("insert into endereco values (?,?,?,?,?)",
    new Object[] {id,t.getRua(),t.getNumero(),t.getComplemento(),bairro});
    return id;
    }

    @Override
    public int atualiza(Endereco endereco, String email)
    {
    int cd=0;
      try
      {
      cd=this.jdbcTemplate.queryForObject("select cd_endereco from tipo inner "
      +"join login on tipo.cd_login=login.cd_login where nm_email=?",
      new Object[]{email},Integer.class);
      this.jdbcTemplate.update("update endereco set nm_endereco=?,"
      +"cd_numero_endereco=?,nm_complemento_endereco=? where cd_endereco=?",
      new Object[]{endereco.getRua(),endereco.getNumero(),
      endereco.getComplemento(),cd});
      int bairro=this.jdbcTemplate.queryForObject("select cd_bairro from "
      +"endereco where cd_endereco=?",new Object[]{cd},Integer.class);
      int cidade=this.jdbcTemplate.queryForObject("select cd_cidade from cidade"
      +" where nm_cidade=?",new Object[]{endereco.getCidade()},Integer.class);
      this.jdbcTemplate.update("update bairro set nm_bairro=?,cd_cidade=? where"
      +" cd_bairro=?",new Object[]{endereco.getBairro(),cidade,bairro});
      }
      catch(EmptyResultDataAccessException ex)
      {
      //Adiciona Um Interceptador
      System.out.println("Erro No EnderecoDaoImpl Linha 104: "+ex.getMessage());
      }
    return cd;
    }
}