/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dataAccess.Conection;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Competence;
import model.CurricularDesign;
import model.State;

/**
 *
 * @author FERGO
 */
public class CurricularDesignController extends Conection
{
    CurricularDesign cD=new CurricularDesign();
    Competence c= new Competence();
    State s=new State();
    private ResultSet rs;
    private List<CurricularDesign> curricularList = new ArrayList<CurricularDesign>();
    CallableStatement cStmt=null;
    PreparedStatement pst=null;

    public List<CurricularDesign> getCurricularList() {
        return curricularList;
    }

    public void setCurricularList(List<CurricularDesign> curricularList) {
        this.curricularList = curricularList;
    }
    
    
    
    //insertar diseño curricular
    public boolean registerDC (CurricularDesign cD2)
    {
        s=cD2.getStateCode();
        try
        {
            String query = "insert into curriculardesign values("+cD2.getCode()+","+cD2.getVersion()+",'"+cD2.getName()+"',"
                    + "'"+cD2.getStartDate()+"', '"+cD2.getEndingDate()+"', "+cD2.getLectivaDuration()+","
                    + ""+cD2.getPracticeDuration()+", '"+cD2.getLevelOfTraining()+"','"+cD2.getJustification()+"',"
                    + "'"+cD2.getRequirements()+"', '"+cD2.getDescription()+"', '"+cD2.getAcademicRequirements()+"',"
                    + "'"+cD2.getWorkExperiencie()+"', '"+cD2.getMinimumCompetencies()+"','"+cD2.getStrategy()+"',"+s.getCode()+")";
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
            System.out.println("error diseño curricular"+e);
            return false;
        }      
    }
    
    //asignar competencias
    public boolean assignCompetence(CurricularDesign cD2)
    {
        c=cD2.getCurricularDesignCompetence();
        try
        {
            String query = "insert into competence_has_curriculardesign values("+c.getCode()+","+cD2.getCode()+")";
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
            System.out.println("error asignando competencias"+e);
            return false;
        }
        
    }
    
//filtrar diseño curricular
    public boolean filterCurricularD(CurricularDesign cD2)
    {
        try
        {
            String query="select * from curriculardesign where code="+cD2.getCode()+"";
            rs=this.findQuery(query);
            if(rs.next())
            {
                cD=new CurricularDesign();
                cD.setCode(rs.getLong(""));
                cD.setVersion(rs.getLong(""));
                cD.setName(rs.getString(""));
                //agregar demás variables...
                
                this.curricularList.add(cD);
                
            }
        }
        catch(SQLException e)
        {
            System.out.println("error al filtrar diseño curricular");
        }
        
        
        return false;
    }
    
    
//listado diseños curriculares
    public boolean consultCurricularD()
    {
        try
        {
            this.cStmt = this.getCnx().prepareCall("{call consultDC()}");
            this.cStmt.execute();
            rs = this.cStmt.getResultSet();
            while(rs.next())
            {
                cD=new CurricularDesign();
                s=new State();
                cD.setCode(rs.getLong("code"));
                cD.setName(rs.getString("name"));
                cD.setStartDate(rs.getDate("startDate"));
                s.setDescription(rs.getString("description"));
                cD.setStateCode(s);
                this.curricularList.add(cD);
                
            }
            cD=null;
            return true;
        }
        catch(SQLException e)
        {
            System.out.println("error"+e);
        }
        return false;
    }
}
