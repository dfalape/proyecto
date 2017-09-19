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
public class State {
    
    ///declaración de atributos
    private long code;
    private String description;
    
    ////constructor por defecto
    public State()
    {}
    
    ///encapsulamiento de atributos

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
    
}
