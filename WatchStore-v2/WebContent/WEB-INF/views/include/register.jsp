<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<main>
	<div class="customer-page theme-default-margin">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2">
					<div class="login">
						<div class="login-form-container">
							<div class="login-text">
								<h2>Create Account</h2>

								<p>Please Register using account detail bellow.</p>

							</div>
							<div class="register-form">
								<form method="post" action="/DongHoWeb/register/confirm.htm">
									<div style="color: red; margin-bottom: 10px">${message}</div>
									<label for="Email" class="hidden-label">Email</label> 
									<input type="text" name="name"
										class="input-full" placeholder="Tên khách hàng"
										autocapitalize="off"> 
									<div class="form-check form-check-inline ml-4">
  										<input class="input-full" type="radio" name="gender" checked id="inlineRadio1" value="Nam" style="width: 20px; height: 20px">
  										<label class="form-check-label" for="inlineRadio1">Nam</label>
									</div>
									<div class="form-check form-check-inline ml-4">
  										<input class="input-full" type="radio" name="gender" id="inlineRadio2" value="Nữ" style="width: 20px; height: 20px">
  										<label class="form-check-label" for="inlineRadio2">Nữ</label>
									</div>
									<input type="text" name="phone" 
										class="input-full" placeholder="Số điện thoại"
										autocapitalize="off"> 
									<input type="text" name="email"
										class="input-full" placeholder="Email"
										autocapitalize="off"> 
									<input type="text" name="username"
										class="input-full" placeholder="Username"
										autocapitalize="off">
									<label for="CreatePassword" class="hidden-label">Password</label> 
									<input type="password"
										name="password"
										class="input-full" placeholder="Password">

									<div class="form-action-button">
										<button type="submit" class="theme-default-button">Create</button>
									</div>
								</form>

								<div class="account-optional-action">
									<a href="https://timekeeper-demo.myshopify.com">Return to
										Store</a>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>