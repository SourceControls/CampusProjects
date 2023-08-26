USE [THI TN]
GO
/****** Object:  StoredProcedure [dbo].[sp_get_ten_nhom_tu_login_name]    Script Date: 4/1/2022 22:45:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_get_ten_nhom_tu_login_name] @login_name nvarchar(20), @group_name nvarchar(20) out, @user_name nvarchar(20) out
as
begin
	-- Get ma gv
	select @user_name = name from sys.sysusers where sid=suser_sid(@login_name)
	select @group_name=name from sys.sysusers 
	where uid=(select groupuid from sys.sysmembers 
		where memberuid=(select uid from sys.sysusers where name=@user_name))
end
--test github