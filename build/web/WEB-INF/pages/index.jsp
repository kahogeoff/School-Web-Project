<%-- 
    Document   : index
    Created on : 2015年11月12日, 上午12:49:35
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
        <title>CLiCK - A stuff exchange platform</title>

        <!-- Bootstrap -->
        <link href="jslib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="asset/css/custom.css" rel="stylesheet">
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
                <a class="navbar-brand" href="www.stuffchange.tw">CLiCK_Exchange</a>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li ><a href="#header" class="abgne_gotoheader" >Home</a></li>
                        <li ><a href="#news" class="abgne_gotoheader">News</a></li>
                        <li ><a href="#mycarousel" class="abgne_gotoheader">Hot</a></li>	
                        <li ><a  href="#about" class="abgne_gotoheader" >About</a></li>
                        <li ><a href="#contact" class="abgne_gotoheader">Contact</a></li>
                        <li ><a href="#" data-toggle="modal" data-target="#MyModal" >Login</a></li>

                        <!--
                        <li class="dropdown"> <a href="#" class="dropdown-toggle"
                         data-toggle="dropdown">Learn
                         <b class="caret"></b>
                         <ul class="dropdown-menu">
                         <li class="dropdown-header">Examples</li>
                         <li><a href="#">c++</a></li>
                         <li><a href="#">java</a></li>
                         </ul>
                         </li>
                         !-->
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container" style="margin-bottom: 87px;">




            <div class="jumbotron text-center">
                <a id="header" ></a>
                <h1>Easy to Change</h1>
                <p>We offer a platform for you to exchange everything that we want to change</p>
                <button type=button class="btn btn-lg btn-primary">Sign up today</button>

            </div>

            <!---
            <button type="button" class="btn  btn-default" data-toggle="modal" data-target="#MyModal">open modal</button>
            !-->
            <div id="MyModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <form class="form-horizontal">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Account Login</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="email" class="control-label col-sm-2">Email</label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" id="email"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="pwd" class="control-label col-sm-2">Password</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="pwd"/>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Login</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </form>
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
            <% //if(resultSet.newsCount > 0) { %> 
            <%//for (int i = 0; i < resultSet.newsCount; i++) { %>
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
            </div>
            <%//}%>
            <% //}else{ %>
            <!--No News-->
            <%//}%>


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

            <div class="row" id="about">

                <div class="col-md-4">
                    <a href="#" class="thumbnail">
                        <img src="asset/img/c.png" alt="cpp tutorial">
                    </a>
                    <h1>YenLin</h1>
                    <h3>CSIE</h3>
                    <p>Nothing is impossible </p>
                    <a href="#"><i class="fa fa-facebook fa-3x"></i></a>
                    <a href="#"><i class="fa fa-google fa-3x"></i></a>
                </div>

                <div class="col-md-4">
                    <a href="#" class="thumbnail">
                        <img src="asset/img/c.png" alt="java tutorial">
                    </a>
                    <h1>Geoffrey</h1>
                    <h3>CSIE</h3>
                    <p>Make things different</p>
                    <a href="#"><i class="fa fa-facebook fa-3x"></i></a>
                    <a href="#"><i class="fa fa-google fa-3x"></i></a>
                </div>

                <div class="col-md-4">
                    <a href="#" class="thumbnail">
                        <img src="asset/img/c.png" alt="pathon tutorial">
                    </a>
                    <h1>CCCCCCCC</h1>
                    <h3>IDM</h3>
                    <p>To be or not to BE</p>
                    <a href="#"><i class="fa fa-facebook fa-3x"></i></a>
                    <a href="#"><i class="fa fa-google fa-3x"></i></a>
                </div>

            </div>





            <div class="row" id="contact">
                <div class="col-md-4">
                    <h1>Address</h1>
                    <a href="#"><i class="fa fa-map-marker fa-3x"></i></a>

                </div>
                <div class="col-md-4">
                    <h1>Email</h1>
                    <a href="#"><i class="fa fa-envelope-o  fa-3x"></i></a>
                    <a href="#header" class="abgne_gotoheader">Go To Header</a>
                </div>
            </div>

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
        <script src="jslib/jquery/dist/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="jslib/bootstrap/dist/js/bootstrap.min.js"></script>

    </body>
</html>
