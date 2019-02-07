/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.controller;

import com.aktar.alumni.dao.UserprofileService;
import com.aktar.alumni.dao.Userservice;
import com.aktar.alumni.model.User;
import java.util.Collection;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author HP
 */
@Controller
public class LoginController {
    
      @Autowired
    Userservice user;
      
      @Autowired
    UserprofileService ups;

      String useremailinfo="";
      String usernameinfo="";
      
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin() {
        return "login";
    }

    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String showWelcome() {
        return "welcome";
    }

    
    
//    public String ppps(){
//    String userid = SecurityContextHolder.getContext().getAuthentication().getName();
//    
//    
//    }
    
    
    @RequestMapping(value = "/loginsuccess")
    public String loginsuccess(HttpSession session) {
        System.out.println("success..........");

        String userid = SecurityContextHolder.getContext().getAuthentication().getName();
        User us = user.viewUser(userid);
        Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
        String page = "";
        String rolea = "ROLE_STUDENT";
        String roles = "ROLE_ALUMNI";
        String rolead= "Admin";
        for (GrantedAuthority authority : authorities) {
            
            if (authority.getAuthority().equals(rolea)) {
                session.setAttribute("UserLoggedIn", us.getUsername());
                session.setAttribute("Userphone", us.getPhone());
                
                session.setAttribute("UserId", userid);
                 session.setAttribute("uinfo", ups.viewUserinfo(userid));
                //session.setAttribute("userprofileid",ups.oneProfileId(userid) );
                page= "redirect:/homepagestu";
            }
            else if(authority.getAuthority().equals(roles)){
                session.setAttribute("UserLoggedIn", us.getUsername());
                session.setAttribute("Userphone", us.getPhone());
                session.setAttribute("email",us.getEmailid());
                session.setAttribute("UserId", userid);
                page= "redirect:/homepagealumni";
                }
            else if(authority.getAuthority().equals(rolead)){
                session.setAttribute("UserLoggedIn", us.getUsername());
                session.setAttribute("Userphone", us.getPhone());
                session.setAttribute("email",us.getEmailid());
                session.setAttribute("UserId", userid);
                page= "redirect:/admindashboard";
            }else{
             page= "redirect:/";
            }
           
            
            
        }
        return page;
    }
    
}
