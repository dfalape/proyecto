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
import models.TrainingCenter;


/**
 *
 * @author FERGO
 */
public class TrainingCenterController extends Conection{
    private TrainingCenter tC;
    private ResultSet rS;
 private List<TrainingCenter> centerList = new ArrayList<TrainingCenter>();

    public List<TrainingCenter> getCenterList() {
        return centerList;
    }

    public void setCenterList(List<TrainingCenter> centerList) {
        this.centerList = centerList;
    }
 
 
 
 public boolean consultCenter()
 {
     try
     {
         String query = "Select * from trainingcenter";
         rS=this.findQuery(query);
         while(rS.next())
         {
             tC = new TrainingCenter();
             tC.setCode(rS.getLong("code"));
             tC.setName(rS.getString("name"));
             this.centerList.add(tC);
         }
         return true;
     }
     catch(SQLException e)
     {
         System.out.println("error"+e);
         return false;
     }
 }
    
}
