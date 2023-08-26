USE [THI TN]
GO
/****** Object:  StoredProcedure [dbo].[sp_get_infor_user]    Script Date: 4/1/2022 21:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_get_infor_user] @login_name nvarchar(20), @password nvarchar(50)
as
begin
	declare @code int
	set @code = 0
	if not exists(select name from sys.syslogins where name = @login_name)
		begin
			if exists(select masv from sinhvien where masv=@login_name AND password=@password)
				select masv, hoten=ho+' '+ten, GROUPNAME='SinhVien' from sinhvien where masv=@login_name
			else
				set @code = 1
		end
	else 
		begin
			declare @group_name nvarchar(20), @user_name nvarchar(20)
			exec sp_get_ten_nhom_tu_login_name @login_name, @group_name out, @user_name out
			if exists(select MAGV from GIAOVIEN where magv = @user_name)
				select MAGV, HOTEN=HO+' '+TEN, GROUPNAME=@group_name from GIAOVIEN where magv=@user_name
			else
				set @code = 1
		end
	if @code = 1
		raiserror('User không tồn tại!', 16, 1)
end