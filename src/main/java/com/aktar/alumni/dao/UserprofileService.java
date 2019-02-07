/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.dao;

import com.aktar.alumni.model.User;
import com.aktar.alumni.model.Userprofile;
import org.springframework.stereotype.Service;

/**
 *
 * @author Aktar
 */
@Service
public interface UserprofileService {
    
     public String insertUserProfile(Userprofile up);

    public String updateUserProfile(Userprofile up);

    public String deleteUserProfile(int  id);

   
    
    public String viewUserProfile();
    
    public String viewUserProfilebydate();
    
    public Userprofile viewUserinfo(String email);
    
    public Userprofile addorupdate(String email);
    
    public int oneProfileId(String email);
    
    public Userprofile viewUserinfos(String email);
    
    
    
    public String viewOneUserProfiles(String emailid); 
    public Userprofile viewOneProfile(Integer id);
    
    
    public String alumnifriend(String email);
    
    public String findbyname(String name); 
    
    
    
}
