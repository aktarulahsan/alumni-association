/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.controller;

import com.aktar.alumni.dao.BatchDao;
import com.aktar.alumni.dao.BlogpostService;
import com.aktar.alumni.dao.EducationinfoDao;
import com.aktar.alumni.dao.JobhistoryDao;
import com.aktar.alumni.dao.PostCommentdao;
import com.aktar.alumni.dao.SkillinfoDao;
import com.aktar.alumni.dao.UserprofileService;
import com.aktar.alumni.model.Blogpost;
import com.aktar.alumni.model.Comment;
import com.aktar.alumni.model.Userprofile;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author aktar
 */
@Controller
public class FriendController {
    
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
    
    @Autowired
    PostCommentdao pcom;
    
    
     @Autowired
    BlogpostService blo;
//alumnifriend
    
    @RequestMapping(value = "/batchf")
    public ModelAndView showsbatchfriend(HttpSession session) {
        
        String pk = (String) session.getAttribute("UserId");
        String bloglist = blo.viewBlogpostpp(pk);
        String profile = ups.viewUserProfile();
        String commentlist = pcom.viewuserblogpost(pk);
        //String blogcomment= cs.viewComment();
        String blogpic = pcom.viewuserblogpostpic(pk);
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String bf = bd.viewuserBatch(pk);
        
        ModelAndView mv = new ModelAndView("/alumni/bfriends", "addblogobject1", new Blogpost());
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
    
    
    
    @RequestMapping(value = "/showalumnipic")
    public ModelAndView showsalumnipostpicture(HttpSession session) {
        
        String pk = (String) session.getAttribute("UserId");
        String bloglist = blo.viewBlogpostpp(pk);
        String profile = ups.viewUserProfile();
        String commentlist = pcom.viewuserblogpost(pk);
        //String blogcomment= cs.viewComment();
        String blogpic = pcom.viewuserblogpostpic(pk);
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String bf = bd.viewuserBatch(pk);
        
        ModelAndView mv = new ModelAndView("/alumni/alpopicture", "addblogobject1", new Blogpost());
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
    
    //...........for Student ...................................
    
    
    @RequestMapping(value = "/sfriend")
    public ModelAndView showstubatchfriend(HttpSession session) {
        
        String pk = (String) session.getAttribute("UserId");
        String bloglist = blo.viewBlogpostpp(pk);
        String profile = ups.viewUserProfile();
        String commentlist = pcom.viewuserblogpost(pk);
        //String blogcomment= cs.viewComment();
        String blogpic = pcom.viewuserblogpostpic(pk);
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String bf = bd.viewuserBatch(pk);
        
        ModelAndView mv = new ModelAndView("/student/bfriends", "addblogobject1", new Blogpost());
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
    
    
    
    @RequestMapping(value = "/showstudentpic")
    public ModelAndView showsstudentpostpicture(HttpSession session) {
        
        String pk = (String) session.getAttribute("UserId");
        String bloglist = blo.viewBlogpostpp(pk);
        String profile = ups.viewUserProfile();
        String commentlist = pcom.viewuserblogpost(pk);
        //String blogcomment= cs.viewComment();
        String blogpic = pcom.viewuserblogpostpic(pk);
        Userprofile  profilelist = ups.viewUserinfo(pk);
        String bf = bd.viewuserBatch(pk);
        
        ModelAndView mv = new ModelAndView("/student/stpopicture", "addblogobject1", new Blogpost());
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
    
    
    
    
   
    
    
    
}
