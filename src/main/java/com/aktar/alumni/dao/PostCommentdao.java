/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.aktar.alumni.dao;

import com.aktar.alumni.model.Blogpost;
import org.springframework.stereotype.Service;

/**
 *
 * @author C8
 */

@Service
public interface PostCommentdao {
  public String updateblogpost(int orderid, Blogpost order);
    public String deleteblogpost(int postid);
    public String viewuserblogpost(String email);
    public String viewuserblogpostpic(String email);

    public String viewblogpost();

    public Blogpost viewOneblogpost(int orderid);  
}
