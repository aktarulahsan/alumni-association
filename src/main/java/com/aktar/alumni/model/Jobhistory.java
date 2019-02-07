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

import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author C8
 */
@Entity
public class Jobhistory {

    @Id
    @GeneratedValue
    private int jobhistoryid;
    @Column
    private String emailid;
    @Column
    private String companynames;
    @Column
    private String designation;
    @Column
    private String department;
    @Column
    private String responsibility;
    @Column
    private String location;
    @Column
    @Temporal(TemporalType.DATE)
    private Date startdate;
    @Column
    @Temporal(TemporalType.DATE)
    private Date enddate;

    public int getJobhistoryid() {
        return jobhistoryid;
    }

    public void setJobhistoryid(int jobhistoryid) {
        this.jobhistoryid = jobhistoryid;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getCompanynames() {
        return companynames;
    }

    public void setCompanynames(String companynames) {
        this.companynames = companynames;
    }

    

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getResponsibility() {
        return responsibility;
    }

    public void setResponsibility(String responsibility) {
        this.responsibility = responsibility;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    
    
    
}
