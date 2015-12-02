package br.com.obitecnologia.obi.model.implementacao;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public class EntidadeRowMapper implements RowMapper
{
    @Override
    public Object mapRow(ResultSet rs, int i) throws SQLException 
    {
    Entidade entidade=new Entidade();
    entidade.setNome(rs.getString("nome"));
    entidade.setExcluirConta(rs.getBoolean("ic_excluir_conta"));
    entidade.setExibirAjuda(rs.getBoolean("ic_exibir_ajuda"));
    Login login=new Login();
    login.setEmail(rs.getString("nm_email"));
    login.setSenha(rs.getString("nm_senha"));
    login.setConfirmarLogin(rs.getString("nm_senha"));
    entidade.setLogin(login);
    Telefone tel=new Telefone();
    tel.setDdd(rs.getString("cd_ddd"));
    tel.setNumeroTelefone(rs.getString("cd_telefone"));
    entidade.setTelefone(tel);
    entidade.setCnpj(rs.getString("cd_cnpj_entidade"));
    entidade.setCpf(rs.getString("cd_cpf_entidade"));
    Endereco end=new Endereco();
    end.setRua(rs.getString("nm_endereco"));
    end.setNumero(rs.getString("cd_numero_endereco"));
    end.setComplemento(rs.getString("nm_complemento_endereco"));
    end.setBairro(rs.getString("nm_bairro"));
    entidade.setEndereco(end);
    return entidade;
    }
}