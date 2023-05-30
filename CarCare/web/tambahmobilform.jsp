<%-- 
    Document   : tambahmobilform
    Created on : Jun 26, 2020, 7:57:23 PM
    Author     : Fadhel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>tambah mobil</title>
        <link rel="stylesheet" type="text/css" href="css/styleform.css">
        <style>
            header{
                background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(test3.jpg);
                height: 100vh;
                background-size: cover;
                background-position: center;
            }
         </style>
    </head>
    <body>
        <header>
            <div class="container">
                <h1><center>tambah mobil</center></h1>
            </div>
            <div class="right">
        <form action="tambahmobil.jsp" method="post" class="form_data">
            <table>
		<tr>
			<td>Nama</td>
                        <td><input type="text" name="Nama_pemilik" class="form_data" placeholder="Nama Customer"></td>
		</tr>
		<tr>
			<td>Telephone</td>
                        <td><input type="text" name="no_telp" class="form_data" placeholder="Nomor HP"></td>
		</tr>
		<tr>
			<td>Jenismobil</td>
                        <td><input type="text" name="jenismobil" class="form_data" placeholder="Besar/Sedang/Kecil"></td>
		</tr>
		<tr>
			<td>harga penitipan</td>
                        <td><input type="text" name="harga_penitipan" class="form_data" placeholder="Harga"></td>
		</tr>
		<tr>
			<td>waktu Penitipan</td>
                        <td><input type="text" name="waktu_penitipan" class="form_data" placeholder="Hari"></td>
		</tr>
                <tr>
			<td>Total Harga</td>
                        <td><input type="text" name="total_harga" class="form_data" placeholder="Jenismobil X Hari"></td>
		</tr>
		<tr>
                    <td><input type="submit" value="add" class="tombol_masuk"></td>
                    <td><a href="daftarmobil.jsp" class="tombol_masuk">lihat data</a></td>
		</tr>
	</table>
        </form>
            </div>
        </header>
        <%--
        <jsp:include page="bookform.html" ></jsp:include> --%>
    </body>
</html>

