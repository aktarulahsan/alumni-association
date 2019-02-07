/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.controller;

import com.aktar.alumni.dao.BatchDao;
import com.aktar.alumni.dao.EducationinfoDao;
import com.aktar.alumni.dao.JobhistoryDao;
import com.aktar.alumni.dao.SkillinfoDao;
import com.aktar.alumni.dao.UserprofileService;
import com.aktar.alumni.dao.Userservice;
import com.aktar.alumni.daoimpl.EducationinfoService;
import com.aktar.alumni.model.Educationinfo;
import com.aktar.alumni.model.Jobhistory;
import com.aktar.alumni.model.Skill;
import com.aktar.alumni.model.User;
import com.aktar.alumni.model.Userprofile;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.context.SecurityContextHolder;
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
 * @author C8
 */

@Controller
public class UserProfileController {
    
    @Autowired
    UserprofileService ups;
    
    
    @Autowired
    EducationinfoDao edu;
    
    @Autowired
    private ServletContext servletContext;
    
    @Autowired
    SkillinfoDao skil;
    
    @Autowired
    JobhistoryDao jobh;
    
    @Autowired
    BatchDao bd;
    
    
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
        binder.registerCustomEditor(Date.class, "enddate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    
    @RequestMapping("/editprofile")
    public ModelAndView  getuserinfo(HttpSession session){
        try {
             String pk =  session.getAttribute("UserId").toString();

        
        
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        
        ModelAndView mv = new ModelAndView("editprofile", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
         mv.addObject("userprofile", profilelist);
         mv.addObject("userprofileobject", profile);
         
            System.out.println("lksdfkljslfkj:"+profile);
        mv.addObject("check", "true"); 
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
       
    }
    
     @RequestMapping(value = "/adduserprofile", params = "AddBlog")
    public String addblogpostinUser(@ModelAttribute("profileobject1") Userprofile up) {
        
       
        
        //String categorygsonlist = cdao.viewCategory();
        //ModelAndView mv =new ModelAndView("AddCategory");
        ups.insertUserProfile(up);
       
        return "redirect:/editprofile";
    }
    
  
    @RequestMapping(value = "/updateprofile", params = "EditBlog")
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
        
        return "redirect:/aboutstudentprofile";
    }
    
    
    
    
    
    
    @RequestMapping("/edituserprofile")
    public ModelAndView  editprofiles(HttpSession session){
        try {
             String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String batchfriends = bd.viewBatch();
        ModelAndView mv = new ModelAndView("editprofile", "profileobject1", profilelist);
        
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
    
    
    
    
    
    
     @RequestMapping("/about")
    public ModelAndView  aboutUser(HttpSession session){
        try {
             String pk =  session.getAttribute("UserId").toString();
        
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String profile = ups.viewUserProfile();
        
        ModelAndView mv = new ModelAndView("profile", "profileobject1", profilelist);
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
         mv.addObject("userprofile", profilelist);
        
        mv.addObject("userprofileobject", profile);
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
       
    }
    
//    for about users ...................................................................................................
    
    

     @RequestMapping("/aboualltuser")
    public ModelAndView  aboutuser(HttpSession session){
        try {
        String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String education = edu.viewOneUserProfiles(pk);
        String skills = skil.viewOneUserSkill(pk);
        String jobhis = jobh.viewOneUserJobhistory(pk);
        ModelAndView mv = new ModelAndView("aboutuser", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        mv.addObject("educationlist", education);
        mv.addObject("userprofile", profilelist);
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
    
    
    
    
  @RequestMapping("/editoneprofilebutton")
    public ModelAndView passingoneprofile(@RequestParam("getpid") int profileid) {

        Userprofile oneprofiles = ups.viewOneProfile(profileid);
                String profiles = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("aboutuser", "profileobject1", oneprofiles);
        mv.addObject("userprofileobject", profiles);
        mv.addObject("check", "true");
        return mv;
    }
    
     
    
    
    // for User cv information......................................................................
    
    @RequestMapping("/usercv")
    public ModelAndView  aboutusercv(HttpSession session){
        try {
        String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String education = edu.viewOneUserProfiles(pk);
        String skills = skil.viewOneUserSkill(pk);
        String jobhis = jobh.viewOneUserJobhistory(pk);
        ModelAndView mv = new ModelAndView("viewcv", "profileobject1", profilelist);
        
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


    
    
//  for User Education information;................................................................................  
    
    @RequestMapping("/usereducationform")
    public ModelAndView showeducation(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String education = edu.viewOneUserProfiles(pk);
        System.out.println("sldfkjsdlkfjsdlf");
         String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("education", "educationinfo", new Educationinfo());
        mv.addObject("educationlist", education);
        
        mv.addObject("userprofileobject", profile);
        
        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
    
    @RequestMapping(value = "/addeducation", params = "EditBlog")
    public String editeducation(HttpSession session, @ModelAttribute("profileobject1") Educationinfo up) {
String pk = (String) session.getAttribute("UserId");
        edu.insertUsereduProfile(up,pk);
        return "redirect:/aboutstudentprofile";
    }
    
   
   
    @RequestMapping("removeeducation/{Id}")
    public String removeeeducation(@PathVariable("Id") int jobid) {
        edu.deleteUserProfile(jobid);
        return "redirect:/usereducationform";
    }
    
    @RequestMapping("removeestuducation/{Id}")
    public String removeestueducation(@PathVariable("Id") int jobid) {
        edu.deleteUserProfile(jobid);
        return "redirect:/aboutstudentprofile";
    }
    
    
    
    @RequestMapping("/addusereducatoninfo")
    public ModelAndView addeducation(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String education = edu.viewOneUserProfiles(pk);
        System.out.println("sldfkjsdlkfjsdlf");
         String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("education", "educationinfo", new Educationinfo());
        mv.addObject("educationlist", education);
        mv.addObject("userprofileobject", profile);
        System.out.println("education"+education);
        mv.addObject("check", "false");
        return mv;
    }
    
    @RequestMapping("/editeducation")
    public ModelAndView editedu(@RequestParam("getpid") int eduid, HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String education = edu.viewOneUserProfiles(pk);
        System.out.println("sldfkjsdlkfjsdlf");
        Educationinfo oneeducation = edu.viewOneeducation(eduid);
         String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("education", "educationinfo", oneeducation);
        mv.addObject("educationlist", education);
        mv.addObject("userprofileobject", profile);
        System.out.println("education"+education);
        mv.addObject("check", "false");
        return mv;
    }
    
    
    @RequestMapping("/editusereducation")
    public ModelAndView editeduinfo(@RequestParam("getpid") int eduid) {

        Educationinfo oneeducation = edu.viewOneeducation(eduid);
        String profiles = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("aboutuser", "educationinfo", oneeducation);
        mv.addObject("userprofileobject", profiles);
        //mv.addObject("check", "true");
        mv.addObject("edit", "false");
        return mv;
    }
    
//    for user skill information.................................................................................
    
    
    @RequestMapping("/userskill")
    public ModelAndView showuserskill(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String skills = skil.viewOneUserSkill(pk);
         String profile = ups.viewUserProfile();
         
        ModelAndView mv = new ModelAndView("skill", "skillinfo", new Skill());
        
        mv.addObject("skilllist", skills);
       
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
    
    @RequestMapping("/addskill")
    public ModelAndView foredit(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String skills = skil.viewOneUserSkill(pk);
         String profile = ups.viewUserProfile();
         
        ModelAndView mv = new ModelAndView("skill", "skillinfo", new Skill());
        
        mv.addObject("skilllist", skills);
       
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "false");
        
        return mv;
    }
    
    @RequestMapping(value = "/addinskill", params = "EditBlog")
    public String editskill(HttpSession session, @ModelAttribute("skillinfo") Skill sk) {
String pk = (String) session.getAttribute("UserId");
        skil.insertUsereduSkill(sk,pk);
        return "redirect:/aboutstudentprofile";
    }
    
    
    
    
    //    for user Job History  information.................................................................................
    
    
    @RequestMapping("/userjobhistory")
    public ModelAndView showJobHistory(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String jobhis = jobh.viewOneUserJobhistory(pk);
         String profile = ups.viewUserProfile();
         
        ModelAndView mv = new ModelAndView("jobhistory", "jobhistoryinfo", new Jobhistory());
        System.out.println("jobhistory is "+jobhis);
        mv.addObject("jobhistorys", jobhis);
       
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
    
    @RequestMapping("/useraddjobhistory")
    public ModelAndView showaddJobHistory(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String jobhis = jobh.viewOneUserJobhistory(pk);
         String profile = ups.viewUserProfile();
         
        ModelAndView mv = new ModelAndView("editpage", "jobhistoryinfo", new Jobhistory());
        System.out.println("jobhistory is "+jobhis);
        mv.addObject("jobhistorys", jobhis);
       
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
    
    @RequestMapping(value = "/addinjobhistory", params = "Addjob")
    public String addjobshistiory(HttpSession session, @ModelAttribute("jobhistoryinfo") Jobhistory sk) {
String pk = (String) session.getAttribute("UserId");
        jobh.insertUserJobhistory(sk);
        return "redirect:/aboutstudentprofile";
    }
    
    @RequestMapping(value = "/updateinjobhistory", params = "EditBlog")
    public String updatejobshistiory(HttpSession session, @ModelAttribute("jobhistoryinfo") Jobhistory sk) {
String pk = (String) session.getAttribute("UserId");
        jobh.updateUserJobhistory(sk);
        return "redirect:/aboutstudentprofile";
    }
    
     @RequestMapping("removejobhistory/{Id}")
    public String removeblogpost(@PathVariable("Id") int jobid) {
        jobh.deleteUserJobhistory(jobid);
        return "redirect:/aboutstudentprofile";
    }
    
    
    @RequestMapping("/edituserjobhistory")
    public ModelAndView editjobinfo(HttpSession session, @RequestParam("getpid") int jobid) {
        String pk = (String) session.getAttribute("UserId");
        String jobhis = jobh.viewOneUserJobhistory(pk);
         String profile = ups.viewUserProfile();
         Jobhistory onejobinfo = jobh.viewOneJobhistory(jobid);
        ModelAndView mv = new ModelAndView("editpage", "jobhistoryinfo", onejobinfo);
        System.out.println("jobhistory is "+jobhis);
        mv.addObject("jobhistorys", jobhis);
       
        mv.addObject("userprofileobject", profile);
      
        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
    
    
}
