/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import com.aktar.alumni.dao.CommentService;
import com.aktar.alumni.model.Blogpost;
import com.aktar.alumni.model.Comment;
import com.google.gson.Gson;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

/**
 *
 * @author Aktar
 */

@Repository
public class CommentServiceImpl implements CommentService{

    @Autowired
    SessionFactory sessionFactory;
    
    
    @Override
    public String insertComment(Comment bp) {
    Session s = sessionFactory.openSession();
        
        Transaction t = s.getTransaction();
        t.begin();
        s.save(bp);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String insertUserComments(Comment up, String email) { //not for now ......
       Blogpost bg =new Blogpost();
        Session s = sessionFactory.openSession();
        up.setEmailid(email);
       
        Transaction t = s.getTransaction();
        t.begin();
        s.save(up);
        t.commit();
        s.close();
        return null;
        
    }

    
    
    
    
    @Override
    public String updateComment(Comment bp) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Integer deleteComment(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String viewComment() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Comment> bloglist = s.createQuery("from Comment ORDER BY blogid DESC").list();
        Gson g = new Gson();
        String bloglistgson = g.toJson(bloglist);
        t.commit();
        s.close();
        System.out.println(bloglistgson);
        return bloglistgson;   
    }

    @Override
    public Comment viewOneComment(Integer id) {
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Comment bp = (Comment) s.get(Comment.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String bloggson = g.toJson(bp);
        return bp;
    }
    
    
    
    
}
