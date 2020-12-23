
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.BrandGet"%>
<%@page import="model.Brand"%>
<%@page import="get.CategoryGet"%>
<%@page import="model.Category"%>
<%@page import="get.ReviewGet"%>
<%@page import="model.Review"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page import="get.ProductGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>THÔNG TIN ĐƠN PHẨM</title>

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
        <!-- js -->
        <script src="js/jquery.min.js"></script>



    </head>


</head>
<body>

    <%
        ProductGet productGet = new ProductGet();
        BrandGet brandget = new BrandGet();
        Product product = new Product();
        String productID = "";
        if (request.getParameter("productID") != null) {
            productID = request.getParameter("productID");
            product = productGet.getProduct(Long.parseLong(productID));
        }
        ReviewGet reviewGet = new ReviewGet();
        long category_id = product.getCategoryID();
        Review review = new Review();
        CategoryGet categoryget = new CategoryGet();
        String category_id_1 = "1";
        DecimalFormat formatter = new DecimalFormat("###,###,###");
    %>

    <jsp:include page="header.jsp"></jsp:include>
        <div class="product">
            <div class="container">
                <div class="col-md-3 product-bottom ">
                    <!--categories-->
                    <div class="categories animated wow fadeInUp animated" data-wow-delay=".5s" >
                        <h3>Loại Sản Phẩm</h3>

                        <ul class="cate">
                        <%
                            for (Category c : categoryget.getListCategory()) {
                        %>
                        <li><i class="glyphicon glyphicon-menu-right" ></i>
                            <a href="products.jsp?category=<%=c.getCategoryID()%>"><%=c.getCategoryName()%></a>
                        </li>	
                        <% 
                            } 
                        %>
                    </ul>

                </div>

                <!--//menu-->

                <div class="sellers animated wow fadeInDown" data-wow-delay=".5s">
                    <h3 class="best">TOP BÁN CHẠY</h3>
                    <div class="product-head">
                        <%
                            for (Product p : productGet.getList3ProductByCategory(Long.parseLong(category_id_1))) {
                        %>
                        <div class="product-go">
                            <div class=" fashion-grid">
                                <a href="single.jsp?productID=<%=p.getProductID()%>"><img class="img-responsive " src="<%=p.getProductImageForward()%>" alt=""></a>

                            </div>
                            <div class=" fashion-grid1">
                                <h6 class="best2">
                                    <a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a>
                                </h6>
                                <span class=" price-in1">
                                    <%=formatter.format(p.getProductPrice())%> VNĐ
                                </span>
                                <p>
                                    <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">
                                        Thêm vào giỏ
                                    </a>
                                </p>
                            </div>

                            <div class="clearfix"> </div>
                        </div>
                        <% }%>


                    </div>
                </div>
                <!---->
            </div>
            <div class="col-md-9 animated wow fadeInRight" data-wow-delay=".5s">

                <div class="col-md-5 grid-im">

                    <div class="flexslider">
                        <ul class="slides">
                            <li data-thumb="<%=product.getProductImage()%>">
                                <div class="thumb-image"> <img src="<%=product.getProductImage()%>" > </div>
                            </li>
                            <li data-thumb="<%=product.getProductImageForward()%>">
                                <div class="thumb-image"> <img src="<%=product.getProductImageForward()%>" > </div>
                            </li>
                            <li data-thumb="<%=product.getProductImageBack()%>">
                                <div class="thumb-image"> <img src="<%=product.getProductImageBack()%>"> </div>
                            </li>
                        </ul>
                    </div>
                </div>	

                <div class="col-md-7 single-top-in">
                    <div class="span_2_of_a1 simpleCart_shelfItem">
                        <h3><%=product.getProductName()%></h3>

                        <div class="price_single">
                            <span class="reducedfrom item_price" ><%=formatter.format(product.getProductPrice())%> VNĐ</span>
                            <a href="CartServlet?command=plus&productID=<%=product.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
                            <div class="clearfix"> </div>
                        </div>


                        <div class="clearfix"> </div>
                    </div>
                    <!----- tabs-box ---->
                    <div class="sap_tabs">	
                        <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                            <ul class="resp-tabs-list">
                                <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>Mô Tả Sản Phẩm</span></li>
                                <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span><i class="glyphicon glyphicon-info-sign" ></i> Thông Tin Chi Tiết</span></li>
                                <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span><i class="glyphicon glyphicon-edit" ></i> Đánh Giá</span></li>
                                <div class="clearfix"></div>
                            </ul>				  	 
                            <div class="resp-tabs-container">
                                <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Mô Tả Sản Phẩm</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
                                    <div class="facts">
                                        <p><%=product.getProductDescription()%></p>
                                    </div>

                                </div>
                                <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>Additional Information</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                                    <div class="facts1">

                                        <div class="color"><p>Màu sắc</p>
                                            <span >Blue, Black, Red</span>
                                            <div class="clearfix"></div>
                                        </div>


                                    </div>

                                </div>									
                                <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>Reviews</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                                    <div class="comments-top-top">
                                        <%
                                            for (Review r : reviewGet.getListReviewByProduct(Long.parseLong(productID))) {
                                        %>
                                        <div class="top-comment-left">
                                            <img class="img-responsive" src="images/co.png" alt="">
                                        </div>
                                        <div class="top-comment-right">
                                            <h6><a href="#"><%=r.getReviewName()%></a> - Đánh giá sản phẩm : <%=r.getReviewStar()%>/5</h6>
                                            <p><%=r.getReviewMessage()%></p>
                                        </div>
                                        <div class="clearfix"> </div>
                                        <% }%>

                                        <a class="add-re" href="Sorry.jsp"><i class="glyphicon glyphicon-comment" ></i> Viết Đánh Giá</a>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $('#horizontalTab').easyResponsiveTabs({
                                    type: 'default', //Types: default, vertical, accordion           
                                    width: 'auto', //auto or any width like 600px
                                    fit: true   // 100% fit in a container
                                });
                            });
                        </script>	
                        <!---->
                    </div>


                </div>
                <!----->
                <div class="clearfix"> </div>
                <div class="page-header">
                    <h3 >SẢN PHẨM LIÊN QUAN</h3>
                </div>
                <div class=" col-md-si">
                    <%
                        for (Product p : productGet.getListProductRelated(category_id, Long.parseLong(productID))) {
                    %>
                    <div class="col-sm-5 item-grid simpleCart_shelfItem">


                        <div class="grid-pro">
                            <div  class=" grid-product " >
                                <figure>		
                                    <a href="single.jsp?productID=<%=p.getProductID()%>">
                                        <div class="grid-img">
                                            <img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
                                        </div>
                                        <div class="grid-img">
                                            <img  src="<%=p.getProductImageForward()%>" class="img-responsive"  alt="">
                                        </div>			
                                    </a>		
                                </figure>	
                            </div>
                            <div class="women">
                                <h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
                                <p ><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
                                <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">
                                    Thêm vào giỏ
                                </a>

                            </div>
                        </div>

                    </div>
                    <% }%>

                    <div class="clearfix"> </div>
                </div>
            </div>	

            <script defer src="js/jquery.flexslider.js"></script>
            <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

            <script>
                            // Can also be used with $(document).ready()
                            $(window).load(function () {
                                $('.flexslider').flexslider({
                                    animation: "slide",
                                    controlNav: "thumbnails"
                                });
                            });
            </script>
            <jsp:include page="footer.jsp"></jsp:include>

            </body>
            </html>
