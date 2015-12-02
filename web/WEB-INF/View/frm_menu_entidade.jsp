<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Bem-vindo, <c:out value="${nome}"/>!</title>
    </head>
    <body>
        <h2>Bem vindo, <c:out value="${nome}"/>!</h2>
        <a href="mostraAlteracaoEntidade">Alterar Cadastro</a>
        <br/>
        <a href="Doacao_Entidade">Fazer Doações Para Outras Entidades</a>
        <br/>
        <a href="mostraRelatorioEntidade">Relatórios</a>
        <br/>
        <a href="sobre">Sobre</a>
        <br/>
        <a href="sair">Sair</a>
    </body>
</html>