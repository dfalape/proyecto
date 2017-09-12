/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dataAccess.Conection;
import java.sql.SQLException;
import models.DescriptionEvidenceLearning;
import models.LearningOutcomes;

/**
 *
 * @author FERGO
 */
public class DescriptionEvidenceLearningController extends Conection
{
    DescriptionEvidenceLearning dEL = new DescriptionEvidenceLearning();
    LearningOutcomes lO = new LearningOutcomes();
    
    public boolean register(DescriptionEvidenceLearning d)
    {
        lO = d.getIdLO();
        try
        {
            String query="insert into descriptionevidencelearning (type,description,learningOutcomes_code) "
                    + "values('"+d.getType()+"','"+d.getDescription()+"',"+lO.getCode()+")";
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
            System.out.println("error"+e);
            return false;
        }
        
    }
}
