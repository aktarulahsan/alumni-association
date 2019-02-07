/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author aktar
 */

@Entity
public class Batch {
    
    @Id 
    @GeneratedValue
    private int sessionid;
    @Column
    private String sbatch;

    public int getSessionid() {
        return sessionid;
    }

    public void setSessionid(int sessionid) {
        this.sessionid = sessionid;
    }

    public String getSbatch() {
        return sbatch;
    }

    public void setSbatch(String sbatch) {
        this.sbatch = sbatch;
    }

   
    
    
    
}
