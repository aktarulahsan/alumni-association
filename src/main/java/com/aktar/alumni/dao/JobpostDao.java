/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.dao;

import com.aktar.alumni.model.Jobpost;
import org.springframework.stereotype.Service;

/**
 *
 * @author Aktar
 */
@Service
public interface JobpostDao {

    public String insertJobpost(Jobpost jp);

    public String insertJobpost(Jobpost sk, String email);

    public String updateJobpost(Jobpost sk);

    public Integer deleteJobpost(int id);

    public String viewJobposts();

    public String viewuserJobpost(String email);

    public int oneJobpost(String email);

    public Jobpost viewJobpostinfos(int jobid);

    public String viewOneJobpost(String emailid);

    public Jobpost viewOneJobpost(Integer id);

}
