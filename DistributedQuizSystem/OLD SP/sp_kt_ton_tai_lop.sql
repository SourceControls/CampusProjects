alter proc [dbo].[sp_kt_ton_tai_lop] @malop nchar(15)
as
begin
	if exists (select MALOP from LOP where MALOP=@malop) OR
	exists (select MALOP from LINK1.TN_CSDLPT.dbo.LOP where MALOP = @malop)
		begin
			raiserror('Lớp đã tồn tại',16,1)
			return 1;
		end
	else 
		return 0;
end