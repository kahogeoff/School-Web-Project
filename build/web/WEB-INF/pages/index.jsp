<%-- 
    Document   : index
    Created on : 2015年11月12日, 上午12:49:35
    Author     : Geoffrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>CLiCK - A stuff exchange platform</title>

        <!-- Bootstrap -->
        <link href=<%=request.getContextPath()+"/jslib/bootstrap/dist/css/bootstrap.min.css"%> rel="stylesheet">
        <link href=<%=request.getContextPath()+"/asset/css/custom.css"%> rel="stylesheet">
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
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
        
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#myPage">CLiCK_Exchange</a>
                <div class="collapse navbar-collapse " id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li ><a href="#home"  >Home</a></li>
                        <li ><a href="#services" >Services</a></li>
                        <li ><a href="#hot" >Hot</a></li>	
                        <li ><a  href="#about"  >About</a></li>
                        <li ><a href="#contact" >Contact</a></li>
                        <li ><a href="#" data-toggle="modal" data-target="#MyModal" >Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="container" style="margin-bottom: 87px;">

            <section id=home class="page">
                <div class="jumbotron text-center">
                    <a id="header" ></a>
                    <h1>Easy to Change</h1>
                    <p>We offer a platform for you to exchange everything that we want to change</p>
                    <button type=button class="btn btn-lg btn-primary" onclick="location.href = <%="'"+request.getContextPath()+"/auth/register.jsp'"%>" >
                        Sign up today
                    </button>
                </div>
            </section>

            <div id="AccountModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Account Login</h4>
                        </div>
                        <div class="modal-body">
                            <label for="email" class="control-label col-sm-2">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="email"/>
                            </div>
                            <label for="pwd" class="control-label col-sm-2">Password</label>
                            <div class="col-sm-10" >
                                <input type="password" class="form-control" id="pwd"/>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Register</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

            <!---
            <button type=button class="btn  btn-default" data-toggle="modal" data-target="#MyModal">open modal</button>
       !-->




            <div class="modal fade" id="MyModal"  role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="exampleModalLabel">Account Login</h4>
                        </div>
                        <div class="modal-body">
                            <form role="form">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Email:</label>
                                    <input type="text" class="form-control" id="Email">
                                </div>
                                <div class="form-group">
                                    <label for="message-text" class="control-label">Password</label>
                                    <input type="text" class="form-control" id="Password">
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary" action="auth.jsp" method="POST" value="123">Login</button>
                        </div>
                    </div>
                </div>
            </div>


            <!---
            <form class="form-horizontal" role="form">
            <div class="form-group">
            <label for="email" class="control-label col-sm-2">email : </label>
            <div class="col-sm-10">
            <input type="email" class="form-control" id="email"/>
            </div>
            </div>
            <div class="form-group">
            <label for="pwd" class="control-label col-sm-2">password : </label>
            <div class="col-sm-10" >
            <input type="password" class="form-control" id="pwd"/>
            </div>
            <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
            <label><input type="checkbox"/>click me</label>
            </div>
            </div>
            
            <button type="submit" class="btn utto-default">submit</button>
            </form>
    !-->

            <!--
            <div class="well"><h1>this is a well</h1><p>here is well 
    </p></div>
            <div class="alert alert-danger">
            <a href="#" class="close" data-dismiss="alert" area-label="close">&times;</a>
            <h1>this is a danger</h1>
            </div>
            <div class="alert alert-info"><h1>this is a danger</h1></div>
                    
            <a href="#">likes<span class="badge"><h1>art</h1></span></a>
            <button type="button" class="button button-success">likes<span class="badge">10</span></button>
                    
            <span class="label label-default">Example text</span>
            <h1>Likes<span class="label label-default">please</span></h1>
                    !-->





            <section id=services class="page">
                <div class="container">
                    <div class="content cover2 text-center">
                        <div class="t">   
                            <h1>SERVICES.</h1>
                        </div>
                        <div class="border"></div>
                        <br>
                        <div class="row">
                            <div class="col-sm-4">
                                <span  id="icon" class="glyphicon glyphicon-off"> </span>
                                <div class="t">
                                    <h4>POWER</h4>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <span id="icon" class="glyphicon glyphicon-heart"></span>
                                <div class="t">
                                    <h4>LOVE</h4>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <span id="icon" class="glyphicon glyphicon-lock"></span>
                                <div class="t">
                                    <h4>JOB DONE</h4>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-4">
                                <span id="icon" class="glyphicon glyphicon-leaf"></span>
                                <div class="t">
                                    <h4>GREEN</h4>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <span id="icon" class="glyphicon glyphicon-certificate"></span>
                                <div class="t">
                                    <h4>CERTIFIED</h4>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <span id="icon" class="glyphicon glyphicon-wrench"></span>
                                <div class="t">
                                    <h4>HARD WORK</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>




            <!---

