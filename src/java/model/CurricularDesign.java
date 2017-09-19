/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author FERGO
 */
public class CurricularDesign {

    //Atributos
    private long code;
    private long version;
    private String name;
    private Date startDate;
    private String endingDate;
    private int lectivaDuration;
    private int practiceDuration;
    private String levelOfTraining;
    private String justification;
    private String requirements;
    private String description;
    private String academicRequirements;
    private String workExperiencie;
    private String minimumCompetencies;
    private String strategy;
    private Competence CurricularDesignCompetence;
    private State stateCode;
    
    
    
    ///constructor por defecto

    public CurricularDesign() {
    }
    //constructo sobrecargado

    public CurricularDesign(long code, long version, String name, Date startDate, String endingDate, int lectivaDuration, int practiceDuration, String levelOfTraining, String justification, String requirements, String description, String academicRequirements, String workExperiencie, String minimumCompetencies, String strategy, Competence CurricularDesignCompetence, State stateCode) {
        this.code = code;
        this.version = version;
        this.name = name;
        this.startDate = startDate;
        this.endingDate = endingDate;
        this.lectivaDuration = lectivaDuration;
        this.practiceDuration = practiceDuration;
        this.levelOfTraining = levelOfTraining;
        this.justification = justification;
        this.requirements = requirements;
        this.description = description;
        this.academicRequirements = academicRequirements;
        this.workExperiencie = workExperiencie;
        this.minimumCompetencies = minimumCompetencies;
        this.strategy = strategy;
        this.CurricularDesignCompetence = CurricularDesignCompetence;
        this.stateCode = stateCode;
    }
    
    //encapsulamiento

    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public long getVersion() {
        return version;
    }

    public void setVersion(long version) {
        this.version = version;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public String getEndingDate() {
        return endingDate;
    }

    public void setEndingDate(String endingDate) {
        this.endingDate = endingDate;
    }

    public int getLectivaDuration() {
        return lectivaDuration;
    }

    public void setLectivaDuration(int lectivaDuration) {
        this.lectivaDuration = lectivaDuration;
    }

    public int getPracticeDuration() {
        return practiceDuration;
    }

    public void setPracticeDuration(int practiceDuration) {
        this.practiceDuration = practiceDuration;
    }

    public String getLevelOfTraining() {
        return levelOfTraining;
    }

    public void setLevelOfTraining(String levelOfTraining) {
        this.levelOfTraining = levelOfTraining;
    }

    public String getJustification() {
        return justification;
    }

    public void setJustification(String justification) {
        this.justification = justification;
    }

    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAcademicRequirements() {
        return academicRequirements;
    }

    public void setAcademicRequirements(String academicRequirements) {
        this.academicRequirements = academicRequirements;
    }

    public String getWorkExperiencie() {
        return workExperiencie;
    }

    public void setWorkExperiencie(String workExperiencie) {
        this.workExperiencie = workExperiencie;
    }

    public String getMinimumCompetencies() {
        return minimumCompetencies;
    }

    public void setMinimumCompetencies(String minimumCompetencies) {
        this.minimumCompetencies = minimumCompetencies;
    }

    public String getStrategy() {
        return strategy;
    }

    public void setStrategy(String strategy) {
        this.strategy = strategy;
    }

    public Competence getCurricularDesignCompetence() {
        return CurricularDesignCompetence;
    }

    public void setCurricularDesignCompetence(Competence CurricularDesignCompetence) {
        this.CurricularDesignCompetence = CurricularDesignCompetence;
    }

    public State getStateCode() {
        return stateCode;
    }

    public void setStateCode(State stateCode) {
        this.stateCode = stateCode;
    }

    
    
    
    
}
