
create proc [dbo].[sp_lay_cau_hoi_thi] @mamh char(5), @trinhdo char(1), @socau int
as
begin
	set rowcount @socau
	select cauhoi, noidung, A, B, C, D, DAP_AN
	into #BT_TMP
	from BODE
	where mamh=@mamh and ASCII(trinhdo) = ASCII(@trinhdo)
	order by newid()

	declare @remain int
	set @remain = @socau - @@rowcount 
	if(@remain > 0)
		begin
			set rowcount @remain
			insert into #BT_TMP
			select noidung, A, B, C, D, DAP_AN
			from BODE
			where mamh=@mamh and ASCII(trinhdo)-1 = ASCII(@trinhdo)
			order by newid()
		end
	
	select * from #BT_TMP
	
	drop table #BT_TMP
end