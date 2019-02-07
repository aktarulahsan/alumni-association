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
import com.aktar.alumni.model.Blogpost;
import com.aktar.alumni.model.Event;
import com.aktar.alumni.model.Eventrespons;
import com.aktar.alumni.model.Jobapply;
import com.aktar.alumni.model.Jobpost;
import com.aktar.alumni.model.Userrole;
import com.aktar.alumni.model.Userprofile;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author aktar
 */
@Controller
public class AdminController {

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
    
    
     @InitBinder
public void initBinder(WebDataBinder binder) {
    SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy h:mm");
    sdf.setLenient(true);
    binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
}    

    
    
    @RequestMapping("/admindashboard")
    public ModelAndView  aboutuser(HttpSession session){
        try {
        String pk =  session.getAttribute("UserId").toString();
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
        ModelAndView mv = new ModelAndView("/admin/dashboard", "profileobject1", profilelist);
        
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


    @RequestMapping("/aboutuser")
    public ModelAndView  aboutusercv(HttpSession session,@RequestParam("getpid") String pk){
        try {
        String pf =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        Userprofile  ownprofile = ups.viewUserinfo(pf);
        String education = edu.viewOneUserProfiles(pk);
        String skills = skil.viewOneUserSkill(pk);
        String jobhis = jobh.viewOneUserJobhistory(pk);
        String applyjoblist = jap.viewJobapplyinfo(pk);
        String applyeventlist = er.viewOneEventrespons(pk);
        String newalumni = ups.viewUserProfilebydate();
        
        ModelAndView mv = new ModelAndView("/admin/aboutuser", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        
        mv.addObject("educationlist", education);
        
        mv.addObject("userprofileobject", profile);
        mv.addObject("skilllist", skills);
        mv.addObject("jobhistorys", jobhis);
        mv.addObject("applyjoblists", applyjoblist);
        mv.addObject("appevent", applyeventlist);
        mv.addObject("ownpf", ownprofile);
        mv.addObject("newalumni", newalumni);
        
            System.out.println("event resid si xxxxxxxxxxxxxxxxx    "+applyeventlist);
        System.out.println("lksdfkljslfkj:"+profile);
        
        mv.addObject("check", "true");
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
    }
    
    @RequestMapping("/removeuser")
    public String removeblogpost(@RequestParam("getpid")String email) {
        //String email = id.getEmailid();
        Userrole ps = new Userrole();
        
        ps.setEmailid(email);
        ps.setPassword(ps.getPassword());
        ps.setRole(ps.getRole());
        use.updateUser(ps);
        return "redirect:/alluser";
    }

    
    
    
    
    
    @RequestMapping("/alluser")
    public ModelAndView  alluser(HttpSession session){
        try {
        String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        Userprofile  ownprofile = ups.viewUserinfo(pk);
        String education = edu.viewOneUserProfiles(pk);
        String skills = skil.viewOneUserSkill(pk);
        String jobhis = jobh.viewOneUserJobhistory(pk);
        String applyjoblist = jap.viewJobapplyinfo(pk);
        String applyeventlist = er.viewOneEventrespons(pk);
        String newalumni = ups.viewUserProfilebydate();
        String newuser = use.viewnewUsers();
        ModelAndView mv = new ModelAndView("/admin/alluser", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        
        mv.addObject("educationlist", education);
        
        mv.addObject("userprofileobject", profile);
        mv.addObject("skilllist", skills);
        mv.addObject("jobhistorys", jobhis);
        mv.addObject("applyjoblists", applyjoblist);
        mv.addObject("appevent", applyeventlist);
        mv.addObject("ownpf", ownprofile);
        mv.addObject("newalumni", newalumni);
        mv.addObject("newuserlist", newuser);
        System.out.println("yyyyyyyyyyyyyyyyyyyyy"+ newuser);
        
        
        System.out.println("event resid si xxxxxxxxxxxxxxxxx    "+applyeventlist);
        System.out.println("lksdfkljslfkj:"+profile);
        
        mv.addObject("check", "true");
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
    }
    
    @RequestMapping("/allpost")
    public ModelAndView  allpost(HttpSession session){
        try {
        String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        Userprofile  ownprofile = ups.viewUserinfo(pk);
        String education = edu.viewOneUserProfiles(pk);
        String skills = skil.viewOneUserSkill(pk);
        String jobhis = jobh.viewOneUserJobhistory(pk);
        String applyjoblist = jap.viewJobapplyinfo(pk);
        String applyeventlist = er.viewOneEventrespons(pk);
        String newalumni = ups.viewUserProfilebydate();
        String bloglist = blo.viewBlogpost();
        String commentlist = pcom.viewblogpost();
        ModelAndView mv = new ModelAndView("/admin/allpost", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        
        mv.addObject("educationlist", education);
        mv.addObject("allblogpostobject", bloglist);
        mv.addObject("userprofileobject", profile);
        mv.addObject("skilllist", skills);
        mv.addObject("jobhistorys", jobhis);
        mv.addObject("applyjoblists", applyjoblist);
        mv.addObject("appevent", applyeventlist);
        mv.addObject("ownpf", ownprofile);
        mv.addObject("newalumni", newalumni);
        mv.addObject("allcommentlist", commentlist);
            System.out.println("event resid si xxxxxxxxxxxxxxxxx    "+applyeventlist);
        System.out.println("lksdfkljslfkj:"+profile);
        
        mv.addObject("check", "true");
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
    }
    
    
    
    
    @RequestMapping("/alljobcircular")
    public ModelAndView  alljobcircular(HttpSession session){
        try {
        String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String education = edu.viewOneUserProfiles(pk);
        String jobcircular = jpd.viewJobposts();
        ModelAndView mv = new ModelAndView("/admin/alljobcircular", "profileobject1", profilelist);
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        mv.addObject("jobcircular", jobcircular);
        mv.addObject("educationlist", education);
        mv.addObject("userprofileobject", profile);
        System.out.println("lksdfkljslfkj:"+profile);
        
        mv.addObject("check", "true");
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
    }
    
     @RequestMapping("/showalleventsss")
    public ModelAndView  allevent(HttpSession session){
        try {
        String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String education = edu.viewOneUserProfiles(pk);
        String events = even.viewEvent();
        ModelAndView mv = new ModelAndView("/admin/allevent", "profileobject1", profilelist);
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        mv.addObject("allevents", events);
        mv.addObject("educationlist", education);
        mv.addObject("userprofileobject", profile);
        System.out.println("lksdfkljslfkj:"+profile);
        
        mv.addObject("check", "true");
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
    }
    
    @RequestMapping("/addadminpost")
    public ModelAndView  addpost(HttpSession session){
        try {
        String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String education = edu.viewOneUserProfiles(pk);
        String events = even.viewEvent();
        ModelAndView mv = new ModelAndView("/admin/addpost", "addblogobject1", new Blogpost());
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        mv.addObject("allevents", events);
        mv.addObject("profileobject1", profilelist);
        mv.addObject("educationlist", education);
        mv.addObject("userprofileobject", profile);
        System.out.println("lksdfkljslfkj:"+profile);
        
        mv.addObject("check", "true");
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
    }
    
    @RequestMapping(value = "/addpostadmin", params = "AddBlog")
    public String addblogpostin(HttpSession session ,@ModelAttribute("addblogobject1") Blogpost bp) {

       
         String ps= session.getAttribute("UserId").toString();
        
        Date date = new Date();
        String  lkj = new SimpleDateFormat("yyyy.MM.dd.hh.mm").format(date);
        
        String picturename = "";
        String picname = ps+lkj;
        System.out.println("////////////////////////////////////////"+picname);
        String path = servletContext.getRealPath("/");
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
        String projectcuts = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut = projectcut.substring(0, projectcuts.lastIndexOf("\\"));
//        path = path + String.valueOf(product.getProductid()) + "" + ".jpg";
        String p = targetcut + "\\src\\main\\webapp\\resources\\blogimg\\" + String.valueOf(picname)+""+".jpg";
        System.out.println(p);
        MultipartFile filedet = bp.getBlogimage();
        if (!filedet.isEmpty()) {
            picturename = picname;
            try {
                byte[] bytes = filedet.getBytes();
                System.out.println(bytes.length);
                File f = new File(p);
                if (f.exists()) {
                    f.delete();
                    FileOutputStream fos = new FileOutputStream(f);
                    BufferedOutputStream bs = new BufferedOutputStream(fos);
                    bs.write(bytes);
                    
                    
                    bs.close();
                    fos.close();
                    Thread.sleep(1000);
                    System.out.println("File Uploaded Successfully");
                }else{
                FileOutputStream fos = new FileOutputStream(new File(p));
                BufferedOutputStream bs = new BufferedOutputStream(fos);
                bs.write(bytes);
                
                bs.close();
                fos.close();
                Thread.sleep(1000);
                System.out.println("File insert Successfully");
                
                
                }
            } catch (Exception e) {
                System.out.println("Exception Arised" + e);
            }
            blo.insertBlogpostpic(bp, picturename);
        } else {
            System.out.println("File is Empty not Uploaded");
            
            blo.insertBlogpost(bp);
        }
        
       // blo.insertBlogpostpic(bp, picturename);
        return "redirect:/addadminpost";

        
    }   
    
@RequestMapping("/addjobcircularadminpage")
    public ModelAndView showaddJobcircular(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("admin/addjobcircular", "jobcicular", new Jobpost());
        mv.addObject("userprofileobject", profile);
        mv.addObject("check", "true");
        return mv;
    }    
    @RequestMapping(value = "/addjobcircularadmin", params = "Addjob")
    public String addjobshistiory(HttpSession session, @ModelAttribute("jobcicular") Jobpost jp) {
        String pk = (String) session.getAttribute("UserId");
        jpd.insertJobpost(jp);
        return "redirect:/alljobcircular";
    }

    @RequestMapping(value = "/updatejobcirculaadmin", params = "EditBlog")
    public String updatejobshistiory(HttpSession session, @ModelAttribute("jobcicular") Jobpost jp) {
        String pk = (String) session.getAttribute("UserId");
        jpd.updateJobpost(jp);
        return "redirect:/alljobcircular";
    }

    @RequestMapping("removejobcircularadmin/{Id}")
    public String removejobs(@PathVariable("Id") int jobid) {
        jpd.deleteJobpost(jobid);
        return "redirect:/alljobcircular";
    }

    @RequestMapping(value = "/editalumnijobcirculaadmin")
    public ModelAndView editjobinfo(@RequestParam("getpid") int jobid) {
        System.out.println("start on the page ");
        Jobpost onejobinfo = jpd.viewOneJobpost(jobid);
        String profiles = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("admin/addjobcircular", "jobcicular", onejobinfo);
        mv.addObject("userprofileobject", profiles);
        mv.addObject("check", "false");

        return mv;
    }

    @RequestMapping(value = "/viewonejobcircularadmin")
    public ModelAndView viewonejobcircular(@RequestParam("getpid") int jobid) {
        System.out.println("start on the page ");

        Jobpost onejobinfo = jpd.viewOneJobpost(jobid);
        String profiles = ups.viewUserProfile();

        ModelAndView mv = new ModelAndView("admin/onejobcircular", "jobcicular", onejobinfo);
        mv.addObject("applyjob", new Jobapply());
        mv.addObject("userprofileobject", profiles);

        return mv;
    }
    
    //event...............................
    
    @RequestMapping(value = "/showoneeventadmin")
    public ModelAndView viewoneeventcircular(HttpSession session, @RequestParam("getpid") int evid) {
        
        String pk = (String) session.getAttribute("UserId");
        Event oneevent = even.viewOneEventid(evid);
        String profiles = ups.viewUserProfile();
        
        Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("admin/oneevent", "viewonevent", oneevent);
        mv.addObject("applyevent", new Eventrespons());
        mv.addObject("userprofile", profilelist);
        mv.addObject("userprofileobject", profiles);
        
        return mv;
    }
    
    
    
    @RequestMapping("/addeditusereventadmin")
    public ModelAndView showaddevental(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("admin/addevent", "viewallevent", new Event());
        mv.addObject("userprofileobject", profile);
        mv.addObject("userprofile", profilelist);
        mv.addObject("check", "true");
        return mv;
    }

    
    @RequestMapping(value = "/addeventadmin", params = "Addjob")
    public String addeventalhistiory(HttpSession session, @ModelAttribute("event") Event ev) {
        String pk = (String) session.getAttribute("UserId");
        even.insertEvent(ev);
        return "redirect:/showalleventsss";
    }
    
    @RequestMapping(value = "/updateeventadmin", params = "EditBlog")
    public String updateeventalhistiory(HttpSession session, @ModelAttribute("event") Event ev) {
        String pk = (String) session.getAttribute("UserId");
        even.updateUEvent(ev);
        return "redirect:/showalleventsss";
    }
    
     @RequestMapping("removeeventadmin/{Id}")
    public String removeeventalpost(@PathVariable("Id") int jobid) {
        even.deleteEvent(jobid);
        return "redirect:/showalleventsss";
    }
    
    
    @RequestMapping(value = "/editusereventadmin")
    public ModelAndView editeventinfo(@RequestParam("getpid") int jobid) {
        System.out.println("start on the page ");
        Event oneevent = even.viewOneEventid(jobid);
        String profiles = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("admin/addevent", "viewallevent", oneevent);
        mv.addObject("userprofileobject", profiles);
        mv.addObject("check", "false");
        
        return mv;
    }
    
    
    
    
    @RequestMapping("/allnewuser")
    public ModelAndView  allnewuser(HttpSession session){
        try {
        String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        Userprofile  ownprofile = ups.viewUserinfo(pk);
        String education = edu.viewOneUserProfiles(pk);
        String skills = skil.viewOneUserSkill(pk);
        String jobhis = jobh.viewOneUserJobhistory(pk);
        String applyjoblist = jap.viewJobapplyinfo(pk);
        String applyeventlist = er.viewOneEventrespons(pk);
        String newalumni = ups.viewUserProfilebydate();
        String newuser = use.viewnewUsers();
        ModelAndView mv = new ModelAndView("/admin/alluser", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        
        mv.addObject("educationlist", education);
        mv.addObject("newuserlist", newuser);
            System.out.println("yyyyyyyyyyyyyyyyyyyyy   "+ newuser);
        mv.addObject("userprofileobject", profile);
        mv.addObject("skilllist", skills);
        mv.addObject("jobhistorys", jobhis);
        mv.addObject("applyjoblists", applyjoblist);
        mv.addObject("appevent", applyeventlist);
        mv.addObject("ownpf", ownprofile);
        mv.addObject("newalumni", newalumni);
        
            System.out.println("event resid si xxxxxxxxxxxxxxxxx    "+newalumni);
        System.out.println("lksdfkljslfkj:"+profile);
        
        mv.addObject("check", "true");
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
    }
    



 
    
    
}
