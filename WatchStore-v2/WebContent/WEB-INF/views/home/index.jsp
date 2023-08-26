<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<!--[if IE 9]> <html class="ie9 no-js supports-no-cookies" lang="en"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="no-js supports-no-cookies" lang="en">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!--<![endif]-->

<head>
<!-- Basic and Helper page needs -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#f9706a">
<link rel="canonical" href="https://timekeeper-demo.myshopify.com/">
<!-- Title and description -->
<base href="${pageContext.servletContext.contextPath }/">
<link rel="stylesheet" href="./resources/css/dongho.css">
<title>Timekeeper demo</title>
<!-- Helpers -->
<!-- /snippets/social-meta-tags.liquid -->


<!-- CSS -->
<style type="text/css">
#single-slider-img-size {
	float: left;
	width: 270px;
	height: 360px;
	object-fit: cover;
	border: 1px solid #e9e7e7b3;
}
.single-slider-product:hover{
	box-shadow: 0 5px 10px #888888;
}
.single-slider-product__content{
height: 122px !important;
}
.product-price{
	position: absolute;
	bottom: 45px;
}
.display-bottom-price{
	bottom: 25px;
}
.searchInput{
border-radius: 30px;
    color: black;
    border: 1px solid;
    max-width: 150%;
    width: 135%;
}
.searchButton{
 visible: none;
 display: none;
}
</style>
<link
	href="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/timber.scss.css?v=58126284463581439901586069782"
	rel="stylesheet" type="text/css" media="all" />
<!-- Put all third-party CSS files in the vendor.css file and minify the files -->
<link
	href="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/vendors.css?v=51769354339668446581559033795"
	rel="stylesheet" type="text/css" media="all" />

<!-- Link your style.css and responsive.css files below -->
<link
	href="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/style.css?v=15193629725470986421624870258"
	rel="stylesheet" type="text/css" media="all" />
<link
	href="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/responsive.css?2309"
	rel="stylesheet" type="text/css" media="all" />

<!-- Theme Default CSS -->
<link
	href="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/theme-default.css?v=53897498896909234691559033806"
	rel="stylesheet" type="text/css" media="all" />
<!-- Make your theme CSS calls here -->
<link
	href="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/theme-custom.css?v=116286585980710799271626153091"
	rel="stylesheet" type="text/css" media="all" />

<!-- Make your theme RTL CSS calls here -->
<link
	href="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/theme-responsive.css?v=41016316361950002941559541450"
	rel="stylesheet" type="text/css" media="all" />



<!-- Make all your dynamic CSS and Color calls here -->
<link
	href="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/skin-and-color.css?v=179893294832376582881559375908"
	rel="stylesheet" type="text/css" media="all" />
<!-- Header hook for plugins -->
<script>window.performance && window.performance.mark && window.performance.mark('shopify.content_for_header.start');</script>
<meta id="shopify-digital-wallet" name="shopify-digital-wallet"
	content="/3937402989/digital_wallets/dialog">
<script id="shopify-features" type="application/json">{"accessToken":"255d7ab8d9344cf095926e08eb428e41","betas":["rich-media-storefront-analytics"],"domain":"timekeeper-demo.myshopify.com","predictiveSearch":true,"shopId":3937402989,"smart_payment_buttons_url":"https:\/\/cdn.shopify.com\/shopifycloud\/payment-sheet\/assets\/latest\/spb.en.js","dynamic_checkout_cart_url":"https:\/\/cdn.shopify.com\/shopifycloud\/payment-sheet\/assets\/latest\/dynamic-checkout-cart.en.js","locale":"en"}</script>
<script>var Shopify = Shopify || {};
Shopify.shop = "timekeeper-demo.myshopify.com";
Shopify.locale = "en";
Shopify.currency = {"active":"USD","rate":"1.0"};
Shopify.country = "US";
Shopify.theme = {"name":"timekeeper-v1-0-1","id":37164154989,"theme_store_id":null,"role":"main"};
Shopify.theme.handle = "null";
Shopify.theme.style = {"id":null,"handle":null};
Shopify.cdnHost = "cdn.shopify.com";
Shopify.routes = Shopify.routes || {};
Shopify.routes.root = "/";</script>

