/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import com.aktar.alumni.dao.CareerobjectiveDao;
import com.aktar.alumni.model.Careerobjective;
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
 * @author aktar
 */
@Repository
public class CareerobjectiveDaoService implements CareerobjectiveDao{

    @Autowired
    SessionFactory sessionFactory;
    
    
    @Override
    public String insertCO(Careerobjective co) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(co);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateCO(Careerobjective co,String email) {
        Session s = sessionFactory.openSession();

        String status = "true";
        System.out.println("exam name is " + status);
        Query q = s.createQuery(" select costatus  from Careerobjective  where emailid=?");

        List<Careerobjective> list = q.setParameter(0, email).list();
        System.out.println("level is " + list);
        int i = 0;
        System.out.println("list length is " + list.size());
        
        boolean insert = true;
        for (int j = 0; j < list.size(); j++) {
            if (status.equals(list.get(j))) {
                insert = false;
                Transaction t = s.getTransaction();
            System.out.println("start");
            co.setEmailid(email);
            t.begin();
            s.update(co);
            t.commit();
                break;
            }else{
            insert = true;
            break;
            }
        }
        if (insert) {
            Transaction t = s.getTransaction();
            System.out.println("start");
            t.begin();
            co.setEmailid(email);
            s.save(co);
            t.commit();
        }
        s.close();
        System.out.println("exam add successful");

        
        return null;
        
    }

    @Override
    public Integer deleteCO(int id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Careerobjective bp =(Careerobjective)  s.get(Careerobjective.class, id);
        s.delete(bp);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewCO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String viewuserCO(String email) {
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery(" select u from Careerobjective u where emailid=?");

        List<Careerobjective> list = q.setParameter(0, email).list();

        Gson g = new Gson();
        String skillGson = g.toJson(list);
        System.out.println("education is gjon" + skillGson);
        t.commit();
        s.close();
        
        return skillGson;
    }

    @Override
    public Careerobjective viewOneCO(Integer id) {
        Session s = sessionFactory.openSession();
        Careerobjective upl = new Careerobjective();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery(" select u from Careerobjective u where coid=?");

        List<Careerobjective> upinfo = q.setParameter(0, id).list();

        t.commit();
        s.close();
        return upinfo.get(0);

    }

    @Override
    public Careerobjective viewuserCOb(String email) {
    
        Session s = sessionFactory.openSession();
        Careerobjective upl = new Careerobjective();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery(" select u from Careerobjective u where emailid=?");

        List<Careerobjective> upinfo = q.setParameter(0, email).list();

        t.commit();
        s.close();
        return upinfo.get(0);

    }
    
    
    
}
