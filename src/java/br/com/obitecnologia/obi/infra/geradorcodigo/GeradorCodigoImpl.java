package br.com.obitecnologia.obi.infra.geradorcodigo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Ayran Andrade <ayranandrade@hotmail.com>
 */
@Repository
public class GeradorCodigoImpl implements GeradorCodigo
{
private Connection c;    
    
    @Autowired
    public GeradorCodigoImpl(DataSource dataSource)
    {
      try
      {    
      this.c=dataSource.getConnection();
      }
      catch (SQLException ex) 
      {
      }
    }
    
    @Override
    public int geraIdDaTabela(String tabela) 
    {
    int i=criaChave();
      while(existeChave(tabela,i))
      {
      i=criaChave();    
      }
    return i;
    }

    @Override
    public String geraNomeDeArquivo() 
    {
    Random g=new Random();
    List a=new ArrayList();
    int b;
    String d="";
    a.add("a");
    a.add("b");
    a.add("c");
    a.add("d");
    a.add("e");
    a.add("f");
    a.add("g");
    a.add("h");
    a.add("i");
    a.add("j");
    a.add("k");
    a.add("l");
    a.add("m");
    a.add("n");
    a.add("o");
    a.add("p");
    a.add("q");
    a.add("r");
    a.add("s");
    a.add("t");
    a.add("u");
    a.add("v");
    a.add("x");
    a.add("y");
    a.add("z");
    a.add("w");
    a.add("A");
    a.add("B");
    a.add("C");
    a.add("D");
    a.add("E");
    a.add("F");
    a.add("G");
    a.add("H");
    a.add("I");
    a.add("J");
    a.add("K");
    a.add("L");
    a.add("M");
    a.add("N");
    a.add("O");
    a.add("P");
    a.add("Q");
    a.add("R");
    a.add("S");
    a.add("T");
    a.add("U");
    a.add("V");
    a.add("X");
    a.add("Y");
    a.add("Z");
    a.add("W");
    a.add("1");
    a.add("2");
    a.add("3");
    a.add("4");
    a.add("5");
    a.add("6");
    a.add("7");
    a.add("8");
    a.add("9");
    a.add("0");
      do
      {
      b=g.nextInt(21);
      }
      while (b<5);
      for (int i=0;i<b;i++)
      {
      d=d+a.get(g.nextInt(a.size()));
      }
    a.clear();
    return d;
    }
    
    private boolean existeChave(String tabela,int chave)
    {
    boolean achei=false;
      try(PreparedStatement stmt=this.c.prepareStatement
      ("select cd_"+tabela+" from "+tabela+" where cd_"+tabela+"=?"))
      {
      stmt.setInt(1,chave);
        try(ResultSet rs=stmt.executeQuery())
        {
          if(rs.next())
          {
          achei=true;
          }
        }
      }
      catch(SQLException ex)
      {
      }
    return achei;        
    }
    
    private int criaChave()
    {
    Random g=new Random();
    List a=new ArrayList();
    int b;
    String d;
      do
      {
      d="";
      a.add("1");
      a.add("2");
      a.add("3");
      a.add("4");
      a.add("5");
      a.add("6");
      a.add("7");
      a.add("8");
      a.add("9");
      a.add("0");
        do
        {
        b=g.nextInt(11);
        }
        while (b==0);
        for (int i=0;i<b;i++)
        {
        d=d+a.get(g.nextInt(a.size()));
        }
      a.clear();
      }
      while(Long.parseLong(d)>2147483647 || Long.parseLong(d)==0);
    return Integer.parseInt(d);        
    }    
}