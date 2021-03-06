﻿-------          CertainCity 2 Small In a Data Range.sql ------------
----------------------------------------------------------------------------------------------------------------------------
-- 使用说明 将指定这天的这个城市的记录分配到当天的其他城市
-- DECLARE @end int = 15;                                要改，压缩掉 多少条记录
-- DECLARE @Adj_Start_Date DATE = '2017-10-14' ;                      要改， 压缩掉 那天的条记录
-- DECLARE @willchangeCity NVARCHAR(100)  = N'Montréal'  要将那个城市的记录压缩掉
----------------------------------------------------------------------------------------------------------------------------
--  offen changing city list 
--  Montréal ,Toronto ,  Ottawa  ,   Beauharnois     Kelowna, BC, CA, Airdrie, AB, CA
--  Fredericton, NB, CA, Warman, SK, Surrey, BC, ,Banff, Surrey, BC, Barrie, ON, CA
-- Kitchener, ON, CA, Maniwaki, QC, CA  Stony Mountain, MB, CA, Norway House, MB, CA
-------------------------------
-- CANADA Smaller town 
-------------------------------
SET QUOTED_IDENTIFIER OFF;
DECLARE @plan_Adj_num int =5;
DECLARE @Adj_Start_Date DATE = '2018-09-16'  -- start Sunday 
DECLARE @Adj_End_Date DATE = '2018-09-22'; -- end Saturday
DECLARE @willchangeCity NVARCHAR(100)  = N'Surrey'









----------------------------------------------------------------------------------------------------------------------------
-- 下面是程序
----------------------------------------------------------------------------------------------------------------------------
Declare @loop int = 1;
while @loop <=@plan_Adj_num
BEGIN  -- While Start here
--SET @Adj_Start_Date = CAST(ISNULL(@Adj_Start_Date, GETDATE()) as date);
if object_id('tempdb..#SAMPLE') is not null
    drop table #SAMPLE;

CREATE TABLE #SAMPLE 
(
ID INT IDENTITY(1,1) NOT NULL,  
country nvarchar (2),
region nvarchar (2),
city nvarchar (20),
thip nvarchar (20),
host nvarchar (20) ,
lat numeric (18,10),
long numeric (18,10),
uagency nvarchar (500)  
)

DECLARE @UA NVARCHAR(500) 
------------------
-- Ontario
------------------
DECLARE  @M   NVARCHAR(20) = N'Thunder Bay'
DECLARE  @R NVARCHAR(2) =N'ON'
DECLARE  @C NVARCHAR(2) =N'CA'
DECLARE @lat numeric (18,10) = 48.40000000
DECLARE @long numeric (18,10) = -89.23330000
DECLARE  @Mip NVARCHAR(20) = '45.78.243.200'
SET @UA  =N'Mozilla/5.0 (iPad; CPU OS 9_3_5 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13G36 Safari/601.1'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Oakville'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.40320000
SET  @long  = -79.71860000
SET  @Mip   = N'173.243.33.10'
SET  @UA    =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8'

insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Brampton'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.71960000
SET  @long  = -79.68540000
SET  @Mip   = N'74.213.190.8'
SET @UA  =N'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-A520W Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/6.4 Chrome/56.0.2924.87 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Sydenham'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.40740000
SET  @long  = -76.59700000
SET  @Mip   = N'192.95.138.32'
SET @UA  =N'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-A520W Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/6.4 Chrome/56.0.2924.87 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Marmora'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.48330000
SET  @long  = -77.68330000
SET  @Mip   = N'198.254.238.48'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Stoney Creek'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.22450000
SET  @long  = -79.69880000
SET  @Mip   = N'23.250.79.192'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Barrie'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.40010000
SET  @long  = -79.66630000
SET  @Mip   = N'66.159.121.52'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Saint Catharines'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.19230000
SET  @long  = -79.25590000
SET  @Mip   = N'216.121.138.10'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Grimsby'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.20010000
SET  @long  = -79.56630000
SET  @Mip   = N'72.38.129.128'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Vaughan'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.84320000
SET  @long  = -79.56440000
SET  @Mip   = N'199.68.181.240'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)


