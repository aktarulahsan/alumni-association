/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.controller;

import com.aktar.alumni.dao.BatchDao;
import com.aktar.alumni.dao.BlogpostService;
import com.aktar.alumni.dao.CommentService;
import com.aktar.alumni.dao.PostCommentdao;
import com.aktar.alumni.dao.UserprofileService;
import com.aktar.alumni.dao.Userservice;
import com.aktar.alumni.model.Blogpost;
import com.aktar.alumni.model.Comment;
import com.aktar.alumni.model.Userprofile;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
public class StudentBlogpostController {



    @Autowired
    BlogpostService blo;

    
    
    @Autowired
    CommentService cs;
    
    @Autowired
    Userservice user;
    
    @Autowired
    PostCommentdao pcom;
    
    @Autowired
    UserprofileService ups;
    
    @Autowired
    private ServletContext servletContext;

@Autowired
    BatchDao bd;

    
    @RequestMapping(value = "/homepagestu")
    public ModelAndView showblogstudent(HttpSession session) {
        String pk =  session.getAttribute("UserId").toString();
        String bloglist = blo.viewBlogpost();
        String profile = ups.viewUserProfile();
        String blogcomment= cs.viewComment();
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String commentlist = pcom.viewblogpost();
        String newalumni = ups.viewUserProfilebydate();
        System.out.println("home page work");
        ModelAndView mv = new ModelAndView("/student/homepage", "addblogobject1", new Blogpost());
        mv.addObject("friendlist", new Userprofile());
        mv.addObject("allblogpostobject", bloglist);
        mv.addObject("bcomment", new Comment());
        mv.addObject("uparsonalprofile", profilelist);
        mv.addObject("allcommentlist", commentlist);
        mv.addObject("userprofileobject", profile);
        mv.addObject("blogpostcomment", blogcomment);
        mv.addObject("newalumni", newalumni);
        System.out.println("chat list is:"+profile);
        System.out.println("allblogpostobject");
        mv.addObject("check", "true");
        return mv;
    }
    
    
    
    
     @RequestMapping(value = "/addblogpostinstuhome", params = "AddBlog")
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
        return "redirect:/homepagestu";

        
    }    
    
    
     @RequestMapping(value = "/updateblogusers", params = "EditBlog")
    public String update(@ModelAttribute("addblogobject1") Blogpost bp) {

        //ModelAndView mv =new ModelAndView("AddCategory");
        blo.updateBlogpost(bp);
        return "redirect:/homepagestu";
    }

    @RequestMapping("removebloguser/{Id}")
    public String removeblogpostuser(@PathVariable("Id") int blogid) {
        blo.deleteBlogpost(blogid);
        return "redirect:/homepagestu";
    }

    @RequestMapping("/editblogpost")
    public ModelAndView editblogpost(@RequestParam("getpid") int blogpostid) {

        Blogpost oneblogpost = blo.viewOneBlogpost(blogpostid);
        String profile = ups.viewUserProfile();
        String bloglist = blo.viewBlogpost();
        ModelAndView mv = new ModelAndView("/admin/admin", "addblogobject1", oneblogpost);
        mv.addObject("blogpostobject", bloglist);
        mv.addObject("userprofileobject", profile);
        mv.addObject("check", "false");
        return mv;
    }
    
    
    
    
     @RequestMapping(value = "/addcommentshom")
    public String addblogpostinUserhome(@ModelAttribute("addblogcomments") Comment bp, HttpSession session) {
        cs.insertComment(bp);
        return "redirect:/homepagestu";
    }
    
    
    
    

    
    @RequestMapping(value = "/timelines")
    public ModelAndView showstudentblog(HttpSession session) {
        
        String pk = (String) session.getAttribute("UserId");
        String bloglist = blo.viewBlogpostpp(pk);
        String profile = ups.viewUserProfile();
        String commentlist = pcom.viewuserblogpost(pk);
        //String blogcomment= cs.viewComment();
        String blogpic = pcom.viewuserblogpostpic(pk);
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String bf = bd.viewuserBatch(pk);
        
        ModelAndView mv = new ModelAndView("/student/sprofile", "addblogobject1", new Blogpost());
        mv.addObject("bcomment", new Comment());
        mv.addObject("uparsonalprofile", profilelist);
        mv.addObject("allblogandcommentlist", commentlist);
        mv.addObject("userprofileobject", profile);
        mv.addObject("blogpostobject", bloglist);
        mv.addObject("bpicture", blogpic);
        mv.addObject("bfriend", bf);
        // mv.addObject("blogpostcomment", blogcomment);
        System.out.println("blogpostobject");
        mv.addObject("check", "true");
        return mv;
    }
    
    
    
    
     @RequestMapping(value = "/addpostinstimelinewpic", params = "AddBlog")
    public String addpostinstimepic(HttpSession session ,@ModelAttribute("addblogobject1") Blogpost bp) {

        
       
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
        
        return "redirect:/timelines";
    }
    
    
      @RequestMapping(value = "/addcommentstimeline")
    public String addblogpostinUsertimeline(@ModelAttribute("addblogcomments") Comment bp, HttpSession session) {
        cs.insertComment(bp);
        return "redirect:/timelines";
    }
    
    
    
    
    @RequestMapping("/searchfriends")
    public ModelAndView showsearchuserpage(@ModelAttribute("addDoctorObject1") String up) {
        String userlist = ups.findbyname(up);
        
        ModelAndView mv = new ModelAndView("departmentdoctor", "addDoctorObject1", new Userprofile());
        mv.addObject("abc", userlist);
        
        mv.addObject("check", "true");
        return mv;
    }

@RequestMapping(value = "/searchfriend")
    public ModelAndView showsbatchfriend(HttpSession session, @ModelAttribute("addDoctorObject1") Userprofile up) {
        
        String pk = (String) session.getAttribute("UserId");
        String bloglist = blo.viewBlogpostpp(pk);
        String profile = ups.viewUserProfile();
        String commentlist = pcom.viewuserblogpost(pk);
        //String blogcomment= cs.viewComment();
        String blogpic = pcom.viewuserblogpostpic(pk);
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String bf = bd.viewuserBatch(pk);
        String userlist = ups.findbyname(up.getFirstname());
        ModelAndView mv = new ModelAndView("/student/bfriends", "addblogobject1", new Userprofile());
        mv.addObject("bcomment", new Comment());
        mv.addObject("uparsonalprofile", profilelist);
        mv.addObject("allblogandcommentlist", commentlist);
        mv.addObject("userprofileobject", profile);
        mv.addObject("blogpostobject", bloglist);
        mv.addObject("bpicture", blogpic);
        mv.addObject("bfriend", bf);
        mv.addObject("frindlist", userlist);
        // mv.addObject("blogpostcomment", blogcomment);
        System.out.println("blogpostobject");
        mv.addObject("check", "true");
        return mv;
    }
    
    
    
    
    
    
}
