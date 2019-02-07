/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import com.aktar.alumni.dao.EducationinfoDao;
import com.aktar.alumni.model.Educationinfo;
import com.aktar.alumni.model.Userprofile;
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
 * @author Aktar
 */
@Repository
public class EducationinfoService implements EducationinfoDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertUserProfile(Educationinfo up) {

        return null;
    }

    @Override
    public String insertUsereduProfile(Educationinfo up, String email) {
        Session s = sessionFactory.openSession();

        String exam = up.getExamtitle();
        System.out.println("exam name is " + exam);
        Query q = s.createQuery(" select examtitle  from Educationinfo  where emailid=?");

        List<Educationinfo> list = q.setParameter(0, email).list();
        System.out.println("level is " + list);
        int i = 0;
        System.out.println("list length is " + list.size());
        
        boolean insert = true;
        for (int j = 0; j < list.size(); j++) {
            if (exam.equals(list.get(j))) {
                insert = false;
                Transaction t = s.getTransaction();
            System.out.println("start");
            t.begin();
            s.update(up);
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
            s.save(up);
            t.commit();
        }
        s.close();
        System.out.println("exam add successful");

        
        return null;

    }

    @Override
    public String updateUserProfile(Educationinfo up) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.update(up);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer deleteUserProfile(int id) {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Educationinfo bp =(Educationinfo)  s.get(Educationinfo.class, id);
        s.delete(bp);
        t.commit();
        s.close();
        return null;
        
    }

    @Override
    public String viewUserProfile() {

        Session s = sessionFactory.openSession();

        Transaction t = s.getTransaction();
        t.begin();
        List<Userprofile> userprofile = s.createQuery("from Educationinfo").list();
        Gson g = new Gson();
        String profilelistgson = g.toJson(userprofile);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return profilelistgson;

    }

    @Override
    public Educationinfo viewUserinfo(String email) {

        Session s = sessionFactory.openSession();
        Educationinfo upl = new Educationinfo();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery(" select u from Educationinfo u where emailid=?");

        List<Educationinfo> upinfo = q.setParameter(0, email).list();

        t.commit();
        s.close();
        return upinfo.get(0);

    }

    @Override
    public int oneProfileId(String email) {
        return 0;
    }

    @Override
    public Educationinfo viewUserinfos(String email) {
        return null;
    }

    @Override
    public String viewOneUserProfiles(String emailid) {//  for one users education information.
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery(" select u from Educationinfo u where emailid=?  ORDER BY eduinfoid DESC");

        List<Educationinfo> bloglist = q.setParameter(0, emailid).list();

        Gson g = new Gson();
        String bloglistgson = g.toJson(bloglist);
        System.out.println("education is gjon" + bloglistgson);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return bloglistgson;

    }

    @Override
    public Educationinfo viewOneeducation(Integer id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Educationinfo bp = (Educationinfo) s.get(Educationinfo.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String education = g.toJson(bp);
        return bp;
    }

}
