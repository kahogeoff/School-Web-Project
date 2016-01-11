<%-- 
    Document   : profile
    Created on : 2016/1/10, 下午 09:27:01
    Author     : leoliu
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<%
    ResultSet rs = (ResultSet) request.getAttribute("resultSet");
    rs.next();
%>

<jsp:include page="../../template/header.jsp" />
<head>
    <link href=<%=request.getContextPath() + "/asset/css/register.css"%> rel="stylesheet">
    <title>CLiCK - A stuff exchange platform [REGISTER]</title>
</head>

<body>
    <div class="container ">
        <section style="padding-bottom: 50px; padding-top: 50px;">
            <div class="row">
                  <form class="form-horizontal" role="form" method="post" action=<%=request.getContextPath() + "/auth/profile.jsp"%>>
                <div class="col-md-3">
                        <img   id="blah" src=<%= "data:image;base64," + rs.getString("img_Base64")%> class="avatar img-circle" alt="your image" height="150" width="150"></br>
                        <input type="file" id="imgInp"  required="required">
                        <input type="hidden" id="fkmylife" name="img_Base64" value=""  >
                </div>


                <div class="col-md-8">
                    <div class="alert alert-info">
                        <h2>For User: </h2>
                        <p>
                            Here are all your personal profile.
                            If you wanna to change details,please do it in this page.<br/>
                            You don't have to worry the security beacuse we have the best engineers to protect you data.
                        </p>
                    </div>

                    <!-- 更改基本資料 一開始的資料用placholder顯示 
                    
                     <h1 class="text-center"></h1>
                    
                    -->
                    
                    <div class="form-group col-md-6">
                        <h3>Change Your Personal Profile</h3>   
                        <label>Registered Name</label>
                        <input type="text" class="form-control" name="user_name" required="required"    placeholder=<%= rs.getString("user_name")%>>
                        <label>Registered ID</label>
                        <input type="text" class="form-control" name="user_id"  required="required" placeholder=<%= rs.getString("user_id")%>>
                        <label>Registered Email</label>
                        <input type="text" class="form-control" name="user_email"  required="required"     placeholder=<%= rs.getString("user_email")%>>
                        <label>Registered Contact Number</label>
                        <input type="text" class="form-control" name="user_contactNum"    required="required"      placeholder=<%= rs.getString("user_contactNum")%>>
                        <label>Registered Age</label>
                        <input type="text" class="form-control" name="user_age"     required="required"            placeholder=<%= rs.getString("user_age")%>>
                        <br>
                           <button type="submit" class="btn btn-lg" id="submit_btn"  ><b>Update Details</b></button>
                    </div>
                        </form>

                    <!-- 更改密碼   -->
                     <form class="form-horizontal" role="form" method="post" action=<%=request.getContextPath() + "/auth/register.jsp"%>>
               
                    <div class="form-group col-md-6">
                        <h3>Change Your Password</h3>
                        <label>Enter Old Password</label>
                        <input type="password" class="form-control" name="old_password" id="old">
                        <label>Enter New Password</label>
                        <input type="password" class="form-control" name="new_password" id="new">
                        <label>Confirm New Password</label>
                        <input type="password" class="form-control" name="confirm_password" id="comfirm"  >
                        <br>
                         <button type="submit" class="btn btn-lg" id="submit_btn"  ><b>change password</b></button>
                    </div>
                                           </form>
    
                </div>
            </div>
            <!-- ROW END -->


        </section>
        <!-- SECTION END -->
    </div>
    <jsp:include page="../../template/footer.jsp" />
    <script>
        $(submit_btn).mouseover(function () {
            $(this).fadeTo("fast", 0.4);
        });
        $(submit_btn).mouseout(function () {
            $(this).fadeTo("fast", 1);
        });
    </script>

    <!-- js用來顯示圖片  -->
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

    <script type="text/javascript">
window.onload = function () {
	document.getElementById("new_password").onchange = validatePassword;
	document.getElementById("confirm_password").onchange = validatePassword;
}
function validatePassword(){
var pass2=document.getElementById("confirm_password").value;
var pass1=document.getElementById("new_password").value;
if(pass1!=pass2)
	document.getElementById("confirm_password").setCustomValidity("Passwords Don't Match");
else
	document.getElementById("confirm_password").setCustomValidity('');	 
//empty string means no validation error
}
</script>
    
    
    
    
    
    
    
    
    
    
</body>
<jsp:include page="../../template/footer.jsp" />
