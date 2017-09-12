/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author REDP
 */
public class LearningActivity 
{
    //declaración de atributos
    private long code;
    private String name;
    private String type;
    private long time;
    private String strategy;
    
    private LearningOutcomes idLO;
    
    //constructor por defect
    public LearningActivity()
    {
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public long getTime() {
        return time;
    }

    public void setTime(long time) {
        this.time = time;
    }

    public String getStrategy() {
        return strategy;
    }

    public void setStrategy(String strategy) {
        this.strategy = strategy;
    }

    public LearningOutcomes getIdLO() {
        return idLO;
    }

    public void setIdLO(LearningOutcomes idLO) {
        this.idLO = idLO;
    }


    
    
}
