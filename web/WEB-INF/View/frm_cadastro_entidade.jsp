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
            <option value="Sao Paulo" selected="selected">S�o Paulo</option>
            </select>            
        <form:errors path="endereco.estado" cssStyle="color:red"/>            
        <br/>            
            <b>cidade</b>
<select name="cidade" id="cidade">
    <option value="Selecione" selected="selected">Selecione...</option>
<option value="Adamantina">Adamantina</option>
<option value="Adolfo">Adolfo</option>
<option value="Aguai">Agua�</option>
<option value="Aguas da Prata">�guas da Prata</option>
<option value="Aguas de Lindoia">�guas de Lind�ia</option>
<option value="Aguas de Santa Barbara">�guas de Santa B�rbara</option>
<option value="Aguas de Sao Pedro">�guas de S�o Pedro</option>
<option value="Agudos">Agudos</option>
<option value="Alambari">Alambari</option>
<option value="Alfredo Marcondes">Alfredo Marcondes</option>
<option value="Altair">Altair</option>
<option value="Altinopolis">Altin�polis</option>
<option value="Alto Alegre">Alto Alegre</option>
<option value="Aluminio">Alum�nio</option>
<option value="Alvares Florence">�lvares Florence</option>
<option value="Alvares Machado">�lvares Machado</option>
<option value="Alvaro de Carvalho">�lvaro de Carvalho</option>
<option value="Alvinlandia">Alvinl�ndia</option>
<option value="Americana">Americana</option>
<option value="Americo Brasiliense">Am�rico Brasiliense</option>
<option value="Americo de Campos">Am�rico de Campos</option>
<option value="Amparo">Amparo</option>
<option value="Analandia">Anal�ndia</option>
<option value="Andradina">Andradina</option>
<option value="Angatuba">Angatuba</option>
<option value="Anhembi">Anhembi</option>
<option value="Anhumas">Anhumas</option>
<option value="Aparecida">Aparecida</option>
<option value="Aparecida d`Oeste">Aparecida d`Oeste</option>
<option value="Apiai">Apia�</option>
<option value="Aracariguama">Ara�ariguama</option>
<option value="Aracatuba">Ara�atuba</option>
<option value="Aracoiaba da Serra">Ara�oiaba da Serra</option>
<option value="Aramina">Aramina</option>
<option value="Arandu">Arandu</option>
<option value="Arapei">Arape�</option>
<option value="Araraquara">Araraquara</option>
<option value="Araras">Araras</option>
<option value="Arco-Iris">Arco-�ris</option>
<option value="Arealva">Arealva</option>
<option value="Areias">Areias</option>
<option value="Areiopolis">Arei�polis</option>
<option value="Ariranha">Ariranha</option>
<option value="Artur Nogueira">Artur Nogueira</option>
<option value="Aruja">Aruj�</option>
<option value="Aspasia">Asp�sia</option>
<option value="Assis">Assis</option>
<option value="Atibaia">Atibaia</option>
<option value="Auriflama">Auriflama</option>
<option value="Avai">Ava�</option>
<option value="Avanhandava">Avanhandava</option>
<option value="Avare">Avar�</option>
<option value="Bady Bassitt">Bady Bassitt</option>
<option value="Balbinos">Balbinos</option>
<option value="Balsamo">B�lsamo</option>
<option value="Bananal">Bananal</option>
<option value="Barao de Antonina">Bar�o de Antonina</option>
<option value="Barbosa">Barbosa</option>
<option value="Bariri">Bariri</option>
<option value="Barra Bonita">Barra Bonita</option>
<option value="Barra do Chapeu">Barra do Chap�u</option>
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
<option value="Boa Esperanca do Sul">Boa Esperan�a do Sul</option>
<option value="Bocaina">Bocaina</option>
<option value="Bofete">Bofete</option>
<option value="Boituva">Boituva</option>
<option value="Bom Jesus dos Perdoes">Bom Jesus dos Perd�es</option>
<option value="Bom Sucesso de Itarare">Bom Sucesso de Itarar�</option>
<option value="Bora">Bor�</option>
<option value="Boraceia">Borac�ia</option>
<option value="Borborema">Borborema</option>
<option value="Borebi">Borebi</option>
<option value="Botucatu">Botucatu</option>
<option value="Braganca Paulista">Bragan�a Paulista</option>
<option value="Brauna">Bra�na</option>
<option value="Brejo Alegre">Brejo Alegre</option>
<option value="Brodowski">Brodowski</option>
<option value="Brotas">Brotas</option>
<option value="Buri">Buri</option>
<option value="Buritama">Buritama</option>
<option value="Buritizal">Buritizal</option>
<option value="Cabralia Paulista">Cabr�lia Paulista</option>
<option value="Cabreuva">Cabre�va</option>
<option value="Cacapava">Ca�apava</option>
<option value="Cachoeira Paulista">Cachoeira Paulista</option>
<option value="Caconde">Caconde</option>
<option value="Cafelandia">Cafel�ndia</option>
<option value="Caiabu">Caiabu</option>
<option value="Caieiras">Caieiras</option>
<option value="Caiua">Caiu�</option>
<option value="Cajamar">Cajamar</option>
<option value="Cajati">Cajati</option>
<option value="Cajobi">Cajobi</option>
<option value="Cajuru">Cajuru</option>
<option value="Campina do Monte Alegre">Campina do Monte Alegre</option>
<option value="Campinas">Campinas</option>
<option value="Campo Limpo Paulista">Campo Limpo Paulista</option>
<option value="Campos do Jordao">Campos do Jord�o</option>
<option value="Campos Novos Paulista">Campos Novos Paulista</option>
<option value="Cananeia">Canan�ia</option>
<option value="Canas">Canas</option>
<option value="Candido Mota">C�ndido Mota</option>
<option value="Candido Rodrigues">C�ndido Rodrigues</option>
<option value="Canitar">Canitar</option>
<option value="Capao Bonito">Cap�o Bonito</option>
<option value="Capela do Alto">Capela do Alto</option>
<option value="Capivari">Capivari</option>
<option value="Caraguatatuba">Caraguatatuba</option>
<option value="Carapicuiba">Carapicu�ba</option>
<option value="Cardoso">Cardoso</option>
<option value="Casa Branca">Casa Branca</option>
<option value="Cassia dos Coqueiros">C�ssia dos Coqueiros</option>
<option value="Castilho">Castilho</option>
<option value="Catanduva">Catanduva</option>
<option value="Catigua">Catigu�</option>
<option value="Cedral">Cedral</option>
<option value="Cerqueira Cesar">Cerqueira C�sar</option>
<option value="Cerquilho">Cerquilho</option>
<option value="Cesario Lange">Ces�rio Lange</option>
<option value="Charqueada">Charqueada</option>
<option value="Chavantes">Chavantes</option>
<option value="Clementina">Clementina</option>
<option value="Colina">Colina</option>
<option value="Colombia">Col�mbia</option>
<option value="Conchal">Conchal</option>
<option value="Conchas">Conchas</option>
<option value="Cordeiropolis">Cordeir�polis</option>
<option value="Coroados">Coroados</option>
<option value="Coronel Macedo">Coronel Macedo</option>
<option value="Corumbatai">Corumbata�</option>
<option value="Cosmopolis">Cosm�polis</option>
<option value="Cosmorama">Cosmorama</option>
<option value="Cotia">Cotia</option>
<option value="Cravinhos">Cravinhos</option>
<option value="Cristais Paulista">Cristais Paulista</option>
<option value="Cruzalia">Cruz�lia</option>
<option value="Cruzeiro">Cruzeiro</option>
<option value="Cubatao">Cubat�o</option>
<option value="Cunha">Cunha</option>
<option value="Descalvado">Descalvado</option>
<option value="Diadema">Diadema</option>
<option value="Dirce Reis">Dirce Reis</option>
<option value="Divinolandia">Divinol�ndia</option>
<option value="Dobrada">Dobrada</option>
<option value="Dois Corregos">Dois C�rregos</option>
<option value="Dolcinopolis">Dolcin�polis</option>
<option value="Dourado">Dourado</option>
<option value="Dracena">Dracena</option>
<option value="Duartina">Duartina</option>
<option value="Dumont">Dumont</option>
<option value="Echapora">Echapor�</option>
<option value="Eldorado">Eldorado</option>
<option value="Elias Fausto">Elias Fausto</option>
<option value="Elisiario">Elisi�rio</option>
<option value="Embauba">Emba�ba</option>
<option value="Embu">Embu</option>
<option value="Embu-Guacu">Embu-Gua�u</option>
<option value="Emilianopolis">Emilian�polis</option>
<option value="Engenheiro Coelho">Engenheiro Coelho</option>
<option value="Espirito Santo do Pinhal">Esp�rito Santo do Pinhal</option>
<option value="Espirito Santo do Turvo">Esp�rito Santo do Turvo</option>
<option value="Estiva Gerbi">Estiva Gerbi</option>
<option value="Estrela d`Oeste">Estrela d`Oeste</option>
<option value="Estrela do Norte">Estrela do Norte</option>
<option value="Euclides da Cunha Paulista">Euclides da Cunha Paulista</option>
<option value="Fartura">Fartura</option>
<option value="Fernando Prestes">Fernando Prestes</option>
<option value="Fernandopolis">Fernand�polis</option>
<option value="Fernao">Fern�o</option>
<option value="Ferraz de Vasconcelos">Ferraz de Vasconcelos</option>
<option value="Flora Rica">Flora Rica</option>
<option value="Floreal">Floreal</option>
<option value="Florida Paulista">Fl�rida Paulista</option>
<option value="Florinia">Flor�nia</option>
<option value="Franca">Franca</option>
<option value="Francisco Morato">Francisco Morato</option>
<option value="Franco da Rocha">Franco da Rocha</option>
<option value="Gabriel Monteiro">Gabriel Monteiro</option>
<option value="Galia">G�lia</option>
<option value="Garca">Gar�a</option>
<option value="Gastao Vidigal">Gast�o Vidigal</option>
<option value="Gaviao Peixoto">Gavi�o Peixoto</option>
<option value="General Salgado">General Salgado</option>
<option value="Getulina">Getulina</option>
<option value="Glicerio">Glic�rio</option>
<option value="Guaicara">Guai�ara</option>
<option value="Guaimbe">Guaimb�</option>
<option value="Guaira">Gua�ra</option>
<option value="Guapiacu">Guapia�u</option>
<option value="Guapiara">Guapiara</option>
<option value="Guara">Guar�</option>
<option value="Guaracai">Guara�a�</option>
<option value="Guaraci">Guaraci</option>
<option value="Guarani d`Oeste">Guarani d`Oeste</option>
<option value="Guaranta">Guarant�</option>
<option value="Guararapes">Guararapes</option>
<option value="Guararema">Guararema</option>
<option value="Guaratingueta">Guaratinguet�</option>
<option value="Guarei">Guare�</option>
<option value="Guariba">Guariba</option>
<option value="Guaruja">Guaruj�</option>
<option value="Guarulhos">Guarulhos</option>
<option value="Guatapara">Guatapar�</option>
<option value="Guzolandia">Guzol�ndia</option>
<option value="Herculandia">Hercul�ndia</option>
<option value="Holambra">Holambra</option>
<option value="Hortolandia">Hortol�ndia</option>
<option value="Iacanga">Iacanga</option>
<option value="Iacri">Iacri</option>
<option value="Iaras">Iaras</option>
<option value="Ibate">Ibat�</option>
<option value="Ibira">Ibir�</option>
<option value="Ibirarema">Ibirarema</option>
<option value="Ibitinga">Ibitinga</option>
<option value="Ibiuna">Ibi�na</option>
<option value="Icem">Ic�m</option>
<option value="Iepe">Iep�</option>
<option value="Igaracu do Tiete">Igara�u do Tiet�</option>
<option value="Igarapava">Igarapava</option>
<option value="Igarata">Igarat�</option>
<option value="Iguape">Iguape</option>
<option value="Ilha Comprida">Ilha Comprida</option>
<option value="Ilha Solteira">Ilha Solteira</option>
<option value="Ilhabela">Ilhabela</option>
<option value="Indaiatuba">Indaiatuba</option>
<option value="Indiana">Indiana</option>
<option value="Indiapora">Indiapor�</option>
<option value="Inubia Paulista">In�bia Paulista</option>
<option value="Ipaussu">Ipaussu</option>
<option value="Ipero">Iper�</option>
<option value="Ipeuna">Ipe�na</option>
<option value="Ipigua">Ipigu�</option>
<option value="Iporanga">Iporanga</option>
<option value="Ipua">Ipu�</option>
<option value="Iracemapolis">Iracem�polis</option>
<option value="Irapua">Irapu�</option>
<option value="Irapuru">Irapuru</option>
<option value="Itabera">Itaber�</option>
<option value="Itai">Ita�</option>
<option value="Itajobi">Itajobi</option>
<option value="Itaju">Itaju</option>
<option value="Itanhaem">Itanha�m</option>
<option value="Itaoca">Ita�ca</option>
<option value="Itapecerica da Serra">Itapecerica da Serra</option>
<option value="Itapetininga">Itapetininga</option>
<option value="Itapeva">Itapeva</option>
<option value="Itapevi">Itapevi</option>
<option value="Itapira">Itapira</option>
<option value="Itapirapua Paulista">Itapirapu� Paulista</option>
<option value="Itapolis">It�polis</option>
<option value="Itaporanga">Itaporanga</option>
<option value="Itapui">Itapu�</option>
<option value="Itapura">Itapura</option>
<option value="Itaquaquecetuba">Itaquaquecetuba</option>
<option value="Itarare">Itarar�</option>
<option value="Itariri">Itariri</option>
<option value="Itatiba">Itatiba</option>
<option value="Itatinga">Itatinga</option>
<option value="Itirapina">Itirapina</option>
<option value="Itirapua">Itirapu�</option>
<option value="Itobi">Itobi</option>
<option value="Itu">Itu</option>
<option value="Itupeva">Itupeva</option>
<option value="Ituverava">Ituverava</option>
<option value="Jaborandi">Jaborandi</option>
<option value="Jaboticabal">Jaboticabal</option>
<option value="Jacarei">Jacare�</option>
<option value="Jaci">Jaci</option>
<option value="Jacupiranga">Jacupiranga</option>
<option value="Jaguariuna">Jaguari�na</option>
<option value="Jales">Jales</option>
<option value="Jambeiro">Jambeiro</option>
<option value="Jandira">Jandira</option>
<option value="Jardinopolis">Jardin�polis</option>
<option value="Jarinu">Jarinu</option>
<option value="Jau">Ja�</option>
<option value="Jeriquara">Jeriquara</option>
<option value="Joanopolis">Joan�polis</option>
<option value="Joao Ramalho">Jo�o Ramalho</option>
<option value="Jose Bonifacio">Jos� Bonif�cio</option>
<option value="Julio Mesquita">J�lio Mesquita</option>
<option value="Jumirim">Jumirim</option>
<option value="Jundiai">Jundia�</option>
<option value="Junqueiropolis">Junqueir�polis</option>
<option value="Juquia">Juqui�</option>
<option value="Juquitiba">Juquitiba</option>
<option value="Lagoinha">Lagoinha</option>
<option value="Laranjal Paulista">Laranjal Paulista</option>
<option value="Lavinia">Lav�nia</option>
<option value="Lavrinhas">Lavrinhas</option>
<option value="Leme">Leme</option>
<option value="Lencois Paulista">Len��is Paulista</option>
<option value="Limeira">Limeira</option>
<option value="Lindoia">Lind�ia</option>
<option value="Lins">Lins</option>
<option value="Lorena">Lorena</option>
<option value="Lourdes">Lourdes</option>
<option value="Louveira">Louveira</option>
<option value="Lucelia">Luc�lia</option>
<option value="Lucianopolis">Lucian�polis</option>
<option value="Luis Antonio">Lu�s Ant�nio</option>
<option value="Luiziania">Luizi�nia</option>
<option value="Lupercio">Lup�rcio</option>
<option value="Lutecia">Lut�cia</option>
<option value="Macatuba">Macatuba</option>
<option value="Macaubal">Macaubal</option>
<option value="Macedonia">Maced�nia</option>
<option value="Magda">Magda</option>
<option value="Mairinque">Mairinque</option>
<option value="Mairipora">Mairipor�</option>
<option value="Manduri">Manduri</option>
<option value="Maraba Paulista">Marab� Paulista</option>
<option value="Maracai">Maraca�</option>
<option value="Marapoama">Marapoama</option>
<option value="Mariapolis">Mari�polis</option>
<option value="Marilia">Mar�lia</option>
<option value="Marinopolis">Marin�polis</option>
<option value="Martinopolis">Martin�polis</option>
<option value="Matao">Mat�o</option>
<option value="Maua">Mau�</option>
<option value="Mendonca">Mendon�a</option>
<option value="Meridiano">Meridiano</option>
<option value="Mesopolis">Mes�polis</option>
<option value="Miguelopolis">Miguel�polis</option>
<option value="Mineiros do Tiete">Mineiros do Tiet�</option>
<option value="Mira Estrela">Mira Estrela</option>
<option value="Miracatu">Miracatu</option>
<option value="Mirandopolis">Mirand�polis</option>
<option value="Mirante do Paranapanema">Mirante do Paranapanema</option>
<option value="Mirassol">Mirassol</option>
<option value="Mirassolandia">Mirassol�ndia</option>
<option value="Mococa">Mococa</option>
<option value="Mogi das Cruzes">Mogi das Cruzes</option>
<option value="Mogi Guacu">Mogi Gua�u</option>
<option value="Moji Mirim">Moji Mirim</option>
<option value="Mombuca">Mombuca</option>
<option value="Moncoes">Mon��es</option>
<option value="Mongagua">Mongagu�</option>
<option value="Monte Alegre do Sul">Monte Alegre do Sul</option>
<option value="Monte Alto">Monte Alto</option>
<option value="Monte Aprazivel">Monte Apraz�vel</option>
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
<option value="Nazare Paulista">Nazar� Paulista</option>
<option value="Neves Paulista">Neves Paulista</option>
<option value="Nhandeara">Nhandeara</option>
<option value="Nipoa">Nipo�</option>
<option value="Nova Alianca">Nova Alian�a</option>
<option value="Nova Campina">Nova Campina</option>
<option value="Nova Canaa Paulista">Nova Cana� Paulista</option>
<option value="Nova Castilho">Nova Castilho</option>
<option value="Nova Europa">Nova Europa</option>
<option value="Nova Granada">Nova Granada</option>
<option value="Nova Guataporanga">Nova Guataporanga</option>
<option value="Nova Independencia">Nova Independ�ncia</option>
<option value="Nova Luzitania">Nova Luzit�nia</option>
<option value="Nova Odessa">Nova Odessa</option>
<option value="Novais">Novais</option>
<option value="Novo Horizonte">Novo Horizonte</option>
<option value="Nuporanga">Nuporanga</option>
<option value="Ocaucu">Ocau�u</option>
<option value="Oleo">�leo</option>
<option value="Olimpia">Ol�mpia</option>
<option value="Onda Verde">Onda Verde</option>
<option value="Oriente">Oriente</option>
<option value="Orindiuva">Orindi�va</option>
<option value="Orlandia">Orl�ndia</option>
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
<option value="Paraguacu Paulista">Paragua�u Paulista</option>
<option value="Paraibuna">Paraibuna</option>
<option value="Paraiso">Para�so</option>
<option value="Paranapanema">Paranapanema</option>
<option value="Paranapua">Paranapu�</option>
<option value="Parapua">Parapu�</option>
<option value="Pardinho">Pardinho</option>
<option value="Pariquera-Acu">Pariquera-A�u</option>
<option value="Parisi">Parisi</option>
<option value="Patrocinio Paulista">Patroc�nio Paulista</option>
<option value="Pauliceia">Paulic�ia</option>
<option value="Paulinia">Paul�nia</option>
<option value="Paulistania">Paulist�nia</option>
<option value="Paulo de Faria">Paulo de Faria</option>
<option value="Pederneiras">Pederneiras</option>
<option value="Pedra Bela">Pedra Bela</option>
<option value="Pedranopolis">Pedran�polis</option>
<option value="Pedregulho">Pedregulho</option>
<option value="Pedreira">Pedreira</option>
<option value="Pedrinhas Paulista">Pedrinhas Paulista</option>
<option value="Pedro de Toledo">Pedro de Toledo</option>
<option value="Penapolis">Pen�polis</option>
<option value="Pereira Barreto">Pereira Barreto</option>
<option value="Pereiras">Pereiras</option>
<option value="Peruibe">Peru�be</option>
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
<option value="Pirajui">Piraju�</option>
<option value="Pirangi">Pirangi</option>
<option value="Pirapora do Bom Jesus">Pirapora do Bom Jesus</option>
<option value="Pirapozinho">Pirapozinho</option>
<option value="Pirassununga">Pirassununga</option>
<option value="Piratininga">Piratininga</option>
<option value="Pitangueiras">Pitangueiras</option>
<option value="Planalto">Planalto</option>
<option value="Platina">Platina</option>
<option value="Poa">Po�</option>
<option value="Poloni">Poloni</option>
<option value="Pompeia">Pomp�ia</option>
<option value="Pongai">Ponga�</option>
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
<option value="Pradopolis">Prad�polis</option>
<option value="Praia Grande">Praia Grande</option>
<option value="Pratania">Prat�nia</option>
<option value="Presidente Alves">Presidente Alves</option>
<option value="Presidente Bernardes">Presidente Bernardes</option>
<option value="Presidente Epitacio">Presidente Epit�cio</option>
<option value="Presidente Prudente">Presidente Prudente</option>
<option value="Presidente Venceslau">Presidente Venceslau</option>
<option value="Promissao">Promiss�o</option>
<option value="Quadra">Quadra</option>
<option value="Quata">Quat�</option>
<option value="Queiroz">Queiroz</option>
<option value="Queluz">Queluz</option>
<option value="Quintana">Quintana</option>
<option value="Rafard">Rafard</option>
<option value="Rancharia">Rancharia</option>
<option value="Redencao da Serra">Reden��o da Serra</option>
<option value="Regente Feijo">Regente Feij�</option>
<option value="Reginopolis">Regin�polis</option>
<option value="Registro">Registro</option>
<option value="Restinga">Restinga</option>
<option value="Ribeira">Ribeira</option>
<option value="Ribeirao Bonito">Ribeir�o Bonito</option>
<option value="Ribeirao Branco">Ribeir�o Branco</option>
<option value="Ribeirao Corrente">Ribeir�o Corrente</option>
<option value="Ribeirao do Sul">Ribeir�o do Sul</option>
<option value="Ribeirao dos Indios">Ribeir�o dos �ndios</option>
<option value="Ribeirao Grande">Ribeir�o Grande</option>
<option value="Ribeirao Pires">Ribeir�o Pires</option>
<option value="Ribeirao Preto">Ribeir�o Preto</option>
<option value="Rifaina">Rifaina</option>
<option value="Rincao">Rinc�o</option>
<option value="Rinopolis">Rin�polis</option>
<option value="Rio Claro">Rio Claro</option>
<option value="Rio das Pedras">Rio das Pedras</option>
<option value="Rio Grande da Serra">Rio Grande da Serra</option>
<option value="Riolandia">Riol�ndia</option>
<option value="Riversul">Riversul</option>
<option value="Rosana">Rosana</option>
<option value="Roseira">Roseira</option>
<option value="Rubiacea">Rubi�cea</option>
<option value="Rubineia">Rubin�ia</option>
<option value="Sabino">Sabino</option>
<option value="Sagres">Sagres</option>
<option value="Sales">Sales</option>
<option value="Sales Oliveira">Sales Oliveira</option>
<option value="Salesopolis">Sales�polis</option>
<option value="Salmourao">Salmour�o</option>
<option value="Saltinho">Saltinho</option>
<option value="Salto">Salto</option>
<option value="Salto de Pirapora">Salto de Pirapora</option>
<option value="Salto Grande">Salto Grande</option>
<option value="Sandovalina">Sandovalina</option>
<option value="Santa Adelia">Santa Ad�lia</option>
<option value="Santa Albertina">Santa Albertina</option>
<option value="Santa Barbara d`Oeste">Santa B�rbara d`Oeste</option>
<option value="Santa Branca">Santa Branca</option>
<option value="Santa Clara d`Oeste">Santa Clara d`Oeste</option>
<option value="Santa Cruz da Conceicao">Santa Cruz da Concei��o</option>
<option value="Santa Cruz da Esperanca">Santa Cruz da Esperan�a</option>
<option value="Santa Cruz das Palmeiras">Santa Cruz das Palmeiras</option>
<option value="Santa Cruz do Rio Pardo">Santa Cruz do Rio Pardo</option>
<option value="Santa Ernestina">Santa Ernestina</option>
<option value="Santa Fe do Sul">Santa F� do Sul</option>
<option value="Santa Gertrudes">Santa Gertrudes</option>
<option value="Santa Isabel">Santa Isabel</option>
<option value="Santa Lucia">Santa L�cia</option>
<option value="Santa Maria da Serra">Santa Maria da Serra</option>
<option value="Santa Mercedes">Santa Mercedes</option>
<option value="Santa Rita d`Oeste">Santa Rita d`Oeste</option>
<option value="Santa Rita do Passa Quatro">Santa Rita do Passa Quatro</option>
<option value="Santa Rosa de Viterbo">Santa Rosa de Viterbo</option>
<option value="Santa Salete">Santa Salete</option>
<option value="Santana da Ponte Pensa">Santana da Ponte Pensa</option>
<option value="Santana de Parnaiba">Santana de Parna�ba</option>
<option value="Santo Anastacio">Santo Anast�cio</option>
<option value="Santo Andre">Santo Andr�</option>
<option value="Santo Antonio da Alegria">Santo Ant�nio da Alegria</option>
<option value="Santo Antonio de Posse">Santo Ant�nio de Posse</option>
<option value="Santo Antonio do Aracangua">Santo Ant�nio do Aracangu�</option>
<option value="Santo Antonio do Jardim">Santo Ant�nio do Jardim</option>
<option value="Santo Antonio do Pinhal">Santo Ant�nio do Pinhal</option>
<option value="Santo Expedito">Santo Expedito</option>
<option value="Santopolis do Aguapei">Sant�polis do Aguape�</option>
<option value="Santos">Santos</option>
<option value="Sao Bento do Sapucai">S�o Bento do Sapuca�</option>
<option value="Sao Bernardo do Campo">S�o Bernardo do Campo</option>
<option value="Sao Caetano do Sul">S�o Caetano do Sul</option>
<option value="Sao Carlos">S�o Carlos</option>
<option value="Sao Francisco">S�o Francisco</option>
<option value="Sao Joao da Boa Vista">S�o Jo�o da Boa Vista</option>
<option value="Sao Joao das Duas Pontes">S�o Jo�o das Duas Pontes</option>
<option value="Sao Joao de Iracema">S�o Jo�o de Iracema</option>
<option value="Sao Joao do Pau d`Alho">S�o Jo�o do Pau d`Alho</option>
<option value="Sao Joaquim da Barra">S�o Joaquim da Barra</option>
<option value="Sao Jose da Bela Vista">S�o Jos� da Bela Vista</option>
<option value="Sao Jose do Barreiro">S�o Jos� do Barreiro</option>
<option value="Sao Jose do Rio Pardo">S�o Jos� do Rio Pardo</option>
<option value="Sao Jose do Rio Preto">S�o Jos� do Rio Preto</option>
<option value="Sao Jose dos Campos">S�o Jos� dos Campos</option>
<option value="Sao Lourenco da Serra">S�o Louren�o da Serra</option>
<option value="Sao Luis do Paraitinga">S�o Lu�s do Paraitinga</option>
<option value="Sao Manuel">S�o Manuel</option>
<option value="Sao Miguel Arcanjo">S�o Miguel Arcanjo</option>
<option value="Sao Paulo">S�o Paulo</option>
<option value="Sao Pedro">S�o Pedro</option>
<option value="Sao Pedro do Turvo">S�o Pedro do Turvo</option>
<option value="Sao Roque">S�o Roque</option>
<option value="Sao Sebastiao">S�o Sebasti�o</option>
<option value="Sao Sebastiao da Grama">S�o Sebasti�o da Grama</option>
<option value="Sao Simao">S�o Sim�o</option>
<option value="Sao Vicente">S�o Vicente</option>
<option value="Sarapui">Sarapu�</option>
<option value="Sarutaia">Sarutai�</option>
<option value="Sebastianopolis do Sul">Sebastian�polis do Sul</option>
<option value="Serra Azul">Serra Azul</option>
<option value="Serra Negra">Serra Negra</option>
<option value="Serrana">Serrana</option>
<option value="Sertaozinho">Sert�ozinho</option>
<option value="Sete Barras">Sete Barras</option>
<option value="Severinia">Sever�nia</option>
<option value="Silveiras">Silveiras</option>
<option value="Socorro">Socorro</option>
<option value="Sorocaba">Sorocaba</option>
<option value="Sud Mennucci">Sud Mennucci</option>
<option value="Sumare">Sumar�</option>
<option value="Suzanapolis">Suzan�polis</option>
<option value="Suzano">Suzano</option>
<option value="Tabapua">Tabapu�</option>
<option value="Tabatinga">Tabatinga</option>
<option value="Taboao da Serra">Tabo�o da Serra</option>
<option value="Taciba">Taciba</option>
<option value="Taguai">Tagua�</option>
<option value="Taiacu">Taia�u</option>
<option value="Taiuva">Tai�va</option>
<option value="Tambau">Tamba�</option>
<option value="Tanabi">Tanabi</option>
<option value="Tapirai">Tapira�</option>
<option value="Tapiratiba">Tapiratiba</option>
<option value="Taquaral">Taquaral</option>
<option value="Taquaritinga">Taquaritinga</option>
<option value="Taquarituba">Taquarituba</option>
<option value="Taquarivai">Taquariva�</option>
<option value="Tarabai">Tarabai</option>
<option value="Taruma">Tarum�</option>
<option value="Tatui">Tatu�</option>
<option value="Taubate">Taubat�</option>
<option value="Tejupa">Tejup�</option>
<option value="Teodoro Sampaio">Teodoro Sampaio</option>
<option value="Terra Roxa">Terra Roxa</option>
<option value="Tiete">Tiet�</option>
<option value="Timburi">Timburi</option>
<option value="Torre de Pedra">Torre de Pedra</option>
<option value="Torrinha">Torrinha</option>
<option value="Trabiju">Trabiju</option>
<option value="Tremembe">Trememb�</option>
<option value="Tres Fronteiras">Tr�s Fronteiras</option>
<option value="Tuiuti">Tuiuti</option>
<option value="Tupa">Tup�</option>
<option value="Tupi Paulista">Tupi Paulista</option>
<option value="Turiuba">Turi�ba</option>
<option value="Turmalina">Turmalina</option>
<option value="Ubarana">Ubarana</option>
<option value="Ubatuba">Ubatuba</option>
<option value="Ubirajara">Ubirajara</option>
<option value="Uchoa">Uchoa</option>
<option value="Uniao Paulista">Uni�o Paulista</option>
<option value="Urania">Ur�nia</option>
<option value="Uru">Uru</option>
<option value="Urupes">Urup�s</option>
<option value="Valentim Gentil">Valentim Gentil</option>
<option value="Valinhos">Valinhos</option>
<option value="Valparaiso">Valpara�so</option>
<option value="Vargem">Vargem</option>
<option value="Vargem Grande do Sul">Vargem Grande do Sul</option>
<option value="Vargem Grande Paulista">Vargem Grande Paulista</option>
<option value="Varzea Paulista">V�rzea Paulista</option>
<option value="Vera Cruz">Vera Cruz</option>
<option value="Vinhedo">Vinhedo</option>
<option value="Viradouro">Viradouro</option>
<option value="Vista Alegre do Alto">Vista Alegre do Alto</option>
<option value="Vitoria Brasil">Vit�ria Brasil</option>
<option value="Votorantim">Votorantim</option>
<option value="Votuporanga">Votuporanga</option>
<option value="Zacarias">Zacarias</option>
            </select>
        <form:errors path="endereco.cidade" cssStyle="color:red"/>            
            <br/>
    <input type="checkbox" name="novidade" checked="checked"/>
Desejo receber novidades e informa��es sobre o conte�do deste site.
<br/>
       <c:out value="${erro}"/>
     <br/>
       <input type="submit" value="Cadastrar"/>
       <input type="reset" value="LImpar"/>
       </form>
    </body>
</html>