SET  @M     = N'King'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.92860000
SET  @long  = -79.52690000
SET  @Mip   = N'207.35.86.211'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
 

SET  @M     = N'Windsor'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 42.29460000
SET  @long  = -82.86670000
SET  @Mip   = N'216.58.8.192'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Pickering'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.90230000
SET  @long  = -79.15540000
SET  @Mip   = N'173.212.177.114'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Niagara Falls'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.11420000
SET  @long  = -79.20350000
SET  @Mip   = N'70.27.74.77'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Orillia'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.60870000
SET  @long  = -79.42070000
SET  @Mip   = N'70.28.232.255'
SET @UA  =N'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-A520W Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/6.4 Chrome/56.0.2924.87 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Woodbridge'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.80640000
SET  @long  = -79.59950000
SET  @Mip   = N'207.112.18.64'
SET @UA  =N'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-A520W Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/6.4 Chrome/56.0.2924.87 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Brantford'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.13940000
SET  @long  = -80.23570000
SET  @Mip   = N'45.3.11.31'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Ajax'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.88430000
SET  @long  = -79.05340000
SET  @Mip   = N'142.116.192.163'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)


SET  @M     = N'Waterloo'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.45300000
SET  @long  = -80.56920000
SET  @Mip   = N'72.143.22.38'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)


SET  @M     = N'Orangeville'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.95970000
SET  @long  = -80.10790000
SET  @Mip   = N'208.114.155.20'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Stittsville'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 45.26060000
SET  @long  = -75.92110000
SET  @Mip   = N'204.237.11.127'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Concord'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.80010000
SET  @long  = -79.48290000
SET  @Mip   = N'69.58.102.213'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Millbrook'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.12630000
SET  @long  = -78.51930000
SET  @Mip   = N'216.168.106.112'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Cambridge'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.41930000
SET  @long  = -80.35050000
SET  @Mip   = N'104.157.230.80'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Cobourg'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.95980000
SET  @long  = -78.16510000
SET  @Mip   = N'192.95.139.16'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Geraldton'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 49.71670000
SET  @long  = -86.96670000
SET  @Mip   = N'38.111.117.16'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Wellington'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.95610000
SET  @long  = -77.35300000
SET  @Mip   = N'69.168.186.148'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Durham'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.18330000
SET  @long  = -80.81670000
SET  @Mip   = N'174.93.8.255'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Brighton'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.04210000
SET  @long  = -77.73820000
SET  @Mip   = N'192.95.177.160'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Fenelon Falls'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.53330000
SET  @long  = -78.75000000
SET  @Mip   = N'204.237.59.150'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Alexandria'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 45.31320000
SET  @long  = -74.63380000
SET  @Mip   = N'207.164.177.16'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Sudbury'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 46.50000000
SET  @long  = -80.96670000
SET  @Mip   = N'199.19.167.255'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Midland'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.75010000
SET  @long  = -79.88300000
SET  @Mip   = N'173.34.82.127'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Collingwood'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.48340000
SET  @long  = -80.21640000
SET  @Mip   = N'173.34.65.255'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Newmarket'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.05800000
SET  @long  = -79.45260000
SET  @Mip   = N'108.174.25.250'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:55.0) Gecko/20100101 Firefox/58.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Tweed'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.46670000
SET  @long  = -77.3000000000
SET  @Mip   = N'70.27.87.6'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:55.0) Gecko/20100101 Firefox/58.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Angus'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.31670000
SET  @long  = -79.88330000
SET  @Mip   = N'198.254.199.52'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)


SET  @M     = N'New Hamburg'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.38080000
SET  @long  = -80.70620000
SET  @Mip   = N'74.114.75.2'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)


