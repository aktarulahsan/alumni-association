/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.model;

import java.util.Date;
import java.util.List;
import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Aktar
 */

@Entity
public class Blogpost {
    @Id 
    @GeneratedValue
     private Integer blogid;
    @Column
     private String emailid;
    @Column
     private String title;
    @Column
     private String description;
    @Column
    @Temporal(TemporalType.TIMESTAMP)
     private Date postdate= new Date();
    @Column
     private Integer likecount;
    @Column
     private Integer diselikecount;
    @Column
     private String status;
    @Column
    private String picname;

    @Transient
    MultipartFile blogimage;

    public Integer getBlogid() {
        return blogid;
    }

    public void setBlogid(Integer blogid) {
        this.blogid = blogid;
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

    public Date getPostdate() {
        return postdate;
    }

    public void setPostdate(Date postdate) {
        this.postdate = postdate;
    }

    public Integer getLikecount() {
        return likecount;
    }

    public void setLikecount(Integer likecount) {
        this.likecount = likecount;
    }

    public Integer getDiselikecount() {
        return diselikecount;
    }

    public void setDiselikecount(Integer diselikecount) {
        this.diselikecount = diselikecount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public MultipartFile getBlogimage() {
        return blogimage;
    }

    public void setBlogimage(MultipartFile blogimage) {
        this.blogimage = blogimage;
    }

    public String getPicname() {
        return picname;
    }

    public void setPicname(String picname) {
        this.picname = picname;
    }
    
    
    
    
    
    
    @Transient
    List<Comment> comments;

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
    
    
    
    
}
