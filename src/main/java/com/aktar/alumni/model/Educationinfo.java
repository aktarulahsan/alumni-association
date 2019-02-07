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
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Aktar
 */
@Entity
public class Educationinfo {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Integer eduinfoid;
    @Column
    private String emailid;
    
    @Column
    private String examtitle;
    @Column
    private String majorsubject;
    @Column
    private String board;
    @Column
    private String institutename;
    @Column
    @Temporal(TemporalType.DATE)
    private Date passingyear;
    @Column
    private String result;
    @Column
    private int duration;
    @Column
    private String achivment;

    public Integer getEduinfoid() {
        return eduinfoid;
    }

    public void setEduinfoid(Integer eduinfoid) {
        this.eduinfoid = eduinfoid;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getExamtitle() {
        return examtitle;
    }

    public void setExamtitle(String examtitle) {
        this.examtitle = examtitle;
    }

    public String getMajorsubject() {
        return majorsubject;
    }

    public void setMajorsubject(String majorsubject) {
        this.majorsubject = majorsubject;
    }

    public String getBoard() {
        return board;
    }

    public void setBoard(String board) {
        this.board = board;
    }

    public String getInstitutename() {
        return institutename;
    }

    public void setInstitutename(String institutename) {
        this.institutename = institutename;
    }

    public Date getPassingyear() {
        return passingyear;
    }

    public void setPassingyear(Date passingyear) {
        this.passingyear = passingyear;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getAchivment() {
        return achivment;
    }

    public void setAchivment(String achivment) {
        this.achivment = achivment;
    }

    
    
    
    
}
