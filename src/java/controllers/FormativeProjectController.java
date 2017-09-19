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

import model.CurricularDesign;
import model.FormativeProject;
import model.State;
import model.TrainingCenter;

/**
 *
 * @author rober
 */
public class FormativeProjectController extends Conection {
    
    //atributos del mapeo de la base de datos
    FormativeProject proyF=new FormativeProject();
    CurricularDesign dC = new CurricularDesign();
    TrainingCenter tC = new TrainingCenter();
    State s = new State();
    private ResultSet rs;
    private List<FormativeProject> formativeProjectList = new ArrayList<FormativeProject>();
   
    //encapsulamiento de la lista
    public List<FormativeProject> getFormativeProjectList() {
        return formativeProjectList;
    }

    public void setFormativeProjectList(List<FormativeProject> formativeProjectList) {
        this.formativeProjectList = formativeProjectList;
    }
    
    //METODOS DE LA CRUD
    //metodo para insertar
     public boolean registerPF (FormativeProject proyF)
    {
        //llaves foraneas de diseño curricular
        tC = proyF.getTrainingCenter_code(); //centro de formación
        dC = proyF.getCurricularDesign_code(); //diseño curricualr
        s=  proyF.getStateCode();
        try
        { //codigo mysql
            String query = "insert into formativeProject (code,curricularDesign_code,TrainingCenter_code,version,"
                    + "associatedCode,projectName,time,company,keyWords,problem,justification,objective, specificObjectives,"
                    + "beneficiaries,impact,restriction,results,innovation,ProductiveValuation,NumberOfInstructors,"
                    + "NumberOfStudents,DescriptionOfTheEnvironmen,state_code) "
                   
                    + " values("+proyF.getCode()+","+dC.getCode()+","+tC.getCode()+","
                    + ""+proyF.getVersion()+", "+proyF.getAssociatedCode()+", '"+proyF.getProjectName()+"',"
                    + " "+proyF.getTime()+",'"+proyF.getCompany()+"', '"+proyF.getKeyWords()+"',"
                    + "'"+proyF.getProblematica()+"','"+proyF.getJustification()+"', '"+proyF.getObjetives()+"', "
                    + "'"+proyF.getSpecificObjetives()+"', '"+proyF.getBeneficiaries()+"','"+proyF.getImpact()+"',"
                    + "'"+proyF.getRestriction()+"', '"+proyF.getResult()+"','"+proyF.getInnovation()+"',"
                    + "'"+proyF.getProductiveValuation()+"', "+proyF.getNumberOfInstructors()+","
                    + ""+proyF.getNumberOfAprentices()+",'"+proyF.getDescriptionOfTheEnvironmen()+"',"+s.getCode()+")";
            
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
            System.out.println("error proyecot Formativo "+e);
            return false;
        }      
    }
     //fin del proceso de insercion
   //consultar último registro
    public boolean consultProjectForm()
    {
        try
        {
            String query="select * from formativeproject";
            rs=this.findQuery(query);
            while(rs.next())
            {
                //pendiente agregar campo multitabla a la consulta
                //modificar inserción del proyecto formativo y del diseño curricular
                //revisar modelo relacional de workbench y pedir asesoria en cuanto a una planeación pedagógica
                 CurricularDesign dC = new CurricularDesign();
    TrainingCenter tC = new TrainingCenter();
                proyF=new FormativeProject();
                proyF.setCode(rs.getLong("code"));
                dC.setCode(rs.getLong("curricularDesign_code"));
                proyF.setCurricularDesign_code(dC);
                proyF.setVersion(rs.getLong("version"));
                proyF.setAssociatedCode(rs.getLong("associatedCode"));
                proyF.setProjectName(rs.getString("projectName"));
                proyF.setTime(rs.getLong("time"));
                proyF.setCompany(rs.getString("company"));
                proyF.setKeyWords(rs.getString("keyWords"));
                proyF.setProblematica(rs.getString("problem"));
                proyF.setJustification(rs.getString("justification"));
                proyF.setObjetives(rs.getString("objective"));
                proyF.setSpecificObjetives(rs.getString("specificObjectives"));
                proyF.setBeneficiaries(rs.getString("beneficiaries"));
                proyF.setImpact(rs.getString("impact"));
                proyF.setRestriction(rs.getString("restriction"));
                proyF.setResult(rs.getString("results"));
                proyF.setInnovation(rs.getString("innovation"));
                proyF.setProductiveValuation(rs.getString("ProductiveValuation"));
                proyF.setNumberOfInstructors(rs.getLong("NumberOfInstructors"));
                proyF.setNumberOfAprentices(rs.getLong("NumberOfStudents"));
                proyF.setDescriptionOfTheEnvironmen(rs.getString("DescriptionOfTheEnvironmen"));
                this.formativeProjectList.add(proyF);
            }
            proyF=null;
            rs=null;
            return true;
        }
        catch(SQLException ex)
        {
            proyF=null;
            rs=null;
            return false;
        }
    }
    
    
    //procedimeinto para consultar por la llave primaria de la  clase
    public boolean getProjectFortCODG (FormativeProject fC){
         
    try {
    String query = "select * from formativeproject where code="+fC.getCode()+"";
    rs = this.findQuery(query);
    while(rs.next()){
        //
        proyF = new FormativeProject();
        //campos de la consulta
                CurricularDesign dC = new CurricularDesign();
                TrainingCenter tC = new TrainingCenter();
                proyF=new FormativeProject();
                proyF.setCode(rs.getLong("code"));
                dC.setCode(rs.getLong("curricularDesign_code"));
                proyF.setCurricularDesign_code(dC);
                proyF.setVersion(rs.getLong("version"));
                proyF.setAssociatedCode(rs.getLong("associatedCode"));
                proyF.setProjectName(rs.getString("projectName"));
                proyF.setTime(rs.getLong("time"));
                proyF.setCompany(rs.getString("company"));
                proyF.setKeyWords(rs.getString("keyWords"));
                proyF.setProblematica(rs.getString("problem"));
                proyF.setJustification(rs.getString("justification"));
                proyF.setObjetives(rs.getString("objective"));
                proyF.setSpecificObjetives(rs.getString("specificObjectives"));
                proyF.setBeneficiaries(rs.getString("beneficiaries"));
                proyF.setImpact(rs.getString("impact"));
                proyF.setRestriction(rs.getString("restriction"));
                proyF.setResult(rs.getString("results"));
                proyF.setInnovation(rs.getString("innovation"));
                proyF.setProductiveValuation(rs.getString("ProductiveValuation"));
                proyF.setNumberOfInstructors(rs.getLong("NumberOfInstructors"));
                proyF.setNumberOfAprentices(rs.getLong("NumberOfStudents"));
                proyF.setDescriptionOfTheEnvironmen(rs.getString("DescriptionOfTheEnvironmen"));
                this.formativeProjectList.add(proyF);
                
            }
    return true;
    } catch(SQLException e){
    System.out.println("Error en el la consulta de proyecot formativo conl allve foranea ");
    return false;
    }
    
    }
    
