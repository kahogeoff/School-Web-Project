<%-- 
    Document   : register
    Created on : 2015年11月16日, 下午07:56:41
    Author     : Geoffrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../../template/header.jsp" />
<head>
    <link href=<%=request.getContextPath() + "/asset/css/register.css"%> rel="stylesheet">
    <title>CLiCK - A stuff exchange platform [REGISTER]</title>
</head>
<body>
    <div class="container" style="margin-bottom: 87px;">

        <div class="jumbotron text-center">
            <a id="header" ></a>
            <h1>Register</h1>
            <p> create a new one with your username and email</p>

            <form class="form-horizontal" role="form" method="post" action=<%=request.getContextPath() + "/auth/register.jsp"%>>
                <div class="form-group">
                    <h4>
                        <label for="inputusername3" class="col-sm-3 control-label">UserName</label>
                    </h4>
                    <div class="col-sm-7">

                        <input type="text" class="form-control" id="inputUsename3" name="username" placeholder="Username" required="required" pattern="[\.A-Za-z0-9_-]{1,50}">

                    </div>
                </div>
                <div class="form-group ">
                    <h4>
                        <label for="inputEmail3" class="col-sm-3 control-label">Email</label>
                    </h4>
                    <div class="col-sm-7">
                        <i>
                            <input type="email" class="form-control" id="inputEmail3" name="email" placeholder="Email" required="required"  pattern=".{2,}">
                        </i>
                    </div>
                </div>
                <div class="form-group">
                    <h4>
                        <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
                    </h4>
                    <div class="col-sm-7">
                        <i>
                            <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="Password" required="required">
                        </i>
                    </div>
                </div>
                <div class="form-group">
                    <h4>
                        <label for="inputPassword3" class="col-sm-3 control-label">Recheck password</label>
                    </h4>
                    <div class="col-sm-7">
                        <i>
                            <input type="password" class="form-control" id="inputPassword3" name="password_confirm" placeholder="RecheckPassword" required="required">
                        </i>
                    </div>
                </div>
                <div class="form-group-submit">
                    <button type="submit" class="btn btn-lg" id="submit_btn" ><b>Register Now</b></button>
                </div>

            </form>
        </div>
    </div>
</body>
<jsp:include page="../../template/footer.jsp" />