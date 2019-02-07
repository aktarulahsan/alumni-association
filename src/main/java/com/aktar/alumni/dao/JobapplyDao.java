/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.dao;

import com.aktar.alumni.model.Jobapply;
import com.aktar.alumni.model.Jobpost;
import org.springframework.stereotype.Service;

/**
 *
 * @author Aktar
 */
@Service
public interface JobapplyDao {
    
    public String insertUserJobapply(Jobapply ja);

    public String insertUserJobapplys(Integer  ja, String email);
    
    public String insertUserJobapplystu(Jobapply ja, String email);

    public String updateUserJobapply(Jobapply ja);

    public Integer deleteUserJobapply(int id);

    public String viewUserJobapply();

    public String viewJobapplyinfo(String email);

    public int oneJobapplyId(String email);

    public Jobapply viewJobapplyinfos(String email);

    public String viewOneJobrespons(Integer id);

    public Jobapply viewOneJobapplyid(Integer id);

    
    
    
}
