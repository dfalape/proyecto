/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;



/**
 *
 * @author FERGO
 */
public class Competence {

    private long code;
    private String name;
    private long version;
    private int duration;
    private String KnowledgeConceptsPrinciples; //tener en cuenta modificacioes
    private String Processknowledge;
    private String evaluationCriteria;
    

//cosntructor por defecto
    public Competence() {
    }
//Cosntructor sobrecargadp

    public Competence(long code, String name, long version, int duration, String KnowledgeConceptsPrinciples, String Processknowledge, String evaluationCriteria) {
        this.code = code;
        this.name = name;
        this.version = version;
        this.duration = duration;
        this.KnowledgeConceptsPrinciples = KnowledgeConceptsPrinciples;
        this.Processknowledge = Processknowledge;
        this.evaluationCriteria = evaluationCriteria;
        
    }
    

   
    //encapsulamiento

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

    public long getVersion() {
        return version;
    }

    public void setVersion(long version) {
        this.version = version;
    }
    
    
    //////

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }
    //tener en cuenta encapsulamiento 

    public String getKnowledgeConceptsPrinciples() {
        return KnowledgeConceptsPrinciples;
    }

    public void setKnowledgeConceptsPrinciples(String KnowledgeConceptsPrinciples) {
        this.KnowledgeConceptsPrinciples = KnowledgeConceptsPrinciples;
    }

    public String getProcessknowledge() {
        return Processknowledge;
    }

    public void setProcessknowledge(String Processknowledge) {
        this.Processknowledge = Processknowledge;
    }

    public String getEvaluationCriteria() {
        return evaluationCriteria;
    }

    public void setEvaluationCriteria(String evaluationCriteria) {
        this.evaluationCriteria = evaluationCriteria;
    }
    
    
}
