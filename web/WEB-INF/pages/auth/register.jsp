<%-- 
    Document   : register
    Created on : 2015年11月16日, 下午07:56:41
    Author     : Geoffrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>CLiCK - A stuff exchange platform [Register]</title>

        <!-- Bootstrap -->
        <link href=<%=request.getContextPath()+"/jslib/bootstrap/dist/css/bootstrap.min.css"%> rel="stylesheet">
        <link href=<%=request.getContextPath()+"/asset/css/custom.css"%> rel="stylesheet">
        <link href=<%=request.getContextPath()+"/asset/css/register.css"%> rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
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
                <a class="navbar-brand" href="index.html">CLiCK_Exchange</a>
                     <div class="navbar-collapse collapse">
                  
                   
                       <form class="navbar-form navbar-right" role="search">
        <div class="form-group">
              
            <button class="btn btn-default">
            <span class="glyphicon glyphicon-user"></span>Liu,Yen-Lin
            </button>
        </div>
        
      </form>
  <form class="navbar-form navbar-right" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
                </div>
            </div>
        </nav>





        <div class="container" style="margin-bottom: 87px;">

            <div class="jumbotron text-center">
                <a id="header" ></a>
                <h1>Register</h1>
                <p> create a new one with your username and email</p></br>
                  <!---
                <form class="text-center" name="fos_user_registraration_form" method="post" action="">
                    <input type="text" id="fos_user_registraration_form_username" name="fos_user_registraration_form_[username]" required="required" maxlength="255" pattern="[\.A-Za-z0-9_-]{1,50}" class="text-input foucs" placeHolder="Username" /> </br>

                    <input type="email" id="fos_user_registration_form_email" name="fos_user_registration_form[email]" required="required" maxlength="254" pattern=".{2,}" class="text-input focus" placeHolder="Email" />  </br>

                    <input type="password" id="fos_user_registration_form_plainPassword_first" name="fos_user_registration_form[plainPassword][first]" required="required" class="text-input focus" placeHolder="Password" />  </br>

                    <input type="password" id="fos_user_registration_form_plainPassword_second" name="fos_user_registration_form[plainPassword][second]" required="required" class="text-input focus" placeHolder="Repeat Password" /> </br>

                    </form>
                  <p> <input  id="sb" type="submit" name="submit" value="CREATE ACCOUNT" class="button large bold"></p>
                  !--->
                <form class="form-horizontal" role="form">
                    <div class="form-group">
    <label for="inputusername3" class="col-sm-2 control-label">UserName</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputUsename3" placeholder="Username" required="required" pattern="[\.A-Za-z0-9_-]{1,50}">
    </div>
  </div>
  <div class="form-group ">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" placeholder="Email" required="required"  pattern=".{2,}">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3" placeholder="Password" required="required">
    </div>
  </div>
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Recheck password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3" placeholder="RecheckPassword" required="required">
    </div>
  </div>
 
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">登入</button>
    </div>
  </div>
</form>
            </div>

        </div>

        <div class="navbar navbar-inverse navbar-fixed-bottom">
            <div class="container">
                <div class="navbar-text pull-left">
                    <p>copyright CLiCK_Exchange 2015</p>
                </div>
                <div class="navbar-text pull-right">
                    <a href="#"><i class="fa fa-facebook fa-3x"></i></a>
                    <a href="#"><i class="fa fa-twitter fa-3x"></i></a>
                    <a href="#"><i class="fa fa-github fa-3x"></i></a>
                    <a href="#"><i class="fa fa-google fa-3x"></i></a>
                </div>
            </div>
        </div>



        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src=<%=request.getContextPath()+"/jslib/jquery/dist/jquery.min.js"%>></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src=<%=request.getContextPath()+"/jslib/bootstrap/dist/js/bootstrap.min.js"%>></script>
        
        <script>
            $(sb).mouseover(function () {
                $(this).fadeTo("fast", 0.4);
            });
            $(sb).mouseout(function () {
                $(this).fadeTo("fast", 1);
            });
        </script>


    </body>
</html>
