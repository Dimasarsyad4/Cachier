<%-- 
    Document   : tambahmobil
    Created on : Jun 26, 2020, 7:55:45 PM
    Author     : Fadhel
--%>

<%@page import="controller.mobildao"%>
<jsp:useBean id="b" class="model.mobil"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
    int i=mobildao.save(b);
    if(i > 0){
        response.sendRedirect("tambahmobilsukses.jsp");
    }
    else{
        response.sendRedirect("tambahmobilgagal.jsp");
    }
%>