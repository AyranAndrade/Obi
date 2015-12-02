<%-- 
    Document   : frm_maikel
    Created on : May 2, 2014, 12:34:11 PM
    Author     : Ayran Andrade <ayranandrade@hotmail.com>  
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastre Cupons Manualmente !</title>
    </head>
    <body>
        <form action="cadastroCupomManual" method="post">
            Nome Do Estabelecimento Que Emitiu O Cupom:
            <input type="text" name="nome"/>
            <br/>
            Data Do Cupom:
            <input type="text" method="post"/>
            <br/>
            COO Do Cupom:
            <input type="text" method="post"/>
            <br/>
            Valor Do Cupom:
            <input type="text" method="post"/>
            <br/>
            <input type="submit" value="Doar"/>
        </form>
    </body>
</html>