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
 * @author Aktar
 */
@Entity
public class Jobpost implements java.io.Serializable{
 
    
    @Id
    @GeneratedValue
    private Integer jobid;
    @Column
     private String emailid;
    @Column
     private String companynames;
    @Column
     private String title;
    @Column
     private String jobdescription;
    @Column
     private String responsibility;
    @Column
     private String jobnature;
    @Column
     private String joblevel;
    @Column
     private String eduqualification;
    @Column
     private String experience;
    @Column
     private String location;
    @Column
     private String salary;
    @Column
     private String otherbenefits;
    @Column
     private String agelimit;
    @Column
    private int vacancy =0;
    
    @Column
    @Temporal(TemporalType.DATE)
     private Date applylastdate;

    public Integer getJobid() {
        return jobid;
    }

    public void setJobid(Integer jobid) {
        this.jobid = jobid;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getJobdescription() {
        return jobdescription;
    }

    public void setJobdescription(String jobdescription) {
        this.jobdescription = jobdescription;
    }

    public String getResponsibility() {
        return responsibility;
    }

    public void setResponsibility(String responsibility) {
        this.responsibility = responsibility;
    }

    public String getJobnature() {
        return jobnature;
    }

    public void setJobnature(String jobnature) {
        this.jobnature = jobnature;
    }

    public String getJoblevel() {
        return joblevel;
    }

    public void setJoblevel(String joblevel) {
        this.joblevel = joblevel;
    }

    public String getEduqualification() {
        return eduqualification;
    }

    public void setEduqualification(String eduqualification) {
        this.eduqualification = eduqualification;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getOtherbenefits() {
        return otherbenefits;
    }

    public void setOtherbenefits(String otherbenefits) {
        this.otherbenefits = otherbenefits;
    }

    public String getAgelimit() {
        return agelimit;
    }

    public void setAgelimit(String agelimit) {
        this.agelimit = agelimit;
    }

    public Date getApplylastdate() {
        return applylastdate;
    }

    public void setApplylastdate(Date applylastdate) {
        this.applylastdate = applylastdate;
    }

    public int getVacancy() {
        return vacancy;
    }

    public void setVacancy(int vacancy) {
        this.vacancy = vacancy;
    }

    
    
}
