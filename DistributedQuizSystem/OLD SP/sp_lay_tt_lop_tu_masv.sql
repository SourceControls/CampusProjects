create proc [dbo].[sp_lay_tt_lop_tu_masv] @masv char(10)
as
begin
	select MaLop, TENLOP
	from LOP
	where MALOP = (select MALOP from Sinhvien where MASV = @masv)
end