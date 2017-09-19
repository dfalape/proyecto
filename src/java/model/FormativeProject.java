/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author rober
 */
public class FormativeProject {

   
    
    //atributos de la clase 
    private long code;   
    private CurricularDesign curricularDesign_code;
    private TrainingCenter trainingCenter_code;
    private long version;
    private long associatedCode;
    private String projectName;
    private long time;
    private String company;
    private String keyWords;
    private String problematica;
    private String justification;
    private String objetives;
    private String specificObjetives;
    private String beneficiaries;
    private String impact;
    private String restriction;
    private String result;
    private String innovation;
    private String ProductiveValuation;
    private long NumberOfInstructors;
    private long NumberOfAprentices;
    private String DescriptionOfTheEnvironmen;
    private State stateCode;
    //fin de los campos de la base de datos
    private long numberOfLearningOutcomes;
    private long numberTrainingprogram;
    private long sofiaCode;
    private Date date;
    private long programCode;
    private long programVersion;
    private String trainingProject;
   
    
    //metodo constructor por defecto
    public FormativeProject(){
    }
    //metodo constructor sobrecargado

    public FormativeProject(long code, CurricularDesign curricularDesign_code, TrainingCenter trainingCenter_code, long version, long associatedCode, String projectName, long time, String company, String keyWords, String problematica, String justification, String objetives, String specificObjetives, String beneficiaries, String impact, String restriction, String result, String innovation, String ProductiveValuation, long NumberOfInstructors, long NumberOfAprentices, String DescriptionOfTheEnvironmen, long numberOfLearningOutcomes, long numberTrainingprogram, long sofiaCode, Date date, long programCode, long programVersion, String trainingProject) {
        this.code = code;
        this.curricularDesign_code = curricularDesign_code;
        this.trainingCenter_code = trainingCenter_code;
        this.version = version;
        this.associatedCode = associatedCode;
        this.projectName = projectName;
        this.time = time;
        this.company = company;
        this.keyWords = keyWords;
        this.problematica = problematica;
        this.justification = justification;
        this.objetives = objetives;
        this.specificObjetives = specificObjetives;
        this.beneficiaries = beneficiaries;
        this.impact = impact;
        this.restriction = restriction;
        this.result = result;
        this.innovation = innovation;
        this.ProductiveValuation = ProductiveValuation;
        this.NumberOfInstructors = NumberOfInstructors;
        this.NumberOfAprentices = NumberOfAprentices;
        this.DescriptionOfTheEnvironmen = DescriptionOfTheEnvironmen;
        this.numberOfLearningOutcomes = numberOfLearningOutcomes;
        this.numberTrainingprogram = numberTrainingprogram;
        this.sofiaCode = sofiaCode;
        this.date = date;
        this.programCode = programCode;
        this.programVersion = programVersion;
        this.trainingProject = trainingProject;
    }
    
    // encapsulamiento de los campos

    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public CurricularDesign getCurricularDesign_code() {
        return curricularDesign_code;
    }

    public void setCurricularDesign_code(CurricularDesign curricularDesign_code) {
        this.curricularDesign_code = curricularDesign_code;
    }

    public TrainingCenter getTrainingCenter_code() {
        return trainingCenter_code;
    }

    public void setTrainingCenter_code(TrainingCenter trainingCenter_code) {
        this.trainingCenter_code = trainingCenter_code;
    }

    public long getVersion() {
        return version;
    }

    public void setVersion(long version) {
        this.version = version;
    }

    public long getAssociatedCode() {
        return associatedCode;
    }

    public void setAssociatedCode(long associatedCode) {
        this.associatedCode = associatedCode;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public long getTime() {
        return time;
    }

    public void setTime(long time) {
        this.time = time;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getKeyWords() {
        return keyWords;
    }

    public void setKeyWords(String keyWords) {
        this.keyWords = keyWords;
    }

    public String getProblematica() {
        return problematica;
    }

    public void setProblematica(String problematica) {
        this.problematica = problematica;
    }

    public String getJustification() {
        return justification;
    }

    public void setJustification(String justification) {
        this.justification = justification;
    }

    public String getObjetives() {
        return objetives;
    }

    public void setObjetives(String objetives) {
        this.objetives = objetives;
    }

    public String getSpecificObjetives() {
        return specificObjetives;
    }

    public void setSpecificObjetives(String specificObjetives) {
        this.specificObjetives = specificObjetives;
    }

    public String getBeneficiaries() {
        return beneficiaries;
    }

    public void setBeneficiaries(String beneficiaries) {
        this.beneficiaries = beneficiaries;
    }

    public String getImpact() {
        return impact;
    }

    public void setImpact(String impact) {
        this.impact = impact;
    }

    public String getRestriction() {
        return restriction;
    }

    public void setRestriction(String restriction) {
        this.restriction = restriction;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getInnovation() {
        return innovation;
    }

    public void setInnovation(String innovation) {
        this.innovation = innovation;
    }

    public String getProductiveValuation() {
        return ProductiveValuation;
    }

    public void setProductiveValuation(String ProductiveValuation) {
        this.ProductiveValuation = ProductiveValuation;
    }

    public long getNumberOfInstructors() {
        return NumberOfInstructors;
    }

    public void setNumberOfInstructors(long NumberOfInstructors) {
        this.NumberOfInstructors = NumberOfInstructors;
    }

    public long getNumberOfAprentices() {
        return NumberOfAprentices;
    }

    public void setNumberOfAprentices(long NumberOfAprentices) {
        this.NumberOfAprentices = NumberOfAprentices;
    }

    public String getDescriptionOfTheEnvironmen() {
        return DescriptionOfTheEnvironmen;
    }

    public void setDescriptionOfTheEnvironmen(String DescriptionOfTheEnvironmen) {
        this.DescriptionOfTheEnvironmen = DescriptionOfTheEnvironmen;
    }

    public long getNumberOfLearningOutcomes() {
        return numberOfLearningOutcomes;
    }

    public void setNumberOfLearningOutcomes(long numberOfLearningOutcomes) {
        this.numberOfLearningOutcomes = numberOfLearningOutcomes;
    }

    public long getNumberTrainingprogram() {
        return numberTrainingprogram;
    }

    public void setNumberTrainingprogram(long numberTrainingprogram) {
        this.numberTrainingprogram = numberTrainingprogram;
    }

    public long getSofiaCode() {
        return sofiaCode;
    }

    public void setSofiaCode(long sofiaCode) {
        this.sofiaCode = sofiaCode;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public long getProgramCode() {
        return programCode;
    }

    public void setProgramCode(long programCode) {
        this.programCode = programCode;
    }

    public long getProgramVersion() {
        return programVersion;
    }

    public void setProgramVersion(long programVersion) {
        this.programVersion = programVersion;
    }

    public String getTrainingProject() {
        return trainingProject;
    }

    public void setTrainingProject(String trainingProject) {
        this.trainingProject = trainingProject;
    }

    public State getStateCode() {
        return stateCode;
    }

    public void setStateCode(State stateCode) {
        this.stateCode = stateCode;
    }
    
    
    
    
    
    
}
