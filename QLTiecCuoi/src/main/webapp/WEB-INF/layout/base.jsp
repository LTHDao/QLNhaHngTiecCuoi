<%-- 
    Document   : base
    Created on : Aug 18, 2022, 12:48:17 PM
    Author     : hdao2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title" />
        </title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <style type="text/css"> 
            .hoaDon {
                display: flex;
                justify-content: space-between;
            }
            .hoaDon > span:last-child {
                font-size: 14px;
            }
            .menu {
                font-size: x-large;
                margin: 0 0 10px 30px;
            }
        </style>
    </head>
    <body style="font-family: emoji">
        <tiles:insertAttribute name="header" />
        <div style="margin-top: 76px">
            <tiles:insertAttribute name="content" />
        </div>
        
        <tiles:insertAttribute name="footer" />
    </body>
    
</html>
