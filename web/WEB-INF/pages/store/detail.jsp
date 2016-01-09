<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Bootstrap 101 Template</title>

        <!-- Bootstrap -->
        <link href=<%=request.getContextPath() + "/jslib/bootstrap/dist/css/bootstrap.min.css"%> rel="stylesheet">
        <link href=<%=request.getContextPath() + "/asset/css/custom.css"%> rel="stylesheet">
        <link href=<%=request.getContextPath() + "asset/css/detail.css"%> rel="stylesheet">
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
                <a class="navbar-brand" href=<%=request.getContextPath() + "index.jsp"%>>CLiCK_Exchange</a>
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


        <div class="container" style="margin-bottom: 87px;">
            <div class="container contain">

                <div class="col-md-3">
                    <h1 class="page-title">Services</h1>
                    <div class="store-categories">
                        <ul class="list-group store-category-list" >

                            <a href="services.html" id="cate_btn" class="list-group-item btn btn-default store-category-link">æ¸ç±</a>

                            <a href="services.html"  id="cate_btn" class="list-group-item btn btn-default store-category-link">è¡£ææé£¾</a>

                            <a href="services.html" id="cate_btn" class="list-group-item btn btn-default store-category-link">å¤§åå®¶å·</a> 

                            <a href="services.html" id="cate_btn" class="list-group-item btn btn-default store-category-link">äº¤éå·¥å·</a>   

                            <a href="services.html" id="cate_btn" class="list-group-item btn btn-default store-category-link">å®¶é»</a>  

                            <a href="services.html" id="cate_btn" class="list-group-item btn btn-default store-category-link">å¶ä»</a>        

                        </ul>
                    </div>
                </div>


                <div class="col-md-9">

                    <div class="store-item">
                        <h1 class="text-center">Japanese Style Hat</h1>

                        <img src="asset/img/c.png"  id='pic_btn' class="img-rounded"> </img> 
                        <h3><b>Describe : </b>This is a Wondeful hat you can't miss it</h3>
                        <h4><b>Category : </b></h4>
                        <h4><b>Posted : </b></h4>
                        <h4><b>City : </b></h4>         
                    </div>
                    <br>
                    <div class="border"></div>
                    </br>


                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                        <span class="glyphicon glyphicon-phone"></span> Contact Details
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Name : </p>
                                    <p>Phone : </p>
                                    <p>Email : </p> 
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" 
                                       href="#collapseTwo">
                                        <span class="glyphicon glyphicon-check"></span>Ask administrator to review this item
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <form role="form">
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Name</label>
                                            <input type="å¯ç¢¼" class="form-control" id="exampleInputPassword1" placeholder="Keyin Name" required="required">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email</label>
                                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Keyin Email" required="required">
                                        </div>

                                        <div class="form-group">
                                            <label for="Comment">Message</label>
                                            <textarea class="form-control" rows="3" required="required" placeholder="Write down your comment...."></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-default">éåº</button>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>


                </div>






















            </div>
        </div>


        <div class="navbar navbar-inverse navbar-fixed-bottom">
            <div class="container">
                <div class="navbar-text pull-left">
                    <p>copyright CLiCK_Exchange 2015</p>
                </div>-
                <div class="navbar-text pull-right">
                    <a href="#"><i class="fa fa-facebook fa-3x"></i></a>
                    <a href="#"><i class="fa fa-twitter fa-3x"></i></a>
                    <a href="#"><i class="fa fa-github fa-3x"></i></a>
                    <a href="#"><i class="fa fa-google fa-3x"></i>-</a>
                </div>
            </div>
        </div>



        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="jslib/bootstrap/dist/js/bootstrap.min.js"></script>
        <script>
            $(cate_btn).mouseover(function () {
                $(this).fadeTo("fast", 0.4);
            });
            $(cate_btn).mouseout(function () {
                $(this).fadeTo("fast", 1);
            });
        </script>


        <script>
            $(pic_btn).mouseover(function () {
                $(this).fadeTo("fast", 0.4);

            });
            $(pic_btn).mouseout(function () {
                $(this).fadeTo("fast", 1);
            });
        </script>
    </body>
</html>