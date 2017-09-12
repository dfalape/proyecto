/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dataAccess.Conection;
import java.sql.SQLException;
import models.LearningActivity;
import models.LearningOutcomes;


/**
 *
 * @author REDP
 */
public class LearningActivityController extends Conection
{
    LearningActivity lA = new LearningActivity();
    LearningOutcomes lO  = new LearningOutcomes();
    
    public boolean register(LearningActivity l)
    {
        lO =l.getIdLO();
        try
        {
            String query="insert into learningactivity (name,type,time,strategy,learningOutcomes_code)"
                    + " values('"+l.getName()+"','"+l.getType()+"',"+l.getTime()+",'"+l.getStrategy()+"',"+lO.getCode()+")";
           if(this.updateQuery(query)!= 0)
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
}
    
    


