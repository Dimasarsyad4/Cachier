<%-- 
    Document   : edit
    Created on : Jun 26, 2020, 7:48:34 PM
    Author     : Fadhel
--%>

<%@page import="controller.mobildao"%>
<jsp:useBean id="b" class="model.mobil"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
    int i = mobildao.update(b);
    response.sendRedirect("daftarobil.jsp");
%>
