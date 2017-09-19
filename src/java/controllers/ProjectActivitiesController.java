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
import model.ProjectPhases;
import model.EstimatedResources;
import model.ProjectActivities;
import model.LearningOutcomes;

public class ProjectActivitiesController extends Conection {

    //atributos del mapeo de la base de datos
    ProjectActivities actP = new ProjectActivities();
    EstimatedResources er = new EstimatedResources();
    ProjectPhases fasesP = new ProjectPhases();
    LearningOutcomes raa = new LearningOutcomes();
    private ResultSet rs;
    private List<ProjectActivities> projectActivitiesList = new ArrayList<ProjectActivities>();
    //encapsulamiento de la lista

    public List<ProjectActivities> getProjectActivitiesList() {
        return projectActivitiesList;
    }

    public void setProjectActivitiesList(List<ProjectActivities> projectActivitiesList) {
        this.projectActivitiesList = projectActivitiesList;
    }

    //METODOS DE LA CRUD
    public boolean registerActvProject(ProjectActivities atcP) {
        //llaves foraneas de diseño curricular
        fasesP = atcP.getProjectPhases_code(); //fases de proyecto

        try { //codigo mysql
            String query = "insert into ProjectActivities (code,name,duration,projectPhases_code) "
                    + " values(" + atcP.getCode() + ",'" + atcP.getName() + "'," + atcP.getDuration() + "," + fasesP.getCode() + ")";

            //peticion
            int d = this.updateQuery(query);
            if (d != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            System.out.println("error en actividades de proyecto " + e);
            return false;
        }
    }
    //fin del proceso de insercion
    //consultar último registro

    public boolean consultActvProject() {
        try {
            String query = "select * from ProjectActivities";
            rs = this.findQuery(query);
            while (rs.next()) {

                ProjectPhases fasesPq = new ProjectPhases();
                actP = new ProjectActivities();

                actP.setCode(rs.getLong("code"));
                actP.setName(rs.getString("name"));
                actP.setDuration(rs.getLong("duration"));
                fasesPq.setCode(rs.getLong("projectPhases_code"));
                actP.setProjectPhases_code(fasesPq);

                this.projectActivitiesList.add(actP);
            }
            actP = null;
            rs = null;
            return true;
        } catch (SQLException ex) {
            actP = null;
            rs = null;
            return false;
        }
    }

    //Metodo de asignacion de Recursos estimados
    public boolean assignEstRe(ProjectActivities actP) {
        this.er = actP.getEstimedR();

        try {
            String query = "insert into ProjectActivities_has_EstimatedResources (ProjectActivities_code,EstimatedResources_code) values(" + actP.getCode() + "," + er.getCode() + ")";
            if (this.updateQuery(query) != 0) {
                return true;
            }

        } catch (SQLException e) {
            System.out.println("error " + e);
        }
        return false;
    }

    //Metodo de asignacion de Resultados de aprendizaje
    public boolean assignResultA(ProjectActivities actP) {
        this.raa = actP.getRa();

        try {
            String query = "insert into learningOutcomes_has_ProjectActivities (learningOutcomes_code,ProjectActivities_code) values(" + raa.getCode() + "," + actP.getCode() + ")";
            if (this.updateQuery(query) != 0) {
                return true;
            }

        } catch (SQLException e) {
            System.out.println("error " + e);
        }
        return false;
    }

    //consultar resultados asignados a la actividad de proyecto.
    public boolean filterRA(ProjectActivities pA) {
        try {
            String query = "select learningoutcomes.code,\n"
                    + "learningoutcomes.name\n"
                    + "from learningoutcomes_has_projectactivities\n"
                    + "inner join learningoutcomes on learningoutcomes_has_projectactivities.learningOutcomes_code = learningOutcomes.code\n"
                    + "where learningoutcomes_has_projectactivities.ProjectActivities_code=" + pA.getCode() + "";
          this.rs=  this.findQuery(query);
          while(rs.next())
          {
              this.raa= new LearningOutcomes();
              this.actP=new ProjectActivities();
              raa.setCode(rs.getLong("code"));
              raa.setName(rs.getString("name"));
              pA.setRa(raa);
              this.projectActivitiesList.add(pA);
          }
          return true;
        } catch (SQLException e) {
            System.out.println("error" + e);
            return false;
        }
        
    }
    
    ///filtrar actividades de projecto
    public boolean filerPA(ProjectActivities p)
    {
        fasesP = p.getProjectPhases_code();
        try
        {
            String query="select code, name from projectactivities where projectPhases_code="+fasesP.getCode()+"";
            rs=this.findQuery(query);
            while(rs.next())
            {
                this.actP = new ProjectActivities();
                actP.setCode(rs.getLong("code"));
                actP.setName(rs.getString("name"));
                this.projectActivitiesList.add(actP);
            }
            return true;
        }
        catch(SQLException e)
        {
            
            System.out.println("Error"+e);
            return false;
        }
    }

}
