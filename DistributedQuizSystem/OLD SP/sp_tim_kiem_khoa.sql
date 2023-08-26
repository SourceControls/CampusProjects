USE [TN_CSDLPT]
GO

/****** Object:  StoredProcedure [dbo].[sp_tim_kiem_khoa]    Script Date: 5/10/2022 9:08:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[sp_tim_kiem_khoa] @makh nchar(8)
AS
BEGIN
	 -- KIEM TRA TRONG TABLE KHOA CUA SERVER HIEN TAI
	 IF EXISTS(SELECT MAKH FROM KHOA WHERE MAKH = @makh)
		BEGIN
			SELECT  '1' ; -- MA KHOA TON TAI 
		END
	 -- KIEM TRA TRONG TABLE KHOA CUA PHAN MANH CON LAI
	 -- LINK1 LA LINK SITE TRA CUU
	 ELSE IF EXISTS(SELECT MAKH FROM LINK1.TN_CSDLPT.DBO.KHOA WHERE MAKH = @makh)
		BEGIN
			SELECT  '-1' ; -- MA KHOA TON TAI
		END
	ELSE
		BEGIN
			SELECT  '0' ;
		END	
	/*if exists (select makh from khoa where makh=@makh)
		select makh, TENKH from khoa where makh=@makh
	else if exists (select makh from LINK1.[TN_CSDLPT].dbo.khoa where makh=@makh)
		select makh, TENKH from LINK1.[TN_CSDLPT].dbo.khoa where makh=@makh
	--else
	--	begin
	--		raiserror('Khoa không tồn tại!', 16, 1)
	--		return 0;
	--	end
	--return 1;*/
END
GO


