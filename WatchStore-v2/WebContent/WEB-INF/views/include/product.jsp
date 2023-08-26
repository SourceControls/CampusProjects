<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<main style="margin-top: 40px">
	<div id="shopify-section-product-template" class="shopify-section">
		<div class="product-details product-details-area mb-40 "
			id="product-details-with-gallery">
			<div class="container">
				<div class="row ">
					<div class="col-md-12 col-lg-6 col-12">
						<div class="featured-image">
							<div class="" id="ProductPhoto">
								<img id="ProductPhotoImg"
									class="product-zoom product_variant_image" data-image-id=""
									alt="Dummy text for title" data-zoom-image="${data_zoom_image}"
									src="${data_zoom_image}">
							</div>
							<span class="discount-label discount-label--green percent-count">-35%</span>

						</div>
						<div id="ProductThumbs" class="">
							<div class="single-product-active">
								<c:forEach var="hinhAnh" items="${arrayHinhAnh}"
									varStatus="loop">
									<c:choose>
										<c:when test="${loop.index == 0}">
											<a class="product-single__thumbnail active" href="hinhAnh"
												data-image="${hinhAnh}" data-zoom-image="${hinhAnh}"
												data-image-id="5017843138669"> <img src="${hinhAnh }"
												alt="Dummy text for title">
											</a>
										</c:when>
										<c:otherwise>
											<a class="product-single__thumbnail" href="hinhAnh"
												data-image="${hinhAnh}" data-zoom-image="${hinhAnh}"
												data-image-id="5017843138669"> <img src="${hinhAnh }"
												alt="Dummy text for title">
											</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class=" col-md-12 col-lg-6 col-12">
						<div class="product-content-inner">
							<input type="hidden" name="form_type" value="product" /><input
								type="hidden" name="utf8" value="✓" />
							<div id="product-content" class="product-detail-content">
								<h3 id="popup_cart_title" class="product-details-title mb-15">${dongHo.getTenDongHo()}</h3>
								<div class="rating d-inline-block mr-15">
									<span class="shopify-product-reviews-badge"
										data-id="1675043078253"></span>
								</div>
								<p class="product-price product-price--big mb-10">
									<span id="ProductPrice" class="discounted-price"> <span
										class=money> <fmt:formatNumber
												value="${dongHo.getGia()}" type="currency"
												currencySymbol="VND" maxFractionDigits="0" />
									</span>
									</span> <span id="ComparePrice" class="main-price discounted">
										<span class=money> <fmt:formatNumber
												value="${dongHo.getGia()}" type="currency"
												currencySymbol="VND" maxFractionDigits="0" />
									</span>
									</span>
								</p>
								<style>
