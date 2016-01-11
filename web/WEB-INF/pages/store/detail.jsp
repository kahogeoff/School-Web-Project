
<%@page import="com.clickstuffexchange.module.CookieControl"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<%
    ResultSet rs = (ResultSet) request.getAttribute("resultSet");
    rs.next();

    Cookie[] cookies = request.getCookies();
    CookieControl cc = new CookieControl(cookies);
%>

<jsp:include page="../../template/header.jsp" />

<head>
    <title>CLiCK - A stuff exchange platform [DETAIL]</title>
    <link href=<%=request.getContextPath() + "asset/css/detail.css"%> rel="stylesheet">
</head>
<body>
    <div class="container" style="margin-bottom: 87px;">
        <div class="container contain">

            <div class="col-md-3">
                <h1 class="page-title">Services</h1>
                <div class="store-categories">
                    <ul class="list-group store-category-list" >
                        <a href=<%=request.getContextPath() + "/store"%> id="cate_btn" class="list-group-item btn btn-default store-category-link">全部</a>

                        <a href=<%=request.getContextPath() + "/store/books"%> id="cate_btn" class="list-group-item btn btn-default store-category-link">書籍</a>

                        <a href=<%=request.getContextPath() + "/store/clothes"%>  id="cate_btn" class="list-group-item btn btn-default store-category-link">衣服服飾</a>

                        <a href=<%=request.getContextPath() + "/store/furniture"%> id="cate_btn" class="list-group-item btn btn-default store-category-link">大型家具</a> 

                        <a href=<%=request.getContextPath() + "/store/transports"%> id="cate_btn" class="list-group-item btn btn-default store-category-link">交通工具</a>   

                        <a href=<%=request.getContextPath() + "/store/houseEle"%> id="cate_btn" class="list-group-item btn btn-default store-category-link">家電</a>  

                        <a href=<%=request.getContextPath() + "/store/others"%>  id="cate_btn" class="list-group-item btn btn-default store-category-link">其他</a>        

                    </ul>
                </div>
            </div>


            <div class="col-md-9">

                <div class="store-item">
                    <div>
                        <h1 class="text-center"><%= rs.getString("item_name")%></h1>
                    </div>

                    <div align="center">
                        <img style='display:block; width:300px;height:300px;' src=<%= "data:image;base64," + rs.getString("item_picture")%>  id='pic_btn' class="img-rounded"> </img> 
                    </div>

                    <div>
                        <h4><b>Describe : </b><%= rs.getString("item_describe") == null ? "No describe" : rs.getString("item_describe")%></h4>
                        <h4><b>Category : </b><%= rs.getString("item_type")%></h4>
                        <h4><b>Posted : </b><%
                            Date date = rs.getTimestamp("item_day");
                            String strDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
                            %>
                            <%=strDate%></h4>
                        <h4><b>Posted By : </b><%= rs.getString("user_id")%></h4>
                        <h4><b>City : </b><%= rs.getString("area")%></h4>   
                        <h4><b>使用時間 : </b><%= rs.getString("item_duration")%></h4>   
                    </div>
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
                                <p>Name : <%= rs.getString("user_name")%></p>
                                <p>Phone : 
                                    <% if (!rs.getString("user_contactNum").isEmpty()) {%>
                                    <%=rs.getString("user_contactNum")%>
                                    <% } else {%>
                                    <i>*NO PHONE NUMBER*</i>
                                    <%}%></p>
                                <p>Email : 
                                    <% if (!rs.getString("user_email").isEmpty()) {%>
                                    <a href=<%= "mailto:" + rs.getString("user_email")%>><%=rs.getString("user_email")%></a>
                                    <% } else {%>
                                    <i>*NO EMAIL*</i>
                                    <%}%>
                                </p> 
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" 
                                   href="#collapseTwo">
                                    <span class="glyphicon glyphicon-check"></span>Review this item
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                                <% if (cc.isExistKey("username")) {%>
                                <form role="form">
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Name</label>
                                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Keyin Name" required="required">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Keyin Email" required="required">
                                    </div>

                                    <div class="form-group">
                                        <label for="Comment">Message</label>
                                        <textarea class="form-control" rows="3" required="required" placeholder="Write down your comment...."></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-default">Submit</button>
                                </form>
                                <%} else {%>
                                <h2>Please login first</h2>
                                <%}%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="../../template/footer.jsp" />

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