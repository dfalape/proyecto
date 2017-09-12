/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author User
 */
public class Conection {
    private Connection cnx=null;
    private Statement st=null;
    private ResultSet rsConexion=null;
    private String dataBase="gpai";
    private String url="jdbc:mysql://localhost:3306/"+dataBase;
    private String usuario="root";
    private String password="";

    public Conection() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            cnx=DriverManager.getConnection(url, usuario, password);
        }
        catch(SQLException | ClassNotFoundException e){
            e.printStackTrace();
        }
    }

    public Connection getCnx() {
        return cnx;
    }

    public void setCnx(Connection cnx) {
        this.cnx = cnx;
    }
    
    
    private boolean getConnection()throws SQLException{
        return cnx != null;  
    }
    protected ResultSet findQuery(String query)throws SQLException{
        if(getConnection()){
            st=cnx.createStatement();
            rsConexion=st.executeQuery(query);
        }
        return rsConexion;
    }      
   protected int updateQuery(String query) throws SQLException{
        int i=0;
        if(getConnection())
        {
            st=cnx.createStatement();
            i=st.executeUpdate(query);
        }
        return i;
   }  
}