<script type="text/javascript">
</script>
<script type="module">!function(o){(o.Shopify=o.Shopify||{}).modules=!0}(window);</script>
<script>!function(o){function n(){var o=[];function n(){o.push(Array.prototype.slice.apply(arguments))}return n.q=o,n}var t=o.Shopify=o.Shopify||{};t.loadFeatures=n(),t.autoloadFeatures=n()}(window);</script>
<script>(function() {
  function asyncLoad() {
    var urls = ["\/\/productreviews.shopifycdn.com\/embed\/loader.js?shop=timekeeper-demo.myshopify.com"];
    for (var i = 0; i < urls.length; i++) {
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = urls[i];
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
  };
  if(window.attachEvent) {
    window.attachEvent('onload', asyncLoad);
  } else {
    window.addEventListener('load', asyncLoad, false);
  }
})();</script>
<script id="__st">var __st={"a":3937402989,"offset":-14400,"reqid":"84782967-e10d-4ff8-bac4-5d0f73ec2ed1","pageurl":"timekeeper-demo.myshopify.com\/","u":"65693ee2d01b","p":"home"};</script>
<script>window.ShopifyPaypalV4VisibilityTracking = true;</script>
<script>!function(o){o.addEventListener("DOMContentLoaded",function(){window.Shopify=window.Shopify||{},window.Shopify.recaptchaV3=window.Shopify.recaptchaV3||{siteKey:"6LcCR2cUAAAAANS1Gpq_mDIJ2pQuJphsSQaUEuc9"};var t=['form[action*="/contact"] input[name="form_type"][value="contact"]','form[action*="/comments"] input[name="form_type"][value="new_comment"]','form[action*="/account"] input[name="form_type"][value="customer_login"]','form[action*="/account"] input[name="form_type"][value="recover_customer_password"]','form[action*="/account"] input[name="form_type"][value="create_customer"]','form[action*="/contact"] input[name="form_type"][value="customer"]'].join(",");function n(e){e=e.target;null==e||null!=(e=function e(t,n){if(null==t.parentElement)return null;if("FORM"!=t.parentElement.tagName)return e(t.parentElement,n);for(var o=t.parentElement.action,r=0;r<n.length;r++)if(-1!==o.indexOf(n[r]))return t.parentElement;return null}(e,["/contact","/comments","/account"]))&&null!=e.querySelector(t)&&((e=o.createElement("script")).setAttribute("src","https://cdn.shopify.com/shopifycloud/storefront-recaptcha-v3/v0.6/index.js"),o.body.appendChild(e),o.removeEventListener("focus",n,!0),o.removeEventListener("change",n,!0),o.removeEventListener("click",n,!0))}o.addEventListener("click",n,!0),o.addEventListener("change",n,!0),o.addEventListener("focus",n,!0)})}(document);</script>
<script integrity="sha256-N6F6ZjvOAMPhcD0kfZWNQQgx6eXaxFfh6aqfN0geLrU="
	data-source-attribution="shopify.loadfeatures" defer="defer"
	src="//cdn.shopify.com/shopifycloud/shopify/assets/storefront/load_feature-37a17a663bce00c3e1703d247d958d410831e9e5dac457e1e9aa9f37481e2eb5.js"
	crossorigin="anonymous"></script>
<script integrity="sha256-h+g5mYiIAULyxidxudjy/2wpCz/3Rd1CbrDf4NudHa4="
	data-source-attribution="shopify.dynamic-checkout" defer="defer"
	src="//cdn.shopify.com/shopifycloud/shopify/assets/storefront/features-87e8399988880142f2c62771b9d8f2ff6c290b3ff745dd426eb0dfe0db9d1dae.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" media="screen"
	href="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/compiled_assets/styles.css?2309">
<script id="sections-script"
	data-sections="best-seller-area,new-products,feature-more-best-area,latest-blog,header,footer"
	defer="defer"
	src="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/compiled_assets/scripts.js?2309"></script>

<script>window.performance && window.performance.mark && window.performance.mark('shopify.content_for_header.end');</script>
<!-- /snippets/oldIE-js.liquid -->

<!-- JS -->
<!-- Put all third-party JS files in the vendor.css file and minify the files -->
<script
	src="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/vendors.js?v=162465636490413196111559033795"></script>


<!-- Ajax Cart js -->
<script
	src="//cdn.shopify.com/shopifycloud/shopify/assets/themes_support/option_selection-fe6b72c2bbdd3369ac0bfefe8648e3c889efca213baefd4cfb0dd9363563831f.js"></script>
<script
	src="//cdn.shopify.com/shopifycloud/shopify/assets/themes_support/api.jquery-e94e010e92e659b566dbc436fdfe5242764380e00398907a14955ba301a4749f.js"></script>
<script
	src="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/cart.api.js?v=96231659487170012981624869909"></script>

<script async>
    window.money_format = "<span class=money>${{amount}} USD</span>"; 
  </script>





<link href="https://monorail-edge.shopifysvc.com" rel="dns-prefetch">
<script>(function(){if ("sendBeacon" in navigator && "performance" in window) {var session_token = document.cookie.match(/_shopify_s=([^;]*)/);function handle_abandonment_event(e) {var entries = performance.getEntries().filter(function(entry) {return /monorail-edge.shopifysvc.com/.test(entry.name);});if (!window.abandonment_tracked && entries.length === 0) {window.abandonment_tracked = true;var currentMs = Date.now();var navigation_start = performance.timing.navigationStart;var payload = {shop_id: 3937402989,url: window.location.href,navigation_start,duration: currentMs - navigation_start,session_token: session_token && session_token.length === 2 ? session_token[1] : "",page_type: "index"};window.navigator.sendBeacon("https://monorail-edge.shopifysvc.com/v1/produce", JSON.stringify({schema_id: "online_store_buyer_site_abandonment/1.1",payload: payload,metadata: {event_created_at_ms: currentMs,event_sent_at_ms: currentMs}}));}}window.addEventListener('pagehide', handle_abandonment_event);}}());</script>
<script>window.ShopifyAnalytics = window.ShopifyAnalytics || {};
window.ShopifyAnalytics.meta = window.ShopifyAnalytics.meta || {};
window.ShopifyAnalytics.meta.currency = 'USD';
var meta = {"page":{"pageType":"home"}};
for (var attr in meta) {
  window.ShopifyAnalytics.meta[attr] = meta[attr];
}</script>
<script>window.ShopifyAnalytics.merchantGoogleAnalytics = function() {
  
};
</script>

</head>

<body id="timekeeper-demo" class="template-index" onkeypress="if (event.keyCode == 13) document.searchForm.searchInput.click();">
	<div class="wrapper wrapper-box">
		<div id="shopify-section-header" class="shopify-section">

			<div class="page-wrapper-blue header_style_2">
				<div class="header-area header-sticky">
					<!--====================  Navigation top ====================-->

					<div class="navigation-top">
						<div class="container">
							<div class="row header_top_custom">
								<div class="col-lg-12">
									<!--====================  navigation section ====================-->
									<div class="navigation-top-topbar pt-10 pb-10">
										<div class="row align-items-center">
											<div class="col-lg-4 col-md-6 text-center text-md-left">
												<!--=======  header top social links  =======-->
												<div class="header-top-social-links">
													<span class="follow-text mr-15">Follow Us:</span>
													<!--=======  social link small  =======-->

													<ul class="social-link-small">
														<li><a href=""><i class="ion-social-facebook"></i></a></li>
														<li><a href=""><i class="ion-social-twitter"></i></a></li>
														<li><a href=""><i
																class="ion-social-googleplus-outline"></i></a></li>
														<li><a href=""><i
																class="ion-social-instagram-outline"></i></a></li>
														<li><a href=""><i class="ion-social-youtube"></i></a></li>
													</ul>


													<!--=======  End of social link small  =======-->
												</div>
												<!--=======  End of header top social links  =======-->
											</div>
											<div class="col-lg-4 offset-lg-4 col-md-6">
												<!--=======  header top dropdown container  =======-->
												<div
													class="headertop-dropdown-container justify-content-center justify-content-md-end">

													<c:choose>
														<c:when test="${username != null}">
															<div>Xin chào ${username}</div>
															<a href="/DongHoWeb/logout" style="margin-left: 10px"
																id="customer_login_link">Đăng xuất</a>
														</c:when>
														<c:otherwise>
															<div class="header-top-single-dropdown">
																<a href="javascript:void(0)"
																	class="active-dropdown-trigger" id="user-options">My
																	Account <i class="ion-ios-arrow-down"></i>
																</a>
																<!--=======  dropdown menu items  =======-->

																<div
																	class="header-top-single-dropdown__dropdown-menu-items deactive-dropdown-menu extra-small-mobile-fix">
																	<ul>
																		<li><a href="/DongHoWeb/login.htm"
																			id="customer_login_link">Log in</a></li>
																		<li><a href="/DongHoWeb/register.htm"
																			id="customer_register_link">Create account</a></li>
																	</ul>
																</div>
																<!--=======  End of dropdown menu items  =======-->
															</div>
														</c:otherwise>
													</c:choose>

												</div>
												<!--=======  End of header top dropdown container  =======-->
											</div>
										</div>
									</div>

									<!--====================  End of navigation section  ====================-->
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<!--====================  navigation top search ====================-->


									<div class="navigation-top-search-area pt-15 pb-15">
										<div class="row align-items-center">
											<div
												class="col-6 col-xl-2 col-lg-3 order-1 col-md-6 col-sm-5 mobile_common">
												<!--=======  logo  =======-->
												<div class="logo">
													<a href="/DongHoWeb/home.htm" class="theme-logo"> <img
														src="//cdn.shopify.com/s/files/1/0039/3740/2989/files/Timekeeper-b_150x.png?v=1559116234"
														alt="Timekeeper demo">
													</a>
												</div>

												<!--=======  End of logo  =======-->
											</div>

											<div
												class="col-xl-8 offset-xl-1 col-lg-7 order-4 order-lg-2 mt-md-25 mt-sm-25">

												<!--====================  navigation menu ====================-->

												<div class="navigation-menu-area">

													<!-- navigation section -->
													<div class="main-menu d-none d-lg-block">
														<nav>
															<ul>
																<li> <form action="/DongHoWeb/search.htm" name = "searchForm" method="get">
																<input name = "searchInput" type="text" placeholder="Tìm Kiếm..." class = "searchInput">
																<button name = "searchButton" type="text" class = "searchButton"></button>
																</form>  
																</li>															
						
															   <li style = "padding-left:80px"><a href="/DongHoWeb/ShowHistory.htm" >Lịch sử đơn hàng</a></li>
																<li class="menu-item"><a
																	href="/DongHoWeb/khieunai.htm">Khiếu nại/Góp Ý</a>
																</li>
																</ul>
														</nav>


														<script>
  $('.mega-menu-add-class').parent('ul').addClass('mega-menu four-column'); 
  $('.mega-menu-add-class').parents('.menu-item-has-children').addClass('mega_static');
  $('.sub-drop-add-class').parents('.common-class').addClass('sub-menu');
</script>

													</div>
													<!-- end of navigation section -->

													<!-- Mobile Menu -->
													<div class="mobile-menu-wrapper d-block d-lg-none pt-15">
														<div class="mobile-menu"></div>
													</div>
												</div>

												<!--====================  End of navigation menu  ====================-->

											</div>


											<div
												class="col-6 col-xl-1 col-lg-2 text-right order-2 order-sm-3 order-lg-4 order-xs-2 col-md-6 col-sm-2 mobile_common">
												<!--=======  cart icon  =======-->
								                 
												<div class="header-cart-icon">
													<a href="/DongHoWeb/cartDetail/${cartID}.htm" id="small-cart-trigger"
														class="small-cart-trigger"> <i
														class="icon-shopping-cart"></i> <span
														class="cart-counter bigcounter">${cartQuantity}
														</span>
													</a>

													</div>

													<!--=======  End of cart icon  =======-->
												</div>
											</div>
										</div>

										<!--====================  End of navigation top search  ====================-->
									</div>
								</div>
							</div>
						</div>

						<!--====================  End of Navigation top  ====================-->


					</div>
				</div>
			</div>
			<main>
				<!-- BEGIN content_for_index -->
				<div id="shopify-section-1559548434891" class="shopify-section">
					<!--====================  hero slider area ====================-->
					<div class="hero-slider-area mb-40" id="section-1559548434891">

						<!--=======  hero slider wrapper  =======-->

						<div class="hero-slider-wrapper">
							<div class="ht-slick-slider"
								data-slick-setting='{
                             "slidesToShow": 1,
                             "slidesToScroll": 1,
                             "arrows": false,
                             "dots": true,
                             "autoplay": true,
                             "autoplaySpeed": 5000,
                             "speed": 1000,
                             "fade": true
                             }'
								data-slick-responsive='[
                                {"breakpoint":1501, "settings": {"slidesToShow": 1} },
                                {"breakpoint":1199, "settings": {"slidesToShow": 1} },
                                {"breakpoint":991, "settings": {"slidesToShow": 1} },
                                {"breakpoint":767, "settings": {"slidesToShow": 1} },
                                {"breakpoint":575, "settings": {"slidesToShow": 1} },
                                {"breakpoint":479, "settings": {"slidesToShow": 1} }
                                ]'>

								<!--=======  single slider item  =======-->

							<c:forEach var="w" items="${TopWatch}">
								<div class="single-slider-item">
									<div
										class="hero-slider-item-wrapper hero-slider-item-wrapper--fullwidth hero-slider-item-wrapper--fullwidth--maxheight hero-slider-bg-7"
										style="background-image: url(${w.img})">


										<a class="slider_full_url" href="${w.url}"></a>


										<div class="container">

											<div class="slider_mobile_image">
												<img src="${w.img}" alt="">
											</div>

											<div class="row">
												<div class="col-lg-12">
													<div class="hero-slider-content">
														<p class="slider-title slider-title--small">${w.subTitle}</p>
														<p class="slider-title slider-title--big-bold">${w.mainTitle}</p>
														<p class="slider-title slider-title--big-light">${w.descript}</p>
														<a class="theme-button hero-slider-button" href="">Shopping
															Now</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>							

								<!--=======  End of single slider item  =======-->

							</div>
						</div>

						<!--=======  End of hero slider wrapper  =======-->
					</div>
					<!--====================  End of hero slider area  ====================-->
				</div>
				<div id="shopify-section-1548927351222" class="shopify-section">
					<!--====================  icon feature area ====================-->
					<div class="icon-feature-area mb-40" id="section-1548927351222">
						<div class="container">
							<div class="row">
								<div class="col-lg-12">
									<!--=======  icon feature wrapper  =======-->

									<div class="icon-feature-wrapper">
										<div class="row row-5">


											<div class="col-6 col-lg-4 col-sm-6 col-md-4">
												<!--=======  single icon feature  =======-->
												<div class="single-icon-feature">


													<div class="single-icon-feature__icon">
														<img
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/files/333_small.png?v=1559367618
                            "
															alt="">
													</div>


													<div class="single-icon-feature__content">


														<p class="feature-title">Miễn Phí Giao Hàng</p>

													</div>
												</div>

												<!--=======  End of single icon feature  =======-->
											</div>
											<div class="col-6 col-lg-4 col-sm-6 col-md-4">
												<!--=======  single icon feature  =======-->
												<div class="single-icon-feature">


													<div class="single-icon-feature__icon">
														<img
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/files/111_small.png?v=1559367608
                            "
															alt="">
													</div>


													<div class="single-icon-feature__content">


														<p class="feature-title">Hỗ Trợ 24/7</p>



														<p class="feature-text">Luôn sẵn sàng hỗ trợ</p>


													</div>
												</div>

												<!--=======  End of single icon feature  =======-->
											</div>
											<div class="col-6 col-lg-4 col-sm-6 col-md-4">
												<!--=======  single icon feature  =======-->
												<div class="single-icon-feature">


													<div class="single-icon-feature__icon">
														<img
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/files/222_small.png?v=1559367648
                            "
															alt="">
													</div>


													<div class="single-icon-feature__content">


														<p class="feature-title">An toàn</p>



														<p class="feature-text">Bảo mật thông tin khách hàng</p>


													</div>
												</div>

												<!--=======  End of single icon feature  =======-->
											</div>

										</div>
									</div>

									<!--=======  End of icon feature wrapper  =======-->
								</div>
							</div>
						</div>
					</div>
					<!--====================  End of icon feature area  ====================-->
				</div>
				<div id="shopify-section-1550306537399" class="shopify-section">
					<!--====================  product single row slider area ====================-->
					<div class="product-single-row-slider-area mb-40"
						id="section-1550306537399">
						<div class="container">
							<div class="row">
								<div class="col-lg-7 ">

									<!--=======  section title  =======-->
									<div class="section-title mb-20">
										<h2>Khuyến mãi hôm nay</h2>
									</div>
									<!--=======  End of section title  =======-->
								</div>


								<div class="col-lg-5">
									<div class="counter-deal">
										Ends in:
										<div class="deal-countdown" data-countdown="${currentDay}"></div>
									</div>
								</div>
							</div>


							<div class="row">



								<div class="col-lg-12">
									<!--=======  product single row slider wrapper  =======-->

									<div class="product-single-row-slider-wrapper">
										<div class="ht-slick-slider"
											data-slick-setting='{
                                   "slidesToShow": 4,
                                   "slidesToScroll": 1,
                                   "dots": false,
                                   "autoplay": false,
                                   "autoplaySpeed": 5000,
                                   "speed": 1000,
                                   "arrows": true,
                                   "infinite": false,
                                   "prevArrow": {"buttonClass": "slick-prev", "iconClass": "ion-ios-arrow-left" },
                                   "nextArrow": {"buttonClass": "slick-next", "iconClass": "ion-ios-arrow-right" }
                                   }'
											data-slick-responsive='[
                                      {"breakpoint":1501, "settings": {"slidesToShow": 4} },
                                      {"breakpoint":1199, "settings": {"slidesToShow": 4} },
                                      {"breakpoint":991, "settings": {"slidesToShow": 3} },
                                      {"breakpoint":767, "settings": {"slidesToShow": 2, "arrows": false} },
                                      {"breakpoint":575, "settings": {"slidesToShow": 2, "arrows": false} },
                                      {"breakpoint":479, "settings": {"slidesToShow": 1, "arrows": false} }
                                      ]'>

											<%--Hiển thị thông tin sản phẩm --%>
									<c:forEach var="w" items="${ListProductToDay}">
											<div class="single-slider-product-wrapper 15683854598253">
												<div class="single-slider-product">
													<div class="single-slider-product__image">
														<a href="${w.urlChiTiet}"> <img
															class="img-fluid popup_cart_image"
															id="single-slider-img-size" alt="" src="${w.hinhAnh[0]}" />
															<c:if test="${not empty w.hinhAnh[1]}">
															<img class="img-fluid popup_cart_image"
															id="single-slider-img-size" alt="" src="${w.hinhAnh[1]}" />
															</c:if>
														</a> 
														<c:if test="${w.giamGia != 0}"> 
														<span
															class="discount-label discount-label--green percent-count">-${w.giamGia}%</span>
															</c:if>
														<div class="single-slider-product__content">
															<p class="product-title popup_cart_title">
																<a href="${w.urlChiTiet}">${w.ten}</a>
															</p>
															<c:if test="${w.giamGia != 0}">
															<p class="product-price">
																<span class="main-price discounted">
																	<span class="money">
																		<fmt:formatNumber type="number" maxFractionDigits="0" value="${w.gia}" />
																	</span>
																
																</span> 
															</p>
															</c:if>
															<p class="product-price display-bottom-price">
															<span class="discounted-price">
															<span class="money">
																	<fmt:formatNumber type="number"
																		maxFractionDigits="-5"
																		value="${w.giaSauGiam}" />
															</span>
															₫
															</span>
															</p>
														<a href = "/DongHoWeb/addToCart/${cartID}/${w.idDongHo}.htm">															
																		<span class="cart-icon"> 
																		<span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</a>
															</span>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>

										</div>
									</div>

									<!--=======  End of product single row slider wrapper  =======-->
								</div>
							</div>
						</div>
					</div>
					<!--====================  End of product single row slider area  ====================-->


					<script>

  $('[data-countdown]').each(function () {
    var $this = $(this),
        finalDate = $(this).data('countdown');
    $this.countdown(finalDate, function (event) {
      $this.html(event.strftime('<div class="single-countdown"><span class="single-countdown__time">%D</span><span class="single-countdown__text">:</span></div><div class="single-countdown"><span class="single-countdown__time">%H</span><span class="single-countdown__text">:</span></div><div class="single-countdown"><span class="single-countdown__time">%M</span><span class="single-countdown__text">:</span></div><div class="single-countdown"><span class="single-countdown__time">%S</span><span class="single-countdown__text"></span></div>'));
    });
  });

</script>
				</div>
				<div id="shopify-section-1549773162572" class="shopify-section">
					<!--====================  full banner area ====================-->
					<div class="full-banner-area mb-40 mb-md-10 mb-sm-10"
						id="section-1549773162572">
						<div class="container">
							<div class="row align-items-center">
								<div class="col-xl-4 col-lg-5 mb-md-30 mb-sm-30">
									<!--=======  full banner content  =======-->

									<div class="full-banner__content">


										<h5>special offer</h5>



										<h4>SUCCULENT GARDEN</h4>



										<h3>GIFT BOXES</h3>



										<p>From planter materials to style options, discover which
											planter is best for your space.</p>



										<a class="theme-button theme-button--outline banner-button"
											href="">Explore The Shop</a>


									</div>
									<!--=======  End of full banner content  =======-->
								</div>
								<div
									class="col-xl-8 col-lg-7 text-center text-lg-right mb-md-30 mb-sm-30">
									<!--=======  full banner image  =======-->
									<div class="full-banner__image">
										<a href=""> <img
											src="//cdn.shopify.com/s/files/1/0039/3740/2989/files/694x424_e23c122a-8d28-40ec-ba10-87e28f07c2ba.jpg?v=1559383318"
											class="img-fluid" alt="">
										</a>
									</div>

									<!--=======  End of full banner image  =======-->
								</div>
							</div>
						</div>
					</div>

					<!--====================  End of full banner area  ====================-->
				</div>
				<div id="shopify-section-1550482123798" class="shopify-section">
					<!--====================  banner with double row slider ====================-->
					<div class="banner-double-row-slider-area mb-40"
						id="section-1550482123798">
						<div class="container">

							<div class="row">
								<div class="col-lg-12">
									<!--=======  section title  =======-->

									<div class="section-title mb-20">
										<h2>Tất cả sản phẩm</h2>
									</div>

									<!--=======  End of section title  =======-->
								</div>
							</div>
							<div class="row row-10">

								<div class="col-lg-12 ">
									<!--=======  product double row slider wrapper  =======-->





									<div class="product-double-row-slider-wrapper">
										<div class="ht-slick-slider"
											data-slick-setting='{
                                   "slidesToShow": 4,
                                   "slidesToScroll": 1,
                                   "dots": false,
                                   "autoplay": false,
                                   "autoplaySpeed": 5000,
                                   "speed": 1000,
                                   "arrows": true,
                                   "rows": 2,
                                   "prevArrow": {"buttonClass": "slick-prev", "iconClass": "ion-ios-arrow-left" },
                                   "nextArrow": {"buttonClass": "slick-next", "iconClass": "ion-ios-arrow-right" }
                                   }'
											data-slick-responsive='[
                                      {"breakpoint":1501, "settings": {"slidesToShow": 3} },
                                      {"breakpoint":1199, "settings": {"slidesToShow": 3} },
                                      {"breakpoint":991, "settings": {"slidesToShow": 2} },
                                      {"breakpoint":767, "settings": {"slidesToShow": 2, "arrows": false} },
                                      {"breakpoint":575, "settings": {"slidesToShow": 2, "arrows": false} },
                                      {"breakpoint":479, "settings": {"slidesToShow": 1, "arrows": false} }
                                      ]'>

											<!--=======  single slider product  =======-->
											<c:forEach var="w" items="${ListProduct}">
											<div class="single-slider-product-wrapper 15683854598253">
												<div class="single-slider-product">
													<div class="single-slider-product__image">
														<a href="${w.urlChiTiet}"> <img
															class="img-fluid popup_cart_image"
															id="single-slider-img-size" alt="" src="${w.hinhAnh[0]}" />
															<c:if test="${not empty w.hinhAnh[1]}">
															<img class="img-fluid popup_cart_image"
															id="single-slider-img-size" alt="" src="${w.hinhAnh[1]}" />
															</c:if>
														</a> 
														<c:if test="${w.giamGia != 0}">
														<span
															class="discount-label discount-label--green percent-count">-${w.giamGia}%</span>
															</c:if>
														<div class="single-slider-product__content">
															<p class="product-title popup_cart_title">
																<a href="${w.urlChiTiet}">${w.ten}</a>
															</p>
															<c:if test="${w.giamGia != 0}">
															<p class="product-price">
																<span class="main-price discounted">
																	<span class="money">
																		<fmt:formatNumber type="number" maxFractionDigits="0" value="${w.gia}" />
																	</span>
																
																</span> 
															</p>
															</c:if>
															<p class="product-price display-bottom-price">
															<span class="discounted-price">
															<span class="money">
																	<fmt:formatNumber type="number"
																		maxFractionDigits="-5"
																		value="${w.giaSauGiam}" />
															</span>
															₫
															</span>
															</p>
															<a href = "/DongHoWeb/addToCart/${cartID}/${w.idDongHo}.htm" id = "${idDongHo}">															
																		<span class="cart-icon"> 
																		<span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</a>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
<!-- 
											<div class="single-slider-product-wrapper 15683854598253">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a href="/products/demo-product-title-1"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-14_aa935818-ee3b-40c1-bb12-ec87a2114018_600x800_crop_center.jpg?v=1559117385">

															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-15_b5c73468-d3c4-433b-926f-aae86d909ff6_600x800_crop_center.jpg?v=1559117387">

														</a>

														<div class="hover-icons">
															<ul>
																<li><a href="test.htm"><i class="icon-eye"></i></a></li>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="demo-product-title-1" title=""
																	data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>




													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/demo-product-title-1">Demo product
																title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042226285"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$80.00</span></span>

														</p>
														<span class="cart-icon"> <a
															href="javascript:void(0);"
															onclick="Shopify.addItem(15683854598253, 1); return false;"
															class=""> <span> <span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</span>
														</a>


														</span>
													</div>
												</div>

											</div>
											<div class="single-slider-product-wrapper 15683853025389">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a href="/products/demo-product-title"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-13_8c0c7a21-fd29-44ac-a8de-d908d89b3f14_600x800_crop_center.jpg?v=1559117380">

															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-14_b67ff721-b238-48fb-b8f4-ac38e5f1ccbf_600x800_crop_center.jpg?v=1559117381">

														</a> <span
															class="discount-label discount-label--green percent-count">-10%</span>




														<div class="hover-icons">
															<ul>
																<li><a data-toggle="modal"
																	data-target="#quickViewModal"
																	href="javascript:void(0);"
																	onclick="quiqview('demo-product-title')"><i
																		class="icon-eye"></i></a></li>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="demo-product-title" title=""
																	data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>




													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/demo-product-title">Demo product
																title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041996909"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$19.00</span></span>

															<span class="main-price discounted"><span
																class=money>$21.00</span></span>

														</p>
														<span class="cart-icon"> <a
															href="javascript:void(0);"
															onclick="Shopify.addItem(15683853025389, 1); return false;"
															class=""> <span> <span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</span>
														</a>


														</span>
													</div>
												</div>

											</div>
											<div class="single-slider-product-wrapper 15683851321453">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a href="/products/11-product-with-video"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-3_cf3cbfdd-108e-42f9-a5af-cfbfd696330f_600x800_crop_center.jpg?v=1559117237">

															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-4_d2300974-ec6c-4aae-94e4-562831a6e645_600x800_crop_center.jpg?v=1559117239">

														</a>






														<div class="hover-icons">
															<ul>
																<li><a data-toggle="modal"
																	data-target="#quickViewModal"
																	href="javascript:void(0);"
																	onclick="quiqview('11-product-with-video')"><i
																		class="icon-eye"></i></a></li>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="11-product-with-video" title=""
																	data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>




													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/11-product-with-video">11. Product
																with video</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041833069"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$39.00</span></span>

														</p>
														<span class="cart-icon"> <a
															href="javascript:void(0);"
															onclick="Shopify.addItem(15683851321453, 1); return false;"
															class=""> <span> <span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</span>
														</a>


														</span>
													</div>
												</div>

											</div>
											<div class="single-slider-product-wrapper 15683851157613">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a
															href="/products/10-this-is-the-large-title-for-testing-large-title-and-there-is-an-image-for-testing">
															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-2_30282af9-ed36-4d70-8afa-913916b13e11_600x800_crop_center.jpg?v=1559117232">

															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-3_9f1a98aa-c920-41af-b132-b3a73e4e9ce1_600x800_crop_center.jpg?v=1559117233">

														</a> <span
															class="discount-label discount-label--green percent-count">-10%</span>




														<div class="hover-icons">
															<ul>
																<li><a data-toggle="modal"
																	data-target="#quickViewModal"
																	href="javascript:void(0);"
																	onclick="quiqview('10-this-is-the-large-title-for-testing-large-title-and-there-is-an-image-for-testing')"><i
																		class="icon-eye"></i></a></li>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="10-this-is-the-large-title-for-testing-large-title-and-there-is-an-image-for-testing"
																	title="" data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>




													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a
																href="/products/10-this-is-the-large-title-for-testing-large-title-and-there-is-an-image-for-testing">10.
																This is the large</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041800301"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$19.00</span></span>

															<span class="main-price discounted"><span
																class=money>$21.00</span></span>

														</p>
														<span class="cart-icon"> <a
															href="javascript:void(0);"
															onclick="Shopify.addItem(15683851157613, 1); return false;"
															class=""> <span> <span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</span>
														</a>


														</span>
													</div>
												</div>

											</div>
											<div class="single-slider-product-wrapper 15683850600557">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a href="/products/9-without-shortcode-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-12_081cb81c-3368-438f-ad90-174346d6e4c2_600x800_crop_center.jpg?v=1559117374">

															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-13_df81b2b7-59c4-4020-9aad-fd04d43af4ec_600x800_crop_center.jpg?v=1559117375">

														</a>






														<div class="hover-icons">
															<ul>
																<li><a data-toggle="modal"
																	data-target="#quickViewModal"
																	href="javascript:void(0);"
																	onclick="quiqview('9-without-shortcode-product')"><i
																		class="icon-eye"></i></a></li>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="9-without-shortcode-product" title=""
																	data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>




													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/9-without-shortcode-product">9.
																Without shortcode</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041734765"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$79.00</span></span>

														</p>
														<span class="cart-icon"> <a
															href="javascript:void(0);"
															onclick="Shopify.addItem(15683850600557, 1); return false;"
															class=""> <span> <span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</span>
														</a>


														</span>
													</div>
												</div>

											</div>
											<div class="single-slider-product-wrapper 15683850338413">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a href="/products/8-countdown-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-11_220d48eb-850f-4b4e-8fcc-c7f15d42e8cc_600x800_crop_center.jpg?v=1559117369">

															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-12_f46a303f-5ea0-4299-b54f-233313fed03e_600x800_crop_center.jpg?v=1559117370">

														</a> <span
															class="discount-label discount-label--green percent-count">-35%</span>




														<div class="hover-icons">
															<ul>
																<li><a data-toggle="modal"
																	data-target="#quickViewModal"
																	href="javascript:void(0);"
																	onclick="quiqview('8-countdown-product')"><i
																		class="icon-eye"></i></a></li>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="8-countdown-product" title=""
																	data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>



														<div class="count_down_wrapper">


															<div data-countdown="2020/05/24"></div>
														</div>


													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/8-countdown-product">8. Countdown
																product</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041669229"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$39.00</span></span>

															<span class="main-price discounted"><span
																class=money>$60.00</span></span>

														</p>
														<span class="cart-icon"> <a
															href="javascript:void(0);"
															onclick="Shopify.addItem(15683850338413, 1); return false;"
															class=""> <span> <span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</span>
														</a>


														</span>
													</div>
												</div>

											</div>
											<div class="single-slider-product-wrapper 15683850305645">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a href="/products/7-sample-affiliate-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-10_621fe79f-dc12-4366-8ad3-63d28a599fae_600x800_crop_center.jpg?v=1559117360">

															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-11_db0f8224-148b-4803-abb5-743d31e4bba5_600x800_crop_center.jpg?v=1559117362">

														</a>






														<div class="hover-icons">
															<ul>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="7-sample-affiliate-product" title=""
																	data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>




													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/7-sample-affiliate-product">7.
																Sample affiliate product</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041636461"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$29.00</span></span>

														</p>
													</div>
												</div>

											</div>
											<div class="single-slider-product-wrapper 15683850043501">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a href="/products/6-variable-with-soldout-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-9_70b0cf87-dbd8-4397-b1bd-bf1d478cf981_600x800_crop_center.jpg?v=1559117350">

															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-10_174e655d-9d9e-4161-a72c-69bbe8ec17f5_600x800_crop_center.jpg?v=1559117353">

														</a> <span
															class="discount-label discount-label--green percent-count">-27%</span>




														<div class="hover-icons">
															<ul>
																<li><a data-toggle="modal"
																	data-target="#quickViewModal"
																	href="javascript:void(0);"
																	onclick="quiqview('6-variable-with-soldout-product')"><i
																		class="icon-eye"></i></a></li>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="6-variable-with-soldout-product" title=""
																	data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>




													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/6-variable-with-soldout-product">6.
																Variable with soldout</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041603693"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$55.00</span></span>

															<span class="main-price discounted"><span
																class=money>$75.00</span></span>

														</p>
														<span class="cart-icon"> <a
															href="javascript:void(0);"
															onclick="Shopify.addItem(15683850043501, 1); return false;"
															class=""> <span> <span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</span>
														</a>


														</span>
													</div>
												</div>

											</div>
											<div class="single-slider-product-wrapper 15683849945197">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a href="/products/5-simple-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-8_c6b81828-93cc-4256-b440-50278c54a8ea_600x800_crop_center.jpg?v=1559117286">
														</a>





														<div class="hover-icons">
															<ul>
																<li><a data-toggle="modal"
																	data-target="#quickViewModal"
																	href="javascript:void(0);"
																	onclick="quiqview('5-simple-product')"><i
																		class="icon-eye"></i></a></li>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="5-simple-product" title=""
																	data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>




													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/5-simple-product">5. Simple
																product</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041505389"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$50.00</span></span>

														</p>
														<span class="cart-icon"> <a
															href="javascript:void(0);"
															onclick="Shopify.addItem(15683849945197, 1); return false;"
															class=""> <span> <span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</span>
														</a>


														</span>
													</div>
												</div>

											</div>
											<div class="single-slider-product-wrapper 15683849912429">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a href="/products/4-soldout-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-7_64ebb11e-7449-494b-9e70-3267dab4895b_600x800_crop_center.jpg?v=1559117266">

															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-8_95a9f396-df5d-4b8e-bedb-e25dfe15f439_600x800_crop_center.jpg?v=1559117267">

														</a> <span
															class="discount-label discount-label--green percent-count">-34%</span>




														<div class="hover-icons">
															<ul>
																<li><a data-toggle="modal"
																	data-target="#quickViewModal"
																	href="javascript:void(0);"
																	onclick="quiqview('4-soldout-product')"><i
																		class="icon-eye"></i></a></li>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="4-soldout-product" title=""
																	data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>




													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/4-soldout-product">4. Soldout
																product</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041439853"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$19.00</span></span>

															<span class="main-price discounted"><span
																class=money>$29.00</span></span>

														</p>
														<span class="cart-icon">

															<button class="cart-disable ">
																<span class="cart-text"><i
																	class="icon-shopping-cart"></i></span>
															</button>

														</span>
													</div>
												</div>

											</div>
											<div class="single-slider-product-wrapper 15683843883117">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a href="/products/3-variable-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-6_7428aaf1-288d-48e3-9f0c-c2601117cc75_600x800_crop_center.jpg?v=1559117256">

															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-7_f07e4923-7bbe-4cab-a692-e608c19f3981_600x800_crop_center.jpg?v=1559117258">

														</a> <span
															class="discount-label discount-label--green percent-count">-18%</span>




														<div class="hover-icons">
															<ul>
																<li><a data-toggle="modal"
																	data-target="#quickViewModal"
																	href="javascript:void(0);"
																	onclick="quiqview('3-variable-product')"><i
																		class="icon-eye"></i></a></li>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="3-variable-product" title=""
																	data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>




													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/3-variable-product">3. Variable
																product</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041079405"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$70.00</span></span>

															<span class="main-price discounted"><span
																class=money>$85.00</span></span>

														</p>
														<span class="cart-icon"> <a
															href="javascript:void(0);"
															onclick="Shopify.addItem(15683843883117, 1); return false;"
															class=""> <span> <span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</span>
														</a>


														</span>
													</div>
												</div>

											</div>
											<div class="single-slider-product-wrapper 15683842998381">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a href="/products/2-new-badge-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-5_3c1d8542-26bd-409d-a5ca-be0e495725c1_600x800_crop_center.jpg?v=1559117249">

															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-6_d891bb71-28fc-42b0-859a-403850cb3dc8_600x800_crop_center.jpg?v=1559117250">

														</a>



















														<div class="hover-icons">
															<ul>
																<li><a data-toggle="modal"
																	data-target="#quickViewModal"
																	href="javascript:void(0);"
																	onclick="quiqview('2-new-badge-product')"><i
																		class="icon-eye"></i></a></li>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="2-new-badge-product" title=""
																	data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>




													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/2-new-badge-product">2. New badge
																product</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041013869"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$80.00</span></span>

														</p>
														<span class="cart-icon"> <a
															href="javascript:void(0);"
															onclick="Shopify.addItem(15683842998381, 1); return false;"
															class=""> <span> <span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</span>
														</a>


														</span>
													</div>
												</div>

											</div>
											<div class="single-slider-product-wrapper 15683842244717">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a href="/products/1-new-and-sale-badge-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-1_600x800_crop_center.jpg?v=1559117225">

															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-2_600x800_crop_center.jpg?v=1559117227">

														</a> <span
															class="discount-label discount-label--green percent-count">-15%</span>

















														<div class="hover-icons">
															<ul>
																<li><a data-toggle="modal"
																	data-target="#quickViewModal"
																	href="javascript:void(0);"
																	onclick="quiqview('1-new-and-sale-badge-product')"><i
																		class="icon-eye"></i></a></li>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="1-new-and-sale-badge-product" title=""
																	data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>




													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/1-new-and-sale-badge-product">1.
																New and sale</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675040981101"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$110.00</span></span>

															<span class="main-price discounted"><span
																class=money>$130.00</span></span>

														</p>
														<span class="cart-icon"> <a
															href="javascript:void(0);"
															onclick="Shopify.addItem(15683842244717, 1); return false;"
															class=""> <span> <span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</span>
														</a>


														</span>
													</div>
												</div>

											</div>
											<div class="single-slider-product-wrapper 15683842080877">
												<div class="single-slider-product">
													<div class="single-slider-product__image">


														<a
															href="/products/12-unique-content-for-each-product-on-the-product-tab">
															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-4_49302b5b-9f48-402f-abf6-83edc45cd340_600x800_crop_center.jpg?v=1559117243">

															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-5_500c119b-21ac-49fa-b265-c1e939325f91_600x800_crop_center.jpg?v=1559117244">

														</a> <span
															class="discount-label discount-label--green percent-count">-11%</span>




														<div class="hover-icons">
															<ul>
																<li><a data-toggle="modal"
																	data-target="#quickViewModal"
																	href="javascript:void(0);"
																	onclick="quiqview('12-unique-content-for-each-product-on-the-product-tab')"><i
																		class="icon-eye"></i></a></li>
																<li><a class="wishlist" href="/account/login"
																	title="Wishlist"> <i class="icon-heart"></i>
																</a></li>
																<li><a href="#" class="compare"
																	data-pid="12-unique-content-for-each-product-on-the-product-tab"
																	title="" data-original-title="Compare"><i
																		class="icon-sliders"></i></a></li>
															</ul>
														</div>




													</div>

													<div class="single-slider-product__content">

														<p class="product-title popup_cart_title">
															<a
																href="/products/12-unique-content-for-each-product-on-the-product-tab">12.
																Unique content for</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675040915565"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$99.00</span></span>

															<span class="main-price discounted"><span
																class=money>$111.00</span></span>

														</p>
														<span class="cart-icon"> <a
															href="javascript:void(0);"
															onclick="Shopify.addItem(15683842080877, 1); return false;"
															class=""> <span> <span class="cart-title"><i
																		class="icon-shopping-cart"></i></span>
															</span>
														</a>


														</span>
													</div>
												</div>

											</div>
 -->




										</div>
									</div>

									<!--=======  End of product double row slider wrapper  =======-->
								</div>
							</div>
						</div>
					</div>
					<!--====================  End of banner with double row slider  ====================-->
				</div>
				<div id="shopify-section-1548915309405" class="shopify-section">
					<!--====================  split banner area ====================-->

					<div class="split-banner-area mb-40 mb-sm-30"
						id="section-1548915309405">
						<div class="container">
							<div class="row row-5">


								<div class="col-lg-6 col-md-6 mb-sm-10">
									<!--=======  single split banner  =======-->
									<div class="single-split-banner">
										<div class="single-split-banner__image">
											<a href=""><img
												src="//cdn.shopify.com/s/files/1/0039/3740/2989/files/Banner-22.jpg?v=1559383129
              "
												alt=""> </a>
										</div>
									</div>
									<!--=======  End of single split banner  =======-->
								</div>
								<div class="col-lg-6 col-md-6 mb-sm-10">
									<!--=======  single split banner  =======-->
									<div class="single-split-banner">
										<div class="single-split-banner__image">
											<a href=""><img
												src="//cdn.shopify.com/s/files/1/0039/3740/2989/files/banner-1_70777f68-9105-439a-95c3-0a23a1262b8b.jpg?v=1559383115
              "
												alt=""> </a>
										</div>
									</div>
									<!--=======  End of single split banner  =======-->
								</div>


							</div>
						</div>
					</div>

					<!--====================  End of split banner area  ====================-->
				</div>
				<div id="shopify-section-1550492675935" class="shopify-section">
					<!--====================  product widget slider area ====================-->
					<div class="product-widget-slider-area mb-40"
						id="section-1550492675935">
						<div class="container">
							<div class="row">





								<div class="col-lg-4 mb-md-30 mb-sm-30">


									<!--=======  section title  =======-->
									<div class="section-title section-title--medium mb-20">
										<h2>Featured Products</h2>
									</div>
									<!--=======  End of section title  =======-->
									<!--=======  single widget product slider  =======-->
									<div class="single-widget-slider">
										<div class="ht-slick-slider"
											data-slick-setting='{
                                   "slidesToShow": 1,
                                   "slidesToScroll": 1,
                                   "dots": false,
                                   "autoplay": false,
                                   "autoplaySpeed": 5000,
                                   "speed": 1000,
                                   "rows": 3
                                   }'
											data-slick-responsive='[
                                      {"breakpoint":1501, "settings": {"slidesToShow": 1} },
                                      {"breakpoint":1199, "settings": {"slidesToShow": 1} },
                                      {"breakpoint":991, "settings": {"slidesToShow": 2} },
                                      {"breakpoint":767, "settings": {"slidesToShow": 1} },
                                      {"breakpoint":575, "settings": {"slidesToShow": 1} },
                                      {"breakpoint":479, "settings": {"slidesToShow": 1} }
                                      ]'>
											<!--=======  single  widget product  =======-->


											<div class="single-widget-product-wrapper 15683863969901">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/dummy-product-name-4"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-5_41358481-f0e3-465e-aecd-a37ab50e64a6_100x100_crop_center.jpg?v=1559117494">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/dummy-product-name-4">Dummy
																product name</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675043176557"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$79.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683863543917">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/dummy-text-for-title-3"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-9_c904bb21-0c55-42e4-913f-f0072e7af615_100x100_crop_center.jpg?v=1559117940">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/dummy-text-for-title-3">Dummy text
																for title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675043078253"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$39.00</span></span>

															<span class="main-price discounted"><span
																class=money>$60.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683863249005">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/demo-product-title-3"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-16_b85495df-d983-47f6-8dd3-da5f346fcba1_100x100_crop_center.jpg?v=1559117960">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/demo-product-title-3">Demo product
																title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042979949"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$29.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683863216237">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/dummy-product-name-3"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-10_bd0b1ae9-a076-4738-a32d-e87fe6403f96_100x100_crop_center.jpg?v=1559117489">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/dummy-product-name-3">Dummy
																product name</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042947181"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$29.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683862626413">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/dummy-text-for-title-2"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-1_1e134806-cb6f-4c93-bf2b-19ad0638e53d_100x100_crop_center.jpg?v=1559117523">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/dummy-text-for-title-2">Dummy text
																for title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042848877"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$55.00</span></span>

															<span class="main-price discounted"><span
																class=money>$75.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683862528109">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/demo-product-title-2"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-5_8998ac95-ed69-400e-b7e4-a863d003b70b_100x100_crop_center.jpg?v=1559117395">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/demo-product-title-2">Demo product
																title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042750573"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$50.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683862495341">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/dummy-product-name-2"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-8_c56d8ab1-8147-471d-b5f7-887c2cbba0b4_100x100_crop_center.jpg?v=1559117480">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/dummy-product-name-2">Dummy
																product name</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042685037"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$19.00</span></span>

															<span class="main-price discounted"><span
																class=money>$29.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683858989165">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/dummy-text-for-title-1"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-4_ff8f0b7e-945d-4b50-bfb8-fd97b071a889_100x100_crop_center.jpg?v=1559117509">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/dummy-text-for-title-1">Dummy text
																for title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042422893"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$70.00</span></span>

															<span class="main-price discounted"><span
																class=money>$85.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683854598253">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/demo-product-title-1"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-14_aa935818-ee3b-40c1-bb12-ec87a2114018_100x100_crop_center.jpg?v=1559117385">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/demo-product-title-1">Demo product
																title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042226285"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$80.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683853844589">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/dummy-product-name-1"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-4_1d67d2f8-3c46-4ec6-9f44-b122445e6dbc_100x100_crop_center.jpg?v=1559117473">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/dummy-product-name-1">Dummy
																product name</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042193517"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$80.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683853647981">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/product-dummy-title-1"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-3_6df7b27e-b381-4b1b-badd-90776de1ca41_100x100_crop_center.jpg?v=1559117725">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/product-dummy-title-1">Product
																dummy title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042160749"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$39.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683853418605">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/dummy-text-for-title"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-2_167380b4-42be-424f-9499-56b1de41b8f6_100x100_crop_center.jpg?v=1559117501">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/dummy-text-for-title">Dummy text
																for title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042095213"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$39.00</span></span>

														</p>

													</div>
												</div>
											</div>


											<!--=======  End of single  widget product  =======-->
										</div>
									</div>
									<!--=======  End of single widget product slider  =======-->

								</div>



								<div class="col-lg-4 mb-md-30 mb-sm-30">


									<!--=======  section title  =======-->
									<div class="section-title section-title--medium mb-20">
										<h2>Most View Products</h2>
									</div>
									<!--=======  End of section title  =======-->
									<!--=======  single widget product slider  =======-->
									<div class="single-widget-slider">
										<div class="ht-slick-slider"
											data-slick-setting='{
                                   "slidesToShow": 1,
                                   "slidesToScroll": 1,
                                   "dots": false,
                                   "autoplay": false,
                                   "autoplaySpeed": 5000,
                                   "speed": 1000,
                                   "rows": 3
                                   }'
											data-slick-responsive='[
                                      {"breakpoint":1501, "settings": {"slidesToShow": 1} },
                                      {"breakpoint":1199, "settings": {"slidesToShow": 1} },
                                      {"breakpoint":991, "settings": {"slidesToShow": 2} },
                                      {"breakpoint":767, "settings": {"slidesToShow": 1} },
                                      {"breakpoint":575, "settings": {"slidesToShow": 1} },
                                      {"breakpoint":479, "settings": {"slidesToShow": 1} }
                                      ]'>
											<!--=======  single  widget product  =======-->


											<div class="single-widget-product-wrapper 15683863773293">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/product-dummy-title-4"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-10_1af7a4fe-b494-4cee-a9b5-1a01a3346137_100x100_crop_center.jpg?v=1559117755">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/product-dummy-title-4">Product
																dummy title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675043111021"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$79.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683863543917">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/dummy-text-for-title-3"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-9_c904bb21-0c55-42e4-913f-f0072e7af615_100x100_crop_center.jpg?v=1559117940">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/dummy-text-for-title-3">Dummy text
																for title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675043078253"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$39.00</span></span>

															<span class="main-price discounted"><span
																class=money>$60.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683863314541">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/product-title-here-3"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-2_8958f335-1e81-49a4-a470-aadb8d33abf3_100x100_crop_center.jpg?v=1559117797">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/product-title-here-3">Product
																title here</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675043045485"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$39.00</span></span>

															<span class="main-price discounted"><span
																class=money>$60.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683862921325">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/product-dummy-title-3"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-5_67abe03e-6bba-41f1-810c-32ed74f1c3cb_100x100_crop_center.jpg?v=1559117740">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/product-dummy-title-3">Product
																dummy title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042881645"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$55.00</span></span>

															<span class="main-price discounted"><span
																class=money>$75.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683862626413">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/dummy-text-for-title-2"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-1_1e134806-cb6f-4c93-bf2b-19ad0638e53d_100x100_crop_center.jpg?v=1559117523">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/dummy-text-for-title-2">Dummy text
																for title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042848877"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$55.00</span></span>

															<span class="main-price discounted"><span
																class=money>$75.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683862560877">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/product-title-here-2"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-1_74198f98-fea9-4d81-b29a-61ea75c0795e_100x100_crop_center.jpg?v=1559117786">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/product-title-here-2">Product
																title here</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042816109"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$50.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683862462573">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/product-dummy-title-2"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-4_9d2bbbc2-55ab-4fe2-95fc-10fd8f14dc05_100x100_crop_center.jpg?v=1559117732">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/product-dummy-title-2">Product
																dummy title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042652269"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$19.00</span></span>

															<span class="main-price discounted"><span
																class=money>$29.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683858989165">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/dummy-text-for-title-1"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-4_ff8f0b7e-945d-4b50-bfb8-fd97b071a889_100x100_crop_center.jpg?v=1559117509">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/dummy-text-for-title-1">Dummy text
																for title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042422893"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$70.00</span></span>

															<span class="main-price discounted"><span
																class=money>$85.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683855417453">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/product-title-here-1"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-2_7b8d9ea7-9fc4-4636-b19e-a6d78789834a_100x100_crop_center.jpg?v=1559117778">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/product-title-here-1">Product
																title here</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042291821"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$70.00</span></span>

															<span class="main-price discounted"><span
																class=money>$85.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683853647981">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/product-dummy-title-1"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-3_6df7b27e-b381-4b1b-badd-90776de1ca41_100x100_crop_center.jpg?v=1559117725">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/product-dummy-title-1">Product
																dummy title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042160749"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$39.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683853189229">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/product-title-here"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-3_835c25f2-3584-4257-ba0a-56cbed512b4a_100x100_crop_center.jpg?v=1559117767">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/product-title-here">Product title
																here</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042029677"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$19.00</span></span>

															<span class="main-price discounted"><span
																class=money>$21.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683851583597">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/product-dummy-title"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-2_f27174d9-4a69-428f-a692-34ba21065167_100x100_crop_center.jpg?v=1559117719">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/product-dummy-title">Product dummy
																title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041865837"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$110.00</span></span>

															<span class="main-price discounted"><span
																class=money>$130.00</span></span>

														</p>

													</div>
												</div>
											</div>


											<!--=======  End of single  widget product  =======-->
										</div>
									</div>
									<!--=======  End of single widget product slider  =======-->

								</div>



								<div class="col-lg-4 mb-md-30 mb-sm-30">


									<!--=======  section title  =======-->
									<div class="section-title section-title--medium mb-20">
										<h2>Bestseller Products</h2>
									</div>
									<!--=======  End of section title  =======-->
									<!--=======  single widget product slider  =======-->
									<div class="single-widget-slider">
										<div class="ht-slick-slider"
											data-slick-setting='{
                                   "slidesToShow": 1,
                                   "slidesToScroll": 1,
                                   "dots": false,
                                   "autoplay": false,
                                   "autoplaySpeed": 5000,
                                   "speed": 1000,
                                   "rows": 3
                                   }'
											data-slick-responsive='[
                                      {"breakpoint":1501, "settings": {"slidesToShow": 1} },
                                      {"breakpoint":1199, "settings": {"slidesToShow": 1} },
                                      {"breakpoint":991, "settings": {"slidesToShow": 2} },
                                      {"breakpoint":767, "settings": {"slidesToShow": 1} },
                                      {"breakpoint":575, "settings": {"slidesToShow": 1} },
                                      {"breakpoint":479, "settings": {"slidesToShow": 1} }
                                      ]'>
											<!--=======  single  widget product  =======-->


											<div class="single-widget-product-wrapper 15683854598253">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/demo-product-title-1"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-14_aa935818-ee3b-40c1-bb12-ec87a2114018_100x100_crop_center.jpg?v=1559117385">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/demo-product-title-1">Demo product
																title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675042226285"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$80.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683853025389">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/demo-product-title"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-13_8c0c7a21-fd29-44ac-a8de-d908d89b3f14_100x100_crop_center.jpg?v=1559117380">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/demo-product-title">Demo product
																title</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041996909"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$19.00</span></span>

															<span class="main-price discounted"><span
																class=money>$21.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683851321453">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/11-product-with-video"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-3_cf3cbfdd-108e-42f9-a5af-cfbfd696330f_100x100_crop_center.jpg?v=1559117237">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/11-product-with-video">11. Product
																with video</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041833069"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$39.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683851157613">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a
															href="/products/10-this-is-the-large-title-for-testing-large-title-and-there-is-an-image-for-testing">
															<img class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-2_30282af9-ed36-4d70-8afa-913916b13e11_100x100_crop_center.jpg?v=1559117232">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a
																href="/products/10-this-is-the-large-title-for-testing-large-title-and-there-is-an-image-for-testing">10.
																This is the large</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041800301"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$19.00</span></span>

															<span class="main-price discounted"><span
																class=money>$21.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683850600557">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/9-without-shortcode-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-12_081cb81c-3368-438f-ad90-174346d6e4c2_100x100_crop_center.jpg?v=1559117374">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/9-without-shortcode-product">9.
																Without shortcode</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041734765"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$79.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683850338413">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/8-countdown-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-11_220d48eb-850f-4b4e-8fcc-c7f15d42e8cc_100x100_crop_center.jpg?v=1559117369">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/8-countdown-product">8. Countdown
																product</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041669229"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$39.00</span></span>

															<span class="main-price discounted"><span
																class=money>$60.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683850305645">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/7-sample-affiliate-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-10_621fe79f-dc12-4366-8ad3-63d28a599fae_100x100_crop_center.jpg?v=1559117360">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/7-sample-affiliate-product">7.
																Sample affiliate product</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041636461"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$29.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683850043501">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/6-variable-with-soldout-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-9_70b0cf87-dbd8-4397-b1bd-bf1d478cf981_100x100_crop_center.jpg?v=1559117350">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/6-variable-with-soldout-product">6.
																Variable with soldout</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041603693"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$55.00</span></span>

															<span class="main-price discounted"><span
																class=money>$75.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683849945197">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/5-simple-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-8_c6b81828-93cc-4256-b440-50278c54a8ea_100x100_crop_center.jpg?v=1559117286">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/5-simple-product">5. Simple
																product</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041505389"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$50.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683849912429">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/4-soldout-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-7_64ebb11e-7449-494b-9e70-3267dab4895b_100x100_crop_center.jpg?v=1559117266">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/4-soldout-product">4. Soldout
																product</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041439853"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$19.00</span></span>

															<span class="main-price discounted"><span
																class=money>$29.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683843883117">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/3-variable-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-6_7428aaf1-288d-48e3-9f0c-c2601117cc75_100x100_crop_center.jpg?v=1559117256">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/3-variable-product">3. Variable
																product</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041079405"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$70.00</span></span>

															<span class="main-price discounted"><span
																class=money>$85.00</span></span>

														</p>

													</div>
												</div>
											</div>

											<div class="single-widget-product-wrapper 15683842998381">
												<div class="single-widget-product">
													<div class="single-widget-product__image">
														<a href="/products/2-new-badge-product"> <img
															class="img-fluid popup_cart_image" alt=""
															src="//cdn.shopify.com/s/files/1/0039/3740/2989/products/product-5_3c1d8542-26bd-409d-a5ca-be0e495725c1_100x100_crop_center.jpg?v=1559117249">
														</a>
													</div>

													<div class="single-widget-product__content">

														<p class="product-title popup_cart_title">
															<a href="/products/2-new-badge-product">2. New badge
																product</a>
														</p>
														<div class="product_ratting rating">
															<span class="shopify-product-reviews-badge"
																data-id="1675041013869"></span>
														</div>
														<p class="product-price">
															<span class="discounted-price"><span class=money>$80.00</span></span>

														</p>

													</div>
												</div>
											</div>


											<!--=======  End of single  widget product  =======-->
										</div>
									</div>
									<!--=======  End of single widget product slider  =======-->

								</div>

							</div>
						</div>
					</div>
					<!--====================  End of product widget slider area  ====================-->
				</div>
				<div id="shopify-section-1548928515243" class="shopify-section">
					<!--====================  blog post slider area ====================-->
					<div class="blog-post-slider-area mb-40" id="section-1548928515243">
						<div class="container">

							<div class="row">
								<div class="col-lg-12">
									<!--=======  section title  =======-->
									<div class="section-title mb-20">
										<h2>Latest Blogs</h2>
									</div>
									<!--=======  End of section title  =======-->
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<!--=======  blog post slider wrapper  =======-->

									<div class="blog-post-slider-wrapper">
										<div class="ht-slick-slider"
											data-slick-setting='{
                                   "slidesToShow": 3,
                                   "slidesToScroll": 1,
                                   "dots": false,
                                   "autoplay": false,
                                   "autoplaySpeed": 5000,
                                   "speed": 1000,
                                   "arrows": true,
                                   "prevArrow": {"buttonClass": "slick-prev", "iconClass": "ion-ios-arrow-left" },
                                   "nextArrow": {"buttonClass": "slick-next", "iconClass": "ion-ios-arrow-right" }
                                   }'
											data-slick-responsive='[
                                      {"breakpoint":1501, "settings": {"slidesToShow": 3} },
                                      {"breakpoint":1199, "settings": {"slidesToShow": 3} },
                                      {"breakpoint":991, "settings": {"slidesToShow": 2} },
                                      {"breakpoint":767, "settings": {"slidesToShow": 2, "arrows": false} },
                                      {"breakpoint":575, "settings": {"slidesToShow": 1, "arrows": false} },
                                      {"breakpoint":479, "settings": {"slidesToShow": 1, "arrows": false} }
                                      ]'>


											<!-- product-item start -->




											<!--=======  single blog post  =======-->
											<div class="slider-single-post">


												<div class="slider-single-post__image">
													<a class="article__featured-image"
														href="/blogs/news/best-fashion-smartwatch-collection">
														<img
														src="//cdn.shopify.com/s/files/1/0039/3740/2989/articles/1_536x345_crop_center.jpg?v=1559111690"
														alt="Best Fashion Smartwatch Collection" />
													</a>
												</div>


												<div class="slider-single-post__content">
													<h3 class="post-title">
														<a href="/blogs/news/best-fashion-smartwatch-collection">Best
															Fashion Smartwatch Collection</a>
													</h3>
													<div class="post-meta">
														<p class="author-name">
															by <span>Timekeeper demo Admin</span>
														</p>
														<p class="post-date">28 Jun, 21</p>
													</div>
												</div>
											</div>
											<!--=======  End of single blog post  =======-->



											<!--=======  single blog post  =======-->
											<div class="slider-single-post">


												<div class="slider-single-post__image">
													<a class="article__featured-image"
														href="/blogs/news/nice-leather-watch-collection"> <img
														src="//cdn.shopify.com/s/files/1/0039/3740/2989/articles/5_536x345_crop_center.JPG?v=1559116786"
														alt="Nice Leather Watch Collection" />
													</a>
												</div>


												<div class="slider-single-post__content">
													<h3 class="post-title">
														<a href="/blogs/news/nice-leather-watch-collection">Nice
															Leather Watch Collection</a>
													</h3>
													<div class="post-meta">
														<p class="author-name">
															by <span>Timekeeper demo Admin</span>
														</p>
														<p class="post-date">28 Jun, 21</p>
													</div>
												</div>
											</div>
											<!--=======  End of single blog post  =======-->



											<!--=======  single blog post  =======-->
											<div class="slider-single-post">


												<div class="slider-single-post__image">
													<a class="article__featured-image"
														href="/blogs/news/vitae-alias-ullam-voluptatibus-asperiores">
														<img
														src="//cdn.shopify.com/s/files/1/0039/3740/2989/articles/3_536x345_crop_center.jpg?v=1559116680"
														alt="Vitae alias ullam voluptatibus asperiores." />
													</a>
												</div>


												<div class="slider-single-post__content">
													<h3 class="post-title">
														<a
															href="/blogs/news/vitae-alias-ullam-voluptatibus-asperiores">Vitae
															alias ullam voluptatibus asperiores.</a>
													</h3>
													<div class="post-meta">
														<p class="author-name">
															by <span>Timekeeper demo Admin</span>
														</p>
														<p class="post-date">28 Jun, 21</p>
													</div>
												</div>
											</div>
											<!--=======  End of single blog post  =======-->



											<!--=======  single blog post  =======-->
											<div class="slider-single-post">


												<div class="slider-single-post__image">
													<a class="article__featured-image"
														href="/blogs/news/blackshine-smartwatch-collection"> <img
														src="//cdn.shopify.com/s/files/1/0039/3740/2989/articles/2_536x345_crop_center.jpg?v=1559111808"
														alt="Blackshine Smartwatch Collection" />
													</a>
												</div>


												<div class="slider-single-post__content">
													<h3 class="post-title">
														<a href="/blogs/news/blackshine-smartwatch-collection">Blackshine
															Smartwatch Collection</a>
													</h3>
													<div class="post-meta">
														<p class="author-name">
															by <span>Timekeeper demo Admin</span>
														</p>
														<p class="post-date">28 Jun, 21</p>
													</div>
												</div>
											</div>
											<!--=======  End of single blog post  =======-->



											<!--=======  single blog post  =======-->
											<div class="slider-single-post">


												<div class="slider-single-post__image">
													<a class="article__featured-image"
														href="/blogs/news/vitae-alias-ullam-voluptatibus-asperiores-1">
														<img
														src="//cdn.shopify.com/s/files/1/0039/3740/2989/articles/6_536x345_crop_center.jpg?v=1559116959"
														alt="Vitae alias ullam voluptatibus asperiores." />
													</a>
												</div>


												<div class="slider-single-post__content">
													<h3 class="post-title">
														<a
															href="/blogs/news/vitae-alias-ullam-voluptatibus-asperiores-1">Vitae
															alias ullam voluptatibus asperiores.</a>
													</h3>
													<div class="post-meta">
														<p class="author-name">
															by <span>Timekeeper demo Admin</span>
														</p>
														<p class="post-date">28 Jun, 21</p>
													</div>
												</div>
											</div>
											<!--=======  End of single blog post  =======-->



											<!--=======  single blog post  =======-->
											<div class="slider-single-post">


												<div class="slider-single-post__image">
													<a class="article__featured-image"
														href="/blogs/news/bounted-tropical-plant-care-how-to-make">
														<img
														src="//cdn.shopify.com/s/files/1/0039/3740/2989/articles/8_536x345_crop_center.jpg?v=1559117030"
														alt="Bounted Tropical Plant Care: How to Make" />
													</a>
												</div>


												<div class="slider-single-post__content">
													<h3 class="post-title">
														<a
															href="/blogs/news/bounted-tropical-plant-care-how-to-make">Bounted
															Tropical Plant Care: How to Make</a>
													</h3>
													<div class="post-meta">
														<p class="author-name">
															by <span>Timekeeper demo Admin</span>
														</p>
														<p class="post-date">28 Jun, 21</p>
													</div>
												</div>
											</div>
											<!--=======  End of single blog post  =======-->


										</div>
									</div>

									<!--=======  End of blog post slider wrapper  =======-->
								</div>
							</div>
						</div>
					</div>
					<!--====================  End of blog post slider area  ====================-->
				</div>
				<!-- END content_for_index -->
			</main>

			<div id="shopify-section-footer" class="shopify-section">


				<!--=================== Start of footer area ====================-->
				<div class="footer-area">
					<div class="container">

						<div class="row mb-40">
							<div class="col-lg-12">
								<div class="footer-content-wrapper border-top pt-40">
									<div class="row">





										<div class="col-lg-4 col-md-6">
											<!--=======  single footer widget  =======-->

											<div class="single-footer-widget">
												<div class="footer-logo mb-25">
													<img
														src="//cdn.shopify.com/s/files/1/0039/3740/2989/files/Timekeeper-b.png?v=1559116234
                            "
														alt="Footer Logo">
												</div>


												<div class="footer-text-block mb-10">
													<h5 class="footer-text-block__title">Address</h5>
													<p class="footer-text-block__content">4710-4890
														Breckinridge St, UK Burlington, VT 05401</p>
												</div>



												<div class="footer-text-block mb-10">
													<h5 class="footer-text-block__title">Need Help?</h5>
													<p class="footer-text-block__content">Call:
														1-800-345-6789</p>
												</div>





												<div class="footer-social-icon-block">

													<ul>


														<li><a href="" class="facebook-icon" title="Facebook"
															target="_blank"><i class="ion-social-facebook"></i></a></li>



														<li><a href="" class="twitter-icon" title="Twitter"
															target="_blank"><i class="ion-social-twitter"></i></a></li>



														<li><a href="" class="googleplus-icon"
															title="Google Plus" target="_blank"><i
																class="ion-social-googleplus"></i></a></li>



														<li><a href="" class="youtube-icon" title="Youtube"
															target="_blank"><i class="ion-social-youtube"></i></a></li>



														<li><a href="" class="bg-instagram" title="Instagram"
															target="_blank"><i
																class="ion-social-instagram-outline"></i></a></li>

													</ul>

												</div>



											</div>

											<!--=======  End of single footer widget  =======-->
										</div>





										<div class="col-lg-2 col-md-6 mt-md-30 mt-sm-30">
											<div class="single-footer-widget">


												<h5 class="montserrat-footer-widget-title">About Menu</h5>


												<div class="footer-navigation">
													<nav>
														<ul>




															<li><a href="#">Home</a></li>

															<li><a href="#">Shop New</a></li>

															<li><a href="#">Product Sale</a></li>

															<li><a href="#">Blog</a></li>

															<li><a href="#">Pages</a></li>

														</ul>
													</nav>
												</div>
												<!-- end of widget-content -->

											</div>
											<!-- end of widget-container -->
										</div>







										<div class="col-lg-2 col-md-6 mt-md-30 mt-sm-30">
											<div class="single-footer-widget">


												<h5 class="montserrat-footer-widget-title">Usefull
													Links</h5>


												<div class="footer-navigation">
													<nav>
														<ul>




															<li><a href="#">Privacy Policy</a></li>

															<li><a href="#">Shop New</a></li>

															<li><a href="#">Returns Policy</a></li>

															<li><a href="#">Promotions</a></li>

															<li><a href="#">Faqs</a></li>

														</ul>
													</nav>
												</div>
												<!-- end of widget-content -->

											</div>
											<!-- end of widget-container -->
										</div>






										<div class="col-lg-4 col-md-6 mt-sm-30">
											<!--=======  single footer widget  =======-->

											<div class="single-footer-widget">


												<h5 class="montserrat-footer-widget-title mb-25">Latest
													Blogs</h5>


												<div class="footer-blog-post-slider-wrapper">
													<div class="ht-slick-slider"
														data-slick-setting='{
                                                "slidesToShow": 1,
                                                "slidesToScroll": 1,
                                                "dots": false,
                                                "autoplay": false,
                                                "autoplaySpeed": 5000,
                                                "speed": 1000,
                                                "arrows": false,
                                                "rows": 2
                                            }'
														data-slick-responsive='[
                                                {"breakpoint":1501, "settings": {"slidesToShow": 1} },
                                                {"breakpoint":1199, "settings": {"slidesToShow": 1} },
                                                {"breakpoint":991, "settings": {"slidesToShow": 1} },
                                                {"breakpoint":767, "settings": {"slidesToShow": 1} },
                                                {"breakpoint":575, "settings": {"slidesToShow": 1} },
                                                {"breakpoint":479, "settings": {"slidesToShow": 1} }
                                            ]'>


														<!--=======  single footer blog post  =======-->
														<div class="footer-blog-post-wrapper">
															<div class="single-footer-blog-post">


																<div class="single-footer-blog-post__image">
																	<a
																		href="/blogs/news/best-fashion-smartwatch-collection">
																		<img
																		src="//cdn.shopify.com/s/files/1/0039/3740/2989/articles/1_100x80_crop_center.jpg?v=1559111690"
																		class="img-fluid" alt="">
																	</a>
																</div>


																<div class="single-footer-blog-post__content">
																	<h5 class="blog-post-title">
																		<a
																			href="/blogs/news/best-fashion-smartwatch-collection">Best
																			Fashion Smartwatch Collection</a>
																	</h5>
																	<div class="blog-post-meta">
																		<p class="author-name">
																			by <span>Timekeeper demo Admin</span>
																		</p>
																		<p class="post-date">28 Jun, 21</p>
																	</div>
																</div>
															</div>
														</div>
														<!--=======  End of single footer blog post  =======-->



														<!--=======  single footer blog post  =======-->
														<div class="footer-blog-post-wrapper">
															<div class="single-footer-blog-post">


																<div class="single-footer-blog-post__image">
																	<a href="/blogs/news/nice-leather-watch-collection">
																		<img
																		src="//cdn.shopify.com/s/files/1/0039/3740/2989/articles/5_100x80_crop_center.JPG?v=1559116786"
																		class="img-fluid" alt="">
																	</a>
																</div>


																<div class="single-footer-blog-post__content">
																	<h5 class="blog-post-title">
																		<a href="/blogs/news/nice-leather-watch-collection">Nice
																			Leather Watch Collection</a>
																	</h5>
																	<div class="blog-post-meta">
																		<p class="author-name">
																			by <span>Timekeeper demo Admin</span>
																		</p>
																		<p class="post-date">28 Jun, 21</p>
																	</div>
																</div>
															</div>
														</div>
														<!--=======  End of single footer blog post  =======-->


													</div>
												</div>
											</div>

											<!--=======  End of single footer widget  =======-->
										</div>




									</div>
								</div>
							</div>
						</div>


						<div class="row">
							<div class="col-lg-12">
								<div class="copyright-text-area">
									<div class="row align-items-center">
										<div class="col-md-6 text-center text-md-left mb-sm-15">
											<div class="copyright-text">
												<p>
													Copyright &copy; <a href="#" title="#">Timekeeper</a>. All
													Right Reserved.
												</p>
											</div>
										</div>
										<div class="col-md-6 text-center text-md-right">


											<div class="payment-logo">

												<a href=""> <img
													src="//cdn.shopify.com/s/files/1/0039/3740/2989/files/payment.png?v=1559366063"
													class="img-fluid" alt="payment images">
												</a>

											</div>


										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--=================== End of footer area  ====================-->

			</div>
			<div id="shopify-section-recommended" class="shopify-section"></div>
			<!-- Necessary JS -->
			<script
				src="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/fastclick.min.js?v=29723458539410922371559033783"></script>
			<script
				src="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/timber.js?v=132601391146540697821559033806"></script>


			<script>
  
</script>
			<!-- modalAddToCart -->
			<div class="modal fade ajax-popup" id="modalAddToCart" tabindex="-1"
				role="dialog" aria-hidden="true">
				<div class="modal-dialog white-modal modal-md">
					<div class="modal-content">
						<div class="modal-body">
							<div class="modal-content-text">
								<div class="popup-image">
									<img class="popupimage" src="">
								</div>
								<div class="popup-content">
									<h6 class="productmsg"></h6>
									<p class="success-message">
										<i class="ion-android-checkbox-outline"></i>Added to cart
										successfully!
									</p>
									<div class="modal-button">
										<a href="/cart" class="theme-default-button">View Cart</a> <a
											href="/checkout" class="theme-default-button">Checkout</a>
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
			<!-- modalAddToCart -->

			<!-- modalAddToCart Error -->
			<div class="modal fade ajax-popup error-ajax-popup"
				id="modalAddToCartError" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog white-modal modal-md">
					<div class="modal-content ">
						<div class="modal-body">
							<div class="modal-content-text">
								<p class="error_message"></p>
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


			<!-- Some styles to get you started. -->
			<div class="modal fade productModal" id="quickViewModal"
				tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-body">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-12">
									<div class="qwick-view-left">
										<div class="quick-view-learg-img">
											<div class="quick-view-tab-content tab-content">
												<div class="product-main-image__item">
													<div class="img_box_1"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-12">
									<div class="qwick-view-right">
										<div class="qwick-view-content">
											<h1 class="product_title">FROM_JS</h1>
											<div class="product-price product-info__price price-part">
												<span class="main">jsprice</span> <span
													class="price-box__new">jsprice</span>
											</div>
											<div class="product-rating spr-badge-caption-none">
												<div class="quick-view-rating rating">FROM_JS</div>
											</div>

											<div class="short-description product-des">FROM_JS</div>

											<form id="add-item-qv" action="/cart/add" method="post">
												<div class="quick-view-select variants select-option-part"></div>
												<div class="quickview-plus-minus">
													<div class="cart-plus-minus">
														<input type="text" value="01" name="quantity"
															class="cart-plus-minus-box">
													</div>
													<div class="quickview-btn-cart">
														<button type="submit"
															class="addtocartqv theme-default-button">Add to
															cart</button>
													</div>
												</div>
												<script>
                    jQuery('.addtocartqv').click(function(e) {
                      e.preventDefault();
                      Shopify.addItemFromFormStart('add-item-qv', jQuery(this).attr('id'));
                    });
                  </script>
											</form>
										</div>
									</div>
								</div>
							</div>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span class="close-icon" aria-hidden="true"><i
									class="ion-android-close"></i></span>
							</button>
						</div>
					</div>
				</div>
			</div>





			<div class="quickViewModal_info" style="display: none;">
				<div class="button">Add to cart</div>
				<div class="button_added">Added</div>
				<div class="button_error">Limit Products</div>
				<div class="button_wait">Wait..</div>
			</div>


			<!-- END QUICKVIEW PRODUCT -->

			<!-- Recently Viewed Products -->
			<script src="//cdn.shopify.com/s/javascripts/currencies.js"></script>
			<script
				src="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/jquery.currencies.min.js?v=35452912321688254271559033788"></script>


			<div class="loading-modal compare_modal">translation missing:
				en.general.search.loading</div>
			<div class="ajax-success-compare-modal compare_modal"
				id="moda-compare" tabindex="-1" role="dialog" style="display: none">
				<div class="overlay"></div>
				<div class="modal-dialog modal-lg">
					<div class="modal-content content" id="compare-modal">
						<div class="modal-header">
							<div class="modal-close">
								<span class="compare-modal-close">x</span>
							</div>
							<h4 class="modal-title">Compare Product</h4>
						</div>
						<div class="modal-body">
							<div class="table-wrapper">
								<table class="table table-hover table-responsive">
									<thead>
										<tr class="th-compare">
											<th></th>
										</tr>
									</thead>
									<tbody id="table-compare">
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<!-- Your main.js file upload this file -->
		<script
			src="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/theme.js?v=134456468769000149361559123527"></script>
</body>
</html>


