/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.dao;

import com.aktar.alumni.model.Educationinfo;
import org.springframework.stereotype.Service;

/**
 *
 * @author Aktar
 */
@Service
public interface EducationinfoDao {
    
    public String insertUserProfile(Educationinfo up);
     
    public String insertUsereduProfile(Educationinfo up, String email );

    public String updateUserProfile(Educationinfo up);

    public Integer deleteUserProfile(int id);
    
    public String viewUserProfile();
    
    public Educationinfo viewUserinfo(String email);
    
    public int oneProfileId(String email);
    
    public Educationinfo viewUserinfos(String email);
    
    public String viewOneUserProfiles(String emailid); 

    public Educationinfo viewOneeducation(Integer id);
    
    
}
