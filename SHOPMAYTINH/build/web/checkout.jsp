
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.ProductGet"%>
<%@page import="model.Product"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP COMPUTER - CART</title>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script src="js/jquery.min.js"></script>
        <!-- js -->
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <!-- for bootstrap working -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->

    </head>

    <body>
        <%

            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>
        <jsp:include page="header.jsp"></jsp:include>


        </div>
        <div class="check-out">	 
            <div class="container">	 



                <table class="table animated wow fadeInLeft" data-wow-delay=".5s">
                    <tr>
                        <th class="t-head" style="
                            width: 25%;
                            border-top-left-radius: 8px;
                            border-bottom-left-radius: 5px;">Sản phẩm</th>
                        <th class="t-head ">Thông tin</th>
                        <th class="t-head">Đơn giá</th>
                        <th class="t-head">Số Lượng</th>
                        <th class="t-head" style="
                            width: 25;
                            border-top-right-radius: 8px;
                            border-bottom-right-radius: 5px;"></th>

                    </tr>

                <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%>
                <tr class="cross1">
                    <td class="t-data">
                        <a href="single.jsp?productID=<%=list.getValue().getProduct().getProductID()%>" class="at-in">
                            <img src="<%=list.getValue().getProduct().getProductImage()%>" class="fashion-grid" alt=""> 

                        </a>
                    </td>
                    <td class="t-data">

                        <h3><%=list.getValue().getProduct().getProductName()%></h3>
                    </td>
                    <td class="t-data"><%=formatter.format(list.getValue().getProduct().getProductPrice())%> VNĐ</td>
                    <td class="t-data"><div class="quantity"> 
                            <div class="quantity-select">            
                                <div class="entry value-minus">&nbsp;</div>
                                <div class="entry value"><span class="span-1"><%=list.getValue().getQuantity()%></span></div>									

                                <div class="entry value-plus active">&nbsp;</div>
                            </div>

                        </div>


                    </td>

                    <td class="t-data"><a href="CartServlet?command=remove&productID=<%=list.getValue().getProduct().getProductID()%>"><img src="images/circle.png" class="img-responsive " alt=""></a></td>

                </tr>
                <% }%>

            </table>
            <div class=" cart-total" style="
                 width: 30%;">

                <h5 class="continue"> Tổng tiền hàng</h5>
                <div class="price-details">
                    <h3>Chi Tiết:</h3>
                    <span>Giảm giá:</span>
                    <span class="total1">---</span>
                    <span>Phí vận chuyển:</span>
                    <span class="total1"></span>
                    <div class="clearfix"></div>				 
                </div>	
                <ul class="total_price">
                    <li class="last_price"> <h4>Thành tiền:</h4></li>	
                    <li class="last_price"><span><%=formatter.format(cart.totalCart())%> VNĐ</span></li>
                    <div class="clearfix"> </div>
                </ul>

                <a href="deal.jsp">Thanh Toán</a>

            </div>


        </div>
    </div>
    <!--quantity-->
    <script>
        $('.value-plus').on('click', function () {
            var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
            divUpd.text(newVal);
        });

        $('.value-minus').on('click', function () {
            var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
            if (newVal >= 1)
                divUpd.text(newVal);
        });
    </script>
    <!--quantity-->

    <div class="social animated wow fadeInUp" data-wow-delay=".1s">

    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
