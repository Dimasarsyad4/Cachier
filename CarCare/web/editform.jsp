<%-- 
    Document   : editform
    Created on : Jun 26, 2020, 7:49:32 PM
    Author     : Fadhel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edit Form</title>
        <link rel="stylesheet" type="text/css" href="css/styleform.css">
        <style>
            header{
                background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(mu 4.jpg);
                height: 100vh;
                background-size: cover;
                background-position: center;
            }
        </style>
    </head>
    <body>
        <%@page import="controller.mobildao,model.mobil"%>

        <%
            String id = request.getParameter("id_mobil");
            mobil b = mobildao.getRecordById(Integer.parseInt(id));
        %>
        <header>
            <div class="container">
        <h1><center>Edit Form</center></h1>
            </div>
            <div class="right">
        <form action="edit.jsp" method="post">
            <input type="hidden" name="id_mobil" value="<%=b.getId_mobil()%>"/>
            <table>
                <tr><td>Nama Pemilik</td><td><input class="form_data" type="text" name="Nama_pemilik" value="<%= b.getNama_pemilik()%>"/></td></tr>
                <tr><td>Nomor Telephone</td><td><input class="form_data" type="text" name="no_telp" value="<%= b.getNo_telp()%>"/></td></tr>
                <tr><td>Jenis Mobil</td><td><input class="form_data" type="text" name="jenismobil" value="<%= b.getJenismobil()%>"/></td></tr>
                <tr><td>Harga Penitipan</td><td><input class="form_data" type="text" name="harga_penitipan" value="<%= b.getHarga_penitipan()%>"/></td></tr>
                <tr><td>waktu Penitipan</td><td><input class="form_data" type="text" name="waktu_peitipan" value="<%= b.getWaktu_penitipan()%>"/></td></tr>
                <tr><td>Total Harga</td><td><input class="form_data" type="text" name="total_harga" value="<%= b.getTotal_harga()%>"/></td></tr>
                <tr><td colspan="2"><input class="tombol_masuk" type="submit" value="edit"/></td></tr>
            </table>
        </form>
            </div>
        </header>        
    </body>
</html>
