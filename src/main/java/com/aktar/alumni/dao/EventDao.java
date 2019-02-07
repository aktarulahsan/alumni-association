/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.dao;

import com.aktar.alumni.model.Event;
import org.springframework.stereotype.Service;

/**
 *
 * @author C8
 */
@Service
public interface EventDao {
 
    public String insertEvent(Event ev);
     
    public String insertEvente(Event ev, String email );

    public String updateUEvent(Event ev);

    public Integer deleteEvent(int id);
    
    public String viewEvent();
    
    public Event viewEventinfo(String email);
    
    public int oneEventId(String email);
    
    public Event viewEventinfos(String email);
    
    public String viewOneEvent(String emailid); 
    
    public Event viewOneEventinfo(Integer id);

    public Event viewOneEventid(Integer id);
    
    
}
