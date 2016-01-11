<%-- 
    Document   : header
    Created on : 2015/12/8, 下午 04:31:11
    Author     : geoffreycheung
--%>
<%@page import="com.clickstuffexchange.module.CookieControl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Cookie[] cookies = request.getCookies();
    CookieControl cc = new CookieControl(cookies);
%>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <!-- Bootstrap -->
        <link href=<%=request.getContextPath() + "/jslib/bootstrap/dist/css/bootstrap.min.css"%> rel="stylesheet">
        <link href=<%=request.getContextPath() + "/asset/css/custom.css"%> rel="stylesheet">
        <link href=<%=request.getContextPath() + "/asset/css/register.css"%> rel="stylesheet">
        <link rel="stylesheet" href="
              https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:800italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Oswald:700' rel='stylesheet' type='text/css'>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <button type="button" class="navbar-toggle"
                        data-toggle="collapse"
                        data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href=<%=request.getContextPath() + "/index.jsp"%>>CLiCK_Exchange</a>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <% if (!cc.isExistKey("username")) {%>
                        <li ><a href=<%=request.getContextPath() + "/index.jsp#header"%> class="abgne_gotoheader" >Home</a></li>
                        <li ><a href=<%=request.getContextPath() + "/index.jsp#news"%> class="abgne_gotoheader">News</a></li>
                        <li ><a href=<%=request.getContextPath() + "/index.jsp#mycarousel"%> class="abgne_gotoheader">Hot</a></li>	
                        <li ><a href=<%=request.getContextPath() + "/index.jsp#about"%> class="abgne_gotoheader" >About</a></li>
                        <li ><a href=<%=request.getContextPath() + "/index.jsp#contact"%> class="abgne_gotoheader">Contact</a></li>
                        <li ><a href=<%=request.getContextPath() + "/auth/login.jsp"%>>Login</a></li>
                        <%} else {%>
                        <form class="navbar-form navbar-right" method="POST">
                            <div class="form-group">

                                <a href=<%=request.getContextPath() + "/auth/profile.jsp"%> class="btn btn-default" >
                                    <span class="glyphicon glyphicon-user"></span>
                                    <%= cc.getValue("username") %>
                                </a>
                            </div>
                        </form>
                        
                        <form class="navbar-form navbar-right" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search">
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                        </form>

                        <%}%>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
