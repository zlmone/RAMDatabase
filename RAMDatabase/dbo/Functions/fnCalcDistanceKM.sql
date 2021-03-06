﻿CREATE FUNCTION dbo.fnCalcDistanceKM(
@lat1 NUMERIC(18,10), 
@lon1 NUMERIC(18,10),
@lat2 NUMERIC(18,10),  
@lon2 NUMERIC(18,10))
RETURNS NUMERIC(18,10) 
AS
BEGIN

    RETURN ACOS(SIN(PI()*@lat1/180.0)*SIN(PI()*@lat2/180.0)+COS(PI()*@lat1/180.0)*COS(PI()*@lat2/180.0)*COS(PI()*@lon2/180.0-PI()*@lon1/180.0))*6371
END