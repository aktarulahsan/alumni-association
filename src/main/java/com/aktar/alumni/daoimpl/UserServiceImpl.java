/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import com.aktar.alumni.dao.Userservice;
import com.aktar.alumni.model.User;
import com.aktar.alumni.model.Userrole;
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
 * @author HP
 */
@Repository
public class UserServiceImpl implements Userservice{

    
     @Autowired
    SessionFactory sessionFactory;
     
    @Override
    public String acceptUser(User u) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String insertUser(User u) {
        
        
         String status;
        try {
            Session s = sessionFactory.openSession();
            Transaction t = s.getTransaction();
            t.begin();
            Userrole role = new Userrole();
            
            
            Userprofile up= new Userprofile();
            
            role.setEmailid(u.getEmailid());
            role.setPassword(u.getPassword());
            role.setRole(u.getRole());
            up.setEmailid(u.getEmailid());
            up.setJoindate(u.getJoindate());
            
            s.save(u);
            s.save(role);
            s.save(up);
            
            t.commit();
            s.close();
            status = "Success";
            //logger.info("End of insert user method in userservice impl");
        } catch (Exception e) {
            //logger.info("inside catch accept user method in userservice impl");
            e.printStackTrace();
            status = "Fail";
        }
        return status;
    }

    @Override
    public String updateUser(Userrole u) {
        Session s = sessionFactory.openSession();
        
        Transaction t = s.getTransaction();
        t.begin();
        u.setStatus("False");
       
        s.update(u);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteUser(User u) {
         return null;
    }

    @Override
    public String viewUsers(User u) {
         return null;
    }

    @Override
    public User viewUser(String s) {
        Session sc = sessionFactory.openSession();
        Transaction t = sc.getTransaction();
        t.begin();
        User us = (User) sc.get(User.class, s);
        t.commit();
        sc.close();
        //logger.info("end of view user method in userservice impl");
        return us;
    }

    @Override
    public String viewnewUsers() {
        Session s = sessionFactory.openSession();
        
        Transaction t = s.getTransaction();
        t.begin();
        System.out.println("begin xxxxxxxxxxxxxxxxx");
        
        //List<Userprofile> allfriendssd = s.createQuery("FROM Userprofile where batch in (select batch from Userprofile where emailid=?)").setParameter(0, "dipu@gmail.com").list();
        List<Userprofile> userprofile = s.createQuery("FROM Userprofile where emailid in (select emailid from Userrole where status=?)").setParameter(0, "True").list();
        
        System.out.println("yyyyyyyyyyyyyyyyyyyyyyyyy  "+userprofile);
        Gson g = new Gson();
        String profilelistgson = g.toJson(userprofile);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return profilelistgson;
    }

    
    
    
}
