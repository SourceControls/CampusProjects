<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<!--[if IE 9]> <html class="ie9 no-js supports-no-cookies" lang="en"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="no-js supports-no-cookies" lang="en">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/ckeditor/ckeditor.js"></script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
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
				<div class = "form">
			
					<form action="/DongHoWeb/khieunai/send.htm" method = "post" enctype="multipart/form-data"  style ="display:flex;flex-direction:column; padding: 20px 185px;margin-bottom: 50px">
														<h1>Khiếu Nại/Góp Ý</h1>
														<h4 style = "color: red;">${message}</h4>
					 	<p style = "margin: 0; margin-top:20px;">Nhập Email (*)</p> 
						<input type="email" name="email" value="" placeholder="email..." style = "margin-right:auto; width:300px;border: 1px solid;">
					 	<p style = "margin: 0; margin-top:20px;">Nhập nội dung khiếu nại (*)</p> 
						<textarea name="noiDung" id = "editor" value="" placeholder="Nội dung..." style = "margin-right:auto;width:500px;border: 1px solid;" rows="10"></textarea>
						<p style = "margin: 0; margin-top:20px">Chọn hình ảnh (nếu có)</p>
						<input type="file" name="file" value="" style = "margin-right:auto;width:222px;margin-bottom: 30px">
						<div class = "g-recaptcha" name = "recapcha" data-sitekey = "6Lfe-hogAAAAAJQR3YpmTDR5oO0fWEK66aV0QRN-"></div>
						
						<button type="submit" class="theme-button product-cart-button" style = "margin-right:auto;margin-top:30px">
							<span> <span class="cart-title">Hoàn Tất</span>
							</span>
						</button>
						
					</form>
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
		<script >
			CKEDITOR.replace('editor');
		</script>
		
		<script
			src="//cdn.shopify.com/s/files/1/0039/3740/2989/t/2/assets/theme.js?v=134456468769000149361559123527"></script>
</body>
</html>