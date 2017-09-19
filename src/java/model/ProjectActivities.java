/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author rober
 */
public class ProjectActivities {
   //atributos de la clase
    private long code;
    private String name;
    private long duration;
    private ProjectPhases projectPhases_code;
    private EstimatedResources EstimedR;
    private LearningOutcomes ra;
    //metodo contructor
    public ProjectActivities(){
    }
    //metodo sobrecargado

    public ProjectActivities(long code, String name, long duration, ProjectPhases projectPhases_code, EstimatedResources EstimedR, LearningOutcomes ra) {
        this.code = code;
        this.name = name;
        this.duration = duration;
        this.projectPhases_code = projectPhases_code;
        this.EstimedR = EstimedR;
        this.ra = ra;
    }
    
    //encapsulamiento de campos

    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getDuration() {
        return duration;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }

    public ProjectPhases getProjectPhases_code() {
        return projectPhases_code;
    }

    public void setProjectPhases_code(ProjectPhases projectPhases_code) {
        this.projectPhases_code = projectPhases_code;
    }

    public EstimatedResources getEstimedR() {
        return EstimedR;
    }

    public void setEstimedR(EstimatedResources EstimedR) {
        this.EstimedR = EstimedR;
    }

    public LearningOutcomes getRa() {
        return ra;
    }

    public void setRa(LearningOutcomes ra) {
        this.ra = ra;
    }
    
    
    
    
}
