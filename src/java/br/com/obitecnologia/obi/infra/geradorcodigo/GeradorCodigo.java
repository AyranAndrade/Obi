package br.com.obitecnologia.obi.infra.geradorcodigo;

/**
 *
 * @author Ayran Andrade <ayranandrade@hotmail.com>
 */
public interface GeradorCodigo 
{

    /**
     *
     * @param tabela
     * @return int
     */
    public int geraIdDaTabela(String tabela);

    /**
     *
     * @return String
     */
    public String geraNomeDeArquivo();
}