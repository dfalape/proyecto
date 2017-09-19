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
public class TrainingCenter {
    private long code;
    private String name;
    private Regional idRegional;
    
    
    public TrainingCenter()
    {
    }
    
    
    

 // regional_code pendiente... 

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

    public Regional getIdRegional() {
        return idRegional;
    }

    public void setIdRegional(Regional idRegional) {
        this.idRegional = idRegional;
    }
}
