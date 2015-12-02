package br.com.obitecnologia.obi.model.implementacao;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public class CadastradorRowMapper implements RowMapper
{
    @Override
    public Object mapRow(ResultSet rs, int rowNum) throws SQLException 
    {
    Cadastrador cadastrador=new Cadastrador();
    cadastrador.setNome(rs.getString("nome"));
    cadastrador.setExibirAjuda(rs.getBoolean("ic_exibir_ajuda"));
    cadastrador.setExcluirConta(rs.getBoolean("ic_excluir_conta"));
    cadastrador.setNovidade(true);
    Login login=new Login();
    login.setEmail(rs.getString("nm_email"));
    login.setSenha(rs.getString("nm_senha"));
    login.setConfirmarLogin(rs.getString("nm_senha"));
    cadastrador.setLogin(login);
    return cadastrador;
    }
}