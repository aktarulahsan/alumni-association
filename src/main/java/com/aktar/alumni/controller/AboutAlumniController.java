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
import com.aktar.alumni.model.Educationinfo;
import com.aktar.alumni.model.Jobapply;
import com.aktar.alumni.model.Jobhistory;
import com.aktar.alumni.model.Jobpost;
import com.aktar.alumni.model.Skill;
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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author aktar
 */
@Controller
public class AboutAlumniController {
 
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
    
    @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "dateofbirth", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    @InitBinder
    public void myInitBinderedu(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy");
        binder.registerCustomEditor(Date.class, "passingyear", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    
    @InitBinder
    public void myInitBinderjob1(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "startdate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    @InitBinder
    public void myInitBinderjob2(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "applylastdate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    
    
    @RequestMapping("/aboutalumniprofile")
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
        
        ModelAndView mv = new ModelAndView("/alumni/about", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        
        mv.addObject("educationlist", education);
        mv.addObject("carrerobj", cobj);
            System.out.println("cobj "+cobj);
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
    
    
     @RequestMapping("/editaprofile")
    public ModelAndView  getuserinfo(HttpSession session){
        try {
             String pk =  session.getAttribute("UserId").toString();

        
        
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        
        ModelAndView mv = new ModelAndView("/alumni/editprofile", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
         mv.addObject("userprofile", profilelist);
         mv.addObject("userprofileobject", profile);
         
            System.out.println("lksdfkljslfkj:"+profile);
        mv.addObject("check", "false"); 
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
       
    }
    
    
    
    
    
    @RequestMapping("/editalumniprofile")
    public ModelAndView  editprofiles(HttpSession session){
        try {
             String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String batchfriends = bd.viewBatch();
        ModelAndView mv = new ModelAndView("/alumni/editprofile", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
         mv.addObject("userprofile", profilelist);
         mv.addObject("userprofileobject", profile);
         mv.addObject("batchf", batchfriends);
         
            System.out.println("lksdfkljslfkj:"+profile);
         mv.addObject("check", "false");
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
       
    }
    
    
    
    
    @RequestMapping(value = "/updatealumniprofile", params = "EditBlog")
    public String editblogpost(@ModelAttribute("profileobject1") Userprofile up) {

        //ModelAndView mv =new ModelAndView("AddCategory");
        ups.updateUserProfile(up);
        
        String path = servletContext.getRealPath("/");
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
        String projectcuts = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut = projectcut.substring(0, projectcuts.lastIndexOf("\\"));
//        path = path + String.valueOf(product.getProductid()) + "" + ".jpg";
        String p = targetcut + "\\src\\main\\webapp\\resources\\profileimage\\" + String.valueOf(up.getEmailid()) + "" + ".jpg";
        System.out.println(p);
        MultipartFile filedet = up.getProfileimage();
        if (!filedet.isEmpty()) {
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
                    Thread.sleep(10000);
                    System.out.println("File Uploaded Successfully");
                }else{
                FileOutputStream fos = new FileOutputStream(new File(p));
                BufferedOutputStream bs = new BufferedOutputStream(fos);
                bs.write(bytes);
                bs.close();
                fos.close();
                Thread.sleep(10000);
                System.out.println("File insert Successfully");
                
                
                }
            } catch (Exception e) {
                System.out.println("Exception Arised" + e);
            }
        } else {
            System.out.println("File is Empty not Uploaded");
        }
        
        return "redirect:/aboutalumniprofile";
    }


    @RequestMapping("/addalumnieducatoninfo")
    public ModelAndView addeducation(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String education = edu.viewOneUserProfiles(pk);
        System.out.println("sldfkjsdlkfjsdlf");
         String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("/alumni/addediteducation", "educationinfo", new Educationinfo());
        mv.addObject("educationlist", education);
        mv.addObject("userprofileobject", profile);
        System.out.println("education"+education);
        mv.addObject("check", "false");
        return mv;
    }
    
    @RequestMapping(value = "/addeducations", params = "EditBlog")
    public String editeducation(HttpSession session, @ModelAttribute("profileobject1") Educationinfo up) {
String pk = (String) session.getAttribute("UserId");
        edu.insertUsereduProfile(up,pk);
        return "redirect:/aboutalumniprofile";
    }
    
    
    
@RequestMapping("/editalumnieducation")
    public ModelAndView editedu(@RequestParam("getpid") int eduid, HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String education = edu.viewOneUserProfiles(pk);
        System.out.println("sldfkjsdlkfjsdlf");
        Educationinfo oneeducation = edu.viewOneeducation(eduid);
         String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("/alumni/addediteducation", "educationinfo", oneeducation);
        mv.addObject("educationlist", education);
        mv.addObject("userprofileobject", profile);
        System.out.println("education"+education);
        mv.addObject("check", "false");
        return mv;
    }
    

    //Skill  ..................................................
    
    
    @RequestMapping("/editalumniskill")
    public ModelAndView showuserskill(@RequestParam("getpid") String pk,HttpSession session) {
        //String pk = (String) session.getAttribute("UserId");
        String skills = skil.viewOneUserSkill(pk);
         String profile = ups.viewUserProfile();
         
        ModelAndView mv = new ModelAndView("/alumni/skill", "skillinfo", new Skill());
        
        mv.addObject("skilllist", skills);
       
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "false");
        //mv.addObject("edit", "true");
        return mv;
    }
    
    @RequestMapping("/alumnikill")
    public ModelAndView foredit(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String skills = skil.viewOneUserSkill(pk);
         String profile = ups.viewUserProfile();
         
        ModelAndView mv = new ModelAndView("/alumni/skill", "skillinfo", new Skill());
        
        mv.addObject("skilllist", skills);
       
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "false");
        
        return mv;
    }
    
    @RequestMapping(value = "/addinaskill", params = "EditBlog")
    public String editskill(HttpSession session, @ModelAttribute("skillinfo") Skill sk) {
String pk = (String) session.getAttribute("UserId");
        skil.insertUsereduSkill(sk,pk);
        return "redirect:/aboutalumniprofile";
    }
    
    
    ////     Alumni job history        ................................................xxxxxxxxxxxxxxxxxxxxxxxx
    
    
     @RequestMapping("/alumnijobhistory")
    public ModelAndView showJobHistory(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String jobhis = jobh.viewOneUserJobhistory(pk);
         String profile = ups.viewUserProfile();
         
        ModelAndView mv = new ModelAndView("alumni/jobhistory", "jobhistoryinfo", new Jobhistory());
        System.out.println("jobhistory is "+jobhis);
        mv.addObject("jobhistorys", jobhis);
       
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
    
    @RequestMapping("/alumniaddjobhistory")
    public ModelAndView showaddJobHistory(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String jobhis = jobh.viewOneUserJobhistory(pk);
         String profile = ups.viewUserProfile();
         
        ModelAndView mv = new ModelAndView("alumni/editpage", "jobhistoryinfo", new Jobhistory());
        System.out.println("jobhistory is "+jobhis);
        mv.addObject("jobhistorys", jobhis);
       
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
    
    @RequestMapping(value = "/addinjobhistorys", params = "Addjob")
    public String addjobshistiory(HttpSession session, @ModelAttribute("jobhistoryinfo") Jobhistory sk) {
String pk = (String) session.getAttribute("UserId");
        jobh.insertUserJobhistory(sk);
        return "redirect:/aboutalumniprofile";
    }
    
    @RequestMapping(value = "/updateinjobhistorys", params = "EditBlog")
    public String updatejobshistiory(HttpSession session, @ModelAttribute("jobhistoryinfo") Jobhistory sk) {
String pk = (String) session.getAttribute("UserId");
        jobh.updateUserJobhistory(sk);
        return "redirect:/aboutalumniprofile";
    }
    
     @RequestMapping("removejobhistorys/{Id}")
    public String removeblogpost(@PathVariable("Id") int jobid) {
        jobh.deleteUserJobhistory(jobid);
        return "redirect:/aboutalumniprofile";
    }
    
    
    
    @RequestMapping("/editalumnijobhistory")
    public ModelAndView editjobinfo(HttpSession session, @RequestParam("getpid") int jobid) {
        String pk = (String) session.getAttribute("UserId");
        String jobhis = jobh.viewOneUserJobhistory(pk);
         String profile = ups.viewUserProfile();
         Jobhistory onejobinfo = jobh.viewOneJobhistory(jobid);
        ModelAndView mv = new ModelAndView("alumni/editpage", "jobhistoryinfo", onejobinfo);
        System.out.println("jobhistory is "+jobhis);
        mv.addObject("jobhistorys", jobhis);
       
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
    

//    Alumni  job post ....................    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    
    
    @RequestMapping("/jobcircularal")
    public ModelAndView showJobpost(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String jobcircular = jpd.viewOneJobpost(pk);
        String profile = ups.viewUserProfile();

        ModelAndView mv = new ModelAndView("alumni/jobpost", "jobcicular", new Jobpost());
        System.out.println("jobhistory is " + jobcircular);
        mv.addObject("jobcircular", jobcircular);

        mv.addObject("userprofileobject", profile);

        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
    
    @RequestMapping("/addjobcircularalpage")
    public ModelAndView showaddJobcircular(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("alumni/addeditjobpost", "jobcicular", new Jobpost());
        mv.addObject("userprofileobject", profile);
        mv.addObject("check", "true");
        return mv;
    }
    
    @RequestMapping(value = "/addjobcircularal", params = "Addjob")
    public String addjobshistiory(HttpSession session, @ModelAttribute("jobcicular") Jobpost jp) {
        String pk = (String) session.getAttribute("UserId");
        jpd.insertJobpost(jp);
        return "redirect:/jobcircularal";
    }

    @RequestMapping(value = "/updatejobcircularal", params = "EditBlog")
    public String updatejobshistiory(HttpSession session, @ModelAttribute("jobcicular") Jobpost jp) {
        String pk = (String) session.getAttribute("UserId");
        jpd.updateJobpost(jp);
        return "redirect:/jobcircularal";
    }

    @RequestMapping("removejobcircularal/{Id}")
    public String removejobs(@PathVariable("Id") int jobid) {
        jpd.deleteJobpost(jobid);
        return "redirect:/jobcircularal";
    }

    @RequestMapping(value = "/editalumnijobcirculars")
    public ModelAndView editjobinfo(@RequestParam("getpid") int jobid) {
        System.out.println("start on the page ");
        Jobpost onejobinfo = jpd.viewOneJobpost(jobid);
        String profiles = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("alumni/addeditjobpost", "jobcicular", onejobinfo);
        mv.addObject("userprofileobject", profiles);
        mv.addObject("check", "false");

        return mv;
    }

//    view all job apply user list ........................................................................
    @RequestMapping(value = "/showjobresponsal")
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
        ModelAndView mv = new ModelAndView("alumni/jobapplylist", "viewalljobrespons", eventrespons);
        mv.addObject("applyevent", new Jobapply());
        mv.addObject("onejobinfo", jobinfo);
        mv.addObject("userprofile", profilelist);
        mv.addObject("useremail", new Userprofile());
        //mv.addObject("firstnamelastname", uesrname);
        mv.addObject("userprofileobject", profiles);

        return mv;

    }
        
    @RequestMapping("/showalljobcircularal")
    public ModelAndView showallJobcircular(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String jobcircular = jpd.viewJobposts();
        String profile = ups.viewUserProfile();

        ModelAndView mv = new ModelAndView("alumni/viewalljobcircular", "jobcicular", new Jobpost());
        System.out.println("jobhistory is " + jobcircular);
        mv.addObject("jobcircular", jobcircular);

        mv.addObject("userprofileobject", profile);

        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
    
    
    
     @RequestMapping(value = "/viewonejobcircularal")
    public ModelAndView viewonejobcircular(@RequestParam("getpid") int jobid) {
        System.out.println("start on the page ");

        Jobpost onejobinfo = jpd.viewOneJobpost(jobid);
        String profiles = ups.viewUserProfile();

        ModelAndView mv = new ModelAndView("alumni/viewonejobcircular", "jobcicular", onejobinfo);
        mv.addObject("applyjob", new Jobapply());
        mv.addObject("userprofileobject", profiles);

        return mv;
    }

    @RequestMapping(value = "/applyjobal", params = "Addjob")
    public String applyjob(HttpSession session, @ModelAttribute("jobcicular") Jobapply ja) {
        String pk = (String) session.getAttribute("UserId");
        int jobid = ja.getJobid();
        
        System.out.println("pk   is   "+pk+ "  "+ " jobid is  "+jobid);
        String jobapply = jap.insertUserJobapplystu(ja, pk);
        
        if(jobapply.equalsIgnoreCase("success")){
            ModelAndView mv= new ModelAndView("showalljobcircular");
            mv.addObject(jobapply, "success");
            return "redirect:/showalljobcircularal";
        }else{
                    
            ModelAndView mv= new ModelAndView("login");
            mv.addObject(jobapply, "fail");
            return "redirect:/applicationfaild";
                    }
        
        }
    
    @RequestMapping(value = "/applicationfaild", method = RequestMethod.GET)
    public String aboutstudent(){
    return "alumni/congratulations";
    }
    
    
 
    //         view    user cv  ..............................
    
    
    @RequestMapping("/aboutfrind")
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
        
        
        ModelAndView mv = new ModelAndView("/alumni/aboutfriend", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        
        mv.addObject("educationlist", education);
        
        mv.addObject("userprofileobject", profile);
        mv.addObject("skilllist", skills);
        mv.addObject("jobhistorys", jobhis);
        mv.addObject("applyjoblists", applyjoblist);
        mv.addObject("appevent", applyeventlist);
        mv.addObject("ownpf", ownprofile);
            System.out.println("event resid si xxxxxxxxxxxxxxxxx    "+applyeventlist);
        System.out.println("lksdfkljslfkj:"+profile);
        
        mv.addObject("check", "true");
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
       
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
