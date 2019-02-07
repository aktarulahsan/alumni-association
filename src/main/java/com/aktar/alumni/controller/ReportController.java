package com.aktar.alumni.controller;

import com.aktar.alumni.daoimpl.JasperReportDAO;
import com.aktar.alumni.reportmodel.ReportEventrespons;
import com.aktar.alumni.reportmodel.ReportJobapplylist;
import com.aktar.alumni.reportmodel.Reportcv;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperReport;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author User
 */
@Controller
public class ReportController {
    
  
    @RequestMapping(value = "/reportView")
    public String generateReport(@RequestParam("getpid") String pk, @ModelAttribute("reportInputForm") Reportcv reportInputForm, HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "viewcv";
        System.out.println(pk);
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            String emailid = pk;
            System.out.println(emailid);
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("emailid", emailid);
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
    
    
    
    @RequestMapping(value = "/reportjobcircular")
    public String generatejobcircular(@RequestParam("getpid") int pk, @ModelAttribute("reportInputForm") Reportcv reportInputForm, HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "circularreport";
        System.out.println(pk);
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            Integer emailid = pk;
            System.out.println(emailid);
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("jobid", emailid);
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
    
    
    @RequestMapping(value = "/reportevent")
    public String generateeventreport(@RequestParam("getpid") int pk, @ModelAttribute("reportInputForm") Reportcv reportInputForm, HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "eventreport";
        System.out.println(pk);
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            Integer emailid = pk;
            System.out.println(emailid);
            
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("eventid", pk);
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
    
    
        @RequestMapping(value = "/reportjobapply")
    public String generatejobapplyreport(@RequestParam("getpid") int pk, @ModelAttribute("reportInputForm") ReportJobapplylist reportInputForm, HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "jobapplylist";
        System.out.println(pk);
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            Integer jobid = pk;
            System.out.println(jobid);
            
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("jobid", pk);
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
    
    
    
    @RequestMapping(value = "/reporteventapply")
    public String generateeventapplyreport(@RequestParam("getpid") int pk, @ModelAttribute("reportInputForm") ReportEventrespons reportInputForm, HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "eventapplylist";
        System.out.println(pk);
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            Integer eventid = pk;
            System.out.println(eventid);
            
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("eventid", pk);
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
    
    
}
