<%-- 
    Document   : index
    Created on : 2015年12月27日, 下午03:12:41
    Author     : Geoffrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<% ResultSet rs = (ResultSet) request.getAttribute("resultSet");%>
<% boolean canBack = (boolean) request.getAttribute("withFilter");%>

<jsp:include page="../../template/header.jsp" />
<head>
    <link href=<%=request.getContextPath() + "/asset/css/services.css"%> rel="stylesheet">
    <title>CLiCK - A stuff exchange platform</title>
</head>
<body>
    <div class="container" style="margin-bottom: 87px;">
        <div class="container contain">
            <h1 class="page-title" >Services</h1>
            <div class="col-md-3">

                <div class="store-categories">
                    <ul class="list-group store-category-list" >

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
                

                <%
                    if (!rs.isBeforeFirst()) {
                %>
                <div class="col-md-4">
                    <div class="store-item">
                        <h1>Nothing right here... :(</h1>
                    </div>
                </div>
                <%
                    }
                %>
                <%
                    while (rs.next()) {
                %>
                <div class="col-md-4">
                    <div class="store-item">
                        <a href =<%=request.getContextPath() + "/store/detail.jsp?id=" + rs.getString("item_id")%>>   
                            <img style='display:block; width:100px;height:100px;' src=<%= "data:image;base64," + rs.getString("item_picture")%>  id='pic_btn' class="img-rounded"> </img>
                        </a>
                        <h3><%= rs.getString("item_name")%></h3>
                        <h4>使用時間：<%= rs.getString("item_duration")%></h4>
                        <h4>Post by: <%= rs.getString("user_id")%></h4>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <%
                if (canBack) {
            %>  
            <div align="right">
                <a href=<%=request.getContextPath() + "/store"%> class="btn" >Back</a>
            </div>
            <%
                }
            %>

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