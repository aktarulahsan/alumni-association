/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aktar.alumni.config;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 *
 * @author HP
 */
@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter{
     
    @Autowired
    private DataSource dataSource;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
         http.authorizeRequests()
                .antMatchers("/").permitAll()
                 
                .antMatchers("/uprofile").access("hasRole('ROLE_STUDENT')")
                .antMatchers("/home").access("hasRole('ROLE_STUDENT')")
                .antMatchers("/showingblogpost").access("hasRole('ROLE_STUDENT') or hasRole('ROLE_ALUMNI')")
                 
                //.antMatchers("/welcome").access("hasRole('ROLE_STUDENT') or hasRole('ROLE_ALUMNI')")
                 
                 
                 
                .antMatchers("/aboutstudentprofile").access("hasRole('ROLE_STUDENT')")
                 
                 
                         
                         
                .antMatchers("/homepagealumni").access("hasRole('ROLE_ALUMNI')")
                 .antMatchers("/timelineal").access("hasRole('ROLE_ALUMNI')")
                 .antMatchers("/aboutalumniprofile").access("hasRole('ROLE_ALUMNI')")
                 .antMatchers("/batchmate").access("hasRole('ROLE_ALUMNI')")
                 .antMatchers("/addalumnieducatoninfo").access("hasRole('ROLE_ALUMNI')")
                 .antMatchers("/editalumnieducation/?").access("hasRole('ROLE_ALUMNI')")
                 .antMatchers("/alumnikill").access("hasRole('ROLE_ALUMNI')")
                 .antMatchers("/addalumnieducatoninfo").access("hasRole('ROLE_ALUMNI')")
                         
                         
                         
                .and().formLogin().loginPage("/login").loginProcessingUrl("/perform_login")
                .successForwardUrl("/loginsuccess").usernameParameter("username")
                .passwordParameter("password").failureUrl("/login")
                .and().logout().logoutUrl("/logout")
                .logoutSuccessUrl("/").invalidateHttpSession(true)
                .and().csrf().disable();
    }
    
  
    @Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
        System.out.println("in security.............");
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("select emailid, password, status from UserRole where emailid=? and status='True'")
                .authoritiesByUsernameQuery("select emailid,role from UserRole where emailid=?");
    } 
}