<div class="row" id="news">
<div class="col-md-3">
<div class="panel panel-default">
<div class="panel-heading">
<h3 class="panel-title">title</h3>
</div>
<div class="panel-body">body of panel</div>
<div class="panel-footer">footer of panel</div>
</div>
</div>	
<div class="col-md-3">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">title</h3>
</div>
<div class="panel-body">body of panel</div>
<div class="panel-footer">footer of panel</div>
</div>
</div>
<div class="col-md-3">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">title</h3>
</div>
<div class="panel-body">body of panel</div>
<div class="panel-footer">footer of panel</div>
</div>
</div>
<div class="col-md-3">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">title</h3>
</div>
<div class="panel-body">body of panel</div>
<div class="panel-footer">footer of panel</div>
</div>
</div>
<div class="col-md-3">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">title</h3>
</div>
<div class="panel-body">body of panel</div>
<div class="panel-footer">footer of panel</div>
</div>
</div>

<div class="col-md-3">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">title</h3>
</div>
<div class="panel-body">body of panel</div>
<div class="panel-footer">footer of panel</div>
</div>
</div>

<div class="col-md-3">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">title</h3>
</div>
<div class="panel-body">body of panel</div>
<div class="panel-footer">footer of panel</div>
</div>
</div>

<div class="col-md-3">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">title</h3>
</div>
<div class="panel-body">body of panel</div>
<div class="panel-footer">footer of panel</div>
</div>
</div>

