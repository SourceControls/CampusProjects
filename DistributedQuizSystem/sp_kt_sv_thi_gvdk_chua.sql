create proc sp_kt_sv_thi_gvdk_chua @MaMH char(5),@Lan int, @MaLop nchar(15)
as
begin
	--if exists (select MAMH LAN from BANGDIEM where MAMH = @MaMH and LAN = @Lan)
	if exists (SELECT bdl.MAMH,bdl.LAN,svl.MALOP FROM
												(SELECT bd.MASV,bd.MAMH,bd.LAN  
												FROM BANGDIEM bd
												WHERE (bd.MAMH = @MaMH and bd.LAN = @Lan)) AS bdl
												Inner Join
												(SELECT sv.MASV,sv.MALOP
												FROM  SINHVIEN sv
												WHERE (sv.MALOP = @MaLop)) as svl 
												ON bdl.MASV = svl.MASV)
		begin
			select '1';
		end
	else
		begin
			select '0';
		end
end