package br.com.obitecnologia.obi.infra.validador;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public interface Validador 
{

    /**
     *
     * @param email
     * @return
     */
    public boolean isEmailValido(String email);

    /**
     *
     * @param cnpj
     * @return
     */
    public boolean isCnpjValido(String cnpj);

    /**
     *
     * @param cnpj
     * @return
     */
    public boolean isCnpjValido(long cnpj);

    /**
     *
     * @param cpf
     * @return
     */
    public boolean isCpfValido(String cpf);

    /**
     *
     * @param cpf
     * @return
     */
    public boolean isCpfValido(long cpf);
}