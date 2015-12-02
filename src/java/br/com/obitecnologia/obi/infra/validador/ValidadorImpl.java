package br.com.obitecnologia.obi.infra.validador;

//import java.util.regex.Pattern;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public class ValidadorImpl implements Validador
{
    @Override
    public boolean isEmailValido(String email) 
    {/*
    return Pattern.compile("^([^\\._0-9\"']{1}[a-z0-9\\.-_]{0,}[^\\._0-9\"']{1}"
    +"[@][^\\.][a-z0-9\\.-_]{0,}(\\.)[a-z0-9\\.-_]{0,}[^\\._'\"-])$")
    .matcher(email).find();*/
    return true;
    }

    @Override
    public boolean isCnpjValido(String cnpj)
    {
      if(cnpj==null || cnpj.trim().equals(""))
      {
      return false;
      }
      if (!cnpj.substring(0,1).equals(""))
      {  
        try
        {  
        cnpj=cnpj.replaceAll("[-./]","");
        int soma=0,dig;  
        String cnpj_calc=cnpj.substring(0,12);  
          if(cnpj.length()!=14)
          {  
          return false;  
          }  
        char[] chr_cnpj=cnpj.toCharArray();  
          for(int i=0;i<4;i++)
          {  
            if(chr_cnpj[i]-48>=0 && chr_cnpj[i]-48<=9)
            {  
            soma+=(chr_cnpj[i]-48)*(6-(i+1));  
            }  
          }  
          for(int i=0;i<8;i++)
          {  
            if(chr_cnpj[i+4]-48>=0 && chr_cnpj[i+4]-48<=9)
            {  
            soma+=(chr_cnpj[i+4]-48)*(10-(i+1));  
            }  
          }  
        dig=11-(soma%11);  
        cnpj_calc+=(dig == 10 || dig == 11) ? "0" : Integer.toString(dig);  
        soma=0;  
          for(int i=0;i<5;i++)
          {  
            if(chr_cnpj[i]-48>=0 && chr_cnpj[i]-48<=9)
            {  
            soma+=(chr_cnpj[i]-48)*(7-(i+1));  
            }  
          }  
          for(int i=0;i<8;i++)
          {  
            if(chr_cnpj[i+5]-48>=0 && chr_cnpj[i+5]-48<=9)
            {  
            soma+=(chr_cnpj[i+5]-48)*(10-(i+1));  
            }  
          }  
        dig=11-(soma%11);  
        cnpj_calc+=(dig==10 || dig==11) ? "0" : Integer.toString(dig);  
        return cnpj.equals(cnpj_calc);  
        }  
        catch (Exception e)
        {  
        return false;  
        }  
      }  
      else
      {  
      return false;  
      }  
    }

    @Override
    public boolean isCnpjValido(long cnpj) 
    {
    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean isCpfValido(String cpf) 
    {
    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean isCpfValido(long cpf) 
    {
    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}