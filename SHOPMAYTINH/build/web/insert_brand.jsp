<%@page import="model.UserAdmin"%>
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
        <title>Thêm thương hiệu </title>
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <%
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
                            <h1 class="mt-4">Thêm thương hiệu</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
                                <li class="breadcrumb-item active">Insert brand</li>
                            </ol>

                            <div class="card mb-4">
                                
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <form action="/Shopmaytinh/ManagerBrandServlet" method="post">
                                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">


                                                <tbody>
                                                    <tr>
                                                        <td>Mã thương hiệu</td>
                                                        <td><input type="hidden" class="sedang" name="maThuongHieu"><%=error%></td>

                                                </tr>
                                                <tr>
                                                    <td>Tên thương hiệu</td>
                                                    <td><input type="text" class="sedang" name="tenThuongHieu"><%=error%></td>

                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td><input type="hidden" name="command" value="insert">        
                                                        <input type="submit" class="button" value="Lưu dữ liệu">
                                                    </td>

                                                </tr>
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
