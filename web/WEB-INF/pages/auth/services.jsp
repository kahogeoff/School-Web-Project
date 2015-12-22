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
        <link href=<%=request.getContextPath()+"jslib/bootstrap/dist/css/bootstrap.min.css"%> rel="stylesheet">
        <link href=<%=request.getContextPath()+"asset/css/custom.css"%> rel="stylesheet">
        <link href=<%=request.getContextPath()+"asset/css/services.css"%> rel="stylesheet">
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
                    <ul class="nav navbar-nav navbar-right">
                        <li ><a href="#header" class="abgne_gotoheader" >Home</a></li>
                        <li ><a href="#news" class="abgne_gotoheader">Services</a></li>
                        <li ><a href="#mycarousel" class="abgne_gotoheader">Hot</a></li>	
                        <li ><a  href="#about" class="abgne_gotoheader" >About</a></li>
                        <li ><a href="#contact" class="abgne_gotoheader">Contact</a></li>
                        <li ><a href="#" data-toggle="modal" data-target="#MyModal" >Login</a></li>
                    </ul>
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
     <h1 class="page-title">Services</h1>
	 <div class="col-md-3">
             
	 <div class="store-categories">
	 <ul class="store-category-list" >
         
         <li class="store-category-list-item"><a href="/store/books" id="cate_btn" class="btn btn-primary store-category-link">book</a></li>
         
         <li class="store-category-list-item"><a href="/store/clothes"  id="cate_btn" class="btn btn-primary store-category-link">衣服服飾</a></li>
         
         <li class="store-category-list-item"><a href="/store/furniture" id="cate_btn" class="btn btn-primary store-category-link">大型家具</a></li>    
         
         <li class="store-category-list-item"><a href="/store/transports" id="cate_btn" class="btn btn-primary store-category-link">交通工具</a></li>    
         
         <li class="store-category-list-item"><a href="/store/houseEle" id="cate_btn" class="btn btn-primary store-category-link">家電</a></li>    
         
         <li class="store-category-list-item"><a href="/store/others" id="cate_btn" class="btn btn-primary store-category-link">其他</a></li>          
        
         </ul>
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
    <script src="js/bootstrap.min.js"></script>
	<script>
   $(cate_btn).mouseover(function() {
  $(this).fadeTo("fast",0.4);
  });
  $(cate_btn).mouseout(function() {
  $(this).fadeTo("fast",1);
  });
</script>


    </body>
</html>