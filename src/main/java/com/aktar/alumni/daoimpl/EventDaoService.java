/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import com.aktar.alumni.dao.EventDao;
import com.aktar.alumni.model.Event;
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
public class EventDaoService implements EventDao{

    
    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public String insertEvent(Event ev) {
        
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(ev);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String insertEvente(Event ev, String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String updateUEvent(Event ev) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.update(ev);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer deleteEvent(int id) {
        Session s = sessionFactory.openSession();
       
        Transaction t = s.getTransaction();
        t.begin();
        Event evn =(Event)  s.get(Event.class, id);
       

        s.delete(evn);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewEvent() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Event> joblist = s.createQuery("from Event ORDER BY eventid DESC").list();
        Gson g = new Gson();
        String bloglistgson = g.toJson(joblist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return bloglistgson; 
    }

    @Override
    public Event viewEventinfo(String email) {
        
        return null;
    }

    @Override
    public int oneEventId(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Event viewEventinfos(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String viewOneEvent(String emailid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Query q= s.createQuery(" select u from Event u where emailid=?  ORDER BY eventid DESC");
        
        List<Event> eventlist = q.setParameter(0, emailid).list();
        
        Gson g = new Gson();
        String jobpostgson = g.toJson(eventlist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return jobpostgson;
    }

    @Override
    public Event viewOneEventinfo(Integer id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Query q= s.createQuery(" select u from Event u where eventid=?");
        
        List<Event> eventlist = q.setParameter(0, id).list();
        
        Gson g = new Gson();
        String jobpostgson = g.toJson(eventlist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return eventlist.get(0);
    }

    
    
    
    
    
    
    @Override
    public Event viewOneEventid(Integer id) {
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Event bp = (Event) s.get(Event.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String event = g.toJson(bp);
        
        return bp;
    }
    
    
    
    
}
