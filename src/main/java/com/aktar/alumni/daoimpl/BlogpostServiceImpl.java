/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import com.aktar.alumni.dao.BlogpostService;
import com.aktar.alumni.model.Blogpost;
import com.aktar.alumni.model.User;
import com.google.gson.Gson;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;
import javax.faces.bean.SessionScoped;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Aktar
 */
@Repository
public class BlogpostServiceImpl implements BlogpostService {

    
    @Autowired
    SessionFactory sessionFactory;
    

@Autowired
    private ServletContext servletContext;
    
    

    
    
    @Override
    public String insertBlogpost(Blogpost bp) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(bp);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String insertBlogpostpic(Blogpost bp, String picname) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        System.out.println("xxxxxxxxxxxxxxxxxxxxxx"+picname);
        bp.setPicname(picname);
        s.save(bp);
        t.commit();
        s.close();
        return null;
        
        
    }

    
    
    
    @Override
    public String updateBlogpost(Blogpost bp) {
        
        
        Session s = sessionFactory.openSession();
        User u = new User();
        Transaction t = s.getTransaction();
        t.begin();
        //bp.setEmailid(u.getEmailid());
        
        s.update(bp);
        t.commit();
        s.close();
        return null;
        
        
    }

    @Override
    public String updateBlogpostpic(Blogpost bp, String picname) {
        
        Session s = sessionFactory.openSession();
        User u = new User();
        Transaction t = s.getTransaction();
        t.begin();
        
        bp.setPicname(picname);
        s.update(bp);
        t.commit();
        s.close();
        return null;
        
    }

    
    
    
    @Override
    public Integer deleteBlogpost(int id) {
        Session s = sessionFactory.openSession();
        User u = new User();
        Transaction t = s.getTransaction();
        t.begin();
        Blogpost bp =(Blogpost)  s.get(Blogpost.class, id);
        bp.setEmailid(u.getEmailid());

        s.delete(bp);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewBlogpost() {
    Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Blogpost> bloglist = s.createQuery("from Blogpost ORDER BY blogid DESC").list();
        Gson g = new Gson();
        String bloglistgson = g.toJson(bloglist);
        t.commit();
        s.close();
        System.out.println(bloglistgson);
        return bloglistgson;   
    }
    
    
    
    @Override
     public String viewBlogpostpp(String email) {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Query q= s.createQuery(" select u from Blogpost u where emailid=?  ORDER BY blogid DESC");
        
        List<Blogpost> bloglist = q.setParameter(0, email).list();
        
        Gson g = new Gson();
        String bloglistgson = g.toJson(bloglist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return bloglistgson;
        
        
    }

    @Override
    public String viewpicturepost(String email) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Query q= s.createQuery(" from Blogpost  where emailid=? and picname!=? ORDER BY blogid DESC");
        
        List<Blogpost> bloglist = q.setParameter(0, email).setParameter(1, "null").list();
        
        Gson g = new Gson();
        String bloglistgson = g.toJson(bloglist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return bloglistgson;
        
    }

     
     
     
     
    
    @Override
    public String viewBlogpostbyuser() {// not work yeat 
        
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Blogpost> bloglist = s.createQuery("from Blogpost where emailid=useremail").list();
        Gson g = new Gson();
        String bloglistgson = g.toJson(bloglist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return bloglistgson;
        
    }

    @Override
    public Blogpost viewOneBlogpost(Integer id) {

          
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Blogpost bp = (Blogpost) s.get(Blogpost.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String bloggson = g.toJson(bp);
        return bp;
        
    }


}
