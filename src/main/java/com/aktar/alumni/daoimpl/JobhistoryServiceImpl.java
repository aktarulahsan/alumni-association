/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import com.aktar.alumni.dao.JobhistoryDao;
import com.aktar.alumni.model.Jobhistory;
import com.google.gson.Gson;
import java.util.List;
import org.hibernate.Query;
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
public class JobhistoryServiceImpl implements JobhistoryDao{
    
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertUserJobhistory(Jobhistory sk) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        
        s.save(sk);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String insertUserJobhistory(Jobhistory sk, String email) {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(sk);
        t.commit();
        s.close();
        return null;
        
        
    }

    @Override
    public String updateUserJobhistory(Jobhistory sk) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.update(sk);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer deleteUserJobhistory(int id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Jobhistory bp =(Jobhistory)  s.get(Jobhistory.class, id);
        s.delete(bp);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewUserJobhistory() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Jobhistory viewJobhistoryinfo(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int oneJobhistorylId(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Jobhistory viewJobhistoryinfos(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String viewOneUserJobhistory(String emailid) {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Query q= s.createQuery(" select u from Jobhistory u where emailid=?  ORDER BY jobhistoryid DESC");
        
        List<Jobhistory> bloglist = q.setParameter(0, emailid).list();
        
        Gson g = new Gson();
        String bloglistgson = g.toJson(bloglist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return bloglistgson;
    }

    @Override
    public Jobhistory viewOneJobhistory(Integer id) {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Jobhistory bp = (Jobhistory) s.get(Jobhistory.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String jobhistoryGson = g.toJson(bp);
        return bp;
    }
    
}
