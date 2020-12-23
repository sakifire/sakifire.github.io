<%@page import="java.text.DecimalFormat"%>
<%@page import="get.BrandGet"%>
<%@page import="model.Brand"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="model.User"%>
<%@page import="model.Category"%>
<%@page import="get.CategoryGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
    </head>
    <body>

        <%
            CategoryGet categoryget = new CategoryGet();
            BrandGet brandget = new BrandGet();
            User user = null;
            if (session.getAttribute("user") != null) {
                user = (User) session.getAttribute("user");
            }
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>
        <div class="header" style="
             
             background-color: #efefef;
             ">
            <div class="header-grid" style="padding-bottom: 10px;">
                <div class="container">
                    <div class="header-right animated wow fadeInRight" data-wow-delay=".5s">
                        
                        <div class="header-right1">

                            <div class="cart box_1">


                                <a href="checkout.jsp">
                                    <h3> <div class="total" style="
                                              margin-top: 3px; ">

                                            <span class="last_price" ><%=formatter.format(cart.totalCart())%></span></div>
                                        <img src="images/cart.png" alt="" />
                                    </h3>
                                </a>

                            </div>	

                        </div>
                        <div class="header-right2 " style="
                             margin-top: 8px;
                             ">
                            <ul>
                                <%if (user != null) {%>

                                <li><i class="glyphicon glyphicon-user" ></i><a href="myaccount.jsp">Chào <%=user.getUserName()%></a></li>
                                        <% } %>
                                        <%if (user == null) { %>

                                <li>
                                    <a href="login.jsp">Đăng nhập</a></li>
                                    <% }%>

                            </ul>
                        </div>

                    </div>

                </div>
            </div>
            <div class="container">
                <div class="logo-nav">

                    <nav class="navbar navbar-default">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header nav_2">
                            <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <div class="navbar-brand logo-nav-left ">
                                <h1 class="animated wow pulse" data-wow-delay=".5s"><a href="index.jsp">JSP<span>COMPUTER</span></a></h1>
                            </div>

                        </div> 
                        <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="index.jsp" class="act">Trang Chủ</a></li>	
                                <!-- Mega Menu -->
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Danh mục sản phẩm <b class="caret"></b></a>
                                    <ul class="dropdown-menu multi">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <ul class="multi-column-dropdown">
                                                    <h4>JSP COMPUTER</h4>

                                                    <%
                                                        for (Category c : categoryget.getListCategory()) {
                                                    %>
                                                    <li><a href="products.jsp?category=<%=c.getCategoryID()%>"><%=c.getCategoryName()%></a></li>
                                                        <%
                                                            }
                                                        %>
                                                </ul>
                                            </div>

                                            <div class="clearfix"></div>
                                        </div>

                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Thương Hiệu <b class="caret"></b></a>
                                    <ul class="dropdown-menu multi">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <ul class="multi-column-dropdown">
                                                    <h4>THƯƠNG HIỆU</h4>

                                                    <%
                                                        for (Brand b : brandget.getListBrand()) {
                                                    %>
                                                    <li><a href="productbrand.jsp?brand=<%=b.getBrandID()%>"><%=b.getBrandName()%></a></li>
                                                        <%
                                                            }
                                                        %>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </ul>
                                </li>	

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tài Khoản <b class="caret"></b></a>
                                        <%if (user != null) {%>
                                    <ul class="dropdown-menu multi">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <ul class="multi-column-dropdown">
                                                    <h4>Tài Khoản</h4>
                                                    <li> <a href="myaccount.jsp">Quản lý tài khoản</a>
                                                    </li>
                                                    <li> <a href="checkout.jsp">Xem giỏ hàng</a>
                                                    </li>
                                                    <li> <a href="cart-history.jsp">Lịch sử mua hàng</a>
                                                    </li>
                                                    <li> <a href="LogoutServlet">Đăng xuất</a>
                                                    </li>

                                                </ul>
                                            </div>

                                        </div>
                                    </ul>
                                    <% }%>
                                </li>	
                            </ul>
                        </div>
                    </nav>
                </div>

            </div>
        </div>
    </body>
</html>
