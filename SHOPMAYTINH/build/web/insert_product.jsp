<%@page import="model.UserAdmin"%>
<%@page import="get.BrandGet"%>
<%@page import="model.Brand"%>
<%@page import="java.util.ArrayList"%>
<%@page import="get.CategoryGet"%>
<%@page import="model.Category"%>
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
        <title>Thêm sản phẩm</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <%
        CategoryGet categoryget = new CategoryGet();
        BrandGet brandget = new BrandGet();      
            String error = "";
            if(request.getParameter("error")!=null){
                error = (String) request.getParameter("error");
            }
        %>
        <div id="layoutSidenav">
            <jsp:include page="header_admin.jsp"></jsp:include>
            <jsp:include page="sidenav_admin.jsp"></jsp:include>
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid">
                            <h1 class="mt-4">Thêm sản phẩm</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
                                <li class="breadcrumb-item active">Insert Product</li>
                            </ol>

                            <div class="card mb-4">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <form method="post" action="/Shopmaytinh/InsertProductServletx" enctype="multipart/form-data">
                                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                                <tbody>
                                                    <tr>

                                                    </tr>
                                                    <tr>
                                                        <td width="225px"><b></b>
                                                        </td>
                                                        <td>
                                                            <input type="hidden" class="sedang" name="maSanPham"><%=error%></td></tr> 

                                                <tr><td><b>Tên danh mục</b></td><td>
                                                        <div>
                                                            <span></span>
                                                            <select name="maloai">
                                                                <%
                                                                    for (Category c : categoryget.getListCategory()) {
                                                                %>
                                                                <option value="<%=c.getCategoryID()%>"><%=c.getCategoryName()%></option>
                                                                <% } %>

                                                            </select>
                                                        </div>
                                                        <input type="hidden" class="sedang" name=""><%=error%></td></tr>
                                                <tr><td width="125px"><b>Tên sản phẩm</b></td><td><input type="text" class="sedang" name="tenSanPham"><%=error%></td></tr>
                                                <tr><td><b>Tên thương hiệu</b></td><td>
                                                        <div>
                                                            <span></span>
                                                            <select name="mathuonghieu">
                                                                <%
                                        for (Brand b : brandget.getListBrand()) {
                                                                %>
                                                                <option value="<%=b.getBrandID()%>"><%=b.getBrandName()%></option>
                                                                <% } %>

                                                            </select>
                                                        </div>
                                                        <input type="hidden" class="sedang" name=""><%=error%></td></tr>
                                                <tr><td><b>Hình đại diện</b></td><td><input type="file" placeholder="images/tênhình.jpg" class="sedang" name="daidien"><%=error%></td><</tr>
                                                <tr><td><b>Hình mặt trước</b></td><td><input type="file" placeholder="images/tênhình.jpg" class="sedang" name="mattruoc"><%=error%></td></tr>
                                                <tr><td><b>Hình mặt sau</b></td><td><input type="file" placeholder="images/tênhình.jpg" class="sedang" name="matsau"><%=error%></td></tr>       
                                                <tr><td><b>Giá sản phẩm</b></td><td><input type="text" class="sedang" name="gia"><%=error%><b> VNĐ</b></td></tr>

                                                <tr><td><b>Mô tả chi tiết</b></td><td><textarea type="text"  placeholder="" name="mota"><%=error%></textarea></td></tr>
                                                <tr><td></td><td>

                                                        <input type="submit" class="button" value="Thêm sản phẩm">
                                                        <input type="reset" class="button" value="Xóa">

                                                    </td></tr>
                                            </tbody>
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
