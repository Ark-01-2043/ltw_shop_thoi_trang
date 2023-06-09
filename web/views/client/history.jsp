<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Giỏ hàng</title>
<link rel="stylesheet" href="css/cart.css" />
<link rel="stylesheet" href="css/menu.css" />
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<style type="text/css">
#main {
	width: 1060px;
	padding: 0;
	margin-left: auto;
	margin-right: auto;
}

#head {
	height: 200px;
	background-color: #F5F5F5;
	border: 1px solid #CDCDCD;
	margin-bottom: 5px;
	margin-top: 5px;
}

#head-link {
	height: 50px;
	line-height: 30px;
	border: 1px solid #CDCDCD;
	background-color: #F5F5F5;
	margin-bottom: 5px;
	clear: both;
}

#content {
	width: 1060px;
	min-height: 430px;
	border: 1px solid #CDCDCD;
	float: left;
	margin-bottom: 5px;
	clear: both;
}

#footer {
	height: 50px;
	clear: both;
	border: 1px solid #CDCDCD;
	background-color: #F8F8FF;
	margin-bottom: 5px;
}
</style>
</head>
<body>
	
	<div id="main">
		<div id="head">
			<img src="images/banner.jpg" width="1057px" height="200px" />
		</div>
		<jsp:include page="include/header.jsp"></jsp:include>
		<div id="content">
			
			
			<div class="shopping-cart">

				<div class="column-labels">
					<label class="product-image">Hình ảnh</label> 
                                        <label class="product-details">Sản phẩm</label> 
                                        <label class="product-price">Ngày mua</label>
                                        <label class="product-quantity">Số lượng</label>
                                        
                                        <label class="product-line-price">Trạng thái</label>
				</div>
				<c:forEach items="${requestScope.histories}" var="history">
					<div class="product">
						<div class="product-image">
							<img
								src="sanpham/${history.product.hinh_anh}">
						</div>
						<div class="product-details">
							<div class="product-title">
								${history.product.ten_san_pham}
							</div>
							<p class="product-description"></p>
						</div>
						<div class="product-price">${history.ngay_mua}
						</div>
						<div class="product-quantity cart_quantity_button">
							${history.so_luong}
						</div>
						
                                                <div class="product-line-price" style="text-align: right">
							${history.trang_thai}	
						</div>
						
					</div>
				</c:forEach>
				
				
			</div>

		</div>
		<div id="footer"><jsp:include page="include/footer.jsp"></jsp:include></div>
	</div>
</body>
</html>