SET  @M     = N'Brechin'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 44.55000000
SET  @long  = -79.18330000
SET  @Mip   = N'208.97.116.192'
SET @UA  =N'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-A520W Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/6.4 Chrome/56.0.2924.87 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Palmerston'
SET  @R     = N'ON'
SET  @C     = N'CA'
SET  @lat   = 43.83330000
SET  @long  = -80.85000000
SET  @Mip   = N'104.249.204.146'
SET @UA  =N'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-A520W Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/6.4 Chrome/56.0.2924.87 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)



--------------------------------------------------
SET  @M     = N'Chesterville'
SET  @Mip   = N'174.91.34.10'
SET  @lat   = 45.1084
SET  @long  = -75.2323
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)


--------------------------------------------------
SET  @M     = N'Chesterville'
SET  @Mip   = N'174.91.34.10'
SET  @lat   = 45.1084
SET  @long  = -75.2323
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Chesterville'
SET  @Mip   = N'184.148.28.255'
SET  @lat   = 45.1084
SET  @long  = -75.2323
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

------------------------------------------
SET  @M     = N'Morrisburg'
SET  @Mip   = N'72.1.209.102'
SET  @lat   = 44.9
SET  @long  = -75.1833
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
------------------------------------
SET  @M     = N'Kemptville'
SET  @Mip   = N'104.129.110.68'
SET  @lat   = 45.02
SET  @long  = -75.6456
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
------------------------------------------
SET  @M     = N'Kemptville'
SET  @Mip   = N'74.14.93.255'
SET  @lat   = 45.02
SET  @long  = -75.6456
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
-----------------------------------
SET  @M     = N'Prescott'
SET  @Mip   = N'64.118.31.218'
SET  @lat   = 44.8734
SET  @long  = -75.4416
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Prescott'
SET  @Mip   = N'216.185.251.207'
SET  @lat   = 44.8734
SET  @long  = -75.4416
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

---------------------------------------
SET  @M     = N'Vankleek Hill'
SET  @Mip   = N'24.138.161.128'
SET  @lat   = 45.5167
SET  @long  = -74.65
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Vankleek Hill'
SET  @Mip   = N'24.138.161.128'
SET  @lat   = 45.5167
SET  @long  = -74.65
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Cornwall'
SET  @Mip   = N'24.104.163.128'
SET  @lat   = 45.0565
SET  @long  = -74.6852
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Cornwall'
SET  @Mip   = N'142.46.224.255'
SET  @lat   = 45.0565
SET  @long  = -74.6852
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-A520W Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/6.4 Chrome/56.0.2924.87 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Ingleside'
SET  @Mip   = N'204.237.17.160'
SET  @lat   = 45.0 
SET  @long  = -74.0
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-A520W Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/6.4 Chrome/56.0.2924.87 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Almonte'
SET  @Mip   = N'204.237.57.88'
SET  @lat   = 45.2289
SET  @long  = -76.1974
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-A520W Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/6.4 Chrome/56.0.2924.87 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Almonte'
SET  @Mip   = N'104.249.229.251'
SET  @lat   = 45.2289
SET  @long  = -76.1974
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-A520W Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/6.4 Chrome/56.0.2924.87 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)


--------------------------------------------------------------------------------------------------------
SET  @M     = N'Carleton Place'
SET  @Mip   = N'104.129.124.128'
SET  @lat   = 45.1334
SET  @long  = -76.1494
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Lanark'
SET  @Mip   = N'209.87.251.68'
SET  @lat   = 45.0206
SET  @long  = -76.3633
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Perth'
SET  @Mip   = N'209.87.251.68'
SET  @lat   = 45.0206
SET  @long  = -76.3633
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:55.0) Gecko/20100101 Firefox/58.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Perth'
SET  @Mip   = N'24.146.46.207'
SET  @lat   = 45.0206
SET  @long  = -76.3633
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:55.0) Gecko/20100101 Firefox/58.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)


