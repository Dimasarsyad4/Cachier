<%-- 
    Document   : delete
    Created on : Jun 26, 2020, 7:47:32 PM
    Author     : Fadhel
--%>

<%@page import="controller.mobildao"%>
<jsp:useBean id="b" class="model.mobil"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
    int i=mobildao.delete(b);
        response.sendRedirect("daftarmobil.jsp");
    
%>
