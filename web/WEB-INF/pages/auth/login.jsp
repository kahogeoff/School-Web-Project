<%-- 
    Document   : register
    Created on : 2015年11月16日, 下午07:56:41
    Author     : Geoffrey
--%>

<%@page import="com.clickstuffexchange.module.CookieControl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    Cookie[] cookies = request.getCookies();
    CookieControl cc = new CookieControl(cookies);
    
    if(cc.isExistKey("username"))
    {
        response.sendRedirect("..");
    }
%>
<jsp:include page="../../template/header.jsp" />
<head>
    <title>CLiCK - A stuff exchange platform [LOGIN]</title>
    <link href="asset/css/register.css" rel="stylesheet">
</head>
<body>


    <div class="container" style="margin-bottom: 87px;">

        <div class="jumbotron text-center">
            <a id="header" ></a>
            <h1>Please login in</h1>

            <form class="form-horizontal" role="form" method="post" action=<%=request.getContextPath() + "/auth/login.jsp"%>>
                <div class="form-group">
                    <h4>
                        <label for="inputUsename3" class="col-sm-3 control-label">UserName</label>
                    </h4>
                    <div class="col-sm-7">

                        <input type="text" class="form-control" id="inputUsename3" placeholder="Username" required="required" pattern="[\.A-Za-z0-9_-]{1,50}" name="username">

                    </div>
                </div>

                <div class="form-group">
                    <h4>
                        <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
                    </h4>
                    <div class="col-sm-7">
                        <i>
                            <input type="password" class="form-control" id="inputPassword3" placeholder="Password" required="required"  name="password">
                        </i>
                    </div>
                </div>

                <div class="form-group-submit">
                    <button type="submit" class="btn btn-lg" id="submit_btn" ><b>Login Now</b></button>
                </div>

            </form>

        </div>

    </div> 
    
<jsp:include page="../../template/footer.jsp" />
    <script>
        $(submit_btn).mouseover(function () {
            $(this).fadeTo("fast", 0.4);
        });
        $(submit_btn).mouseout(function () {
            $(this).fadeTo("fast", 1);
        });
    </script>

