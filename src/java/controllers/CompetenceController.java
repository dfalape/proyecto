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

/**
 *
 * @author FERGO
 */
public class CompetenceController extends Conection {
    private List<Competence> competenceList = new ArrayList<Competence>();
    private Competence com;
    private ResultSet rs;

    public List<Competence> getCompetenceList() {
        return competenceList;
    }

    public void setCompetenceList(List<Competence> competenceList) {
        this.competenceList = competenceList;
    }

    public Competence getCom() {
        return com;
    }

    public void setCom(Competence com) {
        this.com = com;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }
    
    
    //insertar competencias
    public boolean registerCompetence(Competence c)
    {
        try
        {
            String query= "insert into competence values("+c.getCode()+",'"+c.getName()+"',"+c.getVersion()+","+c.getDuration()+",'"+c.getKnowledgeConceptsPrinciples()+"','"+c.getProcessknowledge()+"','"+c.getEvaluationCriteria()+"')";
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
            return false;
        }    
    }
    
    public boolean consultCompetence()
    {
        try
        {
            String query = "select code from competence";
            rs = this.findQuery(query);
            while(rs.next())
            {
                com=new Competence();
                com.setCode(rs.getLong("code"));
                competenceList.add(com);
            }
            com=null;
            return true;
        }
        catch(SQLException e)
        {
            return false;
        }
    }
    
    
    
}
