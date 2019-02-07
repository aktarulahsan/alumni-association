/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import com.aktar.alumni.dao.EventresponsDao;
import com.aktar.alumni.model.Eventrespons;
import com.aktar.alumni.model.Userprofile;
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
public class EventresponsServiceImpl implements EventresponsDao{

    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public String insertEventrespons(Eventrespons ev) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        
        s.save(ev);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String insertEventrespons(Eventrespons ev, String email) {
        
       Session s= sessionFactory.openSession();
        Transaction t= s.getTransaction();
        t.begin();
        String status;
        
        int evid= ev.getEventid();
       // Query q = s.createQuery(" from Eventrespons where emailid=? and eventid=?");
        System.out.println("event id is "+ evid);
        
        System.out.println(" eeeeeeeemmmmmmmmmmmmmail     "+email+""+"   jobid is sssss"+evid   );
        Query q = s.createQuery("from Eventrespons where eventid=? and emailid=?");
        List<Eventrespons> upinfo = q.setParameter(0, evid).setParameter(1, email ).list();
        System.out.println(" query is "+ upinfo);
        System.out.println(" query is "+ q);
        
        System.out.println("status is ");
        if(upinfo.size() == 0){
        s.save(ev);
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
    public String updateUEventrespons(Eventrespons ev) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Integer deleteEventrespons(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
    @Override
    public String viewfirstnamelastname(Eventrespons email) { //not work at this time 
        
        
        String fgfg= email.getEmailid();
        
        System.out.println("love is ---"+ fgfg);
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery("select firstname, lastname from Userprofile   where emailid=?");
        List<Userprofile> flname = q.setParameter(0, fgfg).list();
        Gson g = new Gson();
        String firstname = g.toJson(flname);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return firstname;   

    }

    
    @Override
    public String viewEventrespons() {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Eventrespons> bloglist = s.createQuery("from Eventrespons ORDER BY blogid DESC").list();
        Gson g = new Gson();
        String bloglistgson = g.toJson(bloglist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return bloglistgson;   
        
    }
    
    
    
    
    
    

    @Override
    public Eventrespons viewEventresponsinfo(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String  oneEventresponsId(Integer id) {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Query q= s.createQuery(" select u from Eventrespons u where eventid=?  ORDER BY responsid DESC");
        
        List<Eventrespons> eventlist = q.setParameter(0, id).list();
        
        Gson g = new Gson();
        String bloglistgson = g.toJson(eventlist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return bloglistgson;
        
        
        
    }

    @Override
    public Eventrespons viewEventresponsinfos(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String viewOneEventrespons(String emailid) {

        Session s= sessionFactory.openSession();
        Transaction t= s.getTransaction();
        t.begin();
        System.out.println("event email is  "+emailid);
        Query q = s.createQuery("FROM Event where eventid in (select eventid from Eventrespons where emailid=? and evstatus=?)");
        List<Eventrespons> applylist = q.setParameter(0, emailid).setParameter(1, "Apply").list();
        Gson g = new Gson();
        String applyjoblistgson = g.toJson(applylist);
        t.commit();
        s.close();
        System.out.println(applyjoblistgson);
        
        return applyjoblistgson;
        

        
    }

    @Override
    public Eventrespons viewOneEventresponsid(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
    
    
    




    
}
