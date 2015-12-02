package br.com.obitecnologia.obi.dao.implementacao;

import br.com.obitecnologia.obi.dao.interfaces.EntidadeDao;
import br.com.obitecnologia.obi.infra.geradorcodigo.GeradorCodigo;
import br.com.obitecnologia.obi.model.implementacao.Entidade;
import br.com.obitecnologia.obi.model.implementacao.EntidadeRowMapper;
import java.util.Calendar;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Ayran Andrade <ayranandrade@hotmail.com>
 */
public class EntidadeDaoImpl implements EntidadeDao
{
private final JdbcTemplate jdbcTemplate;
private final GeradorCodigo geradorCodigo;

    public EntidadeDaoImpl(DataSource dataSource,GeradorCodigo geradorCodigo) 
    {
    this.jdbcTemplate=new JdbcTemplate(dataSource);
    this.geradorCodigo=geradorCodigo;
    }

    @Override
    public void adiciona(Entidade t)
    {
    int entidade=adicionaEntidade(t);
    this.jdbcTemplate.update("insert into tipo values (?,?,?,?,?,?,?,?,?,?,?)",
    new Object[] {this.geradorCodigo.geraIdDaTabela("tipo"),t.getNome(),
    Calendar.getInstance(),true,false,null,entidade,null,t.getEndereco().getCd()
    ,t.getLogin().getCd(),t.getTelefone().getCd()});
    }

    @Override
    public void atualiza(Entidade t) 
    {
    int cd=0;
      try
      {
      cd=this.jdbcTemplate.queryForObject("select cd_tipo from tipo inner "
      +"join login on tipo.cd_login=login.cd_login where nm_email=?",new 
      Object[] {t.getLogin().getEmail()},Integer.class);
      this.jdbcTemplate.update("update tipo set nome=?,ic_exibir_ajuda=?,"
      +"ic_excluir_conta=? where cd_tipo=?",new Object[]{t.getNome(),
      t.isExibirAjuda(),t.isExcluirConta(),cd});
      int entidade=this.jdbcTemplate.queryForObject("select cd_entidade from "
      +"tipo where cd_tipo=?",new Object[]{cd},Integer.class);
      this.jdbcTemplate.update("update entidade set cd_cpf_entidade=?,"
      +"cd_cnpj_entidade=? where cd_entidade=?",new Object[]{t.getCpf(),
      t.getCnpj(),entidade});
      }
      catch(EmptyResultDataAccessException ex)
      {
      //Adiciona Um Interceptador
      System.out.println("Erro Na Classe EntidadeDaoImpl Na Linha 49: "+
      ex.getMessage());
      }
    }

    @Override
    public void deleta(Entidade t) 
    {
    }

    @Override
    public List<Entidade> getListaNomeIdEntidade() 
    {
    List<Entidade> entidades=this.jdbcTemplate.query("select nome from tipo "
    +"where cd_entidade is not null",new BeanPropertyRowMapper(Entidade.class));
    return entidades;
    }

    @Override
    public int getTotalEntidade() 
    {
    return this.jdbcTemplate.queryForObject("select count(*) from tipo where "
    +"cd_entidade is not null",Integer.class);
    }

    @Override
    public int buscaIdEntidadeNome(String cdEntidade) 
    {
    return this.jdbcTemplate.queryForObject("select cd_entidade from tipo where"
    +" nome=?",new Object[] {cdEntidade}, Integer.class);
    }

    @Override
    public String buscaNomePorEmail(String email) 
    {
    String res="Entidade";
      try
      {
      res=this.jdbcTemplate.queryForObject("select nome from tipo inner join "
      +"login on tipo.cd_login=login.cd_login where nm_email=?",new Object[] 
      {email},String.class);
      }
      catch(EmptyResultDataAccessException ex)
      {
      //Adiciona Um Interceptador
      System.out.println("Erro EntidadeDaoImpl Linha 77  Email: "+email+" "+
      ex.getMessage());
      }
    return res;
    }

    private int adicionaEntidade(Entidade t) 
    {
    int cd=this.geradorCodigo.geraIdDaTabela("entidade");
    this.jdbcTemplate.update("insert into entidade values (?,?,?)",
    new Object[] {cd,
    Long.parseLong(t.getCpf()),Long.parseLong(t.getCnpj())});
    return cd;
    }

    @Override
    public Entidade buscaPorEmail(String email)
    {
    Entidade t=null;
      try
      {
      t=(Entidade)jdbcTemplate.queryForObject("select nome,ic_exibir_ajuda,"
      +"ic_excluir_conta,nm_email,nm_senha,cd_ddd,cd_telefone,cd_cpf_entidade,"
      +"cd_cnpj_entidade,nm_endereco,cd_numero_endereco,nm_complemento_endereco"
      +",nm_bairro from tipo inner join login on "
      +"tipo.cd_login=login.cd_login inner join telefone on "
      +"tipo.cd_codigo_telefone=telefone.cd_codigo_telefone inner join endereco"
      +" on tipo.cd_endereco=endereco.cd_endereco inner join bairro on "
      +"endereco.cd_bairro=bairro.cd_bairro inner join entidade on "
      +"tipo.cd_entidade=entidade.cd_entidade where nm_email=?",new Object[] 
      {email},new EntidadeRowMapper());
      }
      catch(EmptyResultDataAccessException ex)
      {
      //Adiciona Um Interceptador
      System.out.println("Erro EntidadeDaoImpl Linha 113 "+ex.getMessage());
      }
    return t;
    }
}