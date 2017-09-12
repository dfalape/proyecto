/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Date;



/**
 *
 * @author FERGO
 */
public class Person 
{
    //atributos
    private long code;    
    private String name;      
    private String lastName;    
    private String address;   
    private long number;       
    private Date birthDate;       
    private String password;
    private String email;
    private Role idRole;
    private TrainingCenter idCenter;
    private State idState;
    
    //Constructor por defecto

    public Person() 
    {
    }
    
    //Cosntructor sobrecargado

    public Person(long code, String name, String lastName, String address, long number, Date birthDate, String password, String email, Role idRole, TrainingCenter idCenter, State idState) 
    {
        this.code = code;
        this.name = name;
        this.lastName = lastName;
        this.address = address;
        this.number = number;
        this.birthDate = birthDate;
        this.password = password;
        this.email = email;
        this.idRole = idRole;
        this.idCenter = idCenter;
        this.idState = idState;
    }
    
    //Encapsulamiento codigo

    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }
    
    //Encapsulamiento nombre

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    //Encapsulamiento apellido

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    //Encapsulamiento dirección

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    //Encapsulamiento número

    public long getNumber() {
        return number;
    }

    public void setNumber(long number) {
        this.number = number;
    }
    
    //Encapsulamiento fecha de nacimiento

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }
    
    //Encapsulamiento contraseña
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    //Encapsulamiento correo electrónico

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    //encapsulamiento id rol

    public Role getIdRole() {
        return idRole;
    }

    public void setIdRole(Role idRole) {
        this.idRole = idRole;
    }

    public TrainingCenter getIdCenter() {
        return idCenter;
    }

    public void setIdCenter(TrainingCenter idCenter) {
        this.idCenter = idCenter;
    }

    public State getIdState() {
        return idState;
    }

    public void setIdState(State idState) {
        this.idState = idState;
    }
    
    
    
    
    
    
}
