<%-- 
    Document   : menu
    Created on : 15-jun-2018, 23:56:10
    Author     : Markho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css.css">
        <title>JSP Page</title>
        <style>
            
            
            form {
                margin: 2%;
            }
            
            input {
                width: 250px;
                padding: 1%;
            }
            
        </style>
    </head>
    <body>
        
        <div class="m">
            <h1> Menú Principal </h1> 
            
            <form action="ingresar.jsp"> 
                <input type="submit" value="Ingresar Requerimiento"> 
            </form> 
            
            <form action="consulta.jsp"> 
                <input type="submit" value="Consultar Requerimiento"> 
            </form>
            
            <form action="cerrar.jsp"> 
                <input type="submit" value="Cerrar Requerimiento"> 
            </form>
            
        </div>
    </body>
</html>