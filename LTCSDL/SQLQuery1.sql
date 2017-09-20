use ONLINE_SHOP
go 
if OBJECT_ID ('uspCau1','P') is not null
drop proc uspCau1
go 

create proc uspCau1
	@a int = 0,
	@b int = 0
as 
	return (@a + @b)
go
declare @tong int = 0,@x int, @y int
exec @tong = uspCau1 @x,@y
print @tong

create proc uspCau1b
	@a float = 0,
	@b float = 0,
	@tong float out
as 
	--return (@a + @b)
	set @tong = @a + @b
go

declare @tong float = 0, @x float = 3.3, @y float = 3.4
exec uspCau1b @x,@y,@tong out
print @tong