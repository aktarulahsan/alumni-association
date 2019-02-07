/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import com.aktar.alumni.dao.JobapplyDao;
import com.aktar.alumni.model.Eventrespons;
import com.aktar.alumni.model.Jobapply;
import com.aktar.alumni.model.Jobhistory;
import com.aktar.alumni.model.Jobpost;
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
 * @author Aktar
 */
@Repository
public class JobapplyDaoService implements JobapplyDao{

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertUserJobapply(Jobapply ja) {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        
        s.save(ja);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String insertUserJobapplystu(Jobapply ja, String email) {
        Session s= sessionFactory.openSession();
        Transaction t= s.getTransaction();
        t.begin();
        String status;
        int jobid=ja.getJobid();
        
        System.out.println(" eeeeeeeemmmmmmmmmmmmmail     "+email+""+"   jobid is sssss"+jobid   );
        Query q = s.createQuery("from Jobapply where jobid=? and emailid=?");
        List<Jobapply> upinfo = q.setParameter(0, jobid).setParameter(1, email).list();
        System.out.println(" query is "+ upinfo);
        System.out.println(" query is "+ q);
        
        
       
        System.out.println("status is ");
        if(upinfo.size() == 0){
        s.save(ja);
        System.out.println("data save");
        t.commit();
        s.close();
        status= "success";
           
        }else{
         System.out.println("data id duplicate");
            status = "fail";
        }
        return status;
    }

    @Override
    public String insertUserJobapplys(Integer ja, String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    

    @Override
    public String updateUserJobapply(Jobapply ja) {
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.update(ja);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer deleteUserJobapply(int id) {
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
    public String viewUserJobapply() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String viewJobapplyinfo(String email) {
        
       Session s= sessionFactory.openSession();
        Transaction t= s.getTransaction();
        t.begin();
        Query q = s.createQuery("FROM Jobpost where jobid in (select jobid from Jobapply where emailid=? and applystatus=?)");
       List<Jobapply> applylist = q.setParameter(0, email).setParameter(1, "Apply").list();
        Gson g = new Gson();
        String applyjoblistgson = g.toJson(applylist);
        t.commit();
        s.close();
        System.out.println(applyjoblistgson);
        
        return applyjoblistgson;
        
        
        
    }

    @Override
    public int oneJobapplyId(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Jobapply viewJobapplyinfos(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String viewOneJobrespons(Integer id) {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Query q= s.createQuery(" select u from Jobapply u where jobid=?  ORDER BY applyid DESC");
        
        List<Jobapply> joblist = q.setParameter(0, id).list();
        
        Gson g = new Gson();
        String bloglistgson = g.toJson(joblist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return bloglistgson;
        
        
        
    }

    @Override
    public Jobapply viewOneJobapplyid(Integer id) {
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Jobapply bp = (Jobapply) s.get(Jobapply.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String jobhistoryGson = g.toJson(bp);
        return bp;
    }

   
    
    
}