</div>
!-->
            <section id="hot" class="page">
                <div class="container">
                    <div class="content text-center">
                        <h1>HOT.</h1>
                        <div class="border"></div></br>
                    </div>
                    <div id="mycarousel" class="carousel slide" data-ride="carousel data-interval=3000">
                        <ol class="carousel-indicators">
                            <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#mycarousel" data-slide-to="1" ></li>
                            <li data-target="#mycarousel" data-slide-to="2" ></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="asset/img/1.jpg">
                                <div class="carousel-caption">
                                    <h1>theme1</h1>
                                </div>
                            </div>
                            <div class="item ">
                                <img src="asset/img/2.jpg">
                                <div class="carousel-caption">
                                    <h1>theme2</h1>
                                </div>
                            </div>
                            <div class="item ">
                                <img src="asset/img/3.jpg">
                                <div class="carousel-caption">
                                    <h1>theme3</h1>
                                </div>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#mycarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>
            </section>



            <section id=about class="page">
                <div class="container">
                    <div class="content cover2 text-center">
                        <div class="headingabout">
                            <h1>About Us.</h1>
                            <div class="border"></div>
                            <div class="text-left">
                                <h3>CLiCK物品交換平臺，是由四個雲科大的大學生所組成的，名子也分別是我們四個人的縮寫，在此過程中的合作與發想，讓我們了解到最重要的是我們認識了不同的人，一起腦力激盪、一起發揮出Maker的精神，進而享受其中的樂趣。</h3>
                                <h3 >常常因為衝動買了東西之後，就把那個東西放在某個角落長灰塵嗎?!你聽到他們在哭泣的聲音嗎!我們提供一個讓大家交換東西的平臺，讓那些被擺在角落的
                                    珍貴東西找到一個更適合他們的地方，快來加入我們吧!!!</h3>
                            </div>
                        </div>

                        <div class="row" >
                            <div class="col-md-6">
                                <a href="#" class="thumbnail">
                                    <img src="asset/img/c.png" >
                                </a>
                                <div class="bio">
                                    <h4>YenLin</h4>
                                    <p class="pclass">CSIE</p>
                                    <p class="pmotto">Nothing is impossible</p>
                                    <ul class="list-inline">
                                        <li>
                                            <a href="https://www.facebook.com/profile.php?id=100001708964326" title="Facebook" target="_blank">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="mailto:B10117022@yuntech.edu.tw" title="Email" target="_blank">
                                                <i class="fa fa-envelope"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <a href="#" class="thumbnail">
                                    <img src="asset/img/c.png" >
                                </a>
                                <div class="bio">
                                    <h4>Geoffrey</h4>
                                    <p class="pclass">CSIE</p>
                                    <p class="pmotto">Make things different</p>
                                    <ul class="list-inline">
                                        <li>
                                            <a href="https://www.facebook.com/Gagkaho" title="Facebook" target="_blank">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="mailto:B10117054@yuntech.edu.tw" title="Email" target="_blank">
                                                <i class="fa fa-envelope"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <a href="#" class="thumbnail">
                                    <img src="asset/img/c.png" >
                                </a>
                                <div class="bio">
                                    <h4>cccc</h4>
                                    <p class="pclass">IDM</p>

                                    <p class="pmotto">Life is struggle</p>
                                    <ul class="list-inline">
                                        <li>
                                            <a href="https://www.facebook.com/Gagkaho" title="Facebook" target="_blank">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="mailto:B10117054@yuntech.edu.tw" title="Email" target="_blank">
                                                <i class="fa fa-envelope"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <a href="#" class="thumbnail">
                                    <img src="asset/img/c.png" >
                                </a>
                                <div class="bio">
                                    <h4>cccc</h4>
                                    <p class="pclass">IDM</p>

                                    <p class="pmotto">Keep fighting</p>
                                    <ul class="list-inline">
                                        <li>
                                            <a href="https://www.facebook.com/Gagkaho" title="Facebook" target="_blank">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="mailto:B10117054@yuntech.edu.tw" title="Email" target="_blank">
                                                <i class="fa fa-envelope"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>


                        </div>




                    </div>
                </div>
            </section>



            <section  id="contact" class="page">
                <div class="container">
                    <div class="content cover2 text-center">
                        <div class="heading">
                            <h1>Getting in touch.</h2>
                                <HR color=white width="50%">
                                <p>如有問題可「來電」或「來信」, 我們很高興為您服務, 謝謝您的合作</p>
                        </div>
                        <div class="body">
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-3 ">
                                    <i class="fa fa-map-marker fa-5x"></i><br>
                                    <p color="white"><br>Address</p>
                                </div>
                                <div class="col-sm-3 ">
                                    <i class="fa fa-envelope fa-5x"></i>
                                    <p color="white"><br>yuntechergsa@gmail.com</p>
                                </div>
                                <div class="col-sm-3"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <!---
            <div class="page-header">
            <h1>Button</h1>
            </div>
            <p>
            <button type=button class="btn btn-default">Default</button>
            <button type=button class="btn btn-primary">primary</button>
            <button type=button class="btn btn-success">success</button>
            <button type=button class="btn btn-info">info</button>
            <button type=button class="btn btn-warning">warning</button>
            <button type=button class="btn btn-danger">danger</button>
            <button type=button class="btn btn-link">link</button>
            </p>
            
            <p>
            <button type=button class="btn btn-lg btn-default">Default</button>
            <button type=button class="btn btn-lg btn-primary">primary</button>
            <button type=button class="btn btn-lg btn-success">success</button>
            <button type=button class="btn btn-lg btn-info">info</button>
            <button type=button class="btn btn-lg btn-warning">warning</button>
            <button type=button class="btn btn-lg btn-danger">danger</button>
            <button type=button class="btn btn-lg btn-link">link</button>
            </p>
            
            <p>
            <button type=button class="btn btn-sm btn-default">Default</button>
            <button type=button class="btn btn-sm btn-primary">primary</button>
            <button type=button class="btn btn-sm btn-success">success</button>
            <button type=button class="btn btn-sm btn-info">info</button>
            <button type=button class="btn btn-sm btn-warning">warning</button>
            <button type=button class="btn btn-sm btn-danger">danger</button>
            <button type=button class="btn btn-sm btn-link">link</button>
            </p>
            
            <p>
            <button type=button class="btn btn-xs btn-default">Default</button>
            <button type=button class="btn btn-xs btn-primary">primary</button>
            <button type=button class="btn btn-xs btn-success">success</button>
            <button type=button class="btn btn-xs btn-info">info</button>
            <button type=button class="btn btn-xs btn-warning">warning</button>
            <button type=button class="btn btn-xs btn-danger">danger</button>
            <button type=button class="btn btn-xs btn-link">link</button>
            </p>
            
            
            !-->

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
                    $(icon).mouseover(function () {
                        $(this).fadeTo("fast", 0.4);

                    });
                    $(icon).mouseout(function () {
                        $(this).fadeTo("fast", 1);
                    });
        </script>

        <script>
            $(icon).click(function () {
                $(location).attr('href', 'register.html');
            });
        </script>



        <script>
            $(document).ready(function () {
                // Add smooth scrolling to all links in navbar + footer link
                $(".navbar a, footer a[href='#myPage']").on('click', function (event) {

                    // Prevent default anchor click behavior
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;

                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top - 50
                    }, 900, function () {

                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                });
            })
        </script>

    </body>
</html>
