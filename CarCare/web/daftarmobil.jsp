<%-- 
    Document   : daftarmobil
    Created on : Jun 26, 2020, 7:43:51 PM
    Author     : Fadhel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>daftar stadion</title>
        <link rel="stylesheet" type="text/css" href="css/stylemobil.css">
        <style>
            header{
                background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(test3.jpg);
                height: 100vh;
                background-size: cover;
                background-position: center;
            }
            table
		{
			border: dotted 1px blue;
			padding: 5px;
			width: 1000px;
			height: 100px;
                        position: center;
                        background: white;
                        margin-left: 150px;
		}
		thead
		{
			background-color: grey;
			text-align: center;
		}
            .tombol_masuk{
                    background:#999;
                    color: white;
                    font-size: 11pt;
                    width: 50%;
                    border: none;
                    position: center;
                    border-radius: 92px;
                    padding: 10px 20px;
                    margin-left: 12px;
                }

        </style>
    </head>
    <body>
        <%@page import="controller.mobildao,model.mobil,java.util.*"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%
            List<mobil> list = mobildao.getAllRecords();
            request.setAttribute("list", list);
        %>
        <header>
        <h1><center> book list</center> </h1>
        <table border="2" width="90">
            <tr>
			<th>id Mobil</th>
			<th>nama pemilik</th>
			<th>no telp</th>
			<th>jenis mobil</th>
			<th>harga penitipan</th>
			<th>waktu penitipan</th>
                        <th>total harga</th>
			<th>edit</th>
			<th>delete</th>
            </tr>
            
            <c:forEach items="${list}" var="b">
                <tr>
                    <td>${b.getId_mobil()}</td>
                    <td>${b.getNama_pemilik()}</td>
                    <td>${b.getNo_telp()}</td>
                    <td>${b.getJenismobil()}</td>
                    <td>${b.getHarga_pentipan()}</td>
                    <td>${b.getWaktu_Penitipan()}</td>
                    <td>${b.getTotal_harga()}</td>
                    <td><a href="editform.jsp?id_stadion=${b.getId_mobil()}">edit</a></td>
                    <td><a href="delete.jsp?id_stadion=${b.getId_mobil()}">delete</a></td>
                </tr>
            </c:forEach>
        </table>
        <br> <center><a href="tambahmobilform.jsp" class="tombol_masuk">tambah mobil</a></center>
        </header>
    </body>
</html>




