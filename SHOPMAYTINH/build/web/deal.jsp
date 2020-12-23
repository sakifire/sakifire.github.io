<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>THANH TOÁN</title>
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
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="login">
            <div class="container">
                <form action="CheckOutServlet" method="POST"> 
                    <div class="col-md-6 login-do1 animated wow fadeInLeft" data-wow-delay=".5s">
                        <span>Địa Chỉ Của Bạn*</span>
                        <br>
                        <div class="login-mail">
                            <input type="text" placeholder="Số nhà, đường, phường, quận..." name="address" required>
                        </div>
                        <span>Họ và tên*</span>
                        <br>
                        <div class="login-mail">
                            <input type="text" placeholder="Họ và tên của người nhận hàng" name="name" required>
                        </div>
                        <span>Điện thoại*</span>
                        <br>
                        <div class="login-mail">
                            <input type="text" placeholder="Điện thoại di động của người nhận hàng" name="phone" required>
                        </div>
                        <div>
                            <span>Phương Thức Thanh Toán * : </span>
                            <select name="payment">
                                <option value="Bank transfer">Chuyển khoản</option>
                                <option value="Live">COD</option>

                            </select>
                        </div>
                        <div class="col-md-6 login-do animated wow fadeInRight" data-wow-delay=".5s"
                             style="
                             /* margin: auto; */
                             margin-top: 30px;
                             /* margin-left: 0px; */
                             padding-left: 0px;
                             ">
                            <label class="hvr-sweep-to-top login-sub">
                                <input type="submit" value="Đặt hàng">
                            </label>
                        </div>
                    </div>

                </form>

            </div>
        </div>        
    </body>
</html>
