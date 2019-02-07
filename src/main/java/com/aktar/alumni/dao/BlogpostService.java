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
 * @author Aktar
 */
@Service
public interface BlogpostService {
    
    public String insertBlogpost(Blogpost bp);
    
    public String insertBlogpostpic(Blogpost bp, String picname);

    public String updateBlogpost(Blogpost bp);
    public String updateBlogpostpic(Blogpost bp, String picname);

    public Integer deleteBlogpost(int id);

    public String viewBlogpost();
    
    public String viewBlogpostpp(String email);
    
    public String viewpicturepost(String email);
    
    public String viewBlogpostbyuser();

    public Blogpost viewOneBlogpost(Integer id);
}
