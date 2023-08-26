﻿USE BANDONGHO_TTCS
GO
CREATE PROC SP_TKDT_KH
@tungay date, @denngay date
AS
SELECT k.MAKH, k.HOTENKH, SUM(c.DONGIA*c.SOLUONG) DOANHTHU
FROM KHACHHANG k, PHIEUDAT p, CT_PD c
WHERE (p.NGAYDAT BETWEEN @tungay AND @denngay)
AND k.MAKH=p.MAKH AND c.MAPHIEUDAT=p.MAPHIEUDAT
AND p.TRANGTHAI = N'Hoàn tất'
GROUP BY k.MAKH, k.HOTENKH
ORDER BY DOANHTHU DESC
