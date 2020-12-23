<%-- 
    Document   : login
    Created on : Dec 15, 2020, 2:59:26 PM
    Author     : T O A N
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin Login</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5" id ="loginForm">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header headLoginForm">
                                        <h3 class="text-center font-weight-light my-4">Login</h3>
                                    </div>
                                    <div class="card-body fieldLogin">
                                        <form action="/Shopmaytinh/AdminUserServlet" method="post">
                                            <%if (request.getParameter("error") != null) {%>
                                            <div>
                                                <p style="color:red"><%=request.getParameter("error")%></p>
                                            </div>
                                            <% }%>
                                            <label>Tài khoản</label><br>
                                            <input type="text" class="form-control login" name="emailadmin"><br>
                                            <label>Mật khẩu</label><br>
                                            <input type="password" class="form-control login" name="passadmin"><br>
                                            <input type="hidden" value="login" name="commandadmin">
                                            <input type="submit" class="btn-primary form-control button" value="Đăng Nhập">
                                        </form>

                                       
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a href="#">For admin account only!!</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <jsp:include page="footer_admin.jsp"></jsp:include>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
