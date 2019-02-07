/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.dao;

import com.aktar.alumni.model.Batch;
import com.aktar.alumni.model.Careerobjective;
import org.springframework.stereotype.Service;

/**
 *
 * @author aktar
 */
@Service
public interface CareerobjectiveDao {


    public String insertCO(Careerobjective co);
    public String updateCO(Careerobjective co, String email);

    public Integer deleteCO(int id);

    public String viewCO();
    
    public String viewuserCO(String email);
    
    public Careerobjective viewuserCOb(String email);
    
   
   

    public Careerobjective viewOneCO(Integer id);


    
}
