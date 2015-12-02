<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <head>
        <title>Bem-Vindo À Obi !</title>
        <script>
        function valida()
        {
        var erro2=false,erro;
        nomeEntidade=document.getElementById("nomeEntidade");
        valorDoacao=document.getElementById("valorDoacao");        
          if(nomeEntidade.value==="0")
          {
          erro2=true;
          erro="Selecione Uma Entidade !";
          }
          if(valorDoacao.value==="" || valorDoacao.value.trim()==="")
          {
          erro2=true;
          erro="Selecione Um Valor Para Doacao !";
          }
          if(erro2===false)
          {
          return true;    
          }
        alert(erro);
        return false;
        }
        
        function adiciona(frm)
        {
          if(valida()===false)
          {
          return false; 
          }
          else if(valida()===true)
          {
          valor=document.getElementById("valor");
          nome=document.getElementById("nome");
          nomeEntidade=document.getElementById("nomeEntidade");
          valorDoacao=document.getElementById("valorDoacao");        
          valor.value=valorDoacao.value;
          nome.value="Doacao Para "+nomeEntidade.value;
          frm.submit();
          }
        }
        </script>
    </head>
    <body>
        <h1>Obi Tecnologia</h1>
        <form action="entrar" method="post">
            Email: <input type="text" name="email"/>
            <form:errors path="login.email" cssStyle="color:red"/> 
            <br/>
            Senha: <input type="password" name="senha"/>
            <form:errors path="login.senha" cssStyle="color:red"/> 
            <br/>
            <input type="submit" value="Acessar"/>
            <c:out value="${erro_login}"/>
        </form>
        <fieldset>
            Doar Dinheiro De Forma Anonima
            <form action="doarDinheiro"
            method="post" onsubmit="adiciona(this); return false;">
            Selecione O Nome Da Entidade:
        <select name="nomeEntidade" id="nomeEntidade">
        <option selected="selected" value="0">Selecione...</option>            
            <c:forEach var="lista" items="${entidade}">
            <option value="${lista.nome}">${lista.nome}</option>
            </c:forEach>
        </select>
            <br/>
            Digite O Valor Da Doacao:
            <input type="text" name="valorDoacao" id="valorDoacao"/>
            <br/>
                <input type="hidden" name="cmd" value="_xclick" />
    <!--Vendedor e URL de retorno, cancelamento e notificação-->
    <input type="hidden" name="business" value="obitecnologia@outlook.com" />
    <input type="hidden" name="return" value="http://loja.com.br/retorno" />
    <input type="hidden" name="cancel" value="http://loja.com.br/cancelamento" />
    <input type="hidden" name="notify_url" value="http://loja.com.br/notificacao" />
 
    <!--Internacionalização e localização da página de pagamento-->
    <input type="hidden" name="charset" value="utf-8" />
    <input type="hidden" name="lc" value="BR" />
    <input type="hidden" name="country_code" value="BR" />
    <input type="hidden" name="currency_code" value="BRL" />
 
    <!--Informações sobre o produto e seu valor-->
    <input type="hidden" name="amount" id="valor" value="" />
    <input type="hidden" name="item_name" id="nome" value="" />
    <input type="hidden" name="quantity" value="1" />
            <input type="submit" value="Doar"/>
    <!-- PayPal Logo -->
    <img  src="https://www.paypal-brasil.com.br/logocenter/util/img/selo_aceitacao_horizontal.png" border="0" alt="Imagens de solução"/>
            <c:out value="${erro_doacao}"/>
            </form>
        </fieldset>
        <br/>
        <a href="cadastroCadastrador">Cadastrar Voluntario</a>
        <a href="cadastroEntidade">Cadastrar Entidade Social</a>
        <br/>
        Número De Entidades Utilizando Este Site: <c:out value="${numero}"/> 
        <br/>
        Número De Voluntários Utilizando Este Site:
        <c:out value="${numeroCadastrador}"/>
    </body>
</html>