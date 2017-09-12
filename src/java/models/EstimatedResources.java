/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author rober
 */
public class EstimatedResources {
    //Atributos de la clase
    private long code;
    private String equipementDescription;
    private long equipementQuantity;
    private double equipementPrice;
    private double equipementTotal;
    private String humanTalentDescription;
    private long humanTalentetQuantity;
    private double humanTalentetPrice;
    private double humanTelentetTotal;
    private String descriptionMaterials;
    private long materialQuatity;
    private double materialPrice;
    private double materialTotal;
    //metodo constructor por defecto
    public EstimatedResources(){
    }
    //metodo cosntructor sobrecargado

    public EstimatedResources(long code, String equipementDescription, long equipementQuantity, double equipementPrice, double equipementTotal, String humanTalentDescription, long humanTalentetQuantity, double humanTalentetPrice, double humanTelentetTotal, String descriptionMaterials, long materialQuatity, double materialPrice, double materialTotal) {
        this.code = code;
        this.equipementDescription = equipementDescription;
        this.equipementQuantity = equipementQuantity;
        this.equipementPrice = equipementPrice;
        this.equipementTotal = equipementTotal;
        this.humanTalentDescription = humanTalentDescription;
        this.humanTalentetQuantity = humanTalentetQuantity;
        this.humanTalentetPrice = humanTalentetPrice;
        this.humanTelentetTotal = humanTelentetTotal;
        this.descriptionMaterials = descriptionMaterials;
        this.materialQuatity = materialQuatity;
        this.materialPrice = materialPrice;
        this.materialTotal = materialTotal;
    }

   //encapsulamiento de los campos

    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public String getEquipementDescription() {
        return equipementDescription;
    }

    public void setEquipementDescription(String equipementDescription) {
        this.equipementDescription = equipementDescription;
    }

    public long getEquipementQuantity() {
        return equipementQuantity;
    }

    public void setEquipementQuantity(long equipementQuantity) {
        this.equipementQuantity = equipementQuantity;
    }

    public double getEquipementPrice() {
        return equipementPrice;
    }

    public void setEquipementPrice(double equipementPrice) {
        this.equipementPrice = equipementPrice;
    }

    public double getEquipementTotal() {
        return equipementTotal;
    }

    public void setEquipementTotal(double equipementTotal) {
        this.equipementTotal = equipementTotal;
    }

    public String getHumanTalentDescription() {
        return humanTalentDescription;
    }

    public void setHumanTalentDescription(String humanTalentDescription) {
        this.humanTalentDescription = humanTalentDescription;
    }

    public long getHumanTalentetQuantity() {
        return humanTalentetQuantity;
    }

    public void setHumanTalentetQuantity(long humanTalentetQuantity) {
        this.humanTalentetQuantity = humanTalentetQuantity;
    }

    public double getHumanTalentetPrice() {
        return humanTalentetPrice;
    }

    public void setHumanTalentetPrice(double humanTalentetPrice) {
        this.humanTalentetPrice = humanTalentetPrice;
    }

    public double getHumanTelentetTotal() {
        return humanTelentetTotal;
    }

    public void setHumanTelentetTotal(double humanTelentetTotal) {
        this.humanTelentetTotal = humanTelentetTotal;
    }

    public String getDescriptionMaterials() {
        return descriptionMaterials;
    }

    public void setDescriptionMaterials(String descriptionMaterials) {
        this.descriptionMaterials = descriptionMaterials;
    }

    public long getMaterialQuatity() {
        return materialQuatity;
    }

    public void setMaterialQuatity(long materialQuatity) {
        this.materialQuatity = materialQuatity;
    }

    public double getMaterialPrice() {
        return materialPrice;
    }

    public void setMaterialPrice(double materialPrice) {
        this.materialPrice = materialPrice;
    }

    public double getMaterialTotal() {
        return materialTotal;
    }

    public void setMaterialTotal(double materialTotal) {
        this.materialTotal = materialTotal;
    }
    
    
    
}
