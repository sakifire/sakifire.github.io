
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>footer</title>
    </head>
    <body>
        <div class="footer" style="padding: 0px 0px 10px 0px;">
		<div class="container">
		<div class="footer-top" style="padding: 15px;">
		
		<div class="clearfix"> </div>
		</div>
			<div class="footer-grids">
				<div class="col-md-4 footer-grid animated wow fadeInLeft" data-wow-delay=".5s">
					<h3>Giới Thiệu</h3>
					<p>- Công ty TNHH Thương Mại JSPVN
                                            <br>- GPKD số 0316517394 do Sở KH và ĐT TP Hồ Chí Minh cấp ngày 01/01/2021
                                            <br>- GĐ/Sở hữu website: Phạm Quốc Toàn - Hoàng Mạnh Tiến.</span></p>
				</div>
				<div class="col-md-4 footer-grid animated wow fadeInLeft" data-wow-delay=".6s">
					<h3>Thông tin liên hệ</h3>
					<ul>
						<li><i class="glyphicon glyphicon-map-marker" ></i>Số 1, Võ Văn Ngân, P.Linh Trung, <span>Q.Thủ Đức, TP. Hồ Chí Minh.</span></li>
						<li class="foot-mid"><i class="glyphicon glyphicon-envelope" ></i><a href="mailto:JSPComputersys@hcmute.com">JSPComputersys@hcmute.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" ></i>0978 243 786</li>
					</ul>
				</div>
				<div class="col-md-4 footer-grid animated wow fadeInLeft" data-wow-delay=".7s">
				<h3>Để lại lời nhắn</h3>
                                <form action="NewsletterServlet" method="post">
					<input type="text" placeholder="Hãy nhập Email của bạn" name="email" required="">
                                        <input type="hidden" name="command" value="insert">
					<input type="submit" value="Gửi">
				</form>
			
				</div>
			
				<div class="clearfix"> </div>
			</div>
			
			<div class="copy-right animated wow fadeInUp" data-wow-delay=".5s" style=" padding: 20px;">
				<p>&copy 2020 GROUP 07 JSP 2020.</p>
			</div>
		</div>
	</div>
    </body>
</html>
