<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <head>
        <title>Cadastre A Sua Entidade Na Obi !</title>
        <script>
        function validaTudo()
        {
        cidade=document.getElementById("cidade");
          if(cidade.value==="Selecione")
          {
          return false;    
          }
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
        <form action="adicionaCadastroEntidade" method="post"
        onsubmit="valida(this); return false;">
            <b>Nome da entidade:</b>
            <input type="text" name="nome" value="${entidade.nome}"/>
        <form:errors path="entidade.nome" cssStyle="color:red"/>            
        <br/>
            <b>CNPJ da entidade:</b>
            <input type="text" name="cnpj" value="${entidade.cnpj}"/>
        <form:errors path="entidade.cnpj" cssStyle="color:red"/>            
        <br/>            
            <b>CPF cadastrado no Nota Fiscal Paulista:</b>
            <input type="text" name="cpf" value="${entidade.cpf}"/>
        <form:errors path="entidade.cpf" cssStyle="color:red"/>            
        <br/>            
            <b>Email valido para login:</b>
            <input type="text" name="email" value="${entidade.login.email}"/>
        <form:errors path="login.email" cssStyle="color:red"/>            
        <br/>            
            <b>Senha para acesso</b>
            <input type="password" id="senha" name="senha"
                   value="${entidade.login.senha}"/>
        <form:errors path="login.senha" cssStyle="color:red"/>            
        <br/>            
            <b>Confirmar senha:</b>
            <input type="password" id="confirmarSenha" name="confirmarLogin"
                    value="${entidade.login.confirmarLogin}"/>
        <form:errors path="login.confirmarLogin" cssStyle="color:red"/>            
        <br/>
        <b>DDD:</b>
        <input type="text" name="ddd" value="${entidade.telefone.ddd}"/>
        <form:errors path="telefone.ddd" cssStyle="color:red"/>            
        <b>Telefone:</b>
        <input type="text" name="numeroTelefone" 
               value="${entidade.telefone.numeroTelefone}"/>
        <form:errors path="telefone.numeroTelefone" cssStyle="color:red"/>            
        <br/>
        <b>Endereco da rua da Entidade:</b>
        <input type="text" name="rua" value="${entidade.endereco.rua}"/>
        <form:errors path="endereco.rua" cssStyle="color:red"/>            
        <br/>
        <b>Numero da casa:</b>
        <input type="text" name="numero" value="${entidade.endereco.numero}"/>
        <form:errors path="endereco.numero" cssStyle="color:red"/>            
        <br/>
        <b>Bairro da entidade:</b>
        <input type="text" name="bairro" value="${entidade.endereco.bairro}"/>
        <form:errors path="endereco.bairro" cssStyle="color:red"/>            
        <br/>        
        <b>Complemento:</b>
        <input type="text" name="complemento" 
               value="${entidade.endereco.complemento}"/>
        <form:errors path="endereco.complemento" cssStyle="color:red"/>            
        <br/>
            <b>estado</b>
            <select name="estado">
            <option value="Sao Paulo" selected="selected">São Paulo</option>
            </select>            
        <form:errors path="endereco.estado" cssStyle="color:red"/>            
        <br/>            
            <b>cidade</b>
<select name="cidade" id="cidade">
    <option value="Selecione" selected="selected">Selecione...</option>
<option value="Adamantina">Adamantina</option>
<option value="Adolfo">Adolfo</option>
<option value="Aguai">Aguaí</option>
<option value="Aguas da Prata">Águas da Prata</option>
<option value="Aguas de Lindoia">Águas de Lindóia</option>
<option value="Aguas de Santa Barbara">Águas de Santa Bárbara</option>
<option value="Aguas de Sao Pedro">Águas de São Pedro</option>
<option value="Agudos">Agudos</option>
<option value="Alambari">Alambari</option>
<option value="Alfredo Marcondes">Alfredo Marcondes</option>
<option value="Altair">Altair</option>
<option value="Altinopolis">Altinópolis</option>
<option value="Alto Alegre">Alto Alegre</option>
<option value="Aluminio">Alumínio</option>
<option value="Alvares Florence">Álvares Florence</option>
<option value="Alvares Machado">Álvares Machado</option>
<option value="Alvaro de Carvalho">Álvaro de Carvalho</option>
<option value="Alvinlandia">Alvinlândia</option>
<option value="Americana">Americana</option>
<option value="Americo Brasiliense">Américo Brasiliense</option>
<option value="Americo de Campos">Américo de Campos</option>
<option value="Amparo">Amparo</option>
<option value="Analandia">Analândia</option>
<option value="Andradina">Andradina</option>
<option value="Angatuba">Angatuba</option>
<option value="Anhembi">Anhembi</option>
<option value="Anhumas">Anhumas</option>
<option value="Aparecida">Aparecida</option>
<option value="Aparecida d`Oeste">Aparecida d`Oeste</option>
<option value="Apiai">Apiaí</option>
<option value="Aracariguama">Araçariguama</option>
<option value="Aracatuba">Araçatuba</option>
<option value="Aracoiaba da Serra">Araçoiaba da Serra</option>
<option value="Aramina">Aramina</option>
<option value="Arandu">Arandu</option>
<option value="Arapei">Arapeí</option>
<option value="Araraquara">Araraquara</option>
<option value="Araras">Araras</option>
<option value="Arco-Iris">Arco-Íris</option>
<option value="Arealva">Arealva</option>
<option value="Areias">Areias</option>
<option value="Areiopolis">Areiópolis</option>
<option value="Ariranha">Ariranha</option>
<option value="Artur Nogueira">Artur Nogueira</option>
<option value="Aruja">Arujá</option>
<option value="Aspasia">Aspásia</option>
<option value="Assis">Assis</option>
<option value="Atibaia">Atibaia</option>
<option value="Auriflama">Auriflama</option>
<option value="Avai">Avaí</option>
<option value="Avanhandava">Avanhandava</option>
<option value="Avare">Avaré</option>
<option value="Bady Bassitt">Bady Bassitt</option>
<option value="Balbinos">Balbinos</option>
<option value="Balsamo">Bálsamo</option>
<option value="Bananal">Bananal</option>
<option value="Barao de Antonina">Barão de Antonina</option>
<option value="Barbosa">Barbosa</option>
<option value="Bariri">Bariri</option>
<option value="Barra Bonita">Barra Bonita</option>
<option value="Barra do Chapeu">Barra do Chapéu</option>
<option value="Barra do Turvo">Barra do Turvo</option>
<option value="Barretos">Barretos</option>
<option value="Barrinha">Barrinha</option>
<option value="Barueri">Barueri</option>
<option value="Bastos">Bastos</option>
<option value="Batatais">Batatais</option>
<option value="Bauru">Bauru</option>
<option value="Bebedouro">Bebedouro</option>
<option value="Bento de Abreu">Bento de Abreu</option>
<option value="Bernardino de Campos">Bernardino de Campos</option>
<option value="Bertioga">Bertioga</option>
<option value="Bilac">Bilac</option>
<option value="Birigui">Birigui</option>
<option value="Biritiba-Mirim">Biritiba-Mirim</option>
<option value="Boa Esperanca do Sul">Boa Esperança do Sul</option>
<option value="Bocaina">Bocaina</option>
<option value="Bofete">Bofete</option>
<option value="Boituva">Boituva</option>
<option value="Bom Jesus dos Perdoes">Bom Jesus dos Perdões</option>
<option value="Bom Sucesso de Itarare">Bom Sucesso de Itararé</option>
<option value="Bora">Borá</option>
<option value="Boraceia">Boracéia</option>
<option value="Borborema">Borborema</option>
<option value="Borebi">Borebi</option>
<option value="Botucatu">Botucatu</option>
<option value="Braganca Paulista">Bragança Paulista</option>
<option value="Brauna">Braúna</option>
<option value="Brejo Alegre">Brejo Alegre</option>
<option value="Brodowski">Brodowski</option>
<option value="Brotas">Brotas</option>
<option value="Buri">Buri</option>
<option value="Buritama">Buritama</option>
<option value="Buritizal">Buritizal</option>
<option value="Cabralia Paulista">Cabrália Paulista</option>
<option value="Cabreuva">Cabreúva</option>
<option value="Cacapava">Caçapava</option>
<option value="Cachoeira Paulista">Cachoeira Paulista</option>
<option value="Caconde">Caconde</option>
<option value="Cafelandia">Cafelândia</option>
<option value="Caiabu">Caiabu</option>
<option value="Caieiras">Caieiras</option>
<option value="Caiua">Caiuá</option>
<option value="Cajamar">Cajamar</option>
<option value="Cajati">Cajati</option>
<option value="Cajobi">Cajobi</option>
<option value="Cajuru">Cajuru</option>
<option value="Campina do Monte Alegre">Campina do Monte Alegre</option>
<option value="Campinas">Campinas</option>
<option value="Campo Limpo Paulista">Campo Limpo Paulista</option>
<option value="Campos do Jordao">Campos do Jordão</option>
<option value="Campos Novos Paulista">Campos Novos Paulista</option>
<option value="Cananeia">Cananéia</option>
<option value="Canas">Canas</option>
<option value="Candido Mota">Cândido Mota</option>
<option value="Candido Rodrigues">Cândido Rodrigues</option>
<option value="Canitar">Canitar</option>
<option value="Capao Bonito">Capão Bonito</option>
<option value="Capela do Alto">Capela do Alto</option>
<option value="Capivari">Capivari</option>
<option value="Caraguatatuba">Caraguatatuba</option>
<option value="Carapicuiba">Carapicuíba</option>
<option value="Cardoso">Cardoso</option>
<option value="Casa Branca">Casa Branca</option>
<option value="Cassia dos Coqueiros">Cássia dos Coqueiros</option>
<option value="Castilho">Castilho</option>
<option value="Catanduva">Catanduva</option>
<option value="Catigua">Catiguá</option>
<option value="Cedral">Cedral</option>
<option value="Cerqueira Cesar">Cerqueira César</option>
<option value="Cerquilho">Cerquilho</option>
<option value="Cesario Lange">Cesário Lange</option>
<option value="Charqueada">Charqueada</option>
<option value="Chavantes">Chavantes</option>
<option value="Clementina">Clementina</option>
<option value="Colina">Colina</option>
<option value="Colombia">Colômbia</option>
<option value="Conchal">Conchal</option>
<option value="Conchas">Conchas</option>
<option value="Cordeiropolis">Cordeirópolis</option>
<option value="Coroados">Coroados</option>
<option value="Coronel Macedo">Coronel Macedo</option>
<option value="Corumbatai">Corumbataí</option>
<option value="Cosmopolis">Cosmópolis</option>
<option value="Cosmorama">Cosmorama</option>
<option value="Cotia">Cotia</option>
<option value="Cravinhos">Cravinhos</option>
<option value="Cristais Paulista">Cristais Paulista</option>
<option value="Cruzalia">Cruzália</option>
<option value="Cruzeiro">Cruzeiro</option>
<option value="Cubatao">Cubatão</option>
<option value="Cunha">Cunha</option>
<option value="Descalvado">Descalvado</option>
<option value="Diadema">Diadema</option>
<option value="Dirce Reis">Dirce Reis</option>
<option value="Divinolandia">Divinolândia</option>
<option value="Dobrada">Dobrada</option>
<option value="Dois Corregos">Dois Córregos</option>
<option value="Dolcinopolis">Dolcinópolis</option>
<option value="Dourado">Dourado</option>
<option value="Dracena">Dracena</option>
<option value="Duartina">Duartina</option>
<option value="Dumont">Dumont</option>
<option value="Echapora">Echaporã</option>
<option value="Eldorado">Eldorado</option>
<option value="Elias Fausto">Elias Fausto</option>
<option value="Elisiario">Elisiário</option>
<option value="Embauba">Embaúba</option>
<option value="Embu">Embu</option>
<option value="Embu-Guacu">Embu-Guaçu</option>
<option value="Emilianopolis">Emilianópolis</option>
<option value="Engenheiro Coelho">Engenheiro Coelho</option>
<option value="Espirito Santo do Pinhal">Espírito Santo do Pinhal</option>
<option value="Espirito Santo do Turvo">Espírito Santo do Turvo</option>
<option value="Estiva Gerbi">Estiva Gerbi</option>
<option value="Estrela d`Oeste">Estrela d`Oeste</option>
<option value="Estrela do Norte">Estrela do Norte</option>
<option value="Euclides da Cunha Paulista">Euclides da Cunha Paulista</option>
<option value="Fartura">Fartura</option>
<option value="Fernando Prestes">Fernando Prestes</option>
<option value="Fernandopolis">Fernandópolis</option>
<option value="Fernao">Fernão</option>
<option value="Ferraz de Vasconcelos">Ferraz de Vasconcelos</option>
<option value="Flora Rica">Flora Rica</option>
<option value="Floreal">Floreal</option>
<option value="Florida Paulista">Flórida Paulista</option>
<option value="Florinia">Florínia</option>
<option value="Franca">Franca</option>
<option value="Francisco Morato">Francisco Morato</option>
<option value="Franco da Rocha">Franco da Rocha</option>
<option value="Gabriel Monteiro">Gabriel Monteiro</option>
<option value="Galia">Gália</option>
<option value="Garca">Garça</option>
<option value="Gastao Vidigal">Gastão Vidigal</option>
<option value="Gaviao Peixoto">Gavião Peixoto</option>
<option value="General Salgado">General Salgado</option>
<option value="Getulina">Getulina</option>
<option value="Glicerio">Glicério</option>
<option value="Guaicara">Guaiçara</option>
<option value="Guaimbe">Guaimbê</option>
<option value="Guaira">Guaíra</option>
<option value="Guapiacu">Guapiaçu</option>
<option value="Guapiara">Guapiara</option>
<option value="Guara">Guará</option>
<option value="Guaracai">Guaraçaí</option>
<option value="Guaraci">Guaraci</option>
<option value="Guarani d`Oeste">Guarani d`Oeste</option>
<option value="Guaranta">Guarantã</option>
<option value="Guararapes">Guararapes</option>
<option value="Guararema">Guararema</option>
<option value="Guaratingueta">Guaratinguetá</option>
<option value="Guarei">Guareí</option>
<option value="Guariba">Guariba</option>
<option value="Guaruja">Guarujá</option>
<option value="Guarulhos">Guarulhos</option>
<option value="Guatapara">Guatapará</option>
<option value="Guzolandia">Guzolândia</option>
<option value="Herculandia">Herculândia</option>
<option value="Holambra">Holambra</option>
<option value="Hortolandia">Hortolândia</option>
<option value="Iacanga">Iacanga</option>
<option value="Iacri">Iacri</option>
<option value="Iaras">Iaras</option>
<option value="Ibate">Ibaté</option>
<option value="Ibira">Ibirá</option>
<option value="Ibirarema">Ibirarema</option>
<option value="Ibitinga">Ibitinga</option>
<option value="Ibiuna">Ibiúna</option>
<option value="Icem">Icém</option>
<option value="Iepe">Iepê</option>
<option value="Igaracu do Tiete">Igaraçu do Tietê</option>
<option value="Igarapava">Igarapava</option>
<option value="Igarata">Igaratá</option>
<option value="Iguape">Iguape</option>
<option value="Ilha Comprida">Ilha Comprida</option>
<option value="Ilha Solteira">Ilha Solteira</option>
<option value="Ilhabela">Ilhabela</option>
<option value="Indaiatuba">Indaiatuba</option>
<option value="Indiana">Indiana</option>
<option value="Indiapora">Indiaporã</option>
<option value="Inubia Paulista">Inúbia Paulista</option>
<option value="Ipaussu">Ipaussu</option>
<option value="Ipero">Iperó</option>
<option value="Ipeuna">Ipeúna</option>
<option value="Ipigua">Ipiguá</option>
<option value="Iporanga">Iporanga</option>
<option value="Ipua">Ipuã</option>
<option value="Iracemapolis">Iracemápolis</option>
<option value="Irapua">Irapuã</option>
<option value="Irapuru">Irapuru</option>
<option value="Itabera">Itaberá</option>
<option value="Itai">Itaí</option>
<option value="Itajobi">Itajobi</option>
<option value="Itaju">Itaju</option>
<option value="Itanhaem">Itanhaém</option>
<option value="Itaoca">Itaóca</option>
<option value="Itapecerica da Serra">Itapecerica da Serra</option>
<option value="Itapetininga">Itapetininga</option>
<option value="Itapeva">Itapeva</option>
<option value="Itapevi">Itapevi</option>
<option value="Itapira">Itapira</option>
<option value="Itapirapua Paulista">Itapirapuã Paulista</option>
<option value="Itapolis">Itápolis</option>
<option value="Itaporanga">Itaporanga</option>
<option value="Itapui">Itapuí</option>
<option value="Itapura">Itapura</option>
<option value="Itaquaquecetuba">Itaquaquecetuba</option>
<option value="Itarare">Itararé</option>
<option value="Itariri">Itariri</option>
<option value="Itatiba">Itatiba</option>
<option value="Itatinga">Itatinga</option>
<option value="Itirapina">Itirapina</option>
<option value="Itirapua">Itirapuã</option>
<option value="Itobi">Itobi</option>
<option value="Itu">Itu</option>
<option value="Itupeva">Itupeva</option>
<option value="Ituverava">Ituverava</option>
<option value="Jaborandi">Jaborandi</option>
<option value="Jaboticabal">Jaboticabal</option>
<option value="Jacarei">Jacareí</option>
<option value="Jaci">Jaci</option>
<option value="Jacupiranga">Jacupiranga</option>
<option value="Jaguariuna">Jaguariúna</option>
<option value="Jales">Jales</option>
<option value="Jambeiro">Jambeiro</option>
<option value="Jandira">Jandira</option>
<option value="Jardinopolis">Jardinópolis</option>
<option value="Jarinu">Jarinu</option>
<option value="Jau">Jaú</option>
<option value="Jeriquara">Jeriquara</option>
<option value="Joanopolis">Joanópolis</option>
<option value="Joao Ramalho">João Ramalho</option>
<option value="Jose Bonifacio">José Bonifácio</option>
<option value="Julio Mesquita">Júlio Mesquita</option>
<option value="Jumirim">Jumirim</option>
<option value="Jundiai">Jundiaí</option>
<option value="Junqueiropolis">Junqueirópolis</option>
<option value="Juquia">Juquiá</option>
<option value="Juquitiba">Juquitiba</option>
<option value="Lagoinha">Lagoinha</option>
<option value="Laranjal Paulista">Laranjal Paulista</option>
<option value="Lavinia">Lavínia</option>
<option value="Lavrinhas">Lavrinhas</option>
<option value="Leme">Leme</option>
<option value="Lencois Paulista">Lençóis Paulista</option>
<option value="Limeira">Limeira</option>
<option value="Lindoia">Lindóia</option>
<option value="Lins">Lins</option>
<option value="Lorena">Lorena</option>
<option value="Lourdes">Lourdes</option>
<option value="Louveira">Louveira</option>
<option value="Lucelia">Lucélia</option>
<option value="Lucianopolis">Lucianópolis</option>
<option value="Luis Antonio">Luís Antônio</option>
<option value="Luiziania">Luiziânia</option>
<option value="Lupercio">Lupércio</option>
<option value="Lutecia">Lutécia</option>
<option value="Macatuba">Macatuba</option>
<option value="Macaubal">Macaubal</option>
<option value="Macedonia">Macedônia</option>
<option value="Magda">Magda</option>
<option value="Mairinque">Mairinque</option>
<option value="Mairipora">Mairiporã</option>
<option value="Manduri">Manduri</option>
<option value="Maraba Paulista">Marabá Paulista</option>
<option value="Maracai">Maracaí</option>
<option value="Marapoama">Marapoama</option>
<option value="Mariapolis">Mariápolis</option>
<option value="Marilia">Marília</option>
<option value="Marinopolis">Marinópolis</option>
<option value="Martinopolis">Martinópolis</option>
<option value="Matao">Matão</option>
<option value="Maua">Mauá</option>
<option value="Mendonca">Mendonça</option>
<option value="Meridiano">Meridiano</option>
<option value="Mesopolis">Mesópolis</option>
<option value="Miguelopolis">Miguelópolis</option>
<option value="Mineiros do Tiete">Mineiros do Tietê</option>
<option value="Mira Estrela">Mira Estrela</option>
<option value="Miracatu">Miracatu</option>
<option value="Mirandopolis">Mirandópolis</option>
<option value="Mirante do Paranapanema">Mirante do Paranapanema</option>
<option value="Mirassol">Mirassol</option>
<option value="Mirassolandia">Mirassolândia</option>
<option value="Mococa">Mococa</option>
<option value="Mogi das Cruzes">Mogi das Cruzes</option>
<option value="Mogi Guacu">Mogi Guaçu</option>
<option value="Moji Mirim">Moji Mirim</option>
<option value="Mombuca">Mombuca</option>
<option value="Moncoes">Monções</option>
<option value="Mongagua">Mongaguá</option>
<option value="Monte Alegre do Sul">Monte Alegre do Sul</option>
<option value="Monte Alto">Monte Alto</option>
<option value="Monte Aprazivel">Monte Aprazível</option>
<option value="Monte Azul Paulista">Monte Azul Paulista</option>
<option value="Monte Castelo">Monte Castelo</option>
<option value="Monte Mor">Monte Mor</option>
<option value="Monteiro Lobato">Monteiro Lobato</option>
<option value="Morro Agudo">Morro Agudo</option>
<option value="Morungaba">Morungaba</option>
<option value="Motuca">Motuca</option>
<option value="Murutinga do Sul">Murutinga do Sul</option>
<option value="Nantes">Nantes</option>
<option value="Narandiba">Narandiba</option>
<option value="Natividade da Serra">Natividade da Serra</option>
<option value="Nazare Paulista">Nazaré Paulista</option>
<option value="Neves Paulista">Neves Paulista</option>
<option value="Nhandeara">Nhandeara</option>
<option value="Nipoa">Nipoã</option>
<option value="Nova Alianca">Nova Aliança</option>
<option value="Nova Campina">Nova Campina</option>
<option value="Nova Canaa Paulista">Nova Canaã Paulista</option>
<option value="Nova Castilho">Nova Castilho</option>
<option value="Nova Europa">Nova Europa</option>
<option value="Nova Granada">Nova Granada</option>
<option value="Nova Guataporanga">Nova Guataporanga</option>
<option value="Nova Independencia">Nova Independência</option>
<option value="Nova Luzitania">Nova Luzitânia</option>
<option value="Nova Odessa">Nova Odessa</option>
<option value="Novais">Novais</option>
<option value="Novo Horizonte">Novo Horizonte</option>
<option value="Nuporanga">Nuporanga</option>
<option value="Ocaucu">Ocauçu</option>
<option value="Oleo">Óleo</option>
<option value="Olimpia">Olímpia</option>
<option value="Onda Verde">Onda Verde</option>
<option value="Oriente">Oriente</option>
<option value="Orindiuva">Orindiúva</option>
<option value="Orlandia">Orlândia</option>
<option value="Osasco">Osasco</option>
<option value="Oscar Bressane">Oscar Bressane</option>
<option value="Osvaldo Cruz">Osvaldo Cruz</option>
<option value="Ourinhos">Ourinhos</option>
<option value="Ouro Verde">Ouro Verde</option>
<option value="Ouroeste">Ouroeste</option>
<option value="Pacaembu">Pacaembu</option>
<option value="Palestina">Palestina</option>
<option value="Palmares Paulista">Palmares Paulista</option>
<option value="Palmeira d`Oeste">Palmeira d`Oeste</option>
<option value="Palmital">Palmital</option>
<option value="Panorama">Panorama</option>
<option value="Paraguacu Paulista">Paraguaçu Paulista</option>
<option value="Paraibuna">Paraibuna</option>
<option value="Paraiso">Paraíso</option>
<option value="Paranapanema">Paranapanema</option>
<option value="Paranapua">Paranapuã</option>
<option value="Parapua">Parapuã</option>
<option value="Pardinho">Pardinho</option>
<option value="Pariquera-Acu">Pariquera-Açu</option>
<option value="Parisi">Parisi</option>
<option value="Patrocinio Paulista">Patrocínio Paulista</option>
<option value="Pauliceia">Paulicéia</option>
<option value="Paulinia">Paulínia</option>
<option value="Paulistania">Paulistânia</option>
<option value="Paulo de Faria">Paulo de Faria</option>
<option value="Pederneiras">Pederneiras</option>
<option value="Pedra Bela">Pedra Bela</option>
<option value="Pedranopolis">Pedranópolis</option>
<option value="Pedregulho">Pedregulho</option>
<option value="Pedreira">Pedreira</option>
<option value="Pedrinhas Paulista">Pedrinhas Paulista</option>
<option value="Pedro de Toledo">Pedro de Toledo</option>
<option value="Penapolis">Penápolis</option>
<option value="Pereira Barreto">Pereira Barreto</option>
<option value="Pereiras">Pereiras</option>
<option value="Peruibe">Peruíbe</option>
<option value="Piacatu">Piacatu</option>
<option value="Piedade">Piedade</option>
<option value="Pilar do Sul">Pilar do Sul</option>
<option value="Pindamonhangaba">Pindamonhangaba</option>
<option value="Pindorama">Pindorama</option>
<option value="Pinhalzinho">Pinhalzinho</option>
<option value="Piquerobi">Piquerobi</option>
<option value="Piquete">Piquete</option>
<option value="Piracaia">Piracaia</option>
<option value="Piracicaba">Piracicaba</option>
<option value="Piraju">Piraju</option>
<option value="Pirajui">Pirajuí</option>
<option value="Pirangi">Pirangi</option>
<option value="Pirapora do Bom Jesus">Pirapora do Bom Jesus</option>
<option value="Pirapozinho">Pirapozinho</option>
<option value="Pirassununga">Pirassununga</option>
<option value="Piratininga">Piratininga</option>
<option value="Pitangueiras">Pitangueiras</option>
<option value="Planalto">Planalto</option>
<option value="Platina">Platina</option>
<option value="Poa">Poá</option>
<option value="Poloni">Poloni</option>
<option value="Pompeia">Pompéia</option>
<option value="Pongai">Pongaí</option>
<option value="Pontal">Pontal</option>
<option value="Pontalinda">Pontalinda</option>
<option value="Pontes Gestal">Pontes Gestal</option>
<option value="Populina">Populina</option>
<option value="Porangaba">Porangaba</option>
<option value="Porto Feliz">Porto Feliz</option>
<option value="Porto Ferreira">Porto Ferreira</option>
<option value="Potim">Potim</option>
<option value="Potirendaba">Potirendaba</option>
<option value="Pracinha">Pracinha</option>
<option value="Pradopolis">Pradópolis</option>
<option value="Praia Grande">Praia Grande</option>
<option value="Pratania">Pratânia</option>
<option value="Presidente Alves">Presidente Alves</option>
<option value="Presidente Bernardes">Presidente Bernardes</option>
<option value="Presidente Epitacio">Presidente Epitácio</option>
<option value="Presidente Prudente">Presidente Prudente</option>
<option value="Presidente Venceslau">Presidente Venceslau</option>
<option value="Promissao">Promissão</option>
<option value="Quadra">Quadra</option>
<option value="Quata">Quatá</option>
<option value="Queiroz">Queiroz</option>
<option value="Queluz">Queluz</option>
<option value="Quintana">Quintana</option>
<option value="Rafard">Rafard</option>
<option value="Rancharia">Rancharia</option>
<option value="Redencao da Serra">Redenção da Serra</option>
<option value="Regente Feijo">Regente Feijó</option>
<option value="Reginopolis">Reginópolis</option>
<option value="Registro">Registro</option>
<option value="Restinga">Restinga</option>
<option value="Ribeira">Ribeira</option>
<option value="Ribeirao Bonito">Ribeirão Bonito</option>
<option value="Ribeirao Branco">Ribeirão Branco</option>
<option value="Ribeirao Corrente">Ribeirão Corrente</option>
<option value="Ribeirao do Sul">Ribeirão do Sul</option>
<option value="Ribeirao dos Indios">Ribeirão dos Índios</option>
<option value="Ribeirao Grande">Ribeirão Grande</option>
<option value="Ribeirao Pires">Ribeirão Pires</option>
<option value="Ribeirao Preto">Ribeirão Preto</option>
<option value="Rifaina">Rifaina</option>
<option value="Rincao">Rincão</option>
<option value="Rinopolis">Rinópolis</option>
<option value="Rio Claro">Rio Claro</option>
<option value="Rio das Pedras">Rio das Pedras</option>
<option value="Rio Grande da Serra">Rio Grande da Serra</option>
<option value="Riolandia">Riolândia</option>
<option value="Riversul">Riversul</option>
<option value="Rosana">Rosana</option>
<option value="Roseira">Roseira</option>
<option value="Rubiacea">Rubiácea</option>
<option value="Rubineia">Rubinéia</option>
<option value="Sabino">Sabino</option>
<option value="Sagres">Sagres</option>
<option value="Sales">Sales</option>
<option value="Sales Oliveira">Sales Oliveira</option>
<option value="Salesopolis">Salesópolis</option>
<option value="Salmourao">Salmourão</option>
<option value="Saltinho">Saltinho</option>
<option value="Salto">Salto</option>
<option value="Salto de Pirapora">Salto de Pirapora</option>
<option value="Salto Grande">Salto Grande</option>
<option value="Sandovalina">Sandovalina</option>
<option value="Santa Adelia">Santa Adélia</option>
<option value="Santa Albertina">Santa Albertina</option>
<option value="Santa Barbara d`Oeste">Santa Bárbara d`Oeste</option>
<option value="Santa Branca">Santa Branca</option>
<option value="Santa Clara d`Oeste">Santa Clara d`Oeste</option>
<option value="Santa Cruz da Conceicao">Santa Cruz da Conceição</option>
<option value="Santa Cruz da Esperanca">Santa Cruz da Esperança</option>
<option value="Santa Cruz das Palmeiras">Santa Cruz das Palmeiras</option>
<option value="Santa Cruz do Rio Pardo">Santa Cruz do Rio Pardo</option>
<option value="Santa Ernestina">Santa Ernestina</option>
<option value="Santa Fe do Sul">Santa Fé do Sul</option>
<option value="Santa Gertrudes">Santa Gertrudes</option>
<option value="Santa Isabel">Santa Isabel</option>
<option value="Santa Lucia">Santa Lúcia</option>
<option value="Santa Maria da Serra">Santa Maria da Serra</option>
<option value="Santa Mercedes">Santa Mercedes</option>
<option value="Santa Rita d`Oeste">Santa Rita d`Oeste</option>
<option value="Santa Rita do Passa Quatro">Santa Rita do Passa Quatro</option>
<option value="Santa Rosa de Viterbo">Santa Rosa de Viterbo</option>
<option value="Santa Salete">Santa Salete</option>
<option value="Santana da Ponte Pensa">Santana da Ponte Pensa</option>
<option value="Santana de Parnaiba">Santana de Parnaíba</option>
<option value="Santo Anastacio">Santo Anastácio</option>
<option value="Santo Andre">Santo André</option>
<option value="Santo Antonio da Alegria">Santo Antônio da Alegria</option>
<option value="Santo Antonio de Posse">Santo Antônio de Posse</option>
<option value="Santo Antonio do Aracangua">Santo Antônio do Aracanguá</option>
<option value="Santo Antonio do Jardim">Santo Antônio do Jardim</option>
<option value="Santo Antonio do Pinhal">Santo Antônio do Pinhal</option>
<option value="Santo Expedito">Santo Expedito</option>
<option value="Santopolis do Aguapei">Santópolis do Aguapeí</option>
<option value="Santos">Santos</option>
<option value="Sao Bento do Sapucai">São Bento do Sapucaí</option>
<option value="Sao Bernardo do Campo">São Bernardo do Campo</option>
<option value="Sao Caetano do Sul">São Caetano do Sul</option>
<option value="Sao Carlos">São Carlos</option>
<option value="Sao Francisco">São Francisco</option>
<option value="Sao Joao da Boa Vista">São João da Boa Vista</option>
<option value="Sao Joao das Duas Pontes">São João das Duas Pontes</option>
<option value="Sao Joao de Iracema">São João de Iracema</option>
<option value="Sao Joao do Pau d`Alho">São João do Pau d`Alho</option>
<option value="Sao Joaquim da Barra">São Joaquim da Barra</option>
<option value="Sao Jose da Bela Vista">São José da Bela Vista</option>
<option value="Sao Jose do Barreiro">São José do Barreiro</option>
<option value="Sao Jose do Rio Pardo">São José do Rio Pardo</option>
<option value="Sao Jose do Rio Preto">São José do Rio Preto</option>
<option value="Sao Jose dos Campos">São José dos Campos</option>
<option value="Sao Lourenco da Serra">São Lourenço da Serra</option>
<option value="Sao Luis do Paraitinga">São Luís do Paraitinga</option>
<option value="Sao Manuel">São Manuel</option>
<option value="Sao Miguel Arcanjo">São Miguel Arcanjo</option>
<option value="Sao Paulo">São Paulo</option>
<option value="Sao Pedro">São Pedro</option>
<option value="Sao Pedro do Turvo">São Pedro do Turvo</option>
<option value="Sao Roque">São Roque</option>
<option value="Sao Sebastiao">São Sebastião</option>
<option value="Sao Sebastiao da Grama">São Sebastião da Grama</option>
<option value="Sao Simao">São Simão</option>
<option value="Sao Vicente">São Vicente</option>
<option value="Sarapui">Sarapuí</option>
<option value="Sarutaia">Sarutaiá</option>
<option value="Sebastianopolis do Sul">Sebastianópolis do Sul</option>
<option value="Serra Azul">Serra Azul</option>
<option value="Serra Negra">Serra Negra</option>
<option value="Serrana">Serrana</option>
<option value="Sertaozinho">Sertãozinho</option>
<option value="Sete Barras">Sete Barras</option>
<option value="Severinia">Severínia</option>
<option value="Silveiras">Silveiras</option>
<option value="Socorro">Socorro</option>
<option value="Sorocaba">Sorocaba</option>
<option value="Sud Mennucci">Sud Mennucci</option>
<option value="Sumare">Sumaré</option>
<option value="Suzanapolis">Suzanápolis</option>
<option value="Suzano">Suzano</option>
<option value="Tabapua">Tabapuã</option>
<option value="Tabatinga">Tabatinga</option>
<option value="Taboao da Serra">Taboão da Serra</option>
<option value="Taciba">Taciba</option>
<option value="Taguai">Taguaí</option>
<option value="Taiacu">Taiaçu</option>
<option value="Taiuva">Taiúva</option>
<option value="Tambau">Tambaú</option>
<option value="Tanabi">Tanabi</option>
<option value="Tapirai">Tapiraí</option>
<option value="Tapiratiba">Tapiratiba</option>
<option value="Taquaral">Taquaral</option>
<option value="Taquaritinga">Taquaritinga</option>
<option value="Taquarituba">Taquarituba</option>
<option value="Taquarivai">Taquarivaí</option>
<option value="Tarabai">Tarabai</option>
<option value="Taruma">Tarumã</option>
<option value="Tatui">Tatuí</option>
<option value="Taubate">Taubaté</option>
<option value="Tejupa">Tejupá</option>
<option value="Teodoro Sampaio">Teodoro Sampaio</option>
<option value="Terra Roxa">Terra Roxa</option>
<option value="Tiete">Tietê</option>
<option value="Timburi">Timburi</option>
<option value="Torre de Pedra">Torre de Pedra</option>
<option value="Torrinha">Torrinha</option>
<option value="Trabiju">Trabiju</option>
<option value="Tremembe">Tremembé</option>
<option value="Tres Fronteiras">Três Fronteiras</option>
<option value="Tuiuti">Tuiuti</option>
<option value="Tupa">Tupã</option>
<option value="Tupi Paulista">Tupi Paulista</option>
<option value="Turiuba">Turiúba</option>
<option value="Turmalina">Turmalina</option>
<option value="Ubarana">Ubarana</option>
<option value="Ubatuba">Ubatuba</option>
<option value="Ubirajara">Ubirajara</option>
<option value="Uchoa">Uchoa</option>
<option value="Uniao Paulista">União Paulista</option>
<option value="Urania">Urânia</option>
<option value="Uru">Uru</option>
<option value="Urupes">Urupês</option>
<option value="Valentim Gentil">Valentim Gentil</option>
<option value="Valinhos">Valinhos</option>
<option value="Valparaiso">Valparaíso</option>
<option value="Vargem">Vargem</option>
<option value="Vargem Grande do Sul">Vargem Grande do Sul</option>
<option value="Vargem Grande Paulista">Vargem Grande Paulista</option>
<option value="Varzea Paulista">Várzea Paulista</option>
<option value="Vera Cruz">Vera Cruz</option>
<option value="Vinhedo">Vinhedo</option>
<option value="Viradouro">Viradouro</option>
<option value="Vista Alegre do Alto">Vista Alegre do Alto</option>
<option value="Vitoria Brasil">Vitória Brasil</option>
<option value="Votorantim">Votorantim</option>
<option value="Votuporanga">Votuporanga</option>
<option value="Zacarias">Zacarias</option>
            </select>
        <form:errors path="endereco.cidade" cssStyle="color:red"/>            
            <br/>
    <input type="checkbox" name="novidade" checked="checked"/>
Desejo receber novidades e informações sobre o conteúdo deste site.
<br/>
       <c:out value="${erro}"/>
     <br/>
       <input type="submit" value="Cadastrar"/>
       <input type="reset" value="LImpar"/>
       </form>
    </body>
</html>