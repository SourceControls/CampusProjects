ALTER proc [dbo].[sp_kt_ton_tai_sinh_vien] @masv char(8)
as
begin
	declare @mess nvarchar(50)
	if exists (select masv from SINHVIEN where masv=@masv) OR
	exists (select masv from LINK1.TN_CSDLPT.dbo.SINHVIEN where masv=@masv)
	begin
	set @mess = concat(N'Sinh viên có mã ',@masv,N' đã tồn tại!')
		raiserror(@mess, 16,1)
		return 1;
	end
	return 0;
end