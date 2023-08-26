-- LINK1 là LINK site tra cứu
create proc [dbo].[sp_tim_khoa] @masv char(10)
as
begin
	if exists (select masv from sinhvien where masv=@masv)
		select masv, hoten=ho+' '+ten from sinhvien where masv=@masv
	else if exists (select masv from LINK1.[THI TN].dbo.sinhvien where masv=@masv)
		select masv, hoten=ho+' '+ten from LINK1.[THI TN].dbo.sinhvien where masv=@masv
	else
		begin
			raiserror('Sinh viên không tồn tại!', 16, 1)
			return 0;
		end
	return 1;
end