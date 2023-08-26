USE [THI TN]
GO
/****** Object:  StoredProcedure [dbo].[sp_dang_ky]    Script Date: 4/1/2022 21:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_dang_ky] @login_name nvarchar(20), @password nvarchar(20), @user_name nvarchar(20), @role nvarchar(20)
as
begin
	declare @code int, @role_code int
	exec @code = sp_addLogin @login_name, @password;
	
	if @code = 0
		begin
			exec @code = sp_addUser @login_name, @user_name, @role
			if @role = 'CoSo' OR @role='Truong'
				exec @role_code = sp_addsrvrolemember @login_name, 'sysadmin'
				if @code = 1 OR @role_code = 1
					begin
						exec sp_dropLogin @login_name
						exec sp_dropuser @user_name
						raiserror('Có lỗi xảy ra, vui lòng thử lại!', 16, 1)
					end
		end
	else
		begin
			raiserror('Tên đăng nhập đã tồn tại', 16, 1)
		end
end
