/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.controller;

import com.aktar.alumni.model.Userprofile;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Aktar
 */
public class Test {

    
    public static void main(String[] args) {
        SessionFactory sessionFactory = null;
       Session s = sessionFactory.openSession();
        
        Transaction t = s.getTransaction();
        t.begin(); 
        Userprofile bp = (Userprofile) s.get(Userprofile.class,1);
        Criteria criteria= s.createCriteria(Userprofile.class).add(Restrictions.eq("email", 1));
        Userprofile up = null;
        Object result = criteria.uniqueResult();
        if (result != null) {
            up = (Userprofile)criteria.uniqueResult();
            System.out.println("Genre="+up.getFathername());
            
        }
        t.commit();
        s.close();
    }
    
}
