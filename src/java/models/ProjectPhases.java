/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.Date;

/**
 *
 * @author rober
 */
public class ProjectPhases {
    //atributos de la clase
    private long code;
    private String name;
    private Date date;
    private String description;
    private FormativeProject formativeProject;
    //metodo constructor por defecto
    public ProjectPhases(){
    }
    //metodo constructor sobrecargado

    public ProjectPhases(long code, String name, Date date, String description, FormativeProject formativeProject) {
        this.code = code;
        this.name = name;
        this.date = date;
        this.description = description;
        this.formativeProject = formativeProject;
    }

   //encapsulamiento de los campos

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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public FormativeProject getFormativeProject() {
        return formativeProject;
    }

    public void setFormativeProject(FormativeProject formativeProject) {
        this.formativeProject = formativeProject;
    }

    
    
}
