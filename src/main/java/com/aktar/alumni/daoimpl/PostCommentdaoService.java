/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import com.aktar.alumni.dao.PostCommentdao;
import com.aktar.alumni.model.Blogpost;
import com.aktar.alumni.model.Comment;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author C8
 */
@Repository
public class PostCommentdaoService implements PostCommentdao{

    @Autowired
    SessionFactory sessionFactory;
    
    
    @Override
    public String updateblogpost(int orderid, Blogpost order) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String deleteblogpost(int postid) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    

    @Override
    public String viewuserblogpost(String email) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        
         List<Blogpost> blogList = s.createQuery("from Blogpost where emailid =? order by blogid  DESC").setParameter(0, email).list();
         List<Comment> blogcommentList = s.createQuery("from Comment order by blogid DESC").list();
         
         for (int i = 0; i < blogList.size(); i++) {
            blogList.get(i).setComments(new ArrayList<Comment>());
        }
         
        List<Integer> parentId = new ArrayList<>();
        List<Integer> childId = new ArrayList<>();
         
        //list all blogid from order
        for (int i = 0; i < blogList.size(); i++) {
            parentId.add(blogList.get(i).getBlogid());            
        }
        //list all blogid from orderdetails
        for (int i = 0; i < blogcommentList.size(); i++) {
            childId.add(blogcommentList.get(i).getBlogid());
        }
        
        
        //List<Comment> subchild;
        try {
            int index=0;
            for (Integer i : childId) {
            if (parentId.contains(i)) {
                //subchild = new ArrayList<>();
                System.out.println(parentId.indexOf(i)+" Match Found " + i);
                //subchild.add(orderDetailList.get(index));                
                blogList.get(parentId.indexOf(i)).getComments().add(blogcommentList.get(index));
                index++;
            }
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        Gson g = new Gson();
        String blogListgson = g.toJson(blogList);
        t.commit();
        s.close();
        System.out.println("-----"+blogListgson);
        return blogListgson;
        
    }

    @Override
    public String viewuserblogpostpic(String email) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        System.out.println("pictuer  is xxxxxxxxxxxxxxxxxxxxxxxx");
        List<Blogpost> blogList = s.createQuery("from Blogpost where emailid =? and picname !=? order by blogid  DESC").setParameter(0, email).setParameter(1, "").list();
        
        Gson g = new Gson();
        String bloglistgson = g.toJson(blogList);
        t.commit();
        s.close();
        return bloglistgson;
    }

    
    
    
    
    
    @Override
    public String viewblogpost() {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        
         List<Blogpost> blogList = s.createQuery("from Blogpost order by blogid DESC").list();
         List<Comment> blogcommentList = s.createQuery("from Comment order by blogid DESC").list();
         
         for (int i = 0; i < blogList.size(); i++) {
            blogList.get(i).setComments(new ArrayList<Comment>());
        }
         
        List<Integer> parentId = new ArrayList<>();
        List<Integer> childId = new ArrayList<>();
         
        //list all blogid from order
        for (int i = 0; i < blogList.size(); i++) {
            parentId.add(blogList.get(i).getBlogid());            
        }
        //list all blogid from orderdetails
        for (int i = 0; i < blogcommentList.size(); i++) {
            childId.add(blogcommentList.get(i).getBlogid());
        }
        
        
        //List<Comment> subchild;
        try {
            int index=0;
            for (Integer i : childId) {
            if (parentId.contains(i)) {
                //subchild = new ArrayList<>();
                System.out.println(parentId.indexOf(i)+" Match Found " + i);
                //subchild.add(orderDetailList.get(index));                
                blogList.get(parentId.indexOf(i)).getComments().add(blogcommentList.get(index));
                index++;
            }
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        Gson g = new Gson();
        String blogListgson = g.toJson(blogList);
        t.commit();
        s.close();
        System.out.println("-----"+blogListgson);
        return blogListgson;
        
         
    }

    @Override
    public Blogpost viewOneblogpost(int orderid) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    
}
