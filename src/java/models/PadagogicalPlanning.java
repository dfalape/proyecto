/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.Date;

/**
 *
 * @author FERGO
 */
public class PadagogicalPlanning 
{
    ///declaración de atributos
    
    private long code;
    private String cityDate;
    private String endingDate;
    private String startDate;
    private String environment;
    private String materialD;
    private String materialC;
    private FormativeProject idFormativeP;
    
    
    //constructor por defecto
    public PadagogicalPlanning()
    {
        
    }
    
    ///encapsulamiento de los atributos

    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public String getCityDate() {
        return cityDate;
    }

    public void setCityDate(String cityDate) {
        this.cityDate = cityDate;
    }

    public String getEndingDate() {
        return endingDate;
    }

    public void setEndingDate(String endingDate) {
        this.endingDate = endingDate;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public FormativeProject getIdFormativeP() {
        return idFormativeP;
    }

    public void setIdFormativeP(FormativeProject idFormativeP) {
        this.idFormativeP = idFormativeP;
    }

        public String getEnvironment() {
        return environment;
    }

    public void setEnvironment(String environment) {
        this.environment = environment;
    }

    public String getMaterialD() {
        return materialD;
    }

    public void setMaterialD(String materialD) {
        this.materialD = materialD;
    }

    public String getMaterialC() {
        return materialC;
    }

    public void setMaterialC(String materialC) {
        this.materialC = materialC;
    }
    
    
}

