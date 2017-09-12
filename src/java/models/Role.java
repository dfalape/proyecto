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
public class Role 
{
    private long code; 
    private String name;
    
    //constructor por defecto
    public Role()
    {
        
    }
    //consturctor sobrecargado
    public Role(long code, String name)
    {
        this.code =code;
        this.name = name;
    }
    //encapsulamiento
    public void setCode(long code)
    {
        this.code = code;
    }
    
    public long getCode()
    {
        return code;
    }
    
    public void setName(String name)
    {
        this.name = name;
    }
    
    public String getName()
    {
        return name;
    }
    
}
