/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import com.aktar.alumni.dao.BatchDao;
import com.aktar.alumni.model.Batch;
import com.aktar.alumni.model.Userprofile;
import com.google.gson.Gson;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author aktar
 */
@Repository
public class BatchDaoService implements BatchDao{

     @Autowired
    SessionFactory sessionFactory;
    
    
    @Override
    public String insertBatch(Batch bp) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String updateBatch(Batch bp) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Integer deleteBatch(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String viewBatch() {
      Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Batch> batchlist = s.createQuery("from Batch ORDER BY sessionid DESC").list();
        Gson g = new Gson();
        String bloglistgson = g.toJson(batchlist);
        t.commit();
        s.close();
        System.out.println(bloglistgson);
        return bloglistgson;   
    }

    @Override
    public String viewuserBatch(String email) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        System.out.println("email id is  "+email);
        
        List<Userprofile> allfriendssd = s.createQuery("FROM Userprofile where batch in (select batch from Userprofile where emailid=? and batch =?)").setParameter(0, email).setParameter(1, "").list();
        Gson g = new Gson();
        String batchmate = g.toJson(allfriendssd);
        t.commit();
        s.close();
        System.out.println(batchmate);
        return batchmate;      
    }

    @Override
    public Batch viewOneBatch(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
 
    
    
    
    
    
}
