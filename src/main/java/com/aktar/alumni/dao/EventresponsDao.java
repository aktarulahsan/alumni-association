/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.dao;

import com.aktar.alumni.model.Eventrespons;
import com.aktar.alumni.model.Userprofile;
import org.springframework.stereotype.Service;

/**
 *
 * @author Aktar
 */

@Service
public interface EventresponsDao {
    
     public String insertEventrespons(Eventrespons ev);
     
    public String insertEventrespons(Eventrespons ev, String email );

    public String updateUEventrespons(Eventrespons ev);

    public Integer deleteEventrespons(int id);
    
    public String viewEventrespons();
    
    public String viewfirstnamelastname(Eventrespons email);
    
    public Eventrespons viewEventresponsinfo(String email);
    
    public String oneEventresponsId(Integer id);
    
    public Eventrespons viewEventresponsinfos(String email);
    
    public String viewOneEventrespons(String emailid); 

    public Eventrespons viewOneEventresponsid(Integer id);
    
}
