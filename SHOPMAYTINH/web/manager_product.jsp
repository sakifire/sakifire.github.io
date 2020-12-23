<%@page import="model.UserAdmin"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.BrandGet"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Category"%>
<%@page import="get.CategoryGet"%>
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
        <title>Manager Product</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <%
            CategoryGet categoryGet = new CategoryGet();
            BrandGet brandGet = new BrandGet();
            ProductGet productGet = new ProductGet();
DecimalFormat formatter = new DecimalFormat("###,###,###");
            long productID;
            ArrayList<Product> listProduct = productGet.getListProduct();
        %>
        <div id="layoutSidenav">
            <jsp:include page="header_admin.jsp"></jsp:include>
            <jsp:include page="sidenav_admin.jsp"></jsp:include>
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid">
                            <h1 class="mt-4">Quản lí sản phẩm</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item"><a href="index_admin.jsp">Dashboard</a></li>
                                <li class="breadcrumb-item active">Sản phẩm</li>
                            </ol>

                            <div class="card mb-4">
                                <a class="card-header" href="/Shopmaytinh/insert_product.jsp">

                                    <i class="fas fa-table mr-1"></i>
                                    Thêm sản phẩm
                                </a>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <form method="post" action="/Shopmaytinh/InsertProductServletx" enctype="multipart/form-data">
                                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                                <thead>
                                                    <tr>
                                                        <th>STT</th>
                                                        <th>Mã sản phẩm</th>
                                                        <th>Mã loại</th>
                                                        <th>Tên sản phẩm</th>
                                                        <th>Thương hiệu</th>
                                                        <th>Hình đại diện</th>
                                                        
                                                        <th>Giá</th>
                                                        <th>Mô tả</th>

                                                        <th>Tùy chọn</th>
                                                    </tr>
                                                </thead>
                                            <%
                                                int count = 0;
                                                for (Product product : listProduct) {
                                                    count++;

                                            %>
                                            <tbody>
                                                <tr>
                                                    <td><%=count%></td>
                                                    <td><%=product.getProductID()%></td>
                                                    <td><%=categoryGet.getCategory(product.getCategoryID()).getCategoryName()%></td>
                                                    <td><%=product.getProductName()%></td>
                                                    <td><%=brandGet.getBrand(product.getBrandID()).getBrandName()%></td>
                                                    <td><img class="hinhql" src="/GuiarShop/<%=product.getProductImage()%>"/></td>
                                                    
                                                    <td><%=formatter.format(product.getProductPrice())%></td>
                                                    <td><a href="/Shopmaytinh/product_description.jsp?product_id=<%=product.getProductID()%>">Xem chi tiết</a></td>
                                                    <td>
                                            <center>
                                                <a href="/Shopmaytinh/update_product.jsp?command=update&product_id=<%=product.getProductID()%>">Sửa</a>&nbsp;| &nbsp;
                                                <a href="/Shopmaytinh/ManagerProductServlet?command=delete&product_id=<%=product.getProductID()%>">Xóa</a>
                                            </center>
                                            </td>
                                            </tr>
                                            </tbody>
                                            <% } %>
                                        </table>
                                        </form>
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
