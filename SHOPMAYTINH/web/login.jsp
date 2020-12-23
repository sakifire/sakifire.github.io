<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
        

        <div class="login">
            <div class="container">
                <h3 style="margin-left: 14px; margin-bottom: 20px; color: red">${error}</h3>
                <form action="UserServlet" method="POST">
                    
                <div class="col-md-6 login-do1 animated wow fadeInLeft" >
                    <div class="login-mail">
                        <input type="text" placeholder="Tên tài khoản" name="name" required>
                    </div>
                    <div class="login-mail">
                        <input type="password" placeholder="Mật khẩu" name="pass" required>
                    </div>
                    <a class="news-letter " href="#">
                        <label class="checkbox1">
                            <input type="checkbox" name="checkbox" >
                            <i> </i>
                            Quên mật khẩu ?
                        </label>
                    </a>


                </div>
                <div class="col-md-6 login-do animated wow fadeInRight" data-wow-delay=".5s">
                    <label class="hvr-sweep-to-top login-sub">
                        <input type="hidden" value="login" name="command">
                        <input type="submit" value="Đăng nhập">
                    </label>
                    <p>Bạn chưa có tài khoản ?</p>
                    <a href="register.jsp" class="hvr-sweep-to-top">Đăng ký</a>
                </div>

                <div class="clearfix"> </div>
            </form>

        </div>
    </div>
    <br><!-- comment -->
    <br>
        <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
