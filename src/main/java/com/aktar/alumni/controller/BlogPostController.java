/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.controller;

import com.aktar.alumni.dao.BlogpostService;
import com.aktar.alumni.dao.CommentService;
import com.aktar.alumni.dao.PostCommentdao;
import com.aktar.alumni.dao.UserprofileService;
import com.aktar.alumni.dao.Userservice;
import com.aktar.alumni.daoimpl.UserprofileServiceImpl;
import com.aktar.alumni.model.Blogpost;
import com.aktar.alumni.model.Comment;
import com.aktar.alumni.model.User;
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
 * @author Aktar
 */
@Controller
public class BlogPostController {

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

@InitBinder
public void initBinder(WebDataBinder binder) {
    SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy h:mm");
    sdf.setLenient(true);
    binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
}    

    @RequestMapping("/showingblogpost")
    public ModelAndView showhomepage() {

        String profile = ups.viewUserProfile();
        String bloglist = blo.viewBlogpost();
        String blogcomment= cs.viewComment();
        ModelAndView mv = new ModelAndView("/admin/admin", "addblogobject1", new Blogpost());
        mv.addObject("blogpostobject", bloglist);
        mv.addObject("bcomment", blogcomment);
        mv.addObject("userprofileobject", profile);

        System.out.println("blogpostobject" + bloglist);

        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addinblogpost", params = "AddBlog")
    public String addblogpostinadmin(@ModelAttribute("addblogobject1") Blogpost bp) {
        //String categorygsonlist = cdao.viewCategory();
        //ModelAndView mv =new ModelAndView("AddCategory");
        blo.insertBlogpost(bp);
        //mv.addObject("blogpostobject", categorygsonlist);
        return "redirect:/showingblogpost";
    }

    @RequestMapping(value = "/uprofile")
    public ModelAndView showblog(HttpSession session) {
        String pk = (String) session.getAttribute("UserId");
        String bloglist = blo.viewBlogpostpp(pk);
        String profile = ups.viewUserProfile();
        //String blogcomment= cs.viewComment();
        ModelAndView mv = new ModelAndView("profile", "addblogobject1", new Blogpost());
        mv.addObject("bcomment", new Comment());
        mv.addObject("userprofileobject", profile);
        mv.addObject("blogpostobject", bloglist);
        // mv.addObject("blogpostcomment", blogcomment);
        System.out.println("blogpostobject");
        mv.addObject("check", "true");
        return mv;
    }
    
    
    
    
   
    
    
    
    
    
    
    @RequestMapping(value = "/addblogpost", params = "AddBlog")
    public String addblogpostin(HttpSession session ,@ModelAttribute("addblogobject1") Blogpost bp) {

       String ps= session.getAttribute("UserId").toString();
        
        Date date = new Date();
        String  lkj = new SimpleDateFormat("yyyy.MM.dd.hh.mm").format(date);
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
        
        blo.insertBlogpostpic(bp, picname);
        return "redirect:/homepagestu";

        
    }
    
    

    @RequestMapping(value = "/homepage")
    public ModelAndView showblogall() {
        String bloglist = blo.viewBlogpost();
        String profile = ups.viewUserProfile();
        String blogcomment= cs.viewComment();
        System.out.println("home page work");
        String commentlist = pcom.viewblogpost();
        System.out.println("commnet list is :"+commentlist);
        
        ModelAndView mv = new ModelAndView("homepage", "addblogobject1", new Blogpost());
        mv.addObject("allblogpostobject", bloglist);
        mv.addObject("allcommentlist", commentlist);
        mv.addObject("bcomment", new Comment());
        mv.addObject("userprofileobject", profile);
         mv.addObject("blogpostcomment", blogcomment);
        System.out.println("chat list is:"+profile);
        System.out.println("allblogpostobject");
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addblogpostus", params = "AddBlog")
    public String addblogpostinUser(HttpSession session ,@ModelAttribute("addblogobject1") Blogpost bp) {

        blo.insertBlogpost(bp);
        String ps= session.getAttribute("UserId").toString();
        
                String path = servletContext.getRealPath("/");
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
        String projectcuts = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut = projectcut.substring(0, projectcuts.lastIndexOf("\\"));
//        path = path + String.valueOf(product.getProductid()) + "" + ".jpg";
        String p = targetcut + "\\src\\main\\webapp\\resources\\blogimg\\" + String.valueOf(ps+bp.getBlogid() ) +""+ ".jpg";
        System.out.println(p);
        MultipartFile filedet = bp.getBlogimage();
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
        
        

        return "redirect:/homepage";
    }

    @RequestMapping(value = "/addinblogpost", params = "EditBlog")
    public String editblogpost(@ModelAttribute("addblogobject1") Blogpost bp) {

        //ModelAndView mv =new ModelAndView("AddCategory");
        blo.updateBlogpost(bp);
        return "redirect:/showingblogpost";
    }

    @RequestMapping("removeblog/{Id}")
    public String removeblogpost(@PathVariable("Id") int blogid) {
        blo.deleteBlogpost(blogid);
        return "redirect:/showingblogpost";
    }

    @RequestMapping("/editblogpostbutton")
    public ModelAndView passingonecategory(@RequestParam("getpid") int blogpostid) {

        Blogpost oneblogpost = blo.viewOneBlogpost(blogpostid);
        String profile = ups.viewUserProfile();
        String bloglist = blo.viewBlogpost();
        ModelAndView mv = new ModelAndView("/admin/admin", "addblogobject1", oneblogpost);
        mv.addObject("blogpostobject", bloglist);
        mv.addObject("userprofileobject", profile);
        mv.addObject("check", "false");
        return mv;
    }
    
    
//    for all Comments in Post....................................................................
    
    
    
    @RequestMapping("/showingblogpostforcomment")
    public ModelAndView showblogcomment() {

        String profile = ups.viewUserProfile();
        String bloglist = blo.viewBlogpost();
        //String blogcomment= cs.viewComment();
        ModelAndView mv = new ModelAndView("/admin/blogcomments", "addblogobject1", new Blogpost());
        mv.addObject("blogpostobject", bloglist);
        //mv.addObject("bcomment", blogcomment);
        mv.addObject("userprofileobject", profile);

        System.out.println("blogpostobject" + bloglist);

        mv.addObject("check", "true");
        return mv;
    }
    
    @RequestMapping("/showpostforcomment")
    public ModelAndView showblogcomments() {

        String profile = ups.viewUserProfile();
        String bloglist = blo.viewBlogpost();
        //String blogcomment= cs.viewComment();
        ModelAndView mv = new ModelAndView("/admin/blogcomments", "addblogobject1", new Blogpost());
        mv.addObject("blogpostobject", bloglist);
        //mv.addObject("bcomment", new Comment());
        mv.addObject("userprofileobject", profile);

        System.out.println("blogpostobject" + bloglist);

        mv.addObject("check", "false");
        return mv;
    }
    
    
    
    
   
    
     @RequestMapping(value = "/addcommentsal")
    public String addblogpostin(@ModelAttribute("addblogcomments") Comment bp, HttpSession session) {
        cs.insertComment(bp);
        return "redirect:/homepage";
    }
    
    //////////////////////////// Controller for Student xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    
    
    
    
    
    
    
    
    
    
    
    
     ////// for Student xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx for Student
   
    
    @RequestMapping(value = "/addpostinstimeline", params = "AddBlog")
    public String addpostinstime(HttpSession session ,@ModelAttribute("addblogobject1") Blogpost bp) {

        blo.insertBlogpost(bp);
        String ps= session.getAttribute("UserId").toString();
        
        String date = new Date().toString();
        
        String path = servletContext.getRealPath("/");
        String projectcut = path.substring(0, path.lastIndexOf("\\"));
        String projectcuts = projectcut.substring(0, projectcut.lastIndexOf("\\"));
        String targetcut = projectcut.substring(0, projectcuts.lastIndexOf("\\"));
//        path = path + String.valueOf(product.getProductid()) + "" + ".jpg";
        String p = targetcut + "\\src\\main\\webapp\\resources\\blogimg\\" + String.valueOf(ps+bp.getBlogid() ) +""+ ".jpg";
        System.out.println(p);
        MultipartFile filedet = bp.getBlogimage();
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
        
        

        return "redirect:/timelines";
    }
    
    
   
    
    
   
    
    
    
    
}
