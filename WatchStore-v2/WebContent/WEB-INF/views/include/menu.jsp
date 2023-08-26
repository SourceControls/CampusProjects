<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
													<li class="menu-item-has-children"><a href="/">Home</a>
														<ul class="common-class">
															<li class="sub-drop-add-class"><a
																href="https://timekeeper-demo.myshopify.com/?preview_theme_id=37164154989">Home-1</a></li>
															<li class="sub-drop-add-class"><a
																href="https://timekeeper-demo.myshopify.com/?preview_theme_id=37342511213">Home-2</a></li>
														</ul></li>
													<li class="menu-item-has-children"><a href="#">Products</a>
														<ul class="common-class">
															<li class="sub-drop-add-class"><a
																href="/products/5-simple-product">Simple Product </a></li>
															<li class="sub-drop-add-class"><a
																href="/products/7-sample-affiliate-product">Affiliate
																	Product </a></li>
															<li class="sub-drop-add-class"><a
																href="/products/3-variable-product">Variable Product
															</a></li>
															<li class="sub-drop-add-class"><a
																href="/products/4-soldout-product">Soldout Product </a></li>
															<li class="sub-drop-add-class"><a
																href="/products/8-countdown-product">Countdown
																	Product </a></li>
															<li class="sub-drop-add-class"><a
																href="/products/smart-watch-xiaomi-huami-amazfit-bip-smartwatch-heart-rate-monitor-45-days-battery-life-and-gps-gloness-for-android-ios-system">Dropshipping
																	Product </a></li>
														</ul></li>
													<li class="menu-item-has-children"><a href="#">Pages</a>
														<ul class="common-class">
															<li class="sub-drop-add-class"><a
																href="/pages/about-us">About Us</a></li>
															<li class="sub-drop-add-class"><a
																href="/pages/contact-us">Contact Us</a></li>
															<li class="sub-drop-add-class"><a href="/pages/faq">Faq</a></li>
														</ul></li>
													<li class="menu-item-has-children"><a
														href="/collections/all">Shop</a>
														<ul class="common-class">
															<li class="mega-menu-add-class"><a href="#"
																class="mega-title">Shop Grid </a>
																<ul>
																	<li><a
																		href="/products/1-new-and-sale-badge-product">Shirt
																	</a></li>
																	<li><a
																		href="/products/10-this-is-the-large-title-for-testing-large-title-and-there-is-an-image-for-testing">Pant</a></li>
																	<li><a href="/products/11-product-with-video">T-Shirt
																	</a></li>
																	<li><a
																		href="/products/12-unique-content-for-each-product-on-the-product-tab">Shoe</a></li>
																</ul></li>
															<li class="mega-menu-add-class"><a href="#"
																class="mega-title">Shop List </a>
																<ul>
																	<li><a href="/products/demo-product-title-1">Sharee
																	</a></li>
																	<li><a href="/products/7-sample-affiliate-product">Blowse
																	</a></li>
																	<li><a
																		href="/products/6-variable-with-soldout-product">Tops
																	</a></li>
																	<li><a href="/products/7-sample-affiliate-product">Plazu
																	</a></li>
																</ul></li>
															<li class="mega-menu-add-class"><a href="#"
																class="mega-title">Single Product </a>
																<ul>
																	<li><a href="/products/product-title-here-2">Kids
																			Shoe </a></li>
																	<li><a href="/products/8-countdown-product">Kids
																			Pant's </a></li>
																	<li><a href="/products/product-title-here-1">Kids
																			Watch </a></li>
																	<li><a href="/products/product-title-here-2">Kids
																			Shirt </a></li>
																</ul></li>
															<li class="mega-menu-add-class"><a href="#"
																class="mega-title">Bag Item </a>
																<ul>
																	<li><a
																		href="/products/12-unique-content-for-each-product-on-the-product-tab">Minimal
																			Bag </a></li>
																	<li><a
																		href="/products/9-without-shortcode-product">Travel
																			Bag </a></li>
																	<li><a href="/products/5-simple-product">Hand
																			Bag </a></li>
																	<li><a href="/products/demo-product-title-1">Camera
																			Bag </a></li>
																</ul></li>
															<li class="megamenu-banner d-none d-lg-block mt-30 w-100">
																<a class="mb-0" href="/collections/hot"> <img
																	src="//cdn.shopify.com/s/files/1/0039/3740/2989/collections/img-bottom-menu.png?v=1559538936"
																	alt="Mega menu Banner" class="img-fluid">
															</a>
															</li>
														</ul></li>
													<li><a href="/blogs/news">Blog</a></li>
													<li><a href="/pages/contact-us">Contact</a></li>
												</ul>
											</nav>


											<script>
												$('.mega-menu-add-class')
														.parent('ul')
														.addClass(
																'mega-menu four-column');
												$('.mega-menu-add-class')
														.parents(
																'.menu-item-has-children')
														.addClass('mega_static');
												$('.sub-drop-add-class')
														.parents(
																'.common-class')
														.addClass('sub-menu');
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
										<a href="javascript:void(0)" id="small-cart-trigger"
											class="small-cart-trigger"> <i class="icon-shopping-cart"></i>
											<span class="cart-counter bigcounter">0</span>
										</a>

										<!--=======  small cart  =======-->



										<div class="small-cart deactive-dropdown-menu">

											<div class="cart-empty-title" style="display: block;">
												<h3>Your cart is currently empty.</h3>
											</div>

											<div
												class="small-cart-item-wrapper single-product-cart single-cart-item-loop"
												style="display: none;"></div>

											<div class="cart-calculation-table single-product-cart"
												style="display: none;">
												<table class="table mb-25">

													<tbody>

														<tr>
															<td class="text-left">Sub Total :</td>
															<td class="text-right shopping-cart__total"><span
																class=money>$0.00</span></td>
														</tr>

														<tr>
															<td class="text-left">Total :</td>
															<td class="text-right shopping-cart__total"><span
																class=money>$0.00</span></td>
														</tr>

													</tbody>

												</table>

												<div class="cart-buttons">
													<a href="/cart" class="theme-button">View Cart</a> <a
														class="theme-button" href="/checkout">Checkout</a>

												</div>

											</div>

										</div>
										<!--=======  End of small cart  =======-->
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