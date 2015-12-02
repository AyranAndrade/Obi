package br.com.obitecnologia.obi.interceptador;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter
{
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object controller)
    throws Exception
    {
    String uri=request.getRequestURI();
      if(uri.endsWith("Inicio") || uri.endsWith("Entidade_Aleatoria") 
      || uri.endsWith("Doar_Dinheiro") || uri.endsWith("Cadastro_Anunciante")        
      || uri.endsWith("Confirmacao_Email_Anunciante") || uri.endsWith("Confirma_Anunciante")
      || uri.endsWith("Confirma_Cadastrador") || uri.endsWith("Confirmacao_Email_Cadastrador")
      || uri.endsWith("Valida_Email") || uri.endsWith("Confirmacao_Email")
      || uri.endsWith("Cadastro_Entidade") || uri.endsWith("Confirmacao_Email_Entidade")
      || uri.endsWith("Confirma_Entidade") || uri.endsWith("Cadastro_Cadastrador")
      || uri.endsWith("Login"))
      {
      return true;
      }
      if(request.getSession().getAttribute("UsuarioLogado")!=null)
      {
      return true;
      }
    response.sendRedirect("Inicio");
    return false;
    }
}