--------------------------------------------------------------------------------------------------------
SET  @M     = N'Smiths Falls '
SET  @Mip   = N'45.78.245.208'
SET  @lat   = 44.9001
SET  @long  = -76.0161
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Smiths Falls'
SET  @Mip   = N'45.78.245.208'
SET  @lat   = 44.9001
SET  @long  = -76.0161
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Alexandria'
SET  @Mip   = N'204.237.23.168'
SET  @lat   = 45.3132
SET  @long  = -74.6338
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Williamstown'
SET  @Mip   = N'204.237.55.254'
SET  @lat   = 45.1511
SET  @long  = -74.5807
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'South Glengarry'
SET  @Mip   = N'216.154.135.9'
SET  @lat   = 45.2001
SET  @long  = -74.5826
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Brockville'
SET  @Mip   = N'209.250.148.12'
SET  @lat   = 44.6573
SET  @long  = -75.7146
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

SET  @M     = N'Brockville'
SET  @Mip   = N'216.168.109.252'
SET  @lat   = 44.6573
SET  @long  = -75.7146
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Gananoque'
SET  @Mip   = N'204.237.55.240'
SET  @lat   = 44.3334
SET  @long  = -76.1661
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Toledo'
SET  @Mip   = N'96.44.105.208'
SET  @lat   = 44.7421
SET  @long  = -75.9931
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Westport'
SET  @Mip   = N'64.118.22.20'
SET  @lat   = 44.6833
SET  @long  = -76.4
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Hammond'
SET  @Mip   = N'192.95.165.36'
SET  @lat   = 45.4436
SET  @long  = -75.2423
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Rockland'
SET  @Mip   = N'142.116.27.40'
SET  @lat   = 45.5501
SET  @long  = -75.291
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Russell'
SET  @Mip   = N'198.254.142.24'
SET  @lat   = 50.7833
SET  @long  = -101.2833
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 6.0.1; SM-G903W Build/MMB29K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/59.0.3071.125 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Russell'
SET  @Mip   = N'162.221.248.15'
SET  @lat   = 50.7833
SET  @long  = -101.2833
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)



------------------
-- 		Mississauga
------------------
SET  @M    = N'Mississauga'
SET  @R   =N'ON'
SET  @C    =N'CA'
SET  @lat    = 43.6060
SET  @long   = -79.6708
SET  @Mip   = '50.100.56.247'
SET @UA  = N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

