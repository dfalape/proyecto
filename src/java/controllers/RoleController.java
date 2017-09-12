/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dataAccess.Conection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Role;

/**
 *
 * @author FERGO
 */
public class RoleController extends Conection
{
    Role r;
    private List<Role> roleList = new ArrayList<Role>();
    private ResultSet rs;
    //encapsulameinto

    public List<Role> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<Role> roleList) {
        this.roleList = roleList;
    }
    
    
    public boolean consultRole()
    {
        try
        {
            String query = "select * from role";
            rs = this.findQuery(query);
            while(rs.next())
            {
                r=new Role();
                r.setCode(rs.getLong("code"));
                r.setName(rs.getString("name"));
                roleList.add(r);
            }
            r=null;
            return true;
        }
        catch(SQLException e)
        {
            return false;
        }
    }
    
}
