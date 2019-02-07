/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.dao;

import com.aktar.alumni.model.Comment;
import org.springframework.stereotype.Service;

/**
 *
 * @author Aktar
 */
@Service
public interface CommentService {
    
    public String insertComment(Comment bp);
    
    public String insertUserComments(Comment up, String email );
    
    public String updateComment(Comment bp);

    public Integer deleteComment(int id);

    public String viewComment();
    
    
    public Comment viewOneComment(Integer id);
    
    
}
