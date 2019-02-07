/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import com.aktar.alumni.dao.SkillinfoDao;
import com.aktar.alumni.model.Skill;
import com.google.gson.Gson;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

/**
 *
 * @author C8
 */
@Repository
public class SkillinfoServiceImpl implements SkillinfoDao{
     @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertUserSkill(Skill sk) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String insertUsereduSkill(Skill sk, String email) {
        Session s = sessionFactory.openSession();

        String skemail = sk.getEmailid();
        System.out.println("exam name is " + skemail);
        Query q = s.createQuery(" select emailid  from Skill  where emailid=?");

        List<Skill> list = q.setParameter(0, email).list();
        boolean insert = true;
        for (int j = 0; j < list.size(); j++) {
            if (skemail.equals(list.get(j))) {
                insert = false;
                break;
            }
        }
        if (insert) {
            Transaction t = s.getTransaction();
            System.out.println("start");
            
            System.out.println("skillllllllllllll   "+email);
            sk.setEmailid(sk.getEmailid());
            t.begin();
            s.save(sk);
            t.commit();
        }
        s.close();
        System.out.println("exam add successful");

        
        return null;
    }

    @Override
    public String updateUserSkill(Skill sk) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Integer deleteUserSkill(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String viewUserSkill() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Skill viewSkillinfo(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int oneSkillId(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Skill viewSkillinfos(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String viewOneUserSkill(String emailid) {
        
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery(" select u from Skill u where emailid=?");

        List<Skill> list = q.setParameter(0, emailid).list();

        Gson g = new Gson();
        String skillGson = g.toJson(list);
        System.out.println("education is gjon" + skillGson);
        t.commit();
        s.close();
        
        return skillGson;
    }

    @Override
    public Skill viewOneSkill(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    
}
