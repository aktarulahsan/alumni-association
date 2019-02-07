/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.controller;

import com.aktar.alumni.daoimpl.EducationinfoService;
import com.aktar.alumni.daoimpl.UserprofileServiceImpl;
import com.aktar.alumni.model.Blogpost;
import com.aktar.alumni.model.Educationinfo;
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
public class AdminUserProfileController {
    
    @Autowired
    UserprofileServiceImpl ups;
    @Autowired
    EducationinfoService edus;
    
     @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "dateofbirth", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    
    
      @RequestMapping("/userprofile")
    public ModelAndView showhomepage() {
        String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("/admin/profile", "addprofileobject1", new Userprofile());
        mv.addObject("education", new Educationinfo());
        mv.addObject("userprofileobject", profile);
         System.out.println("blogpostobject"+ profile);
        mv.addObject("check", "true");
        return mv;
    }
    
    @RequestMapping("/qweqwe")
    public ModelAndView  getuserinfo(HttpSession session){
        try {
             String pk =  session.getAttribute("UserId").toString();
        String profile = ups.viewUserProfile();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        Educationinfo educationlist = edus.viewUserinfo(pk);
        ModelAndView mv = new ModelAndView("/admin/profile", "addprofileobject1", profilelist);
        mv.addObject("education", educationlist);
        System.out.println("ALL DATA IS HEREs....... :"+profilelist);
         mv.addObject("userprofile", profilelist);
         mv.addObject("userprofileobject", profile);
         
            System.out.println("lksdfkljslfkj:"+profile);
         
          return mv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
       return null;
       
    }
    
    
     @RequestMapping(value = "/addinprofile", params = "AddBlog")
    public String addblogpostinadmin(@ModelAttribute("addprofileobject1") Userprofile bp) {
        //String categorygsonlist = cdao.viewCategory();
        //ModelAndView mv =new ModelAndView("AddCategory");
        ups.insertUserProfile(bp);
        //mv.addObject("blogpostobject", categorygsonlist);
        return "redirect:/userprofile";
    }
    
    @RequestMapping(value = "/addinprofile", params = "EditBlog")
    public String editblogpost(@ModelAttribute("addprofileobject1") Userprofile bp) {

        //ModelAndView mv =new ModelAndView("AddCategory");
        ups.updateUserProfile(bp);
        return "redirect:/userprofile";
    }
    
     @RequestMapping("removeprofile/{Id}")
    public String removeblogpost(@PathVariable("Id") int profileid) {
        ups.deleteUserProfile(profileid);
        return "redirect:/userprofile";
    }

    
   
    
    @RequestMapping("/editprofilebutton")
    public ModelAndView passingonecategory(@RequestParam("getpid") int profileid) {

        Userprofile oneprofile = ups.viewOneProfile(profileid);
        String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("/admin/profile", "addprofileobject1", oneprofile);
        mv.addObject("userprofileobject", profile);
        mv.addObject("check", "false");
        return mv;
    }
    
//    for Admin panal Education
    
   @RequestMapping("/usereducation")
    public ModelAndView showeducation() {
        String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("/admin/education", "addprofileobject1", new Userprofile());
        mv.addObject("education", new Educationinfo());
        mv.addObject("userprofileobject", profile);
         System.out.println("blogpostobject"+ profile);
        mv.addObject("check", "true");
        return mv;
    }
    
    @RequestMapping("/showoneusereducation")
    public ModelAndView showoneuserseducation(@RequestParam("getpid") String emailid) {

        String usereducation = ups.viewOneUserProfiles(emailid);
        String profile = ups.viewUserProfile();
        ModelAndView mv = new ModelAndView("/admin/profile", "addprofileobject1", new Userprofile());
        mv.addObject("userprofileobject", profile);
        mv.addObject("education", usereducation);
        mv.addObject("check", "false");
        return mv;
    }
    
}