--------------------------------------------------------------------------------------------------------
SET  @M     = N'Elora'
SET  @Mip   = N'74.220.167.4'
SET  @lat   = 43.68440000
SET  @long  = -80.43010000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 6.0.1; SM-G903W Build/MMB29K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/59.0.3071.125 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Atikokan'
SET  @Mip   = N'207.35.46.251'
SET  @lat   = 48.75000000
SET  @long  = -91.61670000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Red Lake'
SET  @Mip   = N'207.164.88.163'
SET  @lat   = 51.03330000
SET  @long  = -93.83330000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Geraldton'
SET  @Mip   = N'216.211.28.32'
SET  @lat   = 49.71670000
SET  @long  = -86.96670000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Marathon'
SET  @Mip   = N'104.159.108.3'
SET  @lat   = 48.75000000
SET  @long  = -86.36670000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 6.0.1; SM-G903W Build/MMB29K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/59.0.3071.125 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Wellington'
SET  @Mip   = N'204.237.20.248'
SET  @lat   = 43.95610000
SET  @long  = -77.35300000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Durham'
SET  @Mip   = N'216.167.251.96'
SET  @lat   = 44.18330000
SET  @long  = -80.81670000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 6.0.1; SM-G903W Build/MMB29K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/59.0.3071.125 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Hastings'
SET  @Mip   = N'192.95.207.32'
SET  @lat   = 44.30000000
SET  @long  = -77.95000000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Chelmsford'
SET  @Mip   = N'142.114.124.0'
SET  @lat   = 46.58330000
SET  @long  = -81.20000000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 6.0.1; SM-G903W Build/MMB29K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/59.0.3071.125 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Brighton'
SET  @Mip   = N'142.116.57.240'
SET  @lat   = 44.04210000
SET  @long  = -77.73820000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Terrace Bay'
SET  @Mip   = N'64.229.227.0'
SET  @lat   = 48.78330000
SET  @long  = -87.10000000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Nipigon'
SET  @Mip   = N'70.76.160.0'
SET  @lat   = 49.01670000
SET  @long  = -88.25000000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Bobcaygeon'
SET  @Mip   = N'45.78.175.131'
SET  @lat   = 44.53330000
SET  @long  = -78.55000000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Fenelon Falls'
SET  @Mip   = N'192.95.190.227'
SET  @lat   = 44.53330000
SET  @long  = -78.75000000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 6.0.1; SM-G903W Build/MMB29K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/59.0.3071.125 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Morrisburg'
SET  @Mip   = N'66.206.231.67'
SET  @lat   = 44.90000000
SET  @long  = -75.18330000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 6.0.1; SM-G903W Build/MMB29K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/59.0.3071.125 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Markdale'
SET  @Mip   = N'192.95.151.140'
SET  @lat   = 44.31670000
SET  @long  = -80.65000000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Campbellford'
SET  @Mip   = N'70.29.124.20'
SET  @lat   = 44.30000000
SET  @long  = -77.80000000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Casselman'
SET  @Mip   = N'24.137.59.94'
SET  @lat   = 45.31590000
SET  @long  = -75.08660000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Port Hope'
SET  @Mip   = N'198.254.246.240'
SET  @lat   = 43.95000000
SET  @long  = -78.30000000
SET  @R     = N'ON'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.3'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)



----------------------------
-- British Columbia
----------------------------
SET  @M     = N'Oliver'
SET  @R     = N'BC'
SET  @C     = N'CA'
SET  @lat   = 49.18330000
SET  @long  = -119.55000000
SET  @Mip   = N'24.207.119.250'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Richmond'
SET  @R     = N'BC'
SET  @C     = N'CA'
SET  @lat   = 49.17000000
SET  @long  = -123.13680000
SET  @Mip   = N'209.53.144.254'
SET @UA  =N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_3 like Mac OS X) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.0 Mobile/14G60 Safari/602.1'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Kelowna'
SET  @R     = N'BC'
SET  @C     = N'CA'
SET  @lat   = 49.94970000
SET  @long  = -119.43390000
SET  @Mip   = N'24.71.126.252'
SET @UA  =N'Mozilla/5.0 (Linux; Android 5.0.1; 10DTB12A Build/LRX22C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Smithers'
SET  @R     = N'BC'
SET  @C     = N'CA'
SET  @lat   = 54.76670000
SET  @long  = -127.16670000
SET  @Mip   = N'209.145.110.100'
SET @UA  =N'Mozilla/5.0 (Linux; Android 5.0.1; 10DTB12A Build/LRX22C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Gibsons'
SET  @R     = N'BC'
SET  @C     = N'CA'
SET  @lat   = 49.40000000
SET  @long  = -123.50000000
SET  @Mip   = N'173.180.208.100'
SET @UA  =N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_3 like Mac OS X) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.0 Mobile/14G60 Safari/602.1'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Invermere'
SET  @R     = N'BC'
SET  @C     = N'CA'
SET  @lat   = 50.50000000
SET  @long  = -116.03330000
SET  @Mip   = N'24.66.232.176'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.3'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Smithers'
SET  @Mip   = N'142.207.12.3'
SET  @lat   = 54.76670000
SET  @long  = -127.16670000
SET  @R     = N'BC'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 6.0.1; SM-G903W Build/MMB29K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/59.0.3071.125 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Revelstoke'
SET  @Mip   = N'142.23.196.13'
SET  @lat   = 51.00000000
SET  @long  = -118.18330000
SET  @R     = N'BC'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.3'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Vanderhoof'
SET  @Mip   = N'64.114.127.10'
SET  @lat   = 54.01670000
SET  @long  = -124.01670000
SET  @R     = N'BC'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Hope'
SET  @Mip   = N'24.137.89.164'
SET  @lat   = 49.38330000
SET  @long  = -121.43330000
SET  @R     = N'BC'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 6.0.1; SM-G903W Build/MMB29K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/59.0.3071.125 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Gibsons'
SET  @Mip   = N'209.82.106.7'
SET  @lat   = 49.40000000
SET  @long  = -123.50000000
SET  @R     = N'BC'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Sechelt'
SET  @Mip   = N'206.116.209.3'
SET  @lat   = 49.46670000
SET  @long  = -123.76670000
SET  @R     = N'BC'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Fernie'
SET  @Mip   = N'50.98.208.4'
SET  @lat   = 49.50000000
SET  @long  = -115.06670000
SET  @R     = N'BC'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Invermere'
SET  @Mip   = N'75.155.200.9'
SET  @lat   = 50.50000000
SET  @long  = -116.03330000
SET  @R     = N'BC'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 6.0.1; SM-G903W Build/MMB29K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/59.0.3071.125 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Canal Flats'
SET  @Mip   = N'24.66.234.40'
SET  @lat   = 50.15000000
SET  @long  = -115.83330000
SET  @R     = N'BC'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Creston'
SET  @Mip   = N'71.7.254.166'
SET  @lat   = 49.10000000
SET  @long  = -116.51670000
SET  @R     = N'BC'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
--------------------------------------------------------------------------------------------------------
SET  @M     = N'Summerland'
SET  @Mip   = N'174.4.220.17'
SET  @lat   = 49.60000000
SET  @long  = -119.66670000
SET  @R     = N'BC'
SET  @C     = N'CA'
SET @UA  =N'Mozilla/5.0 (Linux; Android 6.0.1; SM-G903W Build/MMB29K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/59.0.3071.125 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)




------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
-- ALberta-- ALberta-- ALberta-- ALberta-- ALberta-- ALberta-- ALberta
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
SET  @M     = N'Rimbey'
SET  @R     = N'AB'
SET  @C     = N'CA'
SET  @lat   = 52.63330000
SET  @long  = -114.21670000
SET  @Mip   = N'162.212.68.88'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.3'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Raymond'
SET  @R     = N'AB'
SET  @C     = N'CA'
SET  @lat   = 49.46670000
SET  @long  = -112.66670000
SET  @Mip   = N'173.0.196.188'
SET @UA  =N'Mozilla/5.0 (Linux; Android 5.1.1; SAMSUNG SM-G530W Build/LMY47X) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/3.3 Chrome/38.0.2125.102 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Lethbridge'
SET  @R     = N'AB'
SET  @C     = N'CA'
SET  @lat   = 49.65810000
SET  @long  = -112.74840000
SET  @Mip   = N'108.173.130.4'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Jasper'
SET  @R     = N'AB'
SET  @C     = N'CA'
SET  @lat   = 52.88330000
SET  @long  = -118.08330000
SET  @Mip   = N'198.254.176.135'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Bashaw'
SET  @R     = N'AB'
SET  @C     = N'CA'
SET  @lat   = 52.58330000
SET  @long  = -112.96670000
SET  @Mip   = N'96.30.205.239'
SET @UA  =N'Mozilla/5.0 (Linux; Android 5.1.1; SAMSUNG SM-G530W Build/LMY47X) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/3.3 Chrome/38.0.2125.102 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Ponoka'
SET  @R     = N'AB'
SET  @C     = N'CA'
SET  @lat   = 52.67680000
SET  @long  = -113.58150000
SET  @Mip   = N'206.75.87.103'
SET @UA  =N'Mozilla/5.0 (Linux; Android 5.1.1; SAMSUNG SM-G530W Build/LMY47X) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/3.3 Chrome/38.0.2125.102 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)




------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
-- Saskatchewan -- Saskatchewan -- Saskatchewan -- Saskatchewan -- Saskatchewan -- Saskatchewan -- Saskatchewan
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
SET  @M     = N'Pascal'
SET  @R     = N'SK'
SET  @C     = N'CA'
SET  @lat   = 53.51670000
SET  @long  = -107.13330000
SET  @Mip   = N'192.95.139.52'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Luseland'
SET  @R     = N'SK'
SET  @C     = N'CA'
SET  @lat   = 52.08330000
SET  @long  = -109.43330000
SET  @Mip   = N'64.110.250.192'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Wymark'
SET  @R     = N'SK'
SET  @C     = N'CA'
SET  @lat   = 50.11670000
SET  @long  = -107.73330000
SET  @Mip   = N'198.254.188.32'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)


------------------
-- Manitoba
------------------
SET  @M     = N'Roland'
SET  @R     = N'MB'
SET  @C     = N'CA'
SET  @lat   = 49.36670000
SET  @long  = -97.95000000
SET  @Mip   = N'172.97.61.240'
SET @UA  =N'Mozilla/5.0 (Linux; Android 5.0; SM-N900W8 Build/LRX21V) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Thompson'
SET  @R     = N'MB'
SET  @C     = N'CA'
SET  @lat   = 55.74350000
SET  @long  = -97.85580000
SET  @Mip   = N'205.200.37.224'
SET @UA  =N'Mozilla/5.0 (Linux; Android 5.1.1; SM-G530W Build/LMY47X) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/3.3 Chrome/38.0.2125.102 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Brandon'
SET  @R     = N'MB'
SET  @C     = N'CA'
SET  @lat   = 49.81740000
SET  @long  = -99.95650000
SET  @Mip   = N'162.221.252.12'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)


------------------
-- QUEBEC
------------------
SET  @M     = N'Crabtree'
SET  @R     = N'QC'
SET  @C     = N'CA'
SET  @lat   = 45.96710000
SET  @long  = -73.47160000
SET  @Mip   = N'173.177.171.152'
SET @UA  =N'Mozilla/5.0 (Linux; Android 7.0; SM-G955W Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/59.0.3071.125 Mobile Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Québec'
SET  @R     = N'QC'
SET  @C     = N'CA'
SET  @lat   = 46.83040000
SET  @long  = -71.24550000
SET  @Mip   = N'104.163.167.224'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Cantley'
SET  @R     = N'QC'
SET  @C     = N'CA'
SET  @lat   = 45.56680000
SET  @long  = -75.78270000
SET  @Mip   = N'50.100.4.6'
SET @UA  =N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Saint-georges'
SET  @R     = N'QC'
SET  @C     = N'CA'
SET  @lat   = 46.61670000
SET  @long  = -72.66670000
SET  @Mip   = N'205.237.52.34'
SET @UA  =N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Bonsecours'
SET  @R     = N'QC'
SET  @C     = N'CA'
SET  @lat   = 45.41000000
SET  @long  = -72.30270000
SET  @Mip   = N'72.11.161.35'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Victoriaville'
SET  @R     = N'QC'
SET  @C     = N'CA'
SET  @lat   = 46.05290000
SET  @long  = -71.94770000
SET  @Mip   = N'74.56.147.255'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.3'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Saint-elzéar'
SET  @R     = N'QC'
SET  @C     = N'CA'
SET  @lat   = 46.40900000
SET  @long  = -71.05970000
SET  @Mip   = N'207.134.112.10'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

