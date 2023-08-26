<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<main>
	<div class="customer-page theme-default-margin">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2">
					<div class="login">
						<div id="CustomerLoginForm">
							<form name='f'
								action="${pageContext.request.contextPath}/j_spring_security_check"
								method='POST' id="myForm">
								<div class="login-form-container">
									<div class="login-text">
										<h2>Login</h2>
										<p>Please login using account detail bellow.</p>
									</div>


									<!-- /login?error=true -->
									<c:if test="${param.error == 'true'}">
										<div style="color: red; margin: 10px 0px;">
											Login Failed!!!<br /> Reason :
											${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}

										</div>
									</c:if>

									<div class="login-form">
										<div style="color: red;">${message}</div>
										<input type="text" name="username" id="CustomerEmail"
											class="input-full" placeholder="Username" autocorrect="off"
											autocapitalize="off" autofocus=""> <input
											type="password" value="" name="password"
											id="CustomerPassword" class="input-full"
											placeholder="Password">

										<div class="login-toggle-btn">
											<div class="form-action-button">
												<button type="submit" class="theme-default-button">Sign
													In</button>
												<a href="#recover" id="RecoverPassword">Forgot your
													password?</a>

											</div>
											<div class="account-optional-action">
												<a href="/DongHoWeb/register.htm" id="customer_register_link">Create
													account</a>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
						<div id="RecoverPasswordForm" style="display: none;">
							<form method="post" action="/account/recover"
								accept-charset="UTF-8">
								<input type="hidden" name="form_type"
									value="recover_customer_password"><input type="hidden"
									name="utf8" value="✓">


								<div class="login-form-container">
									<div class="login-text">
										<h2>Reset your password</h2>
										<p>We will send you an email to reset your password.</p>
									</div>
									<div class="login-form">
										<input type="email" value="" name="email" id="RecoverEmail"
											class="input-full" placeholder="Email" autocorrect="off"
											autocapitalize="off">
										<div class="login-toggle-btn">
											<div class="form-action-button">
												<button type="submit" class="theme-default-button">Submit</button>
												<a href="#" id="HideRecoverPasswordLink">Cancel</a>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</main>