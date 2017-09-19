/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dataAccess.Conection;
import java.sql.SQLException;
import model.EvaluationCriteria;
import model.LearningOutcomes;

/**
 *
 * @author FERGO
 */
public class EvaluationCriteriaController extends Conection{
    /*declaración de atributos*/
    EvaluationCriteria eC = new EvaluationCriteria();
    LearningOutcomes lO = new LearningOutcomes();
    
    
    /*metodos*/
    public boolean register(EvaluationCriteria eC)
    {
        lO=eC.getIdLO();
        try
        {
            String query = "insert into evaluationcriteria (description, learningOutcomes_code) "
                    + "values('"+eC.getDescription()+"',"+lO.getCode()+")";
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
