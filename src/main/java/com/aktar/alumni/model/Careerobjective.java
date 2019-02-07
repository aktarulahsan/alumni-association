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
public class Careerobjective {
    
     @Id 
    @GeneratedValue
    private int coid;
    @Column
    private String emailid;
    @Column
    private String careerobjective;
    @Column
    private String costatus = "true";

    public int getCoid() {
        return coid;
    }

    public void setCoid(int coid) {
        this.coid = coid;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getCareerobjective() {
        return careerobjective;
    }

    public void setCareerobjective(String careerobjective) {
        this.careerobjective = careerobjective;
    }

    public String getCostatus() {
        return costatus;
    }

    public void setCostatus(String costatus) {
        this.costatus = costatus;
    }
    
    
    
    
    
    
}
