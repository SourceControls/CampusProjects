create proc sp_danh_sach_dk_thi @tungay datetime, @denngay datetime
as
begin
	select TenLop, TenMH, GV = Ho + ' ' + Ten, SoCauThi, NgayThi=format(NgayThi,'dd/MM/yyyy'),
		DaThi=CASE WHEN NgayThi < getdate() THEN 'X' ELSE '' END
	from (
		select Magv, MaLop, Mamh, Ngaythi, SoCauThi
		from GiaoVien_DangKy
		where Ngaythi between @tungay and @denngay
	) GV_DK inner join MonHoc MH on MH.Mamh = GV_DK.Mamh
	inner join GiaoVien GV on GV.Magv = GV_DK.Magv
	inner join Lop L on L.MaLop = GV_DK.MaLop
	order by NgayThi
end