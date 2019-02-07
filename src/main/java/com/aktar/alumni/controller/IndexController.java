/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.controller;

import com.aktar.alumni.dao.BatchDao;
import com.aktar.alumni.dao.BlogpostService;
import com.aktar.alumni.dao.CareerobjectiveDao;
import com.aktar.alumni.dao.EducationinfoDao;
import com.aktar.alumni.dao.EventDao;
import com.aktar.alumni.dao.EventresponsDao;
import com.aktar.alumni.dao.JobapplyDao;
import com.aktar.alumni.dao.JobhistoryDao;
import com.aktar.alumni.dao.JobpostDao;
import com.aktar.alumni.dao.PostCommentdao;
import com.aktar.alumni.dao.SkillinfoDao;
import com.aktar.alumni.dao.UserprofileService;
import com.aktar.alumni.dao.Userservice;
import com.aktar.alumni.model.Userprofile;
import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author HP
 */
@Controller
public class IndexController {
     @Autowired
    UserprofileService ups;
    
      @Autowired
    BlogpostService blo;

    
    @Autowired
    EducationinfoDao edu;
    
    @Autowired
    private ServletContext servletContext;
    
    @Autowired
    SkillinfoDao skil;
    
    @Autowired
    JobhistoryDao jobh;
    @Autowired
    EventresponsDao er;
    
    @Autowired
    JobapplyDao jap;
    
    @Autowired
    BatchDao bd;

    @Autowired
    JobpostDao jpd;
    
    @Autowired
    CareerobjectiveDao cob;
    
    @Autowired
    EventDao even;
    
    @Autowired
    EventresponsDao evr;
    
    @Autowired
    PostCommentdao pcom;
    @Autowired
    Userservice use;
    
    
    @RequestMapping("/")
    public ModelAndView  homexx(){
        try {
        String pk =  "dipu@gmail.com";
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String education = edu.viewOneUserProfiles(pk);
        String skills = skil.viewOneUserSkill(pk);
        String jobhis = jobh.viewOneUserJobhistory(pk);
        String applyjoblist = jap.viewJobapplyinfo(pk);
        String applyeventlist = er.viewOneEventrespons(pk);
        String  cobj= cob.viewuserCO(pk);
        String bloglist = blo.viewBlogpost();
        String jobcircular = jpd.viewJobposts();
        String events = even.viewEvent();
        String newalumni = ups.viewUserProfilebydate();
            System.out.println("start");
        //String newuser = use.viewnewUsers();
          //  System.out.println("lksjdlfksjdlfkj  "+newuser);
        ModelAndView mv = new ModelAndView("/admin/homes", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        
        mv.addObject("jobcircular", jobcircular);
        mv.addObject("educationlist", education);
        mv.addObject("carrerobj", cobj);
        
        mv.addObject("allblogpostobject", bloglist);
            System.out.println("cobj "+cobj);
        mv.addObject("userprofileobject", profile);
        mv.addObject("skilllist", skills);
        mv.addObject("jobhistorys", jobhis);
        mv.addObject("applyjoblists", applyjoblist);
        mv.addObject("appevent", applyeventlist);
        mv.addObject("allevents", events);
        mv.addObject("newalumni", newalumni);
        //mv.addObject("newuserlist", newuser);
            System.out.println("event resid si xxxxxxxxxxxxxxxxx    "+applyeventlist);
        System.out.println("lksdfkljslfkj:"+profile);
        
        mv.addObject("check", "true");
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
       
    }


    
    
    
    
    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String profile(){
    return "profile";
    }
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home(){
    return "home";
    }
    
   
    
    
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(){
    return "admin";
    }
    
     @RequestMapping(value = "/xxxxx", method = RequestMethod.GET)
    public String admintable(){
    return "admin/profile";
    }
    
    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String test(){
    return "admin/form";
    }
    
    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public String dashboard(){
    return "admin/dashboard";
    }
    
    @RequestMapping(value = "/aboutstudent", method = RequestMethod.GET)
    public String aboutstudent(){
    return "alumni/aboutstudent";
    }
    
   
    
}
