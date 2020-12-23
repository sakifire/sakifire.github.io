<%-- 
    Document   : index.jsp
    Created on : Dec 15, 2020, 2:58:48 PM
    Author     : T O A N
--%>
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
        <title>Admin Page</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body class="sb-nav-fixed">
        <%
                UserAdmin useradmin = null;
                if(session.getAttribute("useradmin") != null){
                    useradmin = (UserAdmin) session.getAttribute("useradmin");
                }
        %>
        <jsp:include page="header_admin.jsp"></jsp:include>
        <jsp:include page="sidenav_admin.jsp"></jsp:include>         
            <div id="layoutSidenav">
                <div id="layoutSidenav_content">
                    <main style="width: 100%; height: 100%">
                        <div class="container-fluid" style="width: 100%; height: 100%; align-items: center; justify-content: center">
                        <jsp:include page="content_admin.jsp"></jsp:include>
                        </div>
                    </main>
                </div>
            </div>
        <jsp:include page="footer_admin.jsp"></jsp:include>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>

    </body>
</html>
