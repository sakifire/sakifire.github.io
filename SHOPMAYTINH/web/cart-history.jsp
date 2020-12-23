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
        <title>Lịch sử mua hàng</title>

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
                    <div class="page-header">
                        <h3>LỊCH SỬ MUA HÀNG</h3>
                    </div>

                    <div class="bs-example wow fadeInRight animated" data-wow-delay=".5s" data-example-id="simple-table">
                        <table class="table">
                            <caption>Đây là danh sách lịch sử mua hàng của bạn.</caption>
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Mã Hóa Đơn</th>
                                    <th>Tổng Hóa Đơn</th>
                                    <th>Thanh Toán</th>
                                    <th>Địa Chỉ</th>
                                    <th>Ngày Mua</th>
                                </tr>
                            </thead>
                        <%
                            int count = 0;
                            for (Bill bill : listBillByUser) {
                                count++;
                        %>
                        <tbody>
                            <tr>
                                <th scope="row"><%=count%></th>
                                <td><%=bill.getBillID()%></td>
                                <td><%=formatter.format(bill.getTotal())%> VNĐ</td>
                                <td><%=bill.getPayment()%></td>
                                <td><%=bill.getAddress()%></td>
                                <td><%=bill.getDate()%></td>
                            </tr>
                        </tbody>
                        <% }%>
                    </table>
                </div><!-- /example -->
                <!--//table-->
                <div class="clearfix"> </div>
            
        </div> 
        <div class="clearfix"> </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

