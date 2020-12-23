<%@page import="model.BillDetail"%>
<%@page import="get.BillDetailGet"%>
<%@page import="get.ProductGet"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.UserGet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="get.BillGet"%>
<%@page import="model.Bill"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script src="js/jquery.min.js"></script>
        <!-- //js -->
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <!-- for bootstrap working -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->

    </head>
    <body>
        <%
            User users = (User) session.getAttribute("user");
            if (users == null) {
                response.sendRedirect("/Shopmaytinh/login.jsp");
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
            long user_id = users.getUserID();

            BillGet billGet = new BillGet();
            ArrayList<Bill> listBillByUser = billGet.getListBillByUser(user_id);
            UserGet userGet = new UserGet();
            ProductGet productGet = new ProductGet();
            BillDetail billdetail = new BillDetail();

            User user = new UserGet().getUser(user_id);
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <!--//nav-->
                <div class="page-header">
                    <h3>THÔNG TIN TÀI KHOẢN</h3>
                </div>
                <form action="UserServlet" method="POST">
                    <div class="col-md-6 login-do1 animated wow fadeInLeft" data-wow-delay=".5s">
                        <i>Tên tài khoản*</i>
                        <div class="login-mail">
                            <input type="hidden" name="user_id" value="<%=user.getUserID()%>">
                        <input type="text" name="username" id="name" value="<%=user.getUserName()%>">

                        <span id="user-result"></span>
                    </div>

                    <i>Email*</i>
                    <div class="login-mail">
                        <input type="text" name="useremail" id="email" value="<%=user.getUserEmail()%>">
                        <input type="hidden" name="role"  value="0">
                        <span id="user-result"></span>
                    </div>
                    <i>Điện thoại*</i>
                    <div class="login-mail">
                        <input type="text" name="phone" id="phone" value="<%=user.getUserPhone()%>">
                        <span id="user-result"></span>
                    </div>
                    <i>Mật khẩu*</i>
                    <div class="login-mail">
                        <input type="password" name="pass" id="pass" value="<%=user.getUserPass()%>">
                        <span></span>
                    </div>
                    <i>Xác nhận mật khẩu*</i>
                    <div class="login-mail">
                        <input type="password" name="confirm_pass" id="confirm_pass" value="<%=user.getUserPass()%>">

                        <script>$('#pass, #confirm_pass').on('keyup', function () {
                                if ($('#pass').val() == $('#confirm_pass').val()) {
                                    $('#message').html('Trùng khớp').css('color', 'green');
                                } else
                                    $('#message').html('Không trùng khớp').css('color', 'red');
                            });

                        </script>



                        <span></span><span id='message'></span>
                    </div>
                    <div style="padding-bottom: 40px;">
                        <input type="submit" class="btn btn-lg btn-info" value="Cập Nhật Thông Tin"></div>

                </div>
                <input type="hidden" value="update" name="command">

                <div class="clearfix"> </div>
            </form>
            <!--table-->

            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>

