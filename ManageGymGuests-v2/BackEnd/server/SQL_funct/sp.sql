USE [QLPG]
GO
/****** Object:  StoredProcedure [dbo].[SP_CAP_NHAT_DICH_VU]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_CAP_NHAT_DICH_VU]
	@MADV CHAR(10),
	@TENDV NVARCHAR(50),
	@SONGAYSUDUNG INT,
	@GIA MONEY,
	@HIENHANH BIT
AS
BEGIN
	UPDATE DICHVU
	SET TENDV = @TENDV, SONGAYSUDUNG = @SONGAYSUDUNG, GIA = @GIA, HIENHANH = @HIENHANH WHERE MADV = @MADV
	RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CAP_NHAT_KHACH_HANG]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_CAP_NHAT_KHACH_HANG]
	@MAKH CHAR(10),
	@HOTEN NVARCHAR(50),
	@GIOITINH NVARCHAR(5),
	@NAMSINH VARCHAR(5),
	@SDT VARCHAR(10),
	@HINHANH CHAR(200)
AS
BEGIN
	IF @SDT LIKE '%[^0-9]%' OR LEFT(@SDT, 1) != '0' OR LEN(@SDT) < 9
		RETURN 1
	IF @NAMSINH LIKE '%[^0-9]%'
		RETURN 2
	ELSE
		UPDATE KHACHHANG
		SET HOTEN = @HOTEN, GIOITINH = @GIOITINH, NAMSINH = @NAMSINH, SDT = @SDT, HINHANH = @HINHANH
		WHERE MAKH = @MAKH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CAP_NHAT_NHAN_VIEN]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_CAP_NHAT_NHAN_VIEN]
	@MANV CHAR(10),
	@HOTEN NVARCHAR(50),
	@SDT CHAR(10),
	@CHUCVU CHAR(20)
AS
BEGIN
	UPDATE NHANVIEN
	SET HOTEN = @HOTEN, SDT = @SDT, CHUCVU = @CHUCVU
	WHERE MANV = @MANV
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CAP_NHAT_PHIEU_DANG_KY]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_CAP_NHAT_PHIEU_DANG_KY]
	@MAPDK CHAR(10),
	@TILEKM INT,
	@MADV CHAR(10),
	@TONGTIEN MONEY
AS
BEGIN
	UPDATE PHIEUDANGKY
	SET TILEKM = @TILEKM, MADV = @MADV, TONGTIEN = @TONGTIEN
	WHERE MAPDK = @MAPDK
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CAP_NHAT_THUC_PHAM]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_CAP_NHAT_THUC_PHAM]
	@MASP CHAR(10),
	@TENSP NVARCHAR(50),
	@MOTA NVARCHAR(200),
	@HINHANH CHAR(200)
AS
	UPDATE TPBS
	SET TENSP = @TENSP, MOTA = @MOTA, HINHANH = @HINHANH 
	WHERE MASP = @MASP
	RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[SP_CHI_TIET_LICH_SU]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_CHI_TIET_LICH_SU]
	@STT INT
AS
BEGIN
	SELECT KH.MAKH, HOTEN, FORMAT(NGAYTHAMGIA, 'dd/MM/yyyy ') AS NGAYTHAMGIA, HINHANH, PDK.MAPDK, TENDV, FORMAT(NGAYKT, 'dd/MM/yyyy ') AS NGAYKT
	FROM LICHSUVAOPHONG LS, PHIEUDANGKY PDK, KHACHHANG KH, DICHVU DV
	WHERE LS.MAPDK = PDK.MAPDK AND PDK.MADV = DV.MADV
		AND PDK.MAKH = KH.MAKH AND STT = @STT
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DANG_KY_DICH_VU]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_DANG_KY_DICH_VU]
	@TILEKM INT,
	@TONGTIEN MONEY,
	@MAKH CHAR(10),
	@MANVLAP CHAR(10),
	@MADV CHAR(10)
AS
BEGIN
	IF EXISTS (SELECT MAKH
	FROM PHIEUDANGKY
	WHERE MAKH = @MAKH AND (TRANGTHAI = N'Chờ kích hoạt' OR TRANGTHAI = N'Đã kích hoạt'))
		RETURN 0
	ELSE
		INSERT INTO PHIEUDANGKY
		(TILEKM, TONGTIEN, MAKH, MANVLAP, MADV)
	VALUES
		(@TILEKM, @TONGTIEN, @MAKH, @MANVLAP, @MADV)
	RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HUY_PHIEU_DANG_KY]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_HUY_PHIEU_DANG_KY]
	@MAPDK CHAR(10),
	@MANVHUY CHAR(10)
AS
BEGIN
	DECLARE @TRANGTHAI NVARCHAR(20)
	SELECT @TRANGTHAI = TRANGTHAI
	FROM PHIEUDANGKY
	WHERE MAPDK = @MAPDK
	IF @TRANGTHAI = N'Chờ kích hoạt'
		BEGIN
		UPDATE PHIEUDANGKY
			SET TRANGTHAI = N'Đã hủy',
			MANVHUY = @MANVHUY
			WHERE MAPDK = @MAPDK
		RETURN 1
	END
	ELSE 
		RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LICH_SU_VAO_PHONG]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_LICH_SU_VAO_PHONG]
AS
	DECLARE @TONG INT
	SET @TONG = (SELECT COUNT(*)
FROM LICHSUVAOPHONG
WHERE DATEDIFF(DAY, GETDATE(), NGAYGIO) = 0)
	SELECT STT, KH.MAKH, HOTEN, GIOITINH, FORMAT(NGAYGIO, 'dd/MM/yyyy ') AS NGAYGIO, @TONG AS TONG
FROM LICHSUVAOPHONG LS, PHIEUDANGKY PDK, KHACHHANG KH
WHERE LS.MAPDK = PDK.MAPDK AND KH.MAKH = PDK.MAKH
GO
/****** Object:  StoredProcedure [dbo].[SP_LUOT_RA_VAO]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_LUOT_RA_VAO]
	@TUNGAY DATE,
	@DENNGAY DATE
AS
BEGIN
	DECLARE @KG1 INT , @KG2 INT, @KG3 INT, @KG4 INT, @KG5 INT, @KG6 INT, @KG7 INT, @KG8 INT
	IF @TUNGAY = '' AND @DENNGAY = ''
		BEGIN
		SET @KG1 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 5 AND DATEPART(HOUR, NGAYGIO) < 7)
		SET @KG2 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 7 AND DATEPART(HOUR, NGAYGIO) < 9)
		SET @KG3 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 9 AND DATEPART(HOUR, NGAYGIO) < 11)
		SET @KG4 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 11 AND DATEPART(HOUR, NGAYGIO) < 13)
		SET @KG5 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 13 AND DATEPART(HOUR, NGAYGIO) < 15)
		SET @KG6 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 15 AND DATEPART(HOUR, NGAYGIO) < 17)
		SET @KG7 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 17 AND DATEPART(HOUR, NGAYGIO) < 19)
		SET @KG8 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 19 AND DATEPART(HOUR, NGAYGIO) <= 22)
	END
	ELSE IF @TUNGAY != '' AND @DENNGAY != ''
		BEGIN
		SET @KG1 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 5 AND DATEPART(HOUR, NGAYGIO) < 7 AND NGAYGIO >= @TUNGAY AND NGAYGIO <= @DENNGAY)
		SET @KG2 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 7 AND DATEPART(HOUR, NGAYGIO) < 9 AND NGAYGIO >= @TUNGAY AND NGAYGIO <= @DENNGAY)
		SET @KG3 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 9 AND DATEPART(HOUR, NGAYGIO) < 11 AND NGAYGIO >= @TUNGAY AND NGAYGIO <= @DENNGAY)
		SET @KG4 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 11 AND DATEPART(HOUR, NGAYGIO) < 13 AND NGAYGIO >= @TUNGAY AND NGAYGIO <= @DENNGAY)
		SET @KG5 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 13 AND DATEPART(HOUR, NGAYGIO) < 15 AND NGAYGIO >= @TUNGAY AND NGAYGIO <= @DENNGAY)
		SET @KG6 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 15 AND DATEPART(HOUR, NGAYGIO) < 17 AND NGAYGIO >= @TUNGAY AND NGAYGIO <= @DENNGAY)
		SET @KG7 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 17 AND DATEPART(HOUR, NGAYGIO) < 19 AND NGAYGIO >= @TUNGAY AND NGAYGIO <= @DENNGAY)
		SET @KG8 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 19 AND DATEPART(HOUR, NGAYGIO) <= 22 AND NGAYGIO >= @TUNGAY AND NGAYGIO <= @DENNGAY)
	END
	ELSE IF @TUNGAY != ''
		BEGIN
		SET @KG1 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 5 AND DATEPART(HOUR, NGAYGIO) < 7 AND NGAYGIO >= @TUNGAY)
		SET @KG2 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 7 AND DATEPART(HOUR, NGAYGIO) < 9 AND NGAYGIO >= @TUNGAY)
		SET @KG3 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 9 AND DATEPART(HOUR, NGAYGIO) < 11 AND NGAYGIO >= @TUNGAY)
		SET @KG4 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 11 AND DATEPART(HOUR, NGAYGIO) < 13 AND NGAYGIO >= @TUNGAY)
		SET @KG5 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 13 AND DATEPART(HOUR, NGAYGIO) < 15 AND NGAYGIO >= @TUNGAY)
		SET @KG6 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 15 AND DATEPART(HOUR, NGAYGIO) < 17 AND NGAYGIO >= @TUNGAY)
		SET @KG7 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 17 AND DATEPART(HOUR, NGAYGIO) < 19 AND NGAYGIO >= @TUNGAY)
		SET @KG8 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 19 AND DATEPART(HOUR, NGAYGIO) <= 22 AND NGAYGIO >= @TUNGAY)
	END
	ELSE
		BEGIN
		SET @KG1 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 5 AND DATEPART(HOUR, NGAYGIO) < 7 AND NGAYGIO <= @DENNGAY)
		SET @KG2 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 7 AND DATEPART(HOUR, NGAYGIO) < 9 AND NGAYGIO <= @DENNGAY)
		SET @KG3 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 9 AND DATEPART(HOUR, NGAYGIO) < 11 AND NGAYGIO <= @DENNGAY)
		SET @KG4 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 11 AND DATEPART(HOUR, NGAYGIO) < 13 AND NGAYGIO <= @DENNGAY)
		SET @KG5 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 13 AND DATEPART(HOUR, NGAYGIO) < 15 AND NGAYGIO <= @DENNGAY)
		SET @KG6 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 15 AND DATEPART(HOUR, NGAYGIO) < 17 AND NGAYGIO <= @DENNGAY)
		SET @KG7 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 17 AND DATEPART(HOUR, NGAYGIO) < 19 AND NGAYGIO <= @DENNGAY)
		SET @KG8 = (SELECT COUNT(*) AS LUOTRAVAO
		FROM LICHSUVAOPHONG
		WHERE DATEPART(HOUR, NGAYGIO) >= 19 AND DATEPART(HOUR, NGAYGIO) <= 22 AND NGAYGIO <= @DENNGAY)
	END
	SELECT @KG1 AS '5H-7H', @KG2 AS '7H-9H', @KG3 AS '9H-11H', @KG4 AS '11H-13H', @KG5 AS '13H-15H', @KG6 AS '15H-17H', @KG7 AS '17H-19H', @KG8 AS '19H-22H'
END
GO
/****** Object:  StoredProcedure [dbo].[SP_THEM_DICH_VU]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_THEM_DICH_VU]
	@TENDV NVARCHAR(50),
	@SONGAYSUDUNG INT,
	@GIA MONEY,
	@HIENHANH BIT
AS
BEGIN
	INSERT INTO DICHVU
		(TENDV, SONGAYSUDUNG, GIA, HIENHANH)
	VALUES
		(@TENDV, @SONGAYSUDUNG, @GIA, @HIENHANH)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_THEM_KHACH_HANG]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_THEM_KHACH_HANG]
	@HOTEN NVARCHAR(50),
	@GIOITINH NVARCHAR(5),
	@NAMSINH VARCHAR(5),
	@SDT VARCHAR(10),
	@HINHANH CHAR(200)
AS
BEGIN
	IF @SDT LIKE '%[^0-9]%' OR LEFT(@SDT, 1) != '0' OR LEN(@SDT) < 9
		RETURN 1
	IF @NAMSINH LIKE '%[^0-9]%'
		RETURN 2
	ELSE
		INSERT INTO KHACHHANG
		(HOTEN, GIOITINH, NAMSINH, SDT, HINHANH)
	VALUES
		(@HOTEN, @GIOITINH, @NAMSINH, @SDT, @HINHANH)
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_THEM_LICH_SU_MUA_HANG]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_THEM_LICH_SU_MUA_HANG]
	@STT INT,
	@MASP CHAR(10),
	@MATCHSUGGEST BIT
AS
	INSERT INTO LichSuMuaHang
VALUES(@STT, @MASP, @MATCHSUGGEST)
	RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[SP_THEM_NHAN_VIEN]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_THEM_NHAN_VIEN]
	@HOTEN NVARCHAR(50),
	@SDT VARCHAR(10),
	@CHUCVU CHAR(20)
AS
BEGIN
	IF @SDT NOT LIKE '%[^0-9]%' AND LEFT(@SDT, 1) = '0' AND (LEN(@SDT) = 9 OR LEN(@SDT) = 10)
		BEGIN
		IF @CHUCVU = ''
			INSERT INTO NHANVIEN
			(HOTEN, SDT)
		VALUES
			(@HOTEN, @SDT)
		ELSE
			INSERT INTO NHANVIEN
			(HOTEN, SDT, CHUCVU)
		VALUES
			(@HOTEN, @SDT, @CHUCVU)
		RETURN 1
	END
	ELSE
		RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_THEM_PHIEU_THU_TIEN]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_THEM_PHIEU_THU_TIEN]
	@SOTIENTHU MONEY,
	@MAPDK CHAR(10),
	@MANV CHAR(10)
AS
BEGIN
	IF EXISTS (SELECT MAPDK
	FROM PHIEUDANGKY
	WHERE MAPDK = @MAPDK AND TRANGTHAI = N'Đã kích hoạt')
		RETURN 0
	ELSE IF EXISTS (SELECT MAPDK
	FROM PHIEUDANGKY
	WHERE MAPDK = @MAPDK OR TRANGTHAI = N'Đã hủy')
		RETURN 1
	ELSE
		INSERT INTO PHIEUTHUTIEN
		(SOTIENTHU, MAPDK, MANV)
	VALUES
		(@SOTIENTHU, @MAPDK, @MANV)
	RETURN 2
END
GO
/****** Object:  StoredProcedure [dbo].[SP_THEM_THUC_PHAM]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC	[dbo].[SP_THEM_THUC_PHAM]
	@TENSP NVARCHAR(50),
	@MOTA NVARCHAR(200),
	@HINHANH CHAR(200)
AS
	INSERT INTO TPBS
	(TENSP, MOTA, HINHANH)
VALUES
	(@TENSP, @MOTA, @HINHANH)
	RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[SP_THONG_KE_DOANH_THU]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_THONG_KE_DOANH_THU]
	@TUNGAY DATE,
	@DENNGAY DATE
AS
BEGIN
	IF @TUNGAY = '' AND @DENNGAY = ''
	BEGIN
		SELECT KH.MAKH, HOTEN, SDT, SUM(PTT.SOTIENTHU) TONGDOANHTHU
		FROM PHIEUTHUTIEN PTT, PHIEUDANGKY PDK, KHACHHANG KH
		WHERE PTT.MAPDK = PDK.MAPDK AND PDK.MAKH = KH.MAKH
		GROUP BY KH.MAKH, HOTEN, SDT
	END
	ELSE IF @TUNGAY != '' AND @DENNGAY != ''
		SELECT KH.MAKH, HOTEN, SDT, SUM(PTT.SOTIENTHU) TONGDOANHTHU
	FROM PHIEUTHUTIEN PTT, PHIEUDANGKY PDK, KHACHHANG KH
	WHERE PTT.MAPDK = PDK.MAPDK AND PDK.MAKH = KH.MAKH AND NGAYTHU >= @TUNGAY AND NGAYTHU <= @DENNGAY
	GROUP BY KH.MAKH, HOTEN, SDT
	ELSE IF @TUNGAY != ''
		SELECT KH.MAKH, HOTEN, SDT, SUM(PTT.SOTIENTHU) TONGDOANHTHU
	FROM PHIEUTHUTIEN PTT, PHIEUDANGKY PDK, KHACHHANG KH
	WHERE PTT.MAPDK = PDK.MAPDK AND PDK.MAKH = KH.MAKH AND NGAYTHU >= @TUNGAY
	GROUP BY KH.MAKH, HOTEN, SDT 
	ELSE
		SELECT KH.MAKH, HOTEN, SDT, SUM(PTT.SOTIENTHU) TONGDOANHTHU
	FROM PHIEUTHUTIEN PTT, PHIEUDANGKY PDK, KHACHHANG KH
	WHERE PTT.MAPDK = PDK.MAPDK AND PDK.MAKH = KH.MAKH AND NGAYTHU <= @DENNGAY
	GROUP BY KH.MAKH, HOTEN, SDT
END
GO
/****** Object:  StoredProcedure [dbo].[SP_THONG_KE_KH]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_THONG_KE_KH]
	@TUNGAY DATE,
	@DENNGAY DATE
AS
BEGIN
	DECLARE @TONGKHCU INT, @TONGKHMOI INT, @TONGKH INT, @TUOI1 INT, @TUOI2 INT, @TUOI3 INT, @TUOI4 INT, @TUOI5 INT, @TUOI6 INT, @TUOI7 INT, @TUOI8 INT, @NAM int, @NU int, @TEMP INT, @TEMP1 INT
	IF @TUNGAY = '' AND @DENNGAY = ''
		BEGIN
		SET @TONGKH = (SELECT COUNT(*)
		FROM KHACHHANG)
		SET @TONGKHCU = (SELECT COUNT(KHCU.TONGKHCU)
		FROM (SELECT COUNT(DISTINCT(KH.MAKH)) AS TONGKHCU
			FROM PHIEUTHUTIEN PTT, PHIEUDANGKY PDK, KHACHHANG KH
			WHERE PTT.MAPDK = PDK.MAPDK AND PDK.MAKH = KH.MAKH
			GROUP BY KH.MAKH
			HAVING COUNT(KH.MAKH) >= 2) AS KHCU)
		SET @TUOI1 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 14)
		SET @TUOI2 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 15 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 19)
		SET @TUOI3 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 20 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 24)
		SET @TUOI4 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 25 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 29)
		SET @TUOI5 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 30 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 39)
		SET @TUOI6 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 40 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 49)
		SET @TUOI7 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 50 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 69)
		SET @TUOI8 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 70)
		SET @NAM = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE GIOITINH = N'Nam')
		SET @NU = @TONGKH - @NAM
		SET @TONGKHMOI = @TONGKH - @TONGKHCU
	END
	ELSE IF @TUNGAY != '' AND @DENNGAY != ''
		BEGIN
		SET @TONGKH = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE NGAYTHAMGIA <= @DENNGAY)
		SET @TEMP = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE NGAYTHAMGIA >= @TUNGAY AND NGAYTHAMGIA <= @DENNGAY)
		SET @TEMP1 = (SELECT COUNT(KHMOI.TONGKHMOI)
		FROM (SELECT COUNT(DISTINCT(KH.MAKH)) AS TONGKHMOI
			FROM PHIEUTHUTIEN PTT, PHIEUDANGKY PDK, KHACHHANG KH
			WHERE PTT.MAPDK = PDK.MAPDK AND PDK.MAKH = KH.MAKH AND NGAYTHAMGIA >= @TUNGAY AND NGAYTHAMGIA <= @DENNGAY
			GROUP BY KH.MAKH
			HAVING COUNT(KH.MAKH) < 2) AS KHMOI)
		SET @TUOI1 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 14 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI2 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 15 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 19 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI3 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 20 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 24 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI4 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 25 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 29 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI5 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 30 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 39 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI6 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 40 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 49 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI7 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 50 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 69 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI8 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 70 AND NGAYTHAMGIA <= @DENNGAY)
		SET @NAM = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE GIOITINH = N'Nam' AND NGAYTHAMGIA <= @DENNGAY)
		SET @NU = @TONGKH - @NAM
		SET @TONGKHMOI = @TEMP - @TEMP1
	END
	ELSE IF @TUNGAY != ''
		BEGIN
		SET @TONGKH = (SELECT COUNT(*)
		FROM KHACHHANG)
		SET @TEMP = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE NGAYTHAMGIA >= @TUNGAY)
		SET @TEMP1 = (SELECT COUNT(KHMOI.TONGKHMOI)
		FROM (SELECT COUNT(DISTINCT(KH.MAKH)) AS TONGKHMOI
			FROM PHIEUTHUTIEN PTT, PHIEUDANGKY PDK, KHACHHANG KH
			WHERE PTT.MAPDK = PDK.MAPDK AND PDK.MAKH = KH.MAKH AND NGAYTHAMGIA >= @TUNGAY
			GROUP BY KH.MAKH
			HAVING COUNT(KH.MAKH) < 2) AS KHMOI)
		SET @TUOI1 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 14)
		SET @TUOI2 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 15 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 19)
		SET @TUOI3 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 20 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 24)
		SET @TUOI4 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 25 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 29)
		SET @TUOI5 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 30 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 39)
		SET @TUOI6 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 40 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 49)
		SET @TUOI7 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 50 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 69)
		SET @TUOI8 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 70)
		SET @NAM = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE GIOITINH = N'Nam')
		SET @NU = @TONGKH - @NAM
		SET @TONGKHMOI = @TEMP - @TEMP1
	END
	ELSE
		BEGIN
		SET @TONGKH = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE NGAYTHAMGIA <= @DENNGAY)
		SET @TEMP = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE NGAYTHAMGIA <= @DENNGAY)
		SET @TEMP1 = (SELECT COUNT(KHMOI.TONGKHMOI)
		FROM (SELECT COUNT(DISTINCT(KH.MAKH)) AS TONGKHMOI
			FROM PHIEUTHUTIEN PTT, PHIEUDANGKY PDK, KHACHHANG KH
			WHERE PTT.MAPDK = PDK.MAPDK AND PDK.MAKH = KH.MAKH AND NGAYTHAMGIA <= @DENNGAY
			GROUP BY KH.MAKH
			HAVING COUNT(KH.MAKH) < 2) AS KHMOI)
		SET @TUOI1 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 14 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI2 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 15 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 19 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI3 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 20 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 24 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI4 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 25 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 29 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI5 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 30 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 39 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI6 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 40 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 49 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI7 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 50 AND DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) <= 69 AND NGAYTHAMGIA <= @DENNGAY)
		SET @TUOI8 = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) >= 70)
		SET @NAM = (SELECT COUNT(*)
		FROM KHACHHANG
		WHERE GIOITINH = N'Nam' AND NGAYTHAMGIA <= @DENNGAY)
		SET @NU = @TONGKH - @NAM
		SET @TONGKHMOI = @TEMP - @TEMP1
	END
	SELECT @TONGKH AS TONGKH, @TONGKHMOI AS TONGKHMOI,
		@TUOI1 AS '<= 14', @TUOI2 AS '15-19', @TUOI3 AS '20-24', @TUOI4 AS '25-29', @TUOI5 AS '30-39', @TUOI6 AS '40-49', @TUOI7 AS '50-69', @TUOI8 AS '70+', @NAM AS NAM, @NU AS NU
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIM_KIEM_DICH_VU]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_TIM_KIEM_DICH_VU]
	@KEY NVARCHAR(20)
AS
BEGIN
	SELECT *
	FROM DICHVU
	WHERE TENDV LIKE '%' + @KEY + '%' OR MADV LIKE '%' + @KEY + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIM_KIEM_KHACH_HANG]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_TIM_KIEM_KHACH_HANG]
	@KEY NVARCHAR(20)
AS
BEGIN
	SELECT MAKH, HOTEN, GIOITINH, NAMSINH, SDT, FORMAT (NGAYTHAMGIA, 'dd/MM/yyyy ') as NGAYTHAMGIA, HINHANH
	FROM KHACHHANG
	WHERE HOTEN LIKE '%' + @KEY + '%' OR SDT LIKE '%' + @KEY + '%' OR MAKH LIKE '%' + @KEY + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIM_KIEM_LICH_SU]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_TIM_KIEM_LICH_SU]
	@KEY NVARCHAR(20)
AS
 BEGIN
	DECLARE @TONG INT
	SET @TONG = (SELECT COUNT(*)
	FROM LICHSUVAOPHONG
	WHERE DATEDIFF(DAY, GETDATE(), NGAYGIO) = 0)
	SELECT STT, KH.MAKH, HOTEN, GIOITINH, NGAYGIO, @TONG AS TONG
	FROM LICHSUVAOPHONG LS, PHIEUDANGKY PDK, KHACHHANG KH
	WHERE LS.MAPDK = PDK.MAPDK AND KH.MAKH = PDK.MAKH AND (HOTEN LIKE '%' + @KEY + '%' OR KH.MAKH LIKE '%' + @KEY + '%')
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIM_KIEM_LSMH]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_TIM_KIEM_LSMH]
	@KEY NVARCHAR(20)
AS
	SELECT *
FROM V_LICH_SU_MUA_HANG
WHERE MAKH LIKE '%' + @KEY + '%' OR STT LIKE '%' + @KEY + '%'
GO
/****** Object:  StoredProcedure [dbo].[SP_TIM_KIEM_NHAN_VIEN]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_TIM_KIEM_NHAN_VIEN]
	@KEY NVARCHAR(20)
AS
BEGIN
	SELECT *
	FROM V_XEM_NHAN_VIEN
	WHERE HOTEN LIKE '%' + @KEY + '%' OR MANV LIKE '%' + @KEY + '%' OR SDT LIKE '%' + @KEY + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIM_KIEM_PHIEU_DANG_KY]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_TIM_KIEM_PHIEU_DANG_KY]
	@KEY NVARCHAR(20)
AS
BEGIN
	set @KEY =  '%'+@KEY + '%';
	SELECT *
	from V_PHIEUDK
	where MAPDK like @KEY or HOTEN like @KEY OR SDT like @KEY OR MAKH like @KEY OR TRANGTHAI LIKE @KEY
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIM_KIEM_THUC_PHAM]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_TIM_KIEM_THUC_PHAM]
	@KEY NVARCHAR(20)
AS
BEGIN
	SELECT *
	FROM V_THUC_PHAM
	WHERE TENSP LIKE '%' + @KEY + '%' OR MASP LIKE '%' + @KEY + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XEM_KHACH_HANG]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_XEM_KHACH_HANG]
	@MAKH CHAR(10)
AS
BEGIN
	SELECT *
	FROM KHACHHANG
	WHERE MAKH = @MAKH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XEM_PHIEU_DANG_KY]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_XEM_PHIEU_DANG_KY]
	@MAPDK CHAR(10)
AS
BEGIN
	SELECT MAPDK, HOTEN, HINHANH
	FROM KHACHHANG KH, PHIEUDANGKY PDK
	WHERE KH.MAKH = PDK.MAKH AND PDK.MAPDK = @MAPDK
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XEM_PHIEU_THU_TIEN]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_XEM_PHIEU_THU_TIEN]
	@MAPDK CHAR(10)
AS
BEGIN
	IF EXISTS (SELECT MAPTT
	FROM PHIEUTHUTIEN
	WHERE MAPDK = @MAPDK)
		BEGIN
		SELECT MAPTT, FORMAT (NGAYTHU, 'dd/MM/yyyy ') AS NGAYTHU, HOTENKH, HOTENNV, MAPDK = @MAPDK, TENDV, SOTIENTHU
		FROM (SELECT MAPTT, SOTIENTHU, NGAYTHU, NV.HOTEN AS HOTENNV, MAPDK
			FROM PHIEUTHUTIEN PTT, NHANVIEN NV
			WHERE MAPDK = @MAPDK AND PTT.MANV = NV.MANV) PTT,
			(SELECT TENDV, MAPDK
			FROM DICHVU DV, PHIEUDANGKY PDK
			WHERE PDK.MADV = DV.MADV) DV,
			(SELECT HOTEN AS HOTENKH, MAPDK
			FROM PHIEUDANGKY PDK, KHACHHANG KH
			WHERE KH.MAKH = PDK.MAKH) KH
		WHERE PTT.MAPDK = DV.MAPDK AND PTT.MAPDK = KH.MAPDK
		RETURN 1
	END
	ELSE
		RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XOA_DICH_VU]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_XOA_DICH_VU]
	@MADV CHAR(10)
AS
BEGIN
	IF EXISTS (SELECT MAPDK
	FROM PHIEUDANGKY
	WHERE MADV = @MADV AND (TRANGTHAI = N'Đã kích hoạt' OR TRANGTHAI = N'Chờ kích hoạt'))
		RETURN 0 
	ELSE
		IF EXISTS (SELECT MAPDK
	FROM PHIEUDANGKY
	WHERE MADV = @MADV AND TRANGTHAI = N'Đã hủy')
			BEGIN
		UPDATE DICHVU
				SET HIENHANH = 0 WHERE MADV = @MADV
		RETURN 1
	END
		ELSE
			DELETE DICHVU WHERE MADV = @MADV
	RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XOA_KHACH_HANG]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_XOA_KHACH_HANG]
	@MAKH CHAR(10)
AS
BEGIN
	IF EXISTS (SELECT MAKH
	FROM PHIEUDANGKY
	WHERE MAKH = @MAKH)
		RETURN 0
	ELSE
		DELETE KHACHHANG
		WHERE MAKH = @MAKH
	RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XOA_NHAN_VIEN]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_XOA_NHAN_VIEN]
	@MANV CHAR(10)
AS
BEGIN
	IF (SELECT COUNT(MAPDK)
		FROM PHIEUDANGKY
		WHERE MANVLAP = @MANV OR MANVHUY = @MANV) > 0
		OR (SELECT COUNT(MAPTT)
		FROM PHIEUTHUTIEN
		WHERE MANV = @MANV) > 0
		BEGIN
		UPDATE TAIKHOAN
			SET KHOA = 1
			WHERE TENDANGNHAP = @MANV
		RETURN 1
	END
	ELSE
		IF(SELECT COUNT(TENDANGNHAP)
	FROM TAIKHOAN) > 0
			BEGIN
		DELETE TAIKHOAN WHERE TENDANGNHAP = @MANV
		DELETE NHANVIEN
				WHERE MANV = @MANV
		RETURN 2
	END
		ELSE
			DELETE NHANVIEN
			WHERE MANV = @MANV
	RETURN 2
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XOA_THUC_PHAM]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[SP_XOA_THUC_PHAM]
	@MASP CHAR(10)
AS
	DELETE TPBS WHERE MASP = @MASP
	RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[XEM_CHI_SO_INBODY]    Script Date: 12/10/2022 5:12:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROC [dbo].[XEM_CHI_SO_INBODY]
	@MAKH CHAR(10)
AS
BEGIN
	SELECT KH.MAKH, HOTEN, GIOITINH, DATEPART(YEAR, GETDATE()) - CONVERT(INT, NAMSINH) AS TUOI,
		FORMAT(NGAYGIO, 'yyyy-MM-dd hh:mm tt') AS NGAYGIO, CHIEUCAO, CANNANG, TILE_NUOC, TILE_MO, KHOILUONG_CO, CAST((CANNANG / ((CHIEUCAO*CHIEUCAO) / (100*100))) as float) as BMI
	FROM KHACHHANG KH, INBODY IBD
	WHERE KH.MAKH = @MAKH AND KH.MAKH = IBD.MAKH
END
GO
