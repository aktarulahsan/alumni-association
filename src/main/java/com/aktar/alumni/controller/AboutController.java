/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.controller;

import com.aktar.alumni.dao.BlogpostService;
import com.aktar.alumni.dao.EducationinfoDao;
import com.aktar.alumni.dao.JobapplyDao;
import com.aktar.alumni.dao.JobhistoryDao;
import com.aktar.alumni.dao.SkillinfoDao;
import com.aktar.alumni.dao.UserprofileService;
import com.aktar.alumni.model.Userprofile;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author aktar
 */
@Controller
public class AboutController {
    
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
    JobapplyDao jap;
    
    
}