.product-variant-option .selector-wrapper {
	display: none;
}
</style>

								<div class="quantity">
									<span
										class="quantity-title mr-20 product-quantity-action quantity-selector">Số
										lượng</span>
									<form action="/DongHoWeb/detail/add-to-cart.htm">
										<div class="pro-qty mr-15 mb-lg-20 mb-md-20 mb-sm-20 d-none">
											<input type="text" name="id" value="${idDongHo}">
										</div>

										<div
											class="pro-qty mr-15 mb-lg-20 mb-md-20 mb-sm-20 product-quantity-action quantity-selector">
											<input type="text" value="1" name="quantity"
												class="cart-plus-minus-box">
										</div>

										<button type="submit" class="theme-button product-cart-button">
											<span> <span class="cart-title">+Thêm vào giỏ
													hàng</span>
											</span>
										</button>
									</form>

								</div>

								<div
									class="product-details-feature-wrapper d-flex justify-content-start mt-20">

									<div
										class="single-icon-feature single-icon-feature--product-details ml-30 ml-xs-0 ml-xxs-0 ">


										<div class="single-icon-feature__icon">
											<img
												src="//cdn.shopify.com/s/files/1/0039/3740/2989/files/333_small.png?v=1559367618"
												class="img-fluid" alt="">
										</div>
										<div class="single-icon-feature__content">
											<p class="feature-text">Free Shipping</p>
											<p class="feature-text">Ships Hôm nay</p>
										</div>
									</div>
									<div
										class="single-icon-feature single-icon-feature--product-details ml-30 ml-xs-0 ml-xxs-0 ">
										<div class="single-icon-feature__icon">
											<img
												src="//cdn.shopify.com/s/files/1/0039/3740/2989/files/222_small.png?v=1559367648"
												class="img-fluid" alt="">
										</div>
										<div class="single-icon-feature__content">
											<p class="feature-text">Thanh toán</p>
											<p class="feature-text">An toàn</p>
										</div>
									</div>
									<div
										class="single-icon-feature single-icon-feature--product-details ml-30 ml-xs-0 ml-xxs-0 ">
										<div class="single-icon-feature__icon">
											<img
												src="//cdn.shopify.com/s/files/1/0039/3740/2989/files/111_small.png?v=1559367608"
												class="img-fluid" alt="">
										</div>
										<div class="single-icon-feature__content">
											<p class="feature-text">Hỗ trợ</p>
											<p class="feature-text">24/7</p>
										</div>
									</div>
								</div>
								<div class="social-share-buttons mt-20">
									<h3>Chia sẻ sản phẩm này:</h3>
									<ul>
										<li><a class="facebook"
											href="//www.facebook.com/sharer.php?u=https://timekeeper-demo.myshopify.com/products/dummy-text-for-title-3"
											title="Follow us on Facebook" target="_blank"><i
												class="fa fa-facebook"></i></a></li>
										<li><a class="twitter"
											href="//twitter.com/share?text=Dummy%20text%20for%20title&amp;url=https://timekeeper-demo.myshopify.com/products/dummy-text-for-title-3;source=webclient"
											title="Follow us on Twitter" target="_blank"><i
												class="fa fa-twitter"></i></a></li>
										<li><a class="google-plus"
											href="//plus.google.com/share?url=https://timekeeper-demo.myshopify.com/products/dummy-text-for-title-3"
											title="Share on Google+" title="Follow us on Google+"
											target="_blank"><i class="fa fa-google-plus"></i></a></li>
										<li><a class="pinterest"
											href="//pinterest.com/pin/create/button/?url=https://timekeeper-demo.myshopify.com/products/dummy-text-for-title-3&amp;media=http://cdn.shopify.com/s/files/1/0039/3740/2989/products/product-9_c904bb21-0c55-42e4-913f-f0072e7af615_1024x1024.jpg?v=1559117940&amp;description=Dummy%20text%20for%20title"
											title="Follow us on Pinterest" target="_blank"><i
												class="fa fa-pinterest"></i></a></li>
									</ul>
								</div>
								<div class="custom-payment-options">
									<div class="social-share-buttons">
										<h3>hình thức thanh toán:</h3>
									</div>
									<div class="methods-of-payment">
										<img
											src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/amazon-92e856f82cae5a564cd0f70457f11af4d58fa037cf6e5ab7adf76f6fd3b9cafe.svg"
											height="35" alt="amazon payments" /> <img
											src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/visa-319d545c6fd255c9aad5eeaad21fd6f7f7b4fdbdb1a35ce83b89cca12a187f00.svg"
											height="35" alt="visa" /> <img
											src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/master-173035bc8124581983d4efa50cf8626e8553c2b311353fbf67485f9c1a2b88d1.svg"
											height="35" alt="master" /> <img
											src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/paypal-49e4c1e03244b6d2de0d270ca0d22dd15da6e92cc7266e93eb43762df5aa355d.svg"
											height="35" alt="paypal" /> <img
											src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/discover-cc9808e50193c7496e7a5245eb86d5e06f02e2476c0fe70f2c40016707d35461.svg"
											height="35" alt="discover" /> <img
											src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/american_express-2264c9b8b57b23b0b0831827e90cd7bcda2836adc42a912ebedf545dead35b20.svg"
											height="35" alt="american express" /> <img
											src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/apple_pay-f6db0077dc7c325b436ecbdcf254239100b35b70b1663bc7523d7c424901fa09.svg"
											height="35" alt="apple pay" /> <img
											src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/shopify_pay-100fde795157a3d1c18042346cf8dbd1fcf4c4f53c20064e13ea2799eb726655.svg"
											height="35" alt="shopify pay" /> <img
											src="//cdn.shopify.com/shopifycloud/shopify/assets/payment_icons/google_pay-c66a29c63facf2053bf69352982c958e9675cabea4f2f7ccec08d169d1856b31.svg"
											height="35" alt="google pay" />
									</div>
									<style>
