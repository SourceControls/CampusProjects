USE [TN_CSDLPT]
GO
/****** Object:  StoredProcedure [dbo].[sp_dang_ky]    Script Date: 4/25/2022 17:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_dang_ky] @login_name nvarchar(20), @password nvarchar(20), @user_name nvarchar(20), @role nvarchar(20)
as
begin
	declare @code int, @role_code int
	exec @code = sp_addlogin @login_name, @password;
	
	if @code = 0
		begin
			
			declare @sql nvarchar(100)
			select @sql = 'create user '+@user_name+' for login ' + @login_name 
			exec @code = sp_executesql @sql

			exec sp_addrolemember @role, @user_name
			if @role = 'CoSo' OR @role='Truong'
				exec @role_code = sp_addsrvrolemember @login_name, 'securityadmin'
				if @code <> 0 OR @role_code <> 0
					begin
						exec sp_droplogin @login_name
						exec sp_dropuser @user_name
						raiserror('Có lỗi xảy ra, vui lòng thử lại!', 16, 1)
					end
		end
	else
		begin
			raiserror('Tên đăng nhập đã tồn tại', 16, 1)
		end
end
