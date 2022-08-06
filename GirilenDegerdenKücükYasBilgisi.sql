USE [Okul]

ALTER function [dbo].[GirilenDegerdenKücükYasBilgisi](@Yas int)
 returns table
 as 
 return
 select *,(DATEPART(year,getdate())- DATEPART(year,o.Dogum_Tarihi)) AS YAS from dbo.Ogrenci as o  where 

 (DATEPART(year,getdate())- DATEPART(year,o.Dogum_Tarihi)) < @Yas
 AND O.Statu=1




 --cagiralim:
 select * from dbo.GirilenDegerdenKücükYasBilgisi(19)




 --where clause kontolü:

  select *,(DATEPART(year,getdate())- DATEPART(year,o.Dogum_Tarihi)) AS YAS from dbo.Ogrenci as o  where 

 (DATEPART(year,getdate())- DATEPART(year,o.Dogum_Tarihi)) < 19
 AND O.Statu=1