/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.dao;

import com.aktar.alumni.model.Jobhistory;
import org.springframework.stereotype.Service;

/**
 *
 * @author C8
 */
@Service
public interface JobhistoryDao {

    public String insertUserJobhistory(Jobhistory sk);

    public String insertUserJobhistory(Jobhistory sk, String email);

    public String updateUserJobhistory(Jobhistory sk);

    public Integer deleteUserJobhistory(int id);

    public String viewUserJobhistory();

    public Jobhistory viewJobhistoryinfo(String email);

    public int oneJobhistorylId(String email);

    public Jobhistory viewJobhistoryinfos(String email);

    public String viewOneUserJobhistory(String emailid);

    public Jobhistory viewOneJobhistory(Integer id);
}