    //Procedimiento para editar pyoyecto formativo
    
     public boolean editarProyF (FormativeProject proyF)
    {
        
        
        try
        { //codigo mysql
            String query = "update formativeProject set version="+proyF.getVersion()+", associatedCode="+proyF.getAssociatedCode()+", projectName='"+proyF.getProjectName()+"',"
                    + " time="+proyF.getTime()+", company='"+proyF.getCompany()+"', keyWords='"+proyF.getKeyWords()+"',"
                    + " problem='"+proyF.getProblematica()+"', justification='"+proyF.getJustification()+"', objective='"+proyF.getObjetives()+"', "
                    + " specificObjectives='"+proyF.getSpecificObjetives()+"', beneficiaries='"+proyF.getBeneficiaries()+"', impact='"+proyF.getImpact()+"',"
                    + " restriction='"+proyF.getRestriction()+"', results='"+proyF.getResult()+"', innovation='"+proyF.getInnovation()+"',"
                    + " ProductiveValuation='"+proyF.getProductiveValuation()+"', NumberOfInstructors="+proyF.getNumberOfInstructors()+","
                    + " NumberOfStudents="+proyF.getNumberOfAprentices()+", DescriptionOfTheEnvironmen='"+proyF.getDescriptionOfTheEnvironmen()+"' where code="+proyF.getCode()+"";
            
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
            System.out.println("error proyecot Formativo "+e);
            return false;
        }      
    }
     //fin del proceso para editar
    
    
    
    
}
