/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

//hacemos las debidas importaciones
import dataAccess.Conection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.EstimatedResources;


public class EstimatedResourcesController extends Conection {
    
    //instacias de la clase
    EstimatedResources er = new EstimatedResources();
    private ResultSet rs;
    private List<EstimatedResources> EstimatedResourcesList = new ArrayList<EstimatedResources>();
    //encapsulamiento de la lista

    public List<EstimatedResources> getEstimatedResourcesList() {
        return EstimatedResourcesList;
    }

    public void setEstimatedResourcesList(List<EstimatedResources> EstimatedResourcesList) {
        this.EstimatedResourcesList = EstimatedResourcesList;
    }
    
    //METODOS DE LA CRUD
    //metodo de insertar recursos estimados
     public boolean registerEstimatedR (EstimatedResources er)
    {
      
        
        try
        { //codigo mysql
            String query = "insert into EstimatedResources (code,equipmentDescription,equipmentQuantity,equipmentPrice,"
                    + "humanTalentDescription,humanTalentQuantity,humanTalentPrice,descriptionMaterials,materialsQuantity,"
                    + "materialsPrice) "
                   
                    + " values("+er.getCode()+",'"+er.getEquipementDescription()+"',"+er.getEquipementQuantity()+","+er.getEquipementPrice()+","
                    + "'"+er.getHumanTalentDescription()+"',"+er.getHumanTalentetQuantity()+","+er.getHumanTalentetPrice()+","
                    + "'"+er.getDescriptionMaterials()+"',"+er.getMaterialQuatity()+","+er.getMaterialPrice()+")";
            
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
            System.out.println("error recursos estimados "+e);
            return false;
        }      
    }
     //fin del proceso de insercion
   //consultar último registro
    public boolean consultEstimatedR()
    {
        try
        {
            String query="select * from EstimatedResources";
            rs=this.findQuery(query);
            while(rs.next())
            {
             

                er =new EstimatedResources();
                er.setCode(rs.getLong("code"));
                er.setEquipementDescription(rs.getString("equipmentDescription"));
                er.setEquipementQuantity(rs.getLong("equipmentQuantity"));
                er.setEquipementPrice(rs.getLong("equipmentPrice"));
                er.setHumanTalentDescription(rs.getString("humanTalentDescription"));
                er.setHumanTalentetQuantity(rs.getLong("humanTalentQuantity"));
                er.setHumanTalentetPrice(rs.getLong("humanTalentPrice"));
                er.setDescriptionMaterials(rs.getString("descriptionMaterials"));
                er.setMaterialQuatity(rs.getLong("materialsQuantity"));
                er.setMaterialPrice(rs.getLong("materialsPrice"));
             
                
                this.EstimatedResourcesList.add(er);
            }
            er=null;
            rs=null;
            return true;
        }
        catch(SQLException ex)
        {
            er=null;
            rs=null;
            return false;
        }
    }
    
    
}
