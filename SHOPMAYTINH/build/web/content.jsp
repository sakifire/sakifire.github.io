<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/owl.carousel.css" rel="stylesheet" />

    </head>
    <body>
        <%
            ProductGet productGet = new ProductGet();
            String category_id_1 = "1";
            String category_id_2 = "2";
//            String category_id_4 = "4";
            if (request.getParameter("category") != null) {
                category_id_1 = request.getParameter("category");
                category_id_2 = request.getParameter("category");
//               category_id_4 = request.getParameter("category");
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>
        <div class="content">
            <div class="content-head">
                <div class="col-md-6 col-m2 animated wow fadeInRight" data-wow-delay=".1s" style="
                     width: 100%;
                     ">
                    <!---->
                    
                </div>
                <div class="clearfix"></div>
            </div>	
        </div>
        <!---->

        <div class="content-top">
            <div class="col-md-5 col-md1 animated wow fadeInLeft" data-wow-delay=".1s">

            </div>
            <div class="col-md-7 col-md2 animated wow fadeInRight" data-wow-delay=".1s" style="
                 width: 80%;
                 margin-left: 135px;
                 /* align-items: center; */
                 /* text-align: center; */
                 ">
                <%
                    for (Product p : productGet.getList3ProductByCategory(Long.parseLong(category_id_1))) {
                %>

                <div class="col-sm-4 item-grid simpleCart_shelfItem">
                    <div class="grid-pro">
                        <div  class=" grid-product " >
                            <figure>		
                                <a href="single.jsp?productID=<%=p.getProductID()%>">
                                    <div class="grid-img">
                                        <img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
                                    </div>
                                    <div class="grid-img">
                                        <img  src="<%=p.getProductImageForward()%>"  alt="" width="132%" height="180" class="img-responsive">
                                    </div>			
                                </a>		
                            </figure>	
                        </div>
                        <div class="women">

                            <h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
                            <p><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
                            <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
                <%  } %>
                <div class="clearfix"></div>
            </div>
            <!----->
            <!---->
            <div class="content-top">

                <div class="col-md-7 col-md2 animated wow fadeInLeft" data-wow-delay=".1s" style="
                 width: 80%;
                 margin-left: 135px;">
                    <%
                        for (Product p : productGet.getList3ProductByCategory(Long.parseLong(category_id_2))) {
                    %> 
                    <div class="col-sm-4 item-grid simpleCart_shelfItem">
                        <div class="grid-pro">
                            <div  class=" grid-product " >
                                <figure>		
                                    <a href="single.jsp?productID=<%=p.getProductID()%>">
                                        <div class="grid-img">
                                            <img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
                                        </div>
                                        <div class="grid-img">
                                            <img  src="<%=p.getProductImageForward()%>" class="img-responsive"  alt="">
                                        </div>			</a>		
                                </figure>	
                            </div>
                            <div class="women">

                                <h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
                                <p ><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
                                <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
                            </div>
                        </div>	
                    </div>				
                    <% }%>
                    <div class="clearfix"></div>
                </div>
                <div class="col-md-5 col-md1 animated wow fadeInRight" data-wow-delay=".1s">

                </div>
                <div class="clearfix"></div>
            </div>
    </body>
</html>
