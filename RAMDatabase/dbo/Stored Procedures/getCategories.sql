﻿-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getCategories] 
	-- Add the parameters for the stored procedure here
 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT        KHPCategoryID, KHPCategory, ImageSrc
FROM            KHPCategory
WHERE        (KHPCategoryID < 100)
END
