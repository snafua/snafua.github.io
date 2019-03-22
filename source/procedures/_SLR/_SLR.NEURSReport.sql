create procedure "_SLR"."NEURSReport"( in @Vessel integer,in @Month integer,in @Year integer ) 
result( "SiteId" integer,"BOM" timestamp,"EOM" timestamp,"ReportDate" timestamp,"DFMCheck" integer,"JP5Check" integer,"MGOCheck" integer,"HourCheck" integer,"ReportSeperator" char(10),"SiteTitle" char(80),"1A" char(6),"1B" integer,"1C" integer,"1D" integer,"1E" integer,"1F" integer,"1G" char(2),"2A" integer,"2B" integer,"2C" integer,"2D" integer,"2E" integer,"2F" integer,"2G" integer,"2H" integer,"2I" integer,"2J" integer,"2K" integer,"2L" integer,"2M" integer,"3A" integer,"3B" integer,"3C" integer,"3D" integer,"3E" integer,"3F" integer,"3G" integer,"3H" integer,"3I" integer,"3J" integer,"3K" integer,"3L" integer,"3M" integer,"3N" integer,"3O" integer,"4A" integer,"4B" integer,"4C" integer,"4D" integer,"4E" integer,"4F" integer,"4G" integer,"4H" integer,"4I" integer,"4J" integer,"4K" integer,"4L" integer,"4M" integer ) 
/*
Author:			JMM
Purpose:		Return Parameter Comment Text
Called From:
Calls:          SLR.NEURS
DbRevision:		08/24/2010
Tables:			Logbook.ViewSiteLogSequenceProcessParameters
NOTE:
*/
begin
  call "SLR"."NEURS"(@Vessel,@Month,@Year)
end