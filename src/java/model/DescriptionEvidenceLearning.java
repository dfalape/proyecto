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
public class DescriptionEvidenceLearning 
{
    //declaración de atributos
    private long code;
    private String description;
    private String type;
    private LearningOutcomes idLO;
    
    ///cosntructor por defecto

    public DescriptionEvidenceLearning() {
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public LearningOutcomes getIdLO() {
        return idLO;
    }

    public void setIdLO(LearningOutcomes idLO) {
        this.idLO = idLO;
    }
    
}