.methods-of-payment img {
	padding: 0.2em;
}

.lt-ie9 .methods-of-payment, .ie8 .methods-of-payment, .oldie .methods-of-payment
	{
	display: none;
}
</style>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script
			src="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/jquery.elevateZoom-3.0.8.min.js?v=123299089282303306721559033788">
			
		</script>
		<link
			href="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/jquery.fancybox.css?v=95878193068690839161559033789"
			rel="stylesheet" type="text/css" media="all" />
		<script
			src="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/jquery.fancybox.min.js?v=52186688543886745331559033789">
			
		</script>
		<script>
			$(document).ready(function() {
				$('.fancybox').fancybox();
			});
		</script>
		<script>
			$('.single-product-active')
					.slick(
							{
								centerMode : true,
								centerPadding : '0',
								slidesToShow : 4,
								arrows : true,
								prevArrow : '<button class="prev_arrow"><i class="fa fa-angle-left"></i></button>',
								nextArrow : '<button class="next_arrow"><i class="fa fa-angle-right"></i></button>',
							});
		</script>
		<script>
			var selectCallback = function(variant, selector) {
				timber.productPage({
					money_format : "<span class=money>${{amount}}</span>",
					variant : variant,
					selector : selector
				});

				if (variant) {

					// Current variant select+
					var form = jQuery('#' + selector.domIdPrefix).closest(
							'form');
					for (var i = 0, length = variant.options.length; i < length; i++) {
						var val = variant.options[i].replace(/'/g, "&#039;");
						var radioButton = form
								.find(".swatch[data-option-index='" + i
										+ "'] :radio[value='" + val + "']");
						if (radioButton.size()) {
							radioButton.get(0).checked = true;
						}
					}

					// Current sku pass
					$('.variant-sku').text(variant.sku);
				} else {
					$('.variant-sku').empty();
				}// product image zoom with variant
				if (variant && variant.featured_image) {
					jQuery(
							'#ProductThumbs a[data-image-id="'
									+ variant.featured_image.id + '"]')
							.trigger('click');
				}
			};

			function productZoom() {
				$(".product-zoom").elevateZoom({
					gallery : 'ProductThumbs',
					galleryActiveClass : "active",
					zoomType : "inner",
					cursor : "crosshair"
				});
				$(".product-zoom").on("click", function(e) {
					var ez = $('.product-zoom').data('elevateZoom');
					$.fancybox(ez.getGalleryList());
					return false;
				});

			};
			function productZoomDisable() {
				if ($(window).width() < 767) {
					$('.zoomContainer').remove();
					$(".product-zoom").removeData('elevateZoom');
					$(".product-zoom").removeData('zoomImage');
				} else {
					productZoom();
				}
			};

			productZoomDisable();

			$(window).resize(function() {
				productZoomDisable();
			});
		</script>
	</div>
	<div id="shopify-section-single-product-tab" class="shopify-section">
		<div class="product-description-review-area mb-20">
			<div class="container">
				<div
					class="product-description-review tab-slider-wrapper product-description-review-container">

					<nav>
						<div
							class="description-review-title nav nav-tabs justify-content-center"
							role=tablist>

							<a href="#pro-dec" data-toggle="tab" role="tab"
								class="nav-item nav-link active"> Mô tả </a> <a
								href="#size-cart-1545194824919" data-toggle="tab" role="tab"
								aria-selected="false" class="nav-item nav-link"> Bảng Size </a>
							<a href="#pro-props" data-toggle="tab" role="tab"
								aria-selected="false" class="nav-item nav-link"> Thông số kỹ
								thuật </a>
						</div>
					</nav>
					<div class="description-review-text tab-content">
						<div class="tab-pane active" id="pro-dec" role="tabpanel">
							<div class="product-description">
								<p>${dongHo.getMoTa()}</p>
							</div>
						</div>
						<div class="tab-pane" id="size-cart-1545194824919" role="tabpanel">
							<h4>Bảng Size</h4>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<td class="cun-name"><span>UK</span></td>
											<td>18</td>
											<td>20</td>
											<td>22</td>
											<td>24</td>
											<td>26</td>
										</tr>
										<tr>
											<td class="cun-name"><span>European</span></td>
											<td>46</td>
											<td>48</td>
											<td>50</td>
											<td>52</td>
											<td>54</td>
										</tr>
										<tr>
											<td class="cun-name"><span>usa</span></td>
											<td>14</td>
											<td>16</td>
											<td>18</td>
											<td>20</td>
											<td>22</td>
										</tr>
										<tr>
											<td class="cun-name"><span>Australia</span></td>
											<td>28</td>
											<td>10</td>
											<td>12</td>
											<td>14</td>
											<td>16</td>
										</tr>
										<tr>
											<td class="cun-name"><span>Canada</span></td>
											<td>24</td>
											<td>18</td>
											<td>14</td>
											<td>42</td>
											<td>36</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div class="tab-pane" id="pro-props" role="tabpanel">
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<td class="cun-name"><span>Đối tượng sử dụng</span></td>
											<td><c:choose>
													<c:when test="${dongHo.getDoiTuongSuDung().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
													<c:when test="${dongHo.getDoiTuongSuDung().equals(\"0\")}">
														Không có
													</c:when>
													<c:otherwise>
														${dongHo.getDoiTuongSuDung()}
													</c:otherwise>
												</c:choose></td>
										</tr>
										<tr>
											<td class="cun-name"><span>Độ dài dây đeo</span></td>
											<td><c:choose>
													<c:when test="${dongHo.getDoDaiDayDeo() == -1}">
														Hãng chưa công bố
													</c:when>
													<c:when test="${dongHo.getDoDaiDayDeo() == 0}">
														Không có
													</c:when>
													<c:otherwise>
														${dongHo.getDoDaiDayDeo()} cm
													</c:otherwise>
												</c:choose></td>
										</tr>
										<tr>
											<td class="cun-name"><span>Độ rộng dây đeo</span></td>
											<td><c:choose>
													<c:when test="${dongHo.getDoRongDayDeo() == -1}">
														Hãng chưa công bố
													</c:when>
													<c:when test="${dongHo.getDoRongDayDeo() == 0}">
														Không có
													</c:when>
													<c:otherwise>
														${dongHo.getDoRongDayDeo()} cm
													</c:otherwise>
												</c:choose></td>

										</tr>
										<tr>
											<td class="cun-name"><span>Trọng lượng</span></td>
											<td><c:choose>
													<c:when test="${dongHo.getTrongLuong() == -1}">
														Hãng chưa công bố
													</c:when>
													<c:when test="${dongHo.getTrongLuong() == 0}">
														Không có
													</c:when>
													<c:otherwise>
														${dongHo.getTrongLuong()} gram
													</c:otherwise>
												</c:choose></td>

										</tr>
										<tr>
											<td class="cun-name"><span>Chất liệu mặt kính</span></td>
											<td><c:choose>
													<c:when
														test="${dongHo.getChatLieuMatKinh().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
													<c:when test="${dongHo.getChatLieuMatKinh().equals(\"0\")}">
														Không có
													</c:when>
													<c:otherwise>
														${dongHo.getChatLieuMatKinh()}
													</c:otherwise>
												</c:choose></td>
										</tr>
										<tr>
											<td class="cun-name"><span>Chất liệu dây đeo</span></td>
											<td><c:choose>
													<c:when test="${dongHo.getChatLieuDayDeo().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
													<c:when test="${dongHo.getChatLieuDayDeo().equals(\"0\")}">
														Không có
													</c:when>
													<c:otherwise>
														${dongHo.getChatLieuDayDeo()}
													</c:otherwise>
												</c:choose></td>
										</tr>
										<tr>
											<td class="cun-name"><span>Chất liệu khung viền</span></td>
											<td><c:choose>
													<c:when
														test="${dongHo.getChatLieuKhungVien().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
													<c:when
														test="${dongHo.getChatLieuKhungVien().equals(\"0\")}">
														Không có
													</c:when>
													<c:otherwise>
														${dongHo.getChatLieuKhungVien()}
													</c:otherwise>
												</c:choose></td>
										</tr>
										<tr>
											<td class="cun-name"><span>Nơi sản xuất</span></td>
											<td><c:choose>
													<c:when test="${dongHo.getNoiSanXuat().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
													<c:when test="${dongHo.getNoiSanXuat().equals(\"0\")}">
														Không có
													</c:when>
													<c:otherwise>
														${dongHo.getNoiSanXuat()}
													</c:otherwise>
												</c:choose></td>
										</tr>
										<tr>
											<td class="cun-name"><span>Kháng nước</span></td>
											<td><c:choose>
													<c:when test="${dongHo.isKhangNuoc() == true}">
														Có
													</c:when>
													<c:otherwise>
														Không
													</c:otherwise>
												</c:choose></td>
										</tr>
										<tr>
											<td class="cun-name"><span>Tính năng tiện ích</span></td>
											<td><c:choose>
													<c:when
														test="${dongHo.getTinhNangTienIch().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
													<c:when test="${dongHo.getTinhNangTienIch().equals(\"0\")}">
														Không có
													</c:when>
													<c:otherwise>
														${dongHo.getTinhNangTienIch()}
													</c:otherwise>
												</c:choose></td>
										</tr>
										<tr>
											<td class="cun-name"><span>Hãng</span></td>
											<td>${dongHo.getHangDongHo().getTenHang()}</td>
										</tr>
										<tr>
											<td class="cun-name"><span>Loại</span></td>
											<td>${dongHo.getLoaiDongHo().getTenLoai()}</td>
										</tr>
										<c:choose>
											<c:when test="${dongHo.getLoaiDongHo().isCo() == true}">
												<tr>
													<td class="cun-name"><span>Bộ máy</span></td>
													<td><c:choose>
															<c:when test="${dongHo.getC_tenBoMay().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
															<c:when test="${dongHo.getC_tenBoMay().equals(\"0\")}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getC_tenBoMay()}
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Loại mặt số</span></td>
													<td><c:choose>
															<c:when test="${dongHo.getC_loaiMatSo().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
															<c:when test="${dongHo.getC_loaiMatSo().equals(\"0\")}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getC_loaiMatSo()}
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Thời lượng thu dây
															cót</span></td>
													<td><c:choose>
															<c:when
																test="${dongHo.getC_thoiLuongThuDayCot().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
															<c:when
																test="${dongHo.getC_thoiLuongThuDayCot().equals(\"0\")}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getC_thoiLuongThuDayCot()}
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Họa tiết mặt số cót</span></td>
													<td><c:choose>
															<c:when
																test="${dongHo.getC_hoaTietMatSo().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
															<c:when
																test="${dongHo.getC_hoaTietMatSo().equals(\"0\")}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getC_hoaTietMatSo()}
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Đường kính mặt</span></td>
													<td><c:choose>
															<c:when test="${dongHo.getC_duongKinhMat() == -1}">
														Hãng chưa công bố
													</c:when>
															<c:when test="${dongHo.getC_duongKinhMat() == 0}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getC_duongKinhMat()} mm
													</c:otherwise>
														</c:choose></td>
												</tr>
											</c:when>
											<c:otherwise>
												<tr>
													<td class="cun-name"><span>Kích thước màn hình</span></td>
													<td><c:choose>
															<c:when test="${dongHo.getS_kichThuocManHinh() == -1}">
														Hãng chưa công bố
													</c:when>
															<c:when test="${dongHo.getS_kichThuocManHinh() == 0}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getS_kichThuocManHinh()} INCH
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Công nghệ màn hình</span></td>
													<td><c:choose>
															<c:when
																test="${dongHo.getS_congNgheManHinh().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
															<c:when
																test="${dongHo.getS_congNgheManHinh().equals(\"0\")}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getS_congNgheManHinh()}
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Độ phân giải</span></td>
													<td><c:choose>
															<c:when test="${dongHo.getS_doPhanGiai().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
															<c:when test="${dongHo.getS_doPhanGiai().equals(\"0\")}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getS_doPhanGiai()} W x H PIXEL
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Khả năng thay dây</span></td>
													<td><c:choose>
															<c:when test="${dongHo.isS_khaNangThayDay() == true}">
														Có
													</c:when>
															<c:otherwise>
														Không
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Thời lượng pin</span></td>
													<td><c:choose>
															<c:when test="${dongHo.getS_thoiGianSuDungPin() == -1}">
														Hãng chưa công bố
													</c:when>
															<c:when test="${dongHo.getS_thoiGianSuDungPin() == 0}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getS_thoiGianSuDungPin()} giờ
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Dung lượng pin</span></td>
													<td><c:choose>
															<c:when test="${dongHo.getS_dungLuongPin() == -1}">
														Hãng chưa công bố
													</c:when>
															<c:when test="${dongHo.getS_dungLuongPin() == 0}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getS_dungLuongPin()} mAH
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Cổng sạc</span></td>
													<td><c:choose>
															<c:when test="${dongHo.getS_congSac().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
															<c:when test="${dongHo.getS_congSac().equals(\"0\")}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getS_congSac()}
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Hệ điều hành</span></td>
													<td><c:choose>
															<c:when test="${dongHo.getS_heDieuHanh().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
															<c:when test="${dongHo.getS_heDieuHanh().equals(\"0\")}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getS_heDieuHanh()}
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Camera</span></td>
													<td><c:choose>
															<c:when test="${dongHo.getS_camera() == -1}">
														Hãng chưa công bố
													</c:when>
															<c:when test="${dongHo.getS_camera() == 0}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getS_camera()} MP
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Kết nối</span></td>
													<td><c:choose>
															<c:when test="${dongHo.getS_ketNoi().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
															<c:when test="${dongHo.getS_ketNoi().equals(\"0\")}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getS_ketNoi()}
													</c:otherwise>
														</c:choose></td>
												</tr>
												<tr>
													<td class="cun-name"><span>Ngôn ngữ</span></td>
													<td><c:choose>
															<c:when test="${dongHo.getS_ngonNgu().equals(\"-1\")}">
														Hãng chưa công bố
													</c:when>
															<c:when test="${dongHo.getS_ngonNgu().equals(\"0\")}">
														Không có
													</c:when>
															<c:otherwise>
														${dongHo.getS_ngonNgu()}
													</c:otherwise>
														</c:choose></td>
												</tr>
											</c:otherwise>
										</c:choose>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>

<!-- modalAddToCart -->
<c:if test="${showModel != null}">
	<div class="modal fade ajax-popup show" id="modalAddToCart"
		tabindex="-1" role="dialog"
		style="padding-right: 17px; display: block; z-index: 1000000; background-color: rgba(0, 0, 0, 0.5);">
		<div class="modal-dialog white-modal modal-md">
			<div class="modal-content">
				<div class="modal-body">
					<div class="modal-content-text">
						<div class="popup-image">
							<img class="popupimage" src="${data_zoom_image}">
						</div>
						<div class="popup-content">
							<h6 class="productmsg">${dongHo.getTenDongHo()}</h6>
							<p class="success-message">
								<i class="ion-android-checkbox-outline"></i>Thêm vào giỏ hàng
								thành công !
							</p>
							<div class="modal-button">
								<a href="/cart" class="theme-default-button">Xem giỏ hàng</a> <a
									href="/checkout" class="theme-default-button">Thanh toán</a>
							</div>
						</div>
					</div>
					<div class="modal-close">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">
							<i class="ion-android-close"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:if>


<script>
	$(function() {
		$('.close').click(function(e) {
			$('.modal-content').slideUp();
			$('.modal').removeClass('show');

			setTimeout(function() {
				$('.modal').addClass('hide');
			}, 200);
		});
	});
</script>