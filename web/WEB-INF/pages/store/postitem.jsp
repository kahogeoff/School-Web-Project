<%-- 
    Document   : postitem
    Created on : 2016年1月10日, 上午02:21:12
    Author     : Geoffrey
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../../template/header.jsp" />
<%
    ResultSet rs = (ResultSet) request.getAttribute("resultSet");
    rs.next();
%>
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
            <form class="form-horizontal" role="form" method="post" action=<%=request.getContextPath() + "/store/postitem.jsp"%>>
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <label>Name: </label>
                            <%= rs.getString("user_name")%>
                        </div>
                    </div>

                    <div class="row">                        
                        <div class="col-sm-8 form-group">
                            <label>Phone number: </label>
                            <%= rs.getString("user_contactNum")%>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <label>E-mail: </label>
                            <%= rs.getString("user_email")%>                        
                        </div>
                    </div>
                        
                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <label>Item name: </label>
                            <input class="form-control" id="name" name="name" placeholder="Name of the item" type="text" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <label>Categories: </label>
                            <select class="form-control" name="type">
                                <option value="books">書籍</option>
                                <option value="clothes">衣服服飾</option>
                                <option value="furniture">大型家具</option>
                                <option value="transports">交通工具</option>
                                <option value="houseEle">家電</option>
                                <option value="others">其他</option>
                            </select>
                        </div>
                    </div>  
                        
                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <label>使用時間: </label>
                            <input class="form-control" id="duration" name="duration" placeholder="How long had been used?" type="text" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <label>City: </label>
                            <input class="form-control" id="city" name="city" placeholder="Where to change" type="text" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <textarea class="form-control" id="describe" name="describe" placeholder="Describe for it" rows="5"></textarea>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <button class="btn btn-primary" type="submit">Post now</button>
                        </div>
                    </div>

                </div>
                <div class="col-sm-4 form-group">
                    <input type='file' id="imgInp" required>
                    <input type="hidden" id="fkmylife" name="img_Base64" value="" />
                    <img id="blah" src="#" alt="your image" title="200px" width="300">
                </div>

                <div style="display:none"> </div> 

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
                    $('#fkmylife').attr('value', e.target.result.substring((e.target.result.indexOf(',')) + 1));
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#imgInp").change(function () {
            readURL(this);
        });
    </script>
