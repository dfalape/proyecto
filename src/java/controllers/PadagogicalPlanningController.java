/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dataAccess.Conection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.FormativeProject;
import models.PadagogicalPlanning;
import models.Person;

/**
 *
 * @author REDP
 */
public class PadagogicalPlanningController extends Conection{
    
     private ResultSet rsP;
     PadagogicalPlanning p = new PadagogicalPlanning();
     private List<PadagogicalPlanning> pList = new ArrayList<PadagogicalPlanning>();
    FormativeProject fP = new FormativeProject();
    //metodos de registrar
    public boolean register(PadagogicalPlanning pP)
    {
        fP=pP.getIdFormativeP();
        try
        {
            String query="insert into padagogicalplanning (cityAndDate, endingDate, startDate, environment, materialD, materialC, formativeProject_code)"
                    + "values('"+pP.getCityDate()+"','"+pP.getEndingDate()+"','"+pP.getStartDate()+"','"+pP.getEnvironment()+"',"
                    + "'"+pP.getMaterialD()+"','"+pP.getMaterialC()+"',"+fP.getCode()+")";
            if(this.updateQuery(query)!=0)
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
            System.out.println("error en crear la planeación pedagógica"+e);
            return false;
        }
    }
    
    public boolean consultP()
    {
        try
        {
            String query = "select * from padagogicalplanning";
            
            this.rsP=this.findQuery(query);
            while(rsP.next())
            {
                 fP = new FormativeProject();
                 p = new PadagogicalPlanning();
                 p.setCode(rsP.getLong(""));
                 p.setStartDate(rsP.getString(""));
                 fP.setCode(rsP.getLong(""));
                 p.setIdFormativeP(fP);
                 this.pList.add(p);
            }
            return true;
        }
        catch(SQLException e)
        {
            return false;
        }
       
    
}

    public List<PadagogicalPlanning> getpList() {
        return pList;
    }

    public void setpList(List<PadagogicalPlanning> pList) {
        this.pList = pList;
    }
          
            
    
}
