<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/home5-cosmetic.html   11 Nov 2019 12:25:38 GMT -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Trang chủ</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- icon -->
<link rel="icon" href="../../../images/layout/blue seafood logo.png" type="image/x-icon"/>
		<link rel="shortcut icon" href="../../../images/layout/blue seafood logo.png" type="image/x-icon"/>
		<link rel="icon" type="image/png" href="../../../images/layout/blue seafood logo.png">
<!-- Plugins CSS -->
<link rel="stylesheet" href="/assets/css/plugins.css">
<!-- Bootstap CSS -->
<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<!-- Main Style CSS -->
<link rel="stylesheet" href="/assets/css/style.css">
<link rel="stylesheet" href="/assets/css/stylelog.css">
<link rel="stylesheet" href="/assets/css/custom.css">
<link rel="stylesheet" href="/assets/css/responsive.css">
<!-- angularjs -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
</head>

<body ng-app="shopping-app" ng-controller="shopping-ctrl"
	class="template-index belle home5-cosmetic">
	
	<div class="pageWrapper">
		<%@include file="../layout/_header.jsp"%>

		<!--Body Content-->
		<div id="page-content">
			<!--Home slider-->
			<%@include file="../layout/_slide.jsp"%>
			<!--End Home slider-->

			<!--Collection Tab slider-->

			<!--Collection Tab slider-->

			<!--Logo Slider-->
			
			<!--End Logo Slider-->

			<!--Featured Product-->
			<div class="product-rows section">
				<div class="container">
					<div class="row m-5">
						<div class="col-12 col-sm-12 col-md-12 col-lg-12 ">
							<div class="section-header text-center">
								<h2 class="h2">Sản phẩm mới</h2>
							</div>
						</div>
					</div>
					<div class="grid-products">
						<div class="row">
							<c:forEach var="d" items="${db}" end="14">
								<div
									class="col-6 col-sm-6 col-md-4 col-lg-4 item grid-view-item style2">
									<div class="grid-view_image">

										<!-- start product image -->
										<a href="/product/detail/${d.product.id}"
											class="grid-view-item__link"> <!-- image --> <img
											class="product grid-view-item__image primary blur-up lazyload "
											src="/images/product/${d.images[0]}" alt="${d.product.name}"
											title="${d.product.name}"> <!-- End image --> <!-- Hover image -->
											<img
											class="product grid-view-item__image hover blur-up lazyload"
											data-src="/images/product/${d.images[1]}"
											src="/images/product/${d.images[1]}" alt="${d.product.name}"
											title="${d.product.name}"> <!-- End hover image  --> <!-- product label -->
										</a>
										<!-- End product label -->
										<!-- end product image -->

										<!--start product details -->
										<div class="product-details hoverDetails text-center mobile">
											<!-- product name -->
											<div class="product-name">
												<a href="/product/detail/${d.product.id}">${d.product.name}</a>
											</div>
											<!-- End product name -->

											<!-- product price -->
											<div class="product-price">
												<span class="price">${d.product.price} đ</span>
											</div>
											<!-- End product price -->

											<!-- product button -->
											<div class="button-set">
												<!-- Start product button -->
												<form class="variants add" action="#" method="post">
													<button ng-click="cart.add(${d.product.id})"
														class="btn cartIcon btn-addto-cart" type="button"
														tabindex="0">
														<i class="icon anm anm-bag-l"></i>
													</button>
												</form>
												<div class="wishlist-btn">
													<a class="wishlist add-to-wishlist" href="#">
														<i class="icon anm anm-heart-l"></i>
													</a>
												</div>
											</div>
											<!-- end product button -->
										</div>
										<!-- Variant -->
										
										<!-- End Variant -->
										<!-- End product details -->
									</div>
								</div>
							</c:forEach>


						</div>
					</div>
					<div class="col-12 col-sm-12 col-md-12 col-lg-12">
						<div class="section-header text-center">
							<a href="/product/list?kw=" class="btn"
								style="vertical-align: middle; text-align: center;">TẤT CẢ
								SẢN PHẨM</a>
						</div>
					</div>
				</div>
			</div>
			<!--End Featured Product-->

			<!--Store Feature-->
			<div class="store-feature section">
				<div class="container">
					<div class="row">
						<div class="col-12 col-sm-12 col-md-12 col-lg-12">
							<ul class="display-table store-info">
													<div class="services-mb d-flex justify-content-between">
								<div class="item">
									<a href="#">
										<img width="40" height="40" src="//theme.hstatic.net/1000030244/1000943806/14/service_mb_1.png?v=4355" alt="giao hang 2h" />
										<span>GIAO HÀNG 2H</span>
									</a>
								</div>								<div class="item">
									<a href="#">
										<img width="40" height="40" src="//theme.hstatic.net/1000030244/1000943806/14/service_mb_2.png?v=4355" alt="doi tra mien phi tai nha" />
										<span>ĐỔI TRẢ MIỄN PHÍ TẠI NHÀ</span>
									</a>
								</div>								<div class="item">
									<a href="#">
										<img width="40" height="40" src="//theme.hstatic.net/1000030244/1000943806/14/service_mb_3.png?v=4355" alt="nhan don tu 150k" />
										<span>NHẬN ĐƠN TỪ 150K</span>
									</a>
								</div>							</div>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--End Store Feature-->
		</div>
		<!--End Body Content-->

		<!--Footer-->
		<%@include file="../layout/_footer.jsp"%>
		<!--End Footer-->

		<!--Scoll Top-->
		<span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
		<!--End Scoll Top-->

		<!-- Including Jquery -->
		<script src="/assets/js/vendor/jquery-3.3.1.min.js"></script>
		<script src="/assets/js/vendor/modernizr-3.6.0.min.js"></script>
		<script src="/assets/js/vendor/jquery.cookie.js"></script>
		<script src="/assets/js/vendor/wow.min.js"></script>
		<!-- Incing Jascript -->
		<script src="/assets/js/bootstrap.min.js"></script>
		<script src="/assets/js/plugins.js"></script>
		<script src="/assets/js/popper.min.js"></script>
		<script src="/assets/js/lazysizes.js"></script>
		<script src="/assets/js/main.js"></script>
		<!-- Shopping cart -->
		<script src="/assets/js/shopping-cart.js"></script>
		<!--For Newsletter Popup-->
		<script>
			jQuery(document).mouseup(
					function(e) {
						var container = jQuery('#popup-container');
						if (!container.is(e.target)
								&& container.has(e.target).length === 0) {
							container.fadeOut();
							jQuery('#modalOverly').fadeIn(200);
							jQuery('#modalOverly').hide();
						}
					});
		</script>
		<!--End For Newsletter Popup-->
	</div>
</body>


</html>