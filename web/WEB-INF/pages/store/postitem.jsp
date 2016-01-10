<%-- 
    Document   : postitem
    Created on : 2016年1月10日, 上午02:21:12
    Author     : Geoffrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../../template/header.jsp" />
<head>
    <title>CLiCK - A stuff exchange platform [POST]</title>
    <!-- HTML5 shim and Respond.js 讓 IE8 支援 HTML5 元素與媒體查詢 -->
    <!-- 警告：Respond.js 無法在 file:// 協定下運作 -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

    <div id="contact" class="container">
        <h3 class="text-center">Post it now!!!</h3>

        <div class="row">
            <form>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                        </div>
                        <div class="col-sm-4 form-group">
                            <input class="form-control" id="phone" name="phone" placeholder="Phone" type="text" required>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <input class="form-control" id="email" name="email" placeholder="Email" type="text" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <input class="form-control" id="category" name="category" placeholder="category for it" type="text" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <input class="form-control" id="post" name="post" placeholder="when to post" type="text" required>
                        </div>
                    </div>	  

                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <input class="form-control" id="city" name="city" placeholder="Where to change" type="text" required>
                        </div>
                    </div>


                    <textarea class="form-control" id="describe" name="describe" placeholder="Describe for it" rows="5"></textarea>
                    <br>

                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <input type='file' id="imgInp">
                            <img id="blah" src="#" alt="your image" title="200px" width="300">

                        </div>
                    </div>

                </div>


                <div style="display:none"> </div> 


                <div class="row">
                    <div class="col-sm-8 form-group">
                        <button class="btn btn-primary" type="submit">Post now</button>
                    </div>
                </div>
            </form>


        </div>

    </div>

    <jsp:include page="../../template/footer.jsp" />
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#blah').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#imgInp").change(function () {
            readURL(this);
        });
    </script>