------------------
-- Nova Scotia
------------------
SET  @M     = N'Baddeck'
SET  @R     = N'NS'
SET  @C     = N'CA'
SET  @lat   = 46.10000000
SET  @long  = -60.75000000
SET  @Mip   = N'99.192.20.68'
SET @UA  =N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Brookfield'
SET  @R     = N'NS'
SET  @C     = N'CA'
SET  @lat   = 45.25000000
SET  @long  = -63.28330000
SET  @Mip   = N'184.171.195.120'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Tusket'
SET  @R     = N'NS'
SET  @C     = N'CA'
SET  @lat   = 43.85830000
SET  @long  = -65.97400000
SET  @Mip   = N'24.222.204.128'
SET @UA  =N'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)



------------------
-- New Burnswick
------------------
SET  @M     = N'Saint John'
SET  @R     = N'NB'
SET  @C     = N'CA'
SET  @lat   = 45.23080000
SET  @long  = -66.09530000
SET  @Mip   = N'134.153.39.4'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Fredericton'
SET  @R     = N'NB'
SET  @C     = N'CA'
SET  @lat   = 45.81190000
SET  @long  = -66.67630000
SET  @Mip   = N'99.232.126.128'
SET @UA  =N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.3'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
SET  @M     = N'Moncton'
SET  @R     = N'NB'
SET  @C     = N'CA'
SET  @lat   = 46.09870000
SET  @long  = -64.80360000
SET  @Mip   = N'45.74.251.144'
SET @UA  =N'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1'
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)
insert into #SAMPLE Values (@C,@R,@M,  @mIP, @Mip,@lat,	@long, @UA)

 

---- Create the variables for the random number generation
DECLARE @Random INT;
DECLARE @Upper INT;
DECLARE @Lower INT;

SET @Lower = 1 ---- The lowest random number
-- create random sample data
declare @sampleCount int 
select @sampleCount = Count(*) from #SAMPLE
select @Upper =  count (*) from #SAMPLE  
SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
 if (@Random <1)  SELECT @Random = 1
 
declare @country nvarchar (2);
declare @region nvarchar (2);
declare @city nvarchar (20);
declare @thip nvarchar (20);
declare @host nvarchar (20) ;
declare @lat1 numeric (18,10);
declare @long1 numeric (18,10);
declare @uagency nvarchar (500) ;

select  @country  = country   from #sample   where id = @random 
select  @region   = region 	  from #sample   where id = @random
select  @city  	  = city  	  from #sample   where id = @random
select  @thip 	  = thip 	  from #sample   where id = @random
select  @host  	  = host  	  from #sample   where id = @random
select  @lat1  	  = lat  	  from #sample   where id = @random
select  @long1    = long  	  from #sample   where id = @random
select  @uagency  = uagency	  from #sample   where id = @random


-- work on APILOG table
select @Upper =  count (apilogid) from apilog where cscity = @willchangeCity and aclName='KHP'  and logdate >= @Adj_Start_Date AND logdate <DATEADD(DAY,1,@Adj_End_Date)
SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
 if (@Random <1)  SELECT @Random = 1

 declare @myIP1 int
 

 
 select top (1) @myIP1 = apilogid from 
(select top (@Random ) apilogid from apilog  where  cscity = @willchangeCity and aclName='KHP'   and logdate >= @Adj_Start_Date AND logdate <DATEADD(DAY,1,@Adj_End_Date)   order by apilogid) a
order by apilogid desc
 

 update apilog set 
  cscountry = @country ,
  csregion =  @region  ,
  cscity = @city  	 ,
  csip = @thip 	, 
  cshost = @host  ,	 
  latitude = @lat1  	, 
  longitude = @long1  ,	 
  csuseragent = @uagency 
 where apilogid = @myIP1;






select @loop = @loop +1;

END      -- while loop end here

SELECT        apilogid, logdate, logtime, cscontent, csendpoint,  cscountry, csregion, cscity, csurl
FROM            apilog
WHERE        (apilogid = @myIP1)


 SET QUOTED_IDENTIFIER ON;
 -- end Processing