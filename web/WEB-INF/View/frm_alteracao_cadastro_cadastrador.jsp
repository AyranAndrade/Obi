<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <head>
        <title>
            Seja Solidário! Doe Cupons Para As Entidades Sociais!
        </title>
        <script>
        function validaTudo()
        {
        return true;
        }
        function validaSenha()
        {
        senha=document.getElementById("senha");
        senhaLogin=document.getElementById("confirmarLogin");
          if(senha.value!==senhaLogin.value)
          {
          alert("As Senhas Sao Diferentes !");
          return false; 
          }
        return true;
        }
        function valida(frm)
        {
          if(validaTudo()===false)
          {
          return false;    
          }
          if(validaSenha()===false)
          {
          return false;
          }
        frm.submit();
        }
        </script>        
    </head>
    <body>
        <form action="alteracaoCadastrador" method="post" 
        onsubmit="valida(this); return false;">
            <b>nome</b>
            <input type="text" name="nome" value="${cadastrador.nome}"/>
            <form:errors path="cadastrador.nome" cssStyle="color:red"/>
            <br/>
            <b>Email:</b>
            <input type="text" name="email" value="${cadastrador.login.email}"/>
            <form:errors path="login.email" cssStyle="color:red"/>            
            <br/>
            <b>Senha:</b>
            <input type="password" id="senha" name="senha"/>
            <form:errors path="login.senha" cssStyle="color:red"/>            
            <br/>
            <b>Confirmar senha:</b>
            <input type="password" id="confirmarLogin" name="confirmarLogin"/>
            <form:errors path="login.confirmarLogin" cssStyle="color:red"/>            
            <br/>
            <input type="checkbox" name="novidade" checked="checked"/>
            Desejo receber novidades e informações sobre o conteúdo deste site.
            <br/>
            <input type="checkbox" name="excluirConta"
                   value="${cadastrador.excluirConta}"/>
            Desejo excluir a minha conta neste site.
            <br/>
            <input type="checkbox" name="exibirAjuda"
                   value="${cadastrador.exibirAjuda}"/>
            Desejo exibir ajuda enquanto estiver neste site.
            <br/>
            <c:out value="${erro}"/>
            <c:out value="${sucesso}"/>
            <br/>
            <input type="submit" value="Alterar Cadastro"/>
            <input type="reset" value="Limpar"/>
        </form>
    </body>
</html>