<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@include file="/WEB-INF/views/include/header.jsp"%>
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



								<div  class="col-lg-4 offset-lg-4 col-md-6">
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
													<li class=""><a href="/DongHoWeb/home.htm"><s:message code="Home"/></a>
														</li>
													<li class=""><a><s:message code="Products"/></a>
													</li>
													<li class=""><a><s:message code="Pages"/></a>
													</li>
													<li><a href="/DongHoWeb/ShowHistory.htm"><s:message code="History"/></a></li>
													<li class="menu-item-has-children"><a><s:message code="Languages"/></a>
														<ul class="common-class">
															<li class="sub-drop-add-class"><a
																href="/DongHoWeb/cartDetail/${giohang.getId() }.htm?language=en">ENG</a></li>
															<li class="sub-drop-add-class"><a
																href="/DongHoWeb/cartDetail/${giohang.getId() }.htm?language=vi">VN</a>
														</ul>
													</li>
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
										<a href="/DongHoWeb/cartDetail/.htm" id="small-cart-trigger"
											class="small-cart-trigger"> <i class="icon-shopping-cart"></i>
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
<c:choose>
	<c:when test="${listDongHo.size() <= 0}">
		<div style=" margin: 20px auto 20px; box-shadow: 0px 0px 10px 0px #888888; height: 150px; width: 700px;">
		<h1 sytle="text-align: center;">Không có sản phẩm trong giỏ hàng</h1>
		</div>
	</c:when>
	<c:otherwise>
		<c:forEach items="${listDongHo}" var="product">
		<div style=" margin: 20px auto 20px; box-shadow: 0px 0px 10px 0px #888888; height: 150px; width: 900px;">
		<div>
    </div>
    <div style="display: flex; justify-content: space-between;">
    	  <div style="display: flex;">
				<div style="background: url(${product.getDongHo().getHinhAnh()}) center/ cover no-repeat;
           		 width: 200px; height: 150px; margin-right: 20px;"></div>
           		 <div style="margin-top: 20px">
                <span style="margin-bottom: 10px; display: block;"><a href="/DongHoWeb/detail/index/${product.getDongHo().getMaDH()}.htm">${product.getDongHo().getTenDongHo() }</a></span>
                <div class="pro-qty mr-15 mb-lg-20 mb-md-20 mb-sm-20 d-none">
											<input type="text" name="idCart" value="${product.getId()}">
										</div>
                <%--<span style="margin-bottom: 10px; display: block;">${product }</span> --%>
            </div>
        </div>
        <div style="position: relative;">
            <span style="position: absolute;
                         top: 60px;
                         width: 114px;
                         right: 20px;">
                         <fmt:formatNumber value="${product.getDongHo().getGia() * product.getSoLuong() }"
																			type="currency" currencySymbol="VND"
																			maxFractionDigits="0" />
            </span>
										 <div class="pro-qty mr-15 mb-lg-20 mb-md-20 mb-sm-20 d-none">
											<input type="text" name="id" value="${product.getDongHo().getMaDH()}">
										</div>
<form action="/DongHoWeb/cartDetail/update/${product.getId()}.htm">
								<div style="top: 60px;
    right: 566px;" class="pro-qty mr-15 mb-lg-20 mb-md-20 mb-sm-20">
    	<input type="text" value="${product.getSoLuong() }" name="quantity${product.getDongHo().getMaDH() }"class="">
				</div>
				<a  href="/DongHoWeb/cartDetail/delete/${product.getId()}.htm" style="color: white;
    position: absolute;
    right: 15px;
    top: 58%;
    height: 50px;
    width: 150px;" class="theme-button product-cart-button1">
											<span> <span class="cart-title"><s:message code="Delete"/></span>
											</span>
										</a>
										<button type="submit" style="color: white;
    position: absolute;
    right: 374px;
    top: 58%;
    height: 50px;
    width: 150px;" class="theme-button product-cart-button1">
											<span> <span class="cart-title"><s:message code="Update"/></span>
											</span>							</button>
	
	<a  href="/DongHoWeb/order/${product.getId()}.htm" style="color: white;
    position: absolute;
    right: 190px;
    top: 58%;
    height: 50px;
    width: 150px;" class="theme-button product-cart-button1">
											<span> <span class="cart-title"><s:message code="Order"/></span>
											</span>
										</a>
        </form>	</div>
    </div>
</div>
</c:forEach>
	</c:otherwise>
</c:choose>
<%@include file="/WEB-INF/views/include/footer.jsp"%>
