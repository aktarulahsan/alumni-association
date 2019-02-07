/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author Aktar
 */
@Entity
public class Eventrespons {
    
    @Id
    @GeneratedValue
    private int responsid;
    @Column
    private String emailid; 
    @Column
    private int eventid;
    @Column
    private Date responsdate = new Date();
    @Column
    private String comment;
    @Column
    private String evstatus = "Apply";

    public int getResponsid() {
        return responsid;
    }

    public void setResponsid(int responsid) {
        this.responsid = responsid;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public int getEventid() {
        return eventid;
    }

    public void setEventid(int eventid) {
        this.eventid = eventid;
    }

    
    public Date getResponsdate() {
        return responsdate;
    }

    public void setResponsdate(Date responsdate) {
        this.responsdate = responsdate;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getEvstatus() {
        return evstatus;
    }

    public void setEvstatus(String evstatus) {
        this.evstatus = evstatus;
    }
    
    
    
    
}
