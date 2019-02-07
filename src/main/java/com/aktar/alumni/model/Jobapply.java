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
public class Jobapply implements java.io.Serializable {
    @Id
    @GeneratedValue
     private Integer applyid;
    @Column
     private int jobid;
    @Column
     private String emailid;
    @Column
     private String coverletter;
    @Column
     private double expectedsalary;
    @Column
     private Date applydate = new Date();
    @Column
     private String applystatus;

    public Integer getApplyid() {
        return applyid;
    }

    public void setApplyid(Integer applyid) {
        this.applyid = applyid;
    }

    public int getJobid() {
        return jobid;
    }

    public void setJobid(int jobid) {
        this.jobid = jobid;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getCoverletter() {
        return coverletter;
    }

    public void setCoverletter(String coverletter) {
        this.coverletter = coverletter;
    }

    public double getExpectedsalary() {
        return expectedsalary;
    }

    public void setExpectedsalary(double expectedsalary) {
        this.expectedsalary = expectedsalary;
    }

    public Date getApplydate() {
        return applydate;
    }

    public void setApplydate(Date applydate) {
        this.applydate = applydate;
    }

    

    public String getApplystatus() {
        return applystatus;
    }

    public void setApplystatus(String applystatus) {
        this.applystatus = applystatus;
    }
    

}
