/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

//importaciones
import dataAccess.Conection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.ProjectPhases;
import models.FormativeProject;

/**
 *
 * @author rober
 */
public class ProjectPhasesController extends Conection{
    
    //atributos del mapeo de la base de datos
    FormativeProject proyF=new FormativeProject();
    ProjectPhases fasesP = new ProjectPhases();
    private ResultSet rs;
    private List<ProjectPhases> fasesProjectList = new ArrayList<ProjectPhases>();
    //encapsulamiento de la lista

    public List<ProjectPhases> getFasesProjectList() {
        return fasesProjectList;
    }

    public void setFasesProjectList(List<ProjectPhases> fasesProjectList) {
        this.fasesProjectList = fasesProjectList;
    }
    
    //Metodos de la crud
     public boolean registerFasesP (ProjectPhases fasesP)
    {
        //llaves foraneas de diseño curricular
        proyF = fasesP.getFormativeProject(); //fases de proyecto
        
        try
        { //codigo mysql
            String query = "insert into projectPhases (code,name,formativeProject_code) "
                   
                    + " values("+fasesP.getCode()+",'"+fasesP.getName()+"',"+proyF.getCode()+")";
            
            //peticion
            
            int d = this.updateQuery(query);
            if(d!=0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        catch(SQLException e)
        {
            System.out.println("error fases del proyecto "+e);
            return false;
        }      
    }
     //fin del proceso de insercion
   //consultar último registro
    public boolean consultPhasesProject()
    {
        try
        {
            String query="select * from projectPhases";
            rs=this.findQuery(query);
            while(rs.next())
            {
                 FormativeProject proF = new FormativeProject();

                fasesP =new ProjectPhases();
                fasesP.setCode(rs.getLong("code"));
                fasesP.setName(rs.getString("name"));
                proF.setCode(rs.getLong("formativeProject_code"));
                fasesP.setFormativeProject(proF);
                
                this.fasesProjectList.add(fasesP);
            }
            fasesP=null;
            rs=null;
            return true;
        }
        catch(SQLException ex)
        {
            fasesP=null;
            rs=null;
            return false;
        }
    }
    
    /*filtrar fases*/
    public boolean filterPhase(ProjectPhases o)
    {
       proyF=o.getFormativeProject();
       try
       {
           String query = "select code, name from projectphases where formativeProject_code="+proyF.getCode()+"";
           rs= this.findQuery(query);
           while(rs.next())
           {
               fasesP = new ProjectPhases();
               fasesP.setCode(rs.getLong("code"));
               fasesP.setName(rs.getString("name"));
               this.fasesProjectList.add(fasesP);
           }
                   
           return true;
       }
       catch(SQLException e)
       {
           return false;
       }
    }
    
    
   
}
