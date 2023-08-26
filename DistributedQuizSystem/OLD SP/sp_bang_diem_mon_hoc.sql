
CREATE proc [dbo].[sp_bang_diem_mon_hoc] @malop nchar(15), @mamh char(5), @lan int
as
begin
	
select BD.masv, ho, ten, diem, diem_chu
from (
		select masv, ho, ten
		from Sinhvien
		where malop = @malop
	) SV inner join
	(
		select diem, masv, 
			diem_chu = case 
				when diem = 1 then N'Một'
				when diem = 2 then N'Hai'
				when diem = 3 then N'Ba'
				when diem = 4 then N'Bốn'
				when diem = 5 then N'Năm'
				when diem = 6 then N'Sáu'
				when diem = 7 then N'Bảy'
				when diem = 8 then N'Tám'
				when diem = 9 then N'Chín'
				when diem = 10 then  N'Mười'
				else N'Không'
			end
		from Bangdiem
		where lan=@lan AND mamh = @mamh
	) BD on BD.masv = SV.masv

end