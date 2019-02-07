/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.controller;

import com.aktar.alumni.dao.EventDao;
import com.aktar.alumni.dao.EventresponsDao;
import com.aktar.alumni.dao.UserprofileService;
import com.aktar.alumni.model.Event;
import com.aktar.alumni.model.Eventrespons;
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
 * @author C8
 */
@Controller
public class EventController {
    
    
    @Autowired
    UserprofileService ups;
    
    
    @Autowired
    EventDao even;
    
    @Autowired
    EventresponsDao evr;
    
    
     @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "eventdate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    @InitBinder
    public void myIniteventBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "reglastdate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    
    @RequestMapping("/allevent")
    public ModelAndView showEvent(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String events = even.viewOneEvent(pk);
        String profile = ups.viewUserProfile();
         Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("userevent", "viewallevent", new Event());
        System.out.println("jobhistory is "+events);
        mv.addObject("allevents", events);
       mv.addObject("userprofile", profilelist);
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
    
    
    
    
    
    
    

    @RequestMapping("/addedituserevent")
    public ModelAndView showaddevent(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("addeditevent", "viewallevent", new Event());
        mv.addObject("userprofileobject", profile);
        mv.addObject("userprofile", profilelist);
        mv.addObject("check", "true");
        return mv;
    }

    
    @RequestMapping(value = "/addevent", params = "Addjob")
    public String addjobshistiory(HttpSession session, @ModelAttribute("event") Event ev) {
        String pk = (String) session.getAttribute("UserId");
        even.insertEvent(ev);
        return "redirect:/allevent";
    }
    
    @RequestMapping(value = "/updateevent", params = "EditBlog")
    public String updatejobshistiory(HttpSession session, @ModelAttribute("event") Event ev) {
        String pk = (String) session.getAttribute("UserId");
        even.updateUEvent(ev);
        return "redirect:/allevent";
    }
    
     @RequestMapping("removeevent/{Id}")
    public String removeblogpost(@PathVariable("Id") int jobid) {
        even.deleteEvent(jobid);
        return "redirect:/allevent";
    }
    
    
    @RequestMapping(value = "/edituserevent")
    public ModelAndView editjobinfo(@RequestParam("getpid") int jobid) {
        System.out.println("start on the page ");
        Event oneevent = even.viewOneEventid(jobid);
        String profiles = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("addeditevent", "viewallevent", oneevent);
        mv.addObject("userprofileobject", profiles);
        mv.addObject("check", "false");
        
        return mv;
    }

//    view all event ..........................................................................
    
    @RequestMapping("/showallevent")
    public ModelAndView showallEvent(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String events = even.viewEvent();
        String profile = ups.viewUserProfile();
         Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("viewallevent", "viewallevent", new Event());
        System.out.println("All event is  "+events);
        mv.addObject("allevents", events);
        mv.addObject("userprofile", profilelist);
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        
        return mv;
    }
    
    
    
   
     @RequestMapping(value = "/showoneevent")
    public ModelAndView viewonejobcircular(HttpSession session, @RequestParam("getpid") int evid) {
        
        String pk = (String) session.getAttribute("UserId");
        Event oneevent = even.viewOneEventid(evid);
        String profiles = ups.viewUserProfile();
        
        Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("viewoneevent", "viewonevent", oneevent);
        mv.addObject("applyevent", new Eventrespons());
        mv.addObject("userprofile", profilelist);
        mv.addObject("userprofileobject", profiles);
        
        return mv;
    }
    
    @RequestMapping(value = "/applyevent", params = "Addjob")
    public String applyevent(HttpSession session, @ModelAttribute("eventres") Eventrespons ev) {
        String pk = (String) session.getAttribute("UserId");
        
        evr.insertEventrespons(ev);
        return "redirect:/showallevent";
    }
    
    
    @RequestMapping(value = "/showeventresponsinfo")
    public ModelAndView vieweventapplylist(HttpSession session,@ModelAttribute("eventres") Eventrespons ev, @RequestParam("getpid") int evid) {
        
        String pk = (String) session.getAttribute("UserId");
        System.out.println("I love you .");
        String uemail= ev.getEmailid();
        System.out.println("sdfsdf"+uemail);
        String eventrespons = evr.oneEventresponsId(evid);
        String profiles = ups.viewUserProfile();
        Event event= even.viewOneEventinfo(evid);
        
        //String uesrname = evr.viewfirstnamelastname(ev);
        
        Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("eventapplylist", "viewalleventrespons", eventrespons);
        mv.addObject("applyevent", new Eventrespons());
        mv.addObject("oneevent", event);
        mv.addObject("userprofile", profilelist);
        mv.addObject("useremail", new Userprofile());
        //mv.addObject("firstnamelastname", uesrname);
        mv.addObject("userprofileobject", profiles);
        
        
        return mv;
    }
    
    
    
//panel Alumni.......panel Alumni.......panel Alumni.......panel Alumni.......panel Alumni.......panel Alumni.........................`    
  
    
    @RequestMapping("/showallevental")
    public ModelAndView showallEvents(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String events = even.viewEvent();
        String profile = ups.viewUserProfile();
         Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("alumni/viewallevent", "viewallevent", new Event());
        System.out.println("All event is  "+events);
        mv.addObject("allevents", events);
        mv.addObject("userprofile", profilelist);
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        
        return mv;
    }
    
    
    
    
    @RequestMapping("/allalamnievent")
    public ModelAndView showalumniEvent(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String events = even.viewOneEvent(pk);
        String profile = ups.viewUserProfile();
         Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("alumni/alumnievent", "viewallevent", new Event());
        System.out.println("jobhistory is "+events);
        mv.addObject("allevents", events);
       mv.addObject("userprofile", profilelist);
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
      
     @RequestMapping(value = "/showoneevental")
    public ModelAndView viewoneeventcircular(HttpSession session, @RequestParam("getpid") int evid) {
        
        String pk = (String) session.getAttribute("UserId");
        Event oneevent = even.viewOneEventid(evid);
        String profiles = ups.viewUserProfile();
        
        Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("alumni/viewoneevent", "viewonevent", oneevent);
        mv.addObject("applyevent", new Eventrespons());
        mv.addObject("userprofile", profilelist);
        mv.addObject("userprofileobject", profiles);
        
        return mv;
    }
    
    
    
    @RequestMapping("/addedituserevental")
    public ModelAndView showaddevental(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("alumni/addeditevent", "viewallevent", new Event());
        mv.addObject("userprofileobject", profile);
        mv.addObject("userprofile", profilelist);
        mv.addObject("check", "true");
        return mv;
    }

    
    @RequestMapping(value = "/addevental", params = "Addjob")
    public String addeventalhistiory(HttpSession session, @ModelAttribute("event") Event ev) {
        String pk = (String) session.getAttribute("UserId");
        even.insertEvent(ev);
        return "redirect:/allalamnievent";
    }
    
    @RequestMapping(value = "/updateevental", params = "EditBlog")
    public String updateeventalhistiory(HttpSession session, @ModelAttribute("event") Event ev) {
        String pk = (String) session.getAttribute("UserId");
        even.updateUEvent(ev);
        return "redirect:/allalamnievent";
    }
    
     @RequestMapping("removeevental/{Id}")
    public String removeeventalpost(@PathVariable("Id") int jobid) {
        even.deleteEvent(jobid);
        return "redirect:/allalamnievent";
    }
    
    
    @RequestMapping(value = "/edituserevental")
    public ModelAndView editeventinfo(@RequestParam("getpid") int jobid) {
        System.out.println("start on the page ");
        Event oneevent = even.viewOneEventid(jobid);
        String profiles = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("alumni/addeditevent", "viewallevent", oneevent);
        mv.addObject("userprofileobject", profiles);
        mv.addObject("check", "false");
        
        return mv;
    }
    
    
    
    @RequestMapping(value = "/showeventresponsinfoal")
    public ModelAndView vieweventapplylistal(HttpSession session,@ModelAttribute("eventres") Eventrespons ev, @RequestParam("getpid") int evid) {
        
        String pk = (String) session.getAttribute("UserId");
        System.out.println("I love you .");
        String uemail= ev.getEmailid();
        System.out.println("sdfsdf"+uemail);
        String eventrespons = evr.oneEventresponsId(evid);
        String profiles = ups.viewUserProfile();
        Event event= even.viewOneEventinfo(evid);
        
        //String uesrname = evr.viewfirstnamelastname(ev);
        
        Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("alumni/eventapplylist", "viewalleventrespons", eventrespons);
        mv.addObject("applyevent", new Eventrespons());
        mv.addObject("oneevent", event);
        mv.addObject("userprofile", profilelist);
        mv.addObject("useremail", new Userprofile());
        //mv.addObject("firstnamelastname", uesrname);
        mv.addObject("userprofileobject", profiles);
        
        
        return mv;
    }
    
     @RequestMapping(value = "/applyeventalumnis", params = "Addjob")
    public String applyevental(HttpSession session, @ModelAttribute("eventres") Eventrespons ev) {
        String pk = (String) session.getAttribute("UserId");
        
        evr.insertEventrespons(ev);
        return "redirect:/showallevental";
    }
    
    
    
    //xxxxxxxxxxxxxxxxxx            for Student ....................................................
    
    
    
    
    
    @RequestMapping("/allstudentevent")
    public ModelAndView showstudentEvent(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String events = even.viewOneEvent(pk);
        String profile = ups.viewUserProfile();
         Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("student/studentevent", "viewallevent", new Event());
        System.out.println("jobhistory is "+events);
        mv.addObject("allevents", events);
       mv.addObject("userprofile", profilelist);
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
      
    
     @RequestMapping("/showalleventstu")
    public ModelAndView showallEventstu(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String events = even.viewEvent();
        String profile = ups.viewUserProfile();
         Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("student/viewallevent", "viewallevent", new Event());
        System.out.println("All event is  "+events);
        mv.addObject("allevents", events);
        mv.addObject("userprofile", profilelist);
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        
        return mv;
    }
    
    
    
     @RequestMapping(value = "/showoneeventstudent")
    public ModelAndView viewoneeventstudent(HttpSession session, @RequestParam("getpid") int evid) {
        
        String pk = (String) session.getAttribute("UserId");
        Event oneevent = even.viewOneEventid(evid);
        String profiles = ups.viewUserProfile();
        
        Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("student/viewoneevent", "viewonevent", oneevent);
        mv.addObject("applyevent", new Eventrespons());
        mv.addObject("userprofile", profilelist);
        mv.addObject("userprofileobject", profiles);
        
        return mv;
    }
    
    
     @RequestMapping("/addeditusereventstu")
    public ModelAndView showaddeventalstu(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("student/addeditevent", "viewallevent", new Event());
        mv.addObject("userprofileobject", profile);
        mv.addObject("userprofile", profilelist);
        mv.addObject("check", "true");
        return mv;
    }

    
    @RequestMapping(value = "/addeventstu", params = "Addjob")
    public String addeventstuhistiory(HttpSession session, @ModelAttribute("event") Event ev) {
        String pk = (String) session.getAttribute("UserId");
        even.insertEvent(ev);
        return "redirect:/showalleventstu";
    }
    
    @RequestMapping(value = "/updateeventstu", params = "EditBlog")
    public String updateeventstuhistiory(HttpSession session, @ModelAttribute("event") Event ev) {
        String pk = (String) session.getAttribute("UserId");
        even.updateUEvent(ev);
        return "redirect:/showalleventstu";
    }
    
     @RequestMapping("removeeventstu/{Id}")
    public String removeeventstupost(@PathVariable("Id") int jobid) {
        even.deleteEvent(jobid);
        return "redirect:/showalleventstu";
    }
    
    
    @RequestMapping(value = "/editusereventstu")
    public ModelAndView editeventinfostu(@RequestParam("getpid") int jobid) {
        System.out.println("start on the page ");
        Event oneevent = even.viewOneEventid(jobid);
        String profiles = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("student/addeditevent", "viewallevent", oneevent);
        mv.addObject("userprofileobject", profiles);
        mv.addObject("check", "false");
        
        return mv;
    }
    
    
    
    @RequestMapping(value = "/showeventresponsinfostu")
    public ModelAndView vieweventapplyliststu(HttpSession session,@ModelAttribute("eventres") Eventrespons ev, @RequestParam("getpid") int evid) {
        
        String pk = (String) session.getAttribute("UserId");
        System.out.println("I love you .");
        String uemail= ev.getEmailid();
        System.out.println("sdfsdf"+uemail);
        String eventrespons = evr.oneEventresponsId(evid);
        String profiles = ups.viewUserProfile();
        Event event= even.viewOneEventinfo(evid);
        
        //String uesrname = evr.viewfirstnamelastname(ev);
        
        Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("student/eventapplylist", "viewalleventrespons", eventrespons);
        mv.addObject("applyevent", new Eventrespons());
        mv.addObject("oneevent", event);
        mv.addObject("userprofile", profilelist);
        mv.addObject("useremail", new Userprofile());
        //mv.addObject("firstnamelastname", uesrname);
        mv.addObject("userprofileobject", profiles);
        
        
        return mv;
    }
    
 @RequestMapping(value = "/applyeventstudentxxxxx", params = "Addjob")
    public String applyeventstu(HttpSession session, @ModelAttribute("eventres") Eventrespons ev) {
        String pk = (String) session.getAttribute("UserId");
        
        evr.insertEventrespons(ev);
        return "redirect:/showalleventstu";
    }    
    
    
    @RequestMapping(value = "/applyeventstudent", params = "Addjob")
    public String applyjob(HttpSession session, @ModelAttribute("jobcicular") Eventrespons ev) {
        String pk = (String) session.getAttribute("UserId");
        int eveid = ev.getEventid();
        
        System.out.println("pk   is   "+pk+ "  "+ " jobid is  "+eveid);
        String jobapply = evr.insertEventrespons(ev, pk);
        
        if(jobapply.equalsIgnoreCase("success")){
            ModelAndView mv= new ModelAndView("showalljobcircular");
            mv.addObject(jobapply, "success");
            return "redirect:/showalleventstu";
        }else{
                    
            ModelAndView mv= new ModelAndView("login");
            mv.addObject(jobapply, "fail");
            return "redirect:/applicationfaildstu";
                    }
        
        }
    
    
    
    
    
}
