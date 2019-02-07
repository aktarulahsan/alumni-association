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
import com.aktar.alumni.dao.EventresponsDao;
import com.aktar.alumni.dao.JobapplyDao;
import com.aktar.alumni.dao.JobhistoryDao;
import com.aktar.alumni.dao.JobpostDao;
import com.aktar.alumni.dao.SkillinfoDao;
import com.aktar.alumni.dao.UserprofileService;
import com.aktar.alumni.model.Careerobjective;
import com.aktar.alumni.model.Skill;
import com.aktar.alumni.model.Userprofile;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author aktar
 */
@Controller
public class CareerobjectiveController {
    
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
    
   @RequestMapping(value = "/addupdatecarerobjective", params = "EditBlog")
    public String editeducation(HttpSession session, @ModelAttribute("profileobject1") Careerobjective co) {
String pk = (String) session.getAttribute("UserId");
       cob.updateCO(co, pk);
        return "redirect:/aboutalumniprofile";
    }
    
    @RequestMapping("/aboutalumnicareerobj")
    public ModelAndView  aboutcarrerobj(HttpSession session){
        try {
        String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String education = edu.viewOneUserProfiles(pk);
        String skills = skil.viewOneUserSkill(pk);
        String jobhis = jobh.viewOneUserJobhistory(pk);
        String applyjoblist = jap.viewJobapplyinfo(pk);
        String applyeventlist = er.viewOneEventrespons(pk);
        Careerobjective cobj= cob.viewuserCOb(pk);
        
        ModelAndView mv = new ModelAndView("/alumni/addeditcareerobjective", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        mv.addObject("crobj", new Careerobjective());
        mv.addObject("educationlist", education);
        
        mv.addObject("userprofileobject", profile);
        mv.addObject("skilllist", skills);
        mv.addObject("jobhistorys", jobhis);
        mv.addObject("applyjoblists", applyjoblist);
        mv.addObject("appevent", applyeventlist);
            System.out.println("event resid si xxxxxxxxxxxxxxxxx    "+applyeventlist);
        System.out.println("lksdfkljslfkj:"+profile);
        
        mv.addObject("check", "true");
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
       
    }
    
    
    @RequestMapping("/kjhkjh")
    public ModelAndView foredit(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String skills = skil.viewOneUserSkill(pk);
         String profile = ups.viewUserProfile();
         
        ModelAndView mv = new ModelAndView("/alumni/addeditcareerobjective", "skillinfo", new Careerobjective());
        
        mv.addObject("skilllist", skills);
       
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        
        return mv;
    }
    
    
     @RequestMapping("/editalumncareearob")
    public ModelAndView editjobinfo(HttpSession session, @RequestParam("getpid") int cobid) {
        String pk = (String) session.getAttribute("UserId");
        String jobhis = jobh.viewOneUserJobhistory(pk);
         String profile = ups.viewUserProfile();
         Careerobjective onejobinfo = cob.viewOneCO(cobid);
        ModelAndView mv = new ModelAndView("/alumni/addeditcareerobjective", "jobhistoryinfo", onejobinfo);
        System.out.println("jobhistory is "+jobhis);
        mv.addObject("jobhistorys", jobhis);
       
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "false");
        mv.addObject("edit", "true");
        return mv;
    }

 @RequestMapping("/addcareerob")
    public ModelAndView addeducation(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String education = edu.viewOneUserProfiles(pk);
        System.out.println("sldfkjsdlkfjsdlf");
         String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("/alumni/addeditcareerobjective", "careerobjectiv", new Careerobjective());
        mv.addObject("educationlist", education);
        mv.addObject("userprofileobject", profile);
        System.out.println("education"+education);
        mv.addObject("check", "false");
        return mv;
    }




    
}
