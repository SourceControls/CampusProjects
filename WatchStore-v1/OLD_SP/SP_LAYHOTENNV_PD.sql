USE BANDONGHO_TTCS
GO
ALTER PROC SP_LAYHOTENNV_PD
@MAPHIEUDAT int
AS
SELECT CONCAT(n.HO, ' ', n.TEN) HOTENNV
FROM NHANVIEN n, PHIEUDAT p
WHERE n.MANV = p.MANV AND p.MAPHIEUDAT=@MAPHIEUDAT