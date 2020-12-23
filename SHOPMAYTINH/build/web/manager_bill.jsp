<%@page import="model.UserAdmin"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.UserGet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Bill"%>
<%@page import="get.BillGet"%>
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
        <title>Manager Bill</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <%        
           BillGet billGet = new BillGet();
           ArrayList<Bill> listBill = billGet.getListBill();
           UserGet userGet = new UserGet();
           DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>
        <div id="layoutSidenav">
            <jsp:include page="header_admin.jsp"></jsp:include>
            <jsp:include page="sidenav_admin.jsp"></jsp:include>
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid">
                            <h1 class="mt-4">Quản lí hóa đơn</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item"><a href="index_admin.jsp">Dashboard</a></li>
                                <li class="breadcrumb-item active">Hóa đơn</li>
                            </ol>

                            <div class="card mb-4">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <form method="post" action="/Shopmaytinh/InsertProductServletx" enctype="multipart/form-data">
                                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                                <thead>
                                                    <tr>
                                                        <th width="30px">Mã hóa đơn</th>
                                                        <th>Khách hàng</th>
                                                        <th>Tổng hóa đơn</th>
                                                        <th>Thanh toán</th>
                                                        <th>Địa chỉ giao hàng</th>
                                                        <th>Ngày mua</th>
                                                        <th width="180px">Tùy chọn</th>
                                                    </tr>
                                                </thead>
                                            <%for(Bill bill : listBill){%>
                                            <tbody>
                                            <td width="30px"><%=bill.getBillID()%></td>
                                            <td><%=userGet.getUser(bill.getUserID()).getUserName()%></td>
                                            <td><%=formatter.format(bill.getTotal())%></td>
                                            <td><%=bill.getPayment()%></td>
                                            <td><%=bill.getAddress()%></td>
                                            <td><%=bill.getDate()%></td>
                                            <td width="75px">
                                            <center>
                                                <a href="#">Xác nhận </a>&nbsp;&nbsp; | &nbsp;&nbsp;
                                                <a href="#">Hủy</a>
                                            </center>
                                            </td>
                                            </tbody>
                                            <% } %>
                                        </table></form>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <jsp:include page="footer_admin.jsp"></jsp:include>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
    </body>
</html>
