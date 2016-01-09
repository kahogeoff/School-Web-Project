<%-- 
    Document   : index
    Created on : 2015年11月12日, 上午12:49:35
    Author     : Geoffrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<jsp:include page="../template/header.jsp" />
<head>
    <title>CLiCK - A stuff exchange platform [REGISTER]</title>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

    <div class="container" style="margin-bottom: 87px;">

        <section id=home class="page">
            <div class="jumbotron text-center">
                <a id="header" ></a>
                <h1>Easy to Change</h1>
                <p>We offer a platform for you to exchange everything that we want to change</p>
                <a class="btn btn-lg btn-primary" href=<%=request.getContextPath() + "/auth/register.jsp"%>>
                    Sign up today
                </a>
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

        <div class="modal fade" id="MyModal"  role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="exampleModalLabel">Account Login</h4>
                    </div>
                    <form role="form" method="post" action=<%=request.getContextPath() + "/auth/login.jsp"%>>
                        <div class="modal-body">

                            <div class="form-group">
                                <label for="Username" class="control-label">Username:</label>
                                <input type="text" class="form-control" id="Username" name="username" required="required">
                            </div>
                            <div class="form-group">
                                <label for="Password" class="control-label">Password</label>
                                <input type="password" class="form-control" id="Password" name="password" required="required">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

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
                            <img src=<%=request.getContextPath() + "/asset/img/1.JPG"%>>
                            <div class="carousel-caption">
                                <h1>theme1</h1>
                            </div>
                        </div>
                        <div class="item ">
                            <img src=<%=request.getContextPath() + "/asset/img/2.JPG"%>>
                            <div class="carousel-caption">
                                <h1>theme2</h1>
                            </div>
                        </div>
                        <div class="item ">
                            <img src=<%=request.getContextPath() + "/asset/img/3.JPG"%>>
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

                            <img src="asset/img/liu.jpg" >

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

                            <img src="asset/img/geo.jpg" >

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

                            <img src="asset/img/kuo.jpg" >

                            <div class="bio">
                                <h4>Kuo</h4>
                                <p class="pclass">IDM</p>

                                <p class="pmotto">Life is struggle</p>
                                <ul class="list-inline">
                                    <li>
                                        <a href="https://www.facebook.com/profile.php?id=100002921368072" title="Facebook" target="_blank">
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

                            <img src="asset/img/yen.jpg" >

                            <div class="bio">
                                <h4>Yen</h4>
                                <p class="pclass">IDM</p>

                                <p class="pmotto">Keep fighting</p>
                                <ul class="list-inline">
                                    <li>
                                        <a href="https://www.facebook.com/profile.php?id=100000235428874" title="Facebook" target="_blank">
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
    </div>

    <jsp:include page="../template/footer.jsp" />
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
            $(location).attr('href', 'store/index.jsp');
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