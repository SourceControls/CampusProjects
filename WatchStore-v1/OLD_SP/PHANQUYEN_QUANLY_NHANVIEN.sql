﻿USE BANDONGHO_TTCS

CREATE ROLE QUANLY
ALTER ROLE DB_OWNER ADD MEMBER QUANLY
CREATE ROLE NHANVIEN
ALTER ROLE DB_DATAREADER ADD MEMBER NHANVIEN
ALTER ROLE DB_DATAWRITER ADD MEMBER NHANVIEN
--
INSERT [dbo].[NHANVIEN] ([MANV], [HO], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'TTCSNV01  ', N'NGUYỄN VĂN QUẢN', N'LÝ', 0, CAST(N'1990-01-01' AS Date), N'Tp.Thủ Đức', N'0973343544', N'quanly01@gmai.com')
INSERT [dbo].[NHANVIEN] ([MANV], [HO], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'TTCSNV02  ', N'PHẠM THỊ', N'NHÂN VIÊN', 1, CAST(N'2001-01-01' AS Date), N'Tp.Thủ Đức', N'0973343999', N'nhanvien02@gmai.com')
EXEC SP_CAP_TAI_KHOAN 'TTCSNV01'
EXEC SP_CAP_TAI_KHOAN 'TTCSNV02'
EXEC SP_CAP_HOAC_THU_HOI_QUYEN_QUAN_LY 'TTCSNV01'
--
GO