/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.dao;

import com.aktar.alumni.model.User;
import com.aktar.alumni.model.Userrole;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public interface Userservice {
    public String acceptUser(User u);

    public String insertUser(User u);

    public String updateUser(Userrole u);

    public String deleteUser(User u);

    public String viewUsers(User u);
    
    public String viewnewUsers();

    public User viewUser(String s); 
}
