/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.dao;

import com.aktar.alumni.model.Skill;
import org.springframework.stereotype.Service;

/**
 *
 * @author C8
 */
@Service
public interface SkillinfoDao {
  
    
     public String insertUserSkill(Skill sk);
     
     public String insertUsereduSkill(Skill sk, String email );

    public String updateUserSkill(Skill sk);

    public Integer deleteUserSkill(int id);
    
    public String viewUserSkill();
    
    public Skill viewSkillinfo(String email);
    
    public int oneSkillId(String email);
    
    public Skill viewSkillinfos(String email);
    
    public String viewOneUserSkill(String emailid); 

    public Skill viewOneSkill(Integer id);
}
