/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.daoimpl;

import com.aktar.alumni.controller.LoginController;
import com.aktar.alumni.dao.UserprofileService;
import com.aktar.alumni.model.Blogpost;
import com.aktar.alumni.model.Comment;
import com.aktar.alumni.model.Educationinfo;
import com.aktar.alumni.model.Jobhistory;
import com.aktar.alumni.model.Skill;
import com.aktar.alumni.model.User;
import com.aktar.alumni.model.Userrole;
import com.aktar.alumni.model.Userprofile;
import com.google.gson.Gson;
import java.util.Date;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpSession;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author C8
 */
@Repository
public class UserprofileServiceImpl implements UserprofileService {

    @Autowired
    SessionFactory sessionFactory;

    User user = new User();
    String pps = "";

//    public void userinfo(HttpSession session) {
//        pps = (String) session.getAttribute("email");
//
//    }
    @Override
    public String insertUserProfile(Userprofile up) {

        Session s = sessionFactory.openSession();
       
        Transaction t = s.getTransaction();
        System.out.println("start");
        t.begin();
        s.save(up);
        t.commit();
        s.close();
        System.out.println("done");
        return null;

    }

    @Override
    public String updateUserProfile(Userprofile up) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.update(up);
        t.commit();
        s.close();
        return null;

    }

    @Override
    public String deleteUserProfile(int id) {
        Session s = sessionFactory.openSession();
        User u = new User();
        Transaction t = s.getTransaction();
        t.begin();
        Userprofile uf =(Userprofile)  s.get(Userprofile.class, id);
        Blogpost bp = new Blogpost();
        Comment cm = new Comment();
        Educationinfo ed = new Educationinfo();
        Jobhistory jp = new Jobhistory();
        Skill sk = new Skill();
        Userrole ur =new Userrole();
        
        
        
        uf.setEmailid(uf.getEmailid());
        bp.setEmailid(uf.getEmailid());
        cm.setEmailid(uf.getEmailid());
        jp.setEmailid(uf.getEmailid());
        sk.setEmailid(uf.getEmailid());
        u.setEmailid(uf.getEmailid());
        ur.setEmailid(uf.getEmailid());

        s.delete(uf);
        s.delete(bp);
        s.delete(cm);
        s.delete(ed);
        s.delete(jp);
        s.delete(sk);
        s.delete(u);
        s.delete(ur);
        
        
        t.commit();
        s.close();
        
        return null;
    }

    @Override
    public String viewUserProfile() {
        Session s = sessionFactory.openSession();

        Transaction t = s.getTransaction();
        t.begin();
        List<Userprofile> userprofile = s.createQuery("from Userprofile").list();
        Gson g = new Gson();
        String profilelistgson = g.toJson(userprofile);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return profilelistgson;

    }

    @Override
    public String viewUserProfilebydate() {
        Session s = sessionFactory.openSession();

        Transaction t = s.getTransaction();
        t.begin();
        List<Userprofile> userprofile = s.createQuery("from Userprofile ORDER BY joindate DESC").list();
        Gson g = new Gson();
        String profilelistgson = g.toJson(userprofile);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return profilelistgson;
    }

    
    
    
    @Override
    public Userprofile viewUserinfo(String email) {//for all user info;

        Session s = sessionFactory.openSession();
        Userprofile upl = new Userprofile();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery(" select u from Userprofile u where emailid=?");

        List<Userprofile> upinfo = q.setParameter(0, email).list();

        t.commit();
        s.close();
        return upinfo.get(0);

    }

    @Override
    public Userprofile addorupdate(String email) { //for add or update profile
        Session s = sessionFactory.openSession();
        Userprofile up = new Userprofile();
        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery(" select u from Userprofile u where emailid=?");

        List<Userprofile> upinfo = q.setParameter(0, email).list();
        if(upinfo.size()==0){
        s.save(up);
        t.commit();
        s.close();
        }else{
        s.update(up);
        t.commit();
        s.close();
        
        }
        
        
        
        return null;
    }
    
    
    

    @Override
    public int oneProfileId(String email) {// for find out profile id ; not use yet.........

        Session s = sessionFactory.openSession();
        Userprofile pos = new Userprofile();

        Transaction t = s.getTransaction();
        t.begin();
        Query q = s.createQuery(" select profileid  from Userprofile  where emailid=?");


        String profileid = q.setParameter(0, email).list().toString();
        int start = 0; // '(' position in string
        int end = 0; // ')' position in string
        for (int i = 0; i < profileid.length(); i++) {
            if (profileid.charAt(i) == '[') // Looking for '(' position in string
            {
                start = i;
            } else if (profileid.charAt(i) == ']') // Looking for ')' position in  string
            {
                end = i;
            }
        }
        String number = profileid.substring(start + 1, end);

        int pkst = Integer.parseInt(number);
        System.out.println("your number is :" + number);

        t.commit();
        s.close();
        return pkst;

    }

    @Override
    public Userprofile viewUserinfos(String email) {

        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Userprofile bp = (Userprofile) s.get(Userprofile.class, email);
        t.commit();
        s.close();
        Gson g = new Gson();
        String userprofile = g.toJson(bp);
        System.out.println("Userprofile is :" + userprofile);
        return bp;

    }

    @Override
    public String viewOneUserProfiles(String emailid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Userprofile bp = (Userprofile) s.get(Userprofile.class, emailid);
        System.out.println("single profile is " + bp);
        t.commit();
        s.close();
        Gson g = new Gson();
        String profilegson = g.toJson(bp);
        System.out.println("all info :" + profilegson);
        return null;

    }

    @Override
    public Userprofile viewOneProfile(Integer id) {

        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Userprofile bp = (Userprofile) s.get(Userprofile.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String bloggson = g.toJson(bp);
        return bp;

    }

    @Override
    public String alumnifriend(String email) {
     Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        System.out.println("email id is  "+email);
//        List<Userprofile> bloglist = s.createQuery("from Userprofile  where emailid=?").setParameter(0, email).list();
//        Userprofile batc = bloglist.get(0);
//        
//        System.out.println("jlksjdlfj  "+batc);
//        String fbatch = batc.getBatch().toString();
//        System.out.println("ljljlkj  "+fbatch);
//        List<Userprofile> allfriends = s.createQuery("from Userprofile  where batch =?").setParameter(0, fbatch).list();
        List<Userprofile> allfriendssd = s.createQuery("FROM Userprofile where batch in (select batch from Userprofile where emailid=?)").setParameter(0, email).list();
        System.out.println("kjlsjdkljfl   "+allfriendssd);
        Gson g = new Gson();
        String batchmate = g.toJson(allfriendssd);
        t.commit();
        s.close();
        System.out.println(batchmate);
        return batchmate;      
    }

    @Override
    public String findbyname(String name) {
        Session s = sessionFactory.openSession();

        Transaction t = s.getTransaction();
        t.begin();
        List<Userprofile> userprofile = s.createQuery("from Userprofile where firstname=?").setParameter(0, name).list();
        Gson g = new Gson();
        String profilelistgson = g.toJson(userprofile);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return profilelistgson;
    }

    
    
    
    

}
