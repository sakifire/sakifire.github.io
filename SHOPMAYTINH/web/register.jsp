
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript">




        </script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="login">
                <div class="container">
                    <form action="UserServlet" method="POST">
                        <div class="col-md-6 login-do1 animated wow fadeInLeft" data-wow-delay=".5s">
                            <div class="login-mail">
                                <input type="text" placeholder="Tên đăng nhập" name="name" id="name" required>
                                <span id="user-result"></span>
                            </div>
                            <div class="login-mail">
                                <input type="text" placeholder="Email" name="email" id="email" required>
                                <span id="user-result"></span>
                            </div>
                            <div class="login-mail">
                                <input type="text" placeholder="Điện thoại" name="phone" id="phone" required>
                                <span id="user-result"></span>
                            </div>

                            <div class="login-mail">
                                <input type="password" placeholder="Mật khẩu" name="pass" id="pass" required>
                                <span></span>
                            </div>

                            <div class="login-mail">
                                <input type="password" placeholder="Xác nhận mật khẩu" name="confirm_pass" id="confirm_pass" required>
                                <script>$('#pass, #confirm_pass').on('keyup', function () {
                                        if ($('#pass').val() == $('#confirm_pass').val()) {
                                            $('#message').html('Trùng khớp').css('color', 'green');
                                        } else
                                            $('#message').html('Không trùng khớp').css('color', 'red');
                                    });

                                </script>


                                <span></span><span id='message'></span>
                            </div>
                        </div>
                        <div class="col-md-6 login-do animated wow fadeInRight" data-wow-delay=".5s">
                            <label class="hvr-sweep-to-top login-sub">
                                <input type="hidden" value="insert" name="command">
                                <input type="submit" value="Đăng Ký">
                            </label>

                            <p>Bạn đã có tài khoản ?</p>
                            <a href="login.jsp" class="hvr-sweep-to-top">Đăng Nhập</a>
                        </div>
                        <div class="clearfix"> </div>
                    </form>
                </div>


            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
