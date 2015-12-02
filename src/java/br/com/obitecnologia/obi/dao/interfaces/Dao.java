package br.com.obitecnologia.obi.dao.interfaces;

/**
 *
 * @author Ayran Andrade <ayranandrade@hotmail.com>
 * @param <T>
 */
public interface Dao<T>
{

    /**
     *
     * @param t
     */
    public void adiciona(T t);

    /**
     *
     * @param t
     */
    public void atualiza(T t);

    /**
     *
     * @param t
     */
    public void deleta(T t);
}