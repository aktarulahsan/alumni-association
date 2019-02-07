<%-- 
    Document   : welcome
    Created on : Nov 22, 2018, 11:19:04 PM
    Author     : Aktar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:include page="header.jsp" />
             <jsp:include page="nav.jsp" />
        
        <h1>Welcome ${sessionScope.UserLoggedIn}</h1>
        <a href="uprofile">Profile</a>
        
        <a href="uprofiles">student Profile</a>
        
        
        <a href="homepage">Home</a>
        <a href="aboutuser">user profile</a>
        <a href="usereducationform">Education</a>
        <a href="userskill">Skill</a>
        <a href="userjobhistory">JobHistory</a>
        <a href="usercv">User CV</a>
        <a href="showalljobcircular">showalljobcircular</a>
        
        <a href="applyjoblist">applyjoblist</a>
        
        <a href="jobcircular">Job Circular</a>
        
        <a href="showingblogpostforcomment">BlogComment</a>
        <a href="showallevent">allevent</a>
        <a href="allevent">User Event</a>
        
        
        
        
        <a href="logout">Logout</a>
        <a href="showingblogpost">Admin</a>
        <a href="dashboard">dashboard</a>
        <a href="userprofile">user profile</a>
        <a href="usereducation">Education</a>
         <jsp:include page="footer.jsp" />
    </body>
</html>
