/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.dao;

import com.aktar.alumni.model.Batch;
import org.springframework.stereotype.Service;

/**
 *
 * @author aktar
 */
@Service
public interface BatchDao {

public String insertBatch(Batch bp);
    
    

    public String updateBatch(Batch bp);

    public Integer deleteBatch(int id);

    public String viewBatch();
    
    public String viewuserBatch(String email);
    
   
   

    public Batch viewOneBatch(Integer id);


    
}
