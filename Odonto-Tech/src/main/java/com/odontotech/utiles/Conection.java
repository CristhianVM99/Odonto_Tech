
package com.odontotech.utiles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


public class Conection {
   static String driver="org.postgresql.Driver";
     static String url="jdbc:postgresql://localhost:5432/odonto_tech";//odonto_tech
     static String usuario="postgres"; //postgres
     static String password="admin"; //admin

    protected Connection conn;
    
  public Conection(){
   conn=null;   
   
  }  
   public void conectar(){
            try {
          try { 
              
                Class.forName(driver);
            } catch (ClassNotFoundException ex) {
                System.out.println("Error al registrar el driver de PostgreSQL: " + ex);
            }
            
      conn=DriverManager.getConnection(url,usuario,password);    
      
      }catch(java.sql.SQLException ex){
       JOptionPane.showMessageDialog(null,"Error: "+ex.getMessage());   
      }
      // return conn;
   } 
    
    public void desconn()
    {
        try {
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
 
}
