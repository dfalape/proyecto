/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dataAccess.Conection;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import javax.jms.Session;
import javax.mail.BodyPart;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import model.Person;
import model.Role;
import model.State;
import model.TrainingCenter;

/**
 *
 * @author FERGO
 */
public class PersonController extends Conection
{
    Person e = new Person();
    Role r = new Role();
    TrainingCenter tC = new TrainingCenter();
    State s = new State();
    private List<Person> employeeList = new ArrayList<Person>();
    private ResultSet rsEmployee;
    CallableStatement cStmt=null;
    PreparedStatement pst=null;
   
    //encapsulamiento
    //encapsulameinto objeto empleado
    public Person getE() {
        return e;
        
    }

    public void setE(Person e) {
        this.e = e;
    }
    
    //encapsulamiento array list

    public List<Person> getEmployeeList() {
        return employeeList;
    }

    public void setEmployeeList(List<Person> employeeList) {
        this.employeeList = employeeList;
    }
    
    ///métodos
    //login
    
    public boolean login(Person em)
    {
        try
        {
          this.cStmt = this.getCnx().prepareCall("{call login(?)}");
          this.cStmt.setString(1, em.getEmail());
            this.cStmt.execute();
            this.rsEmployee = this.cStmt.getResultSet();
          if(rsEmployee.next())
          { 
           String email = rsEmployee.getString("email");
           String password =rsEmployee.getString("password");
           long state = rsEmployee.getLong("state_code");
           
             if(email.equals(em.getEmail())&&password.equals(em.getPassword())&&state==2)
             {
                 return true;
             }
             else
             {
                 return false;
             }
          }
          else
          {
              return false;
          }
        }
        catch(SQLException e)
        {
           System.out.println("error"+e);
           return false; 
        }
        
        
    }
    
    ///obtener usuario
    public boolean getPerson(Person em)
    {
        try
        {
            this.cStmt = this.getCnx().prepareCall("{call consultUser(?)}");
            this.cStmt.setString(1, em.getEmail());
            this.cStmt.execute();
            this.rsEmployee = this.cStmt.getResultSet();
            if(rsEmployee.next())
            {
                e = new Person();
                e.setCode(rsEmployee.getLong("code"));
                e.setName(rsEmployee.getString("name"));
                e.setLastName(rsEmployee.getString("lastName"));
                e.setAddress(rsEmployee.getString("address"));
                e.setNumber(rsEmployee.getLong("number"));
                this.employeeList.add(e);
            }
            
        }
        catch(SQLException e)
        {
            System.out.println("error"+e);
        }
        return false;
    }
            
    
    
    
    
    
    ///modificar datos usuario
    
    public boolean update(Person em)
    {
        try 
        {
            this.pst = this.getCnx().prepareStatement("update person set name=?, lastName=?, address=?, number=? where code=?");
            this.pst.setString(1, em.getName());
            this.pst.setString(2, em.getLastName());
            this.pst.setString(3, em.getAddress());
            this.pst.setLong(4, em.getNumber());
            this.pst.setLong(5, em.getCode());
           
       boolean d = this.pst.execute();
            if(d==false)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        catch(SQLException e)
        {
            System.out.println("error"+e);
            return false;
        }
        
    }
    ///cambiar contrasena
    
    public boolean resetPassword(Person em)
    {
        try
        {
            this.pst = this.getCnx().prepareStatement("update person set password=? where code=?");
            this.pst.setString(1, em.getPassword());
            this.pst.setLong(2, em.getCode());
            boolean d = this.pst.execute();
            if(d==false)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        catch(SQLException e)
        {
            System.out.println("error"+e);
            return false;
        }
              
    }
    
    //Enviar correo con link de recuperación
    public boolean sendEmail(Person em)
    {
        try
        {
       
        }
        catch(Exception e)
        {
            
        }
        return false;
        
    }
    
    ///Registrar empleados nuevos
    public boolean register(Person em)
    {
        //agregar estado para poder hacer insercion
        tC=em.getIdCenter();
        s=em.getIdState();
        try
        {
            this.pst = this.getCnx().prepareStatement("insert into person values (?,?,?,?,?,?,?,?,?,?)");
            this.pst.setLong(1, em.getCode());
            this.pst.setString(2, em.getName());
            this.pst.setString(3, em.getLastName());
            this.pst.setString(4, em.getAddress());
            this.pst.setLong(5, em.getNumber());
            this.pst.setDate(6, em.getBirthDate());
            this.pst.setString(7, em.getPassword());
            this.pst.setString(8, em.getEmail());
            this.pst.setLong(9, tC.getCode());
            this.pst.setLong(10, s.getCode());
            
           boolean d = this.pst.execute();
           if(d==false)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        catch(Exception e)
        {
            System.out.println("error"+e);
            return false;
        }
              
    }
    
    ///listar personas
    public boolean consultList()
    {
        try
        {
             this.cStmt = this.getCnx().prepareCall("{call consultPerson()}");
            this.cStmt.execute();
            this.rsEmployee = this.cStmt.getResultSet();
           
            while(rsEmployee.next())
            {
                s= new State();
                e = new Person();
                tC = new  TrainingCenter();
                e.setCode(rsEmployee.getLong("code"));
                e.setName(rsEmployee.getString("name"));
                e.setLastName(rsEmployee.getString("lastName"));
                e.setAddress(rsEmployee.getString("address"));
                e.setNumber(rsEmployee.getLong("number"));
                e.setBirthDate(rsEmployee.getDate("birthDate"));
                e.setEmail(rsEmployee.getString("email"));
                s.setDescription(rsEmployee.getString("description"));
                e.setIdState(s);
                tC.setName(rsEmployee.getString("cN"));
                e.setIdCenter(tC);
                this.employeeList.add(e);
            }
            e=null;
            return true;
        }
        catch(SQLException e)
        {
            System.out.println("error"+e);
            return false;
        }
              
        
    }
    
    ///Roles
    //asignación de roles...
    public int assignRole(Person em)
    {
        try
        {
            r=em.getIdRole();
            String query= "insert into person_has_role (person_code, role_code) values ("+em.getCode()+","+r.getCode()+")";
            int d=this.updateQuery(query);
            if(d!=0)
            {
                return d;
            }
            else
            {
                return 0;
            }
        }
        catch(SQLException e)
        {
            System.out.println("error"+e);
            return 0;
        }
        
    }
    //consultar roles...
    public boolean cosnultRole(Person em)
    {
        
        try
        {
            
            String query="select role.name from (person_has_role inner join role on person_has_role.role_code = role.code)where person_has_role.person_code="+em.getCode()+"";
            rsEmployee = this.findQuery(query);
            while(rsEmployee.next())
            {
                r=new Role();
                e=new Person();
                r.setName(rsEmployee.getString("name"));
                e.setIdRole(r);
                this.employeeList.add(e);
            }
            r=null;
            e=null;
            return true;
        }
        catch(SQLException e)
        {
            return false;
        }
        
    }
    //inhabilitar roles...
    
    
}
