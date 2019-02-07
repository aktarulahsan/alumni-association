/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.controller;

import com.aktar.alumni.dao.BatchDao;
import com.aktar.alumni.dao.BlogpostService;
import com.aktar.alumni.dao.EducationinfoDao;
import com.aktar.alumni.dao.EventDao;
import com.aktar.alumni.dao.EventresponsDao;
import com.aktar.alumni.dao.JobapplyDao;
import com.aktar.alumni.dao.JobhistoryDao;
import com.aktar.alumni.dao.JobpostDao;
import com.aktar.alumni.dao.SkillinfoDao;
import com.aktar.alumni.dao.UserprofileService;
import com.aktar.alumni.model.Educationinfo;
import com.aktar.alumni.model.Event;
import com.aktar.alumni.model.Jobapply;
import com.aktar.alumni.model.Jobpost;
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
public class AboutStudentController {
    
    
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
    EventDao even;
    
  
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
    
    
     @RequestMapping("/aboutstudentprofile")
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
        
        
        ModelAndView mv = new ModelAndView("/student/about", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        
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
    
    
    
    
    @RequestMapping("/aboutstudenteducation")
    public ModelAndView  aboutusereducation(HttpSession session){
        try {
        String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String education = edu.viewOneUserProfiles(pk);
        String skills = skil.viewOneUserSkill(pk);
        String jobhis = jobh.viewOneUserJobhistory(pk);
        ModelAndView mv = new ModelAndView("/student/abouteducation", "profileobject1", profilelist);
        
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
        
        mv.addObject("educationlist", education);
        
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
    
    
    
    
    
    
    
    
   
    
    @RequestMapping("/editstuprofile")
    public ModelAndView  editprofiles(HttpSession session){
        try {
             String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String batchfriends = bd.viewBatch();
        ModelAndView mv = new ModelAndView("/student/editprofile", "profileobject1", profilelist);
        
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
    
    @RequestMapping(value = "/updatestudentprofile", params = "EditBlog")
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
    
    
    
    
    
    
    @RequestMapping(value = "/uploadcoverpic", params = "EditBlog")
    public String addcoverpic(@ModelAttribute("profileobject1") Userprofile up) {

        //ModelAndView mv =new ModelAndView("AddCategory");
       
        
        String path = servletContext.getRealPath("/");
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
        String projectcuts = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut = projectcut.substring(0, projectcuts.lastIndexOf("\\"));
//        path = path + String.valueOf(product.getProductid()) + "" + ".jpg";
        String p = targetcut + "\\src\\main\\webapp\\resources\\profileimage\\" + String.valueOf("coverpic"+up.getEmailid()) + "" + ".jpg";
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
        
        return "redirect:/editprofile";
    }
    
    
  @RequestMapping("/addstudenteducatoninfo")
    public ModelAndView addeducation(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String education = edu.viewOneUserProfiles(pk);
        System.out.println("sldfkjsdlkfjsdlf");
         String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("/student/addediteducation", "educationinfo", new Educationinfo());
        mv.addObject("educationlist", education);
        mv.addObject("userprofileobject", profile);
        System.out.println("education"+education);
        mv.addObject("check", "false");
        return mv;
    }
    
    @RequestMapping(value = "/addstudenteducation", params = "EditBlog")
    public String editeducation(HttpSession session, @ModelAttribute("profileobject1") Educationinfo up) {
String pk = (String) session.getAttribute("UserId");
        edu.insertUsereduProfile(up,pk);
        return "redirect:/aboutstudentprofile";
    }
    
    @RequestMapping("/editstudenteducation")
    public ModelAndView editedu(@RequestParam("getpid") int eduid, HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String education = edu.viewOneUserProfiles(pk);
        System.out.println("sldfkjsdlkfjsdlf");
        Educationinfo oneeducation = edu.viewOneeducation(eduid);
         String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("/student/addediteducation", "educationinfo", oneeducation);
        mv.addObject("educationlist", education);
        mv.addObject("userprofileobject", profile);
        System.out.println("education"+education);
        mv.addObject("check", "false");
        return mv;
    }
    
     @RequestMapping("removestudenteducation/{Id}")
    public String removeestueducation(@PathVariable("Id") int jobid) {
        edu.deleteUserProfile(jobid);
        return "redirect:/aboutstudentprofile";
    }
    
    //Student ////////////////// /.....................  Event  Event   ..................................................
    
    //                 sssssssssss        Student job post   sssssssssssssssssssssssssss
    
    
     @RequestMapping("/showalljobcircularstu")
    public ModelAndView showallJobcirculstu(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String jobcircular = jpd.viewJobposts();
        String profile = ups.viewUserProfile();

        ModelAndView mv = new ModelAndView("student/viewalljobcircular", "jobcicular", new Jobpost());
        System.out.println("jobhistory is " + jobcircular);
        mv.addObject("jobcircular", jobcircular);

        mv.addObject("userprofileobject", profile);

        mv.addObject("check", "true");
        mv.addObject("edit", "true");
        return mv;
    }
@RequestMapping(value = "/viewonejobcircularstu")
    public ModelAndView viewonejobcircular(@RequestParam("getpid") int jobid) {
        System.out.println("start on the page ");

        Jobpost onejobinfo = jpd.viewOneJobpost(jobid);
        String profiles = ups.viewUserProfile();

        ModelAndView mv = new ModelAndView("student/viewonejobcircular", "jobcicular", onejobinfo);
        mv.addObject("applyjob", new Jobapply());
        mv.addObject("userprofileobject", profiles);

        return mv;
    }

    @RequestMapping(value = "/applyjobstu", params = "Addjob")
    public String applyjob(HttpSession session, @ModelAttribute("jobcicular") Jobapply ja) {
        String pk = (String) session.getAttribute("UserId");
        int jobid = ja.getJobid();
        
        System.out.println("pk   is   "+pk+ "  "+ " jobid is  "+jobid);
        String jobapply = jap.insertUserJobapplystu(ja, pk);
        
        if(jobapply.equalsIgnoreCase("success")){
            ModelAndView mv= new ModelAndView("showalljobcircular");
            mv.addObject(jobapply, "success");
            return "redirect:/showalljobcircularstu";
        }else{
                    
            ModelAndView mv= new ModelAndView("login");
            mv.addObject(jobapply, "fail");
            return "redirect:/applicationfaildstu";
                    }
        
        }
    
    @RequestMapping(value = "/applicationfaildstu", method = RequestMethod.GET)
    public String aboutstudent(){
    return "student/congratulations";
    }
    
    
    
    @RequestMapping("/aboutsfrind")
    public ModelAndView  aboutusercvs(HttpSession session,@RequestParam("getpid") String pk){
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
        
        
        ModelAndView mv = new ModelAndView("/student/aboutfriend", "profileobject1", profilelist);
        
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
