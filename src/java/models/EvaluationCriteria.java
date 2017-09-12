/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;



/**
 *
 * @author FERGO
 */
public class EvaluationCriteria 
{
    //declaración de atributos
    private long code;
    private String description;
    private LearningOutcomes idLO;
    //cosntructor por defecto

    public EvaluationCriteria() {
    }
    
    
    //encapsulamiento de atributos

    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LearningOutcomes getIdLO() {
        return idLO;
    }

    public void setIdLO(LearningOutcomes idLO) {
        this.idLO = idLO;
    }
    
}
