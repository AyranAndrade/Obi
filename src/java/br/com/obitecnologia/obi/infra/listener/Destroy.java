/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.obitecnologia.obi.infra.listener;

import com.mysql.jdbc.AbandonedConnectionCleanupThread;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *
 * @author Ayran Andrade <a href="mailto:ayranandrade@hotmail.com">Email</a>
 */
public class Destroy implements ServletContextListener
{

    @Override
    public void contextInitialized(ServletContextEvent sce)
    {
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) 
    {
    Enumeration<Driver> drivers = DriverManager.getDrivers();     
    Driver driver;
      while(drivers.hasMoreElements())
      {
        try
        {
        driver=drivers.nextElement();
        DriverManager.deregisterDriver(driver);
        }
        catch (SQLException ex)
        {
        System.out.println("ERRO 1 "+ex.getMessage());
        }
      }
      try
      {
      AbandonedConnectionCleanupThread.shutdown();
      }
      catch (InterruptedException e) 
      {
      System.out.println("ERRO 2 "+e.getMessage());
      }
    }    
}