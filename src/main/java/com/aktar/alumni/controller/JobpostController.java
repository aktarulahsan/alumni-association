/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.controller;

import com.aktar.alumni.dao.EducationinfoDao;
import com.aktar.alumni.dao.JobapplyDao;
import com.aktar.alumni.dao.JobhistoryDao;
import com.aktar.alumni.dao.JobpostDao;
import com.aktar.alumni.dao.SkillinfoDao;
import com.aktar.alumni.dao.UserprofileService;
import com.aktar.alumni.model.Jobapply;
import com.aktar.alumni.model.Jobhistory;
import com.aktar.alumni.model.Jobpost;
import com.aktar.alumni.model.Userprofile;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Aktar
 */
@Controller
public class JobpostController {

    @Autowired
    JobpostDao jpd;

    @Autowired
    UserprofileService ups;

    @Autowired
    JobapplyDao jap;
    
    @Autowired
    EducationinfoDao edu;
    
     @Autowired
    SkillinfoDao skil;
    
    @Autowired
    JobhistoryDao jobh;
    
    

    @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "applylastdate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }

    @RequestMapping("/jobcircular")
    public ModelAndView showJobHistory(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String jobcircular = jpd.viewOneJobpost(pk);
        String profile = ups.viewUserProfile();

        ModelAndView mv = new ModelAndView("jobpost", "jobcicular", new Jobpost());
        System.out.println("jobhistory is " + jobcircular);
        mv.addObject("jobcircular", jobcircular);

        mv.addObject("userprofileobject", profile);

        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
    
    
    

    @RequestMapping("/addjobcircularpage")
    public ModelAndView showaddJobcircular(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("addeditjobpost", "jobcicular", new Jobpost());
        mv.addObject("userprofileobject", profile);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addjobcircular", params = "Addjob")
    public String addjobshistiory(HttpSession session, @ModelAttribute("jobcicular") Jobpost jp) {
        String pk = (String) session.getAttribute("UserId");
        jpd.insertJobpost(jp);
        return "redirect:/jobcircular";
    }

    @RequestMapping(value = "/updatejobcircular", params = "EditBlog")
    public String updatejobshistiory(HttpSession session, @ModelAttribute("jobcicular") Jobpost jp) {
        String pk = (String) session.getAttribute("UserId");
        jpd.updateJobpost(jp);
        return "redirect:/jobcircular";
    }

    @RequestMapping("removejobcircular/{Id}")
    public String removeblogpost(@PathVariable("Id") int jobid) {
        jpd.deleteJobpost(jobid);
        return "redirect:/jobcircular";
    }

    @RequestMapping(value = "/edituserjobcircular")
    public ModelAndView editjobinfo(@RequestParam("getpid") int jobid) {
        System.out.println("start on the page ");
        Jobpost onejobinfo = jpd.viewOneJobpost(jobid);
        String profiles = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("addeditjobpost", "jobcicular", onejobinfo);
        mv.addObject("userprofileobject", profiles);
        mv.addObject("check", "false");

        return mv;
    }

//    view all job Circular ...................................................................................................
    @RequestMapping("/showalljobcircular")
    public ModelAndView showallJobcircular(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String jobcircular = jpd.viewJobposts();
        String profile = ups.viewUserProfile();

        ModelAndView mv = new ModelAndView("viewalljobcircular", "jobcicular", new Jobpost());
        System.out.println("jobhistory is " + jobcircular);
        mv.addObject("jobcircular", jobcircular);

        mv.addObject("userprofileobject", profile);

        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }

    @RequestMapping(value = "/viewonejobcircular")
    public ModelAndView viewonejobcircular(@RequestParam("getpid") int jobid) {
        System.out.println("start on the page ");

        Jobpost onejobinfo = jpd.viewOneJobpost(jobid);
        String profiles = ups.viewUserProfile();

        ModelAndView mv = new ModelAndView("viewonejobcircular", "jobcicular", onejobinfo);
        mv.addObject("applyjob", new Jobapply());
        mv.addObject("userprofileobject", profiles);

        return mv;
    }

    @RequestMapping(value = "/applyjob", params = "Addjob")
    public String applyjob(HttpSession session, @ModelAttribute("jobcicular") Jobapply ja) {
        String pk = (String) session.getAttribute("UserId");
        int jobid = ja.getJobid();
        
        System.out.println("pk   is   "+pk+ "  "+ " jobid is  "+jobid);
        String jobapply = jap.insertUserJobapplystu(ja, pk);
        
        if(jobapply.equalsIgnoreCase("success")){
            ModelAndView mv= new ModelAndView("showalljobcircular");
            mv.addObject(jobapply, "success");
            return "redirect:/showalljobcircular";
        }else{
                    
            ModelAndView mv= new ModelAndView("login");
            mv.addObject(jobapply, "fail");
            return "redirect:/showalljobcircular";
                    }
        
        }
    
//    @RequestMapping(value = "/applyjobs", params = "Addjob")//@RequestParam("getpid") int jobid
//    public ModelAndView applyjobs(HttpSession session, @RequestParam("getpid") int jobid) {
//        String pk = (String) session.getAttribute("UserId");
//        
//        System.out.println("pk   is   "+pk+ "  "+ " jobid is  "+jobid);
//        String jobapply = jap.insertUserJobapplystu(jobid, pk);
//        
//        if(jobapply.equalsIgnoreCase("success")){
//            ModelAndView mv= new ModelAndView("showalljobcircular");
//            mv.addObject(jobapply, "success");
//            return mv;
//        }else{
//                    
//            ModelAndView mv= new ModelAndView("login");
//            mv.addObject(jobapply, "fail");
//            return mv;
//                    }
//        
//        }
    
    
        
        //return "redirect:/showalljobcircular";
    

//    view all job apply user list ........................................................................
    @RequestMapping(value = "/showjobrespons")
    public ModelAndView viewjobapplylist(HttpSession session, @RequestParam("getpid") int evid) {

        String pk = (String) session.getAttribute("UserId");
        System.out.println("I love you .");
        //String uemail= ev.getEmailid();
        //System.out.println("sdfsdf"+uemail);
        String eventrespons = jap.viewOneJobrespons(evid);
        String profiles = ups.viewUserProfile();
        Jobpost jobinfo = jpd.viewOneJobpost(evid);

        //String uesrname = evr.viewfirstnamelastname(ev);
        Userprofile profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("jobapplylist", "viewalljobrespons", eventrespons);
        mv.addObject("applyevent", new Jobapply());
        mv.addObject("onejobinfo", jobinfo);
        mv.addObject("userprofile", profilelist);
        mv.addObject("useremail", new Userprofile());
        //mv.addObject("firstnamelastname", uesrname);
        mv.addObject("userprofileobject", profiles);

        return mv;

    }
    
    
    @RequestMapping("/prosonalcvof")
    public ModelAndView  aboutoneusercv(HttpSession session, @RequestParam("getpid") String email){
        try {
        String pk =  session.getAttribute("UserId").toString();
        String ps= email;
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(ps);
        String education = edu.viewOneUserProfiles(ps);
        String skills = skil.viewOneUserSkill(ps);
        String jobhis = jobh.viewOneUserJobhistory(ps);
        ModelAndView mv = new ModelAndView("viewempcv", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        mv.addObject("educationlist", education);
        mv.addObject("uparsonalprofile", profilelist);
        mv.addObject("userprofileobject", profile);
        mv.addObject("skilllist", skills);
        mv.addObject("jobhistorys", jobhis);
        
        System.out.println("lksdfkljslfkj:"+profile);
        mv.addObject("check", "true");
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
       
    }
    
    //  User Job Apply history .....................................................................
    
    
    @RequestMapping("/applyjoblist")
    public ModelAndView showJobapplyHistory(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String jobcircular = jpd.viewOneJobpost(pk);
        String applyjoblist = jap.viewJobapplyinfo(pk);
        
        String profile = ups.viewUserProfile();

        ModelAndView mv = new ModelAndView("/student/applyjobhistory", "jobcicular", new Jobpost());
        System.out.println("jobhistory is " + jobcircular);
        
        mv.addObject("jobcircular", jobcircular);
        
        mv.addObject("applyjoblists", applyjoblist);
        mv.addObject("userprofileobject", profile);

        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
    
    

}
