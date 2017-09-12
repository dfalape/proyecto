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
import models.Competence;
import models.LearningOutcomes;
import models.ProjectActivities;

/**
 *
 * @author FERGO
 */
public class LearningOutcomesController extends Conection{
    Competence com= new Competence();
    ProjectActivities actvP = new ProjectActivities();
    LearningOutcomes  lC = new LearningOutcomes();
    private ResultSet rs;
    private List<LearningOutcomes> learningOutcomesList = new ArrayList<>();
    
    //inserción
    public boolean registerLearningOutcomes(LearningOutcomes lC)
    {
        com = lC.getCom();
        try
        {
            String query = "insert into learningoutcomes values("+lC.getCode()+",'"+lC.getName()+"','"+lC.getType()+"', "+com.getCode()+")";
            int d=this.updateQuery(query);
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
             return false;
        }
       
    }
    
    //consulitar ra
     public boolean consultRA() {
        try {
            String query = "select * from learningOutcomes";
            rs = this.findQuery(query);
            while (rs.next()) {
                
               
                Competence comp = new Competence();
                lC = new LearningOutcomes();
                
                lC.setCode(rs.getLong("code"));
                lC.setName(rs.getString("name"));
          
                comp.setCode(rs.getLong("competence_code"));
                lC.setCom(comp);

                this.learningOutcomesList.add(lC);
            }
            lC = null;
            rs = null;
            return true;
        } catch (SQLException ex) {
             lC = null;
            rs = null;
            return false;
        }
    }

    public List<LearningOutcomes> getLearningOutcomesList() {
        return learningOutcomesList;
    }

    public void setLearningOutcomesList(List<LearningOutcomes> learningOutcomesList) {
        this.learningOutcomesList = learningOutcomesList;
    }
    
    
}
