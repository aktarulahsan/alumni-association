/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import org.springframework.stereotype.Repository;
import com.aktar.alumni.dao.JobpostDao;
import com.aktar.alumni.model.Jobpost;
import com.aktar.alumni.model.User;
import com.google.gson.Gson;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Aktar
 */
@Repository
public class JobpostServicImpl implements JobpostDao{

    @Autowired
    SessionFactory sessionFactory;
    
    
    @Override
    public String insertJobpost(Jobpost jp) {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(jp);
        t.commit();
        s.close();
        return null;
        
    }
    
    
    
    @Override
    public String insertJobpost(Jobpost sk, String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String updateJobpost(Jobpost jp) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        System.out.println("llkjldjlj   update job");
        t.begin();
        s.update(jp);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer deleteJobpost(int id) {
        Session s = sessionFactory.openSession();
        User u = new User();
        Transaction t = s.getTransaction();
        t.begin();
        Jobpost bp =(Jobpost)  s.get(Jobpost.class, id);
        bp.setEmailid(u.getEmailid());

        s.delete(bp);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewJobposts() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Date dt= new Date();
        String dd= new SimpleDateFormat("yyyy-MM-dd").format(dt);
        
        List<Jobpost> joblist = s.createQuery("from Jobpost ORDER BY jobid DESC").list();
        Gson g = new Gson();
        String bloglistgson = g.toJson(joblist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return bloglistgson;  
    }

    @Override
    public String viewuserJobpost(String email) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Query q= s.createQuery(" select u from Jobpost u where emailid=?  ORDER BY blogid DESC");
        
        List<Jobpost> joblist = q.setParameter(0, email).list();
        
        Gson g = new Gson();
        String jobpostgson = g.toJson(joblist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return jobpostgson;
        
    }

    @Override
    public int oneJobpost(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Jobpost viewJobpostinfos(int jobid) {
        
        Session s = sessionFactory.openSession();
        Jobpost upl = new Jobpost();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery(" select u from Jobpost u where jobid=?");

        List<Jobpost> upinfo = q.setParameter(0, jobid).list();
        System.out.println("lksjlkdj"+upinfo.get(0));
        t.commit();
        s.close();
        return upinfo.get(0);
        
        
    }

    @Override
    public String viewOneJobpost(String emailid) {
 Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery(" select u from Jobpost u where emailid=?  ORDER BY jobid DESC");

        List<Jobpost> jobcirculer = q.setParameter(0, emailid).list();

       Gson g = new Gson();
        String jobcircular = g.toJson(jobcirculer);
        System.out.println("jobcirculer is gjon" + jobcircular);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return jobcircular;
        
        
    }

    @Override
    public Jobpost viewOneJobpost(Integer id) {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Jobpost bp = (Jobpost) s.get(Jobpost.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String education = g.toJson(bp);
        
        return bp;
        
        
    }

    
    
    
}
