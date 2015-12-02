<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Bem-vindo(a), <c:out value="${nome}"/>!</title>
    </head>
    <body>
        <h2>Bem vindo, <c:out value="${nome}"/></h2>
        <form action="Cadastro_Cupom" method="post" enctype="multipart/form-data">
            imagens dos cupons fiscais
            <input type="file" name="file[]" multiple>
            <br/>
            <input type="submit" value="Continuar"/>
            <c:out value="${erro}"/>
        </form> 
        <a href="doarDinheiro">Doar Dinheiro Para Entidades</a>
        <br/>
        <a href="mostraAlteracaoCadastrador">Alterar Cadastro</a>
        <br/>
        <a href="mostraRelatorioCadastrador">Estatísticas Dos Cupons Doados</a>
        <br/>
        <a href="sobre">Sobre</a>
        <br/>
        <a href="sair">Sair do sistema</a>
    </body>
</html>