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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author C8
 */

@Entity
public class Event {
    @Id
    @GeneratedValue
    private int eventid;
    @Column
    private String emailid;
    @Column
    private String title;
    @Column
    private String description;
    @Column
    private String fees;
    @Column
    private String contactparson;
    @Column
    private String location;
    @Column
    private String contactnumber;
    @Temporal(TemporalType.DATE)
    private Date eventdate = new Date();
    @Temporal(TemporalType.DATE)
    private Date reglastdate;

    public int getEventid() {
        return eventid;
    }

    public void setEventid(int eventid) {
        this.eventid = eventid;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFees() {
        return fees;
    }

    public void setFees(String fees) {
        this.fees = fees;
    }

    public String getContactparson() {
        return contactparson;
    }

    public void setContactparson(String contactparson) {
        this.contactparson = contactparson;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Date getEventdate() {
        return eventdate;
    }

    public void setEventdate(Date eventdate) {
        this.eventdate = eventdate;
    }

    

    public Date getReglastdate() {
        return reglastdate;
    }

    public void setReglastdate(Date reglastdate) {
        this.reglastdate = reglastdate;
    }

    public String getContactnumber() {
        return contactnumber;
    }

    public void setContactnumber(String contactnumber) {
        this.contactnumber = contactnumber;
    }

   
    
    
    
    
    
}
