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
public class LearningOutcomes {

    private long code;
    private String name;
    private String type;
    private Competence com;
    
    ///Constructor

    public LearningOutcomes() {
    }
    
    //sobrecarga

    public LearningOutcomes(long code, String name,String type, Competence com) {
        this.code = code;
        this.name = name;
        this.type=type;
        this.com = com;
    }
    

    //encapsulameinto
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

    public Competence getCom() {
        return com;
    }

    public void setCom(Competence com) {
        this.com = com;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
    
    
}
