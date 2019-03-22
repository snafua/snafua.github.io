create procedure "_SLR"."RFTSummaryReport"( in @SiteID integer,in @BDate date,in @EDate date,
  in @LogID integer default 11035,in @Midnights char(3) default 'NO' ) 
result( "SiteID" integer,"BeginDate" timestamp,"EndDate" timestamp,"ReportType" integer,"SequenceID" integer,"Duration" numeric,"Status" char(10),"Tasking" char(30),"Comments" char(512),"XSOA" char(255),"Port" char(255),"Code" char(3),"UWTime" integer,"UNDERWAY" numeric,"INPORT_TASKED" numeric,"INPORT_NOT_TASKED" numeric,"MAINT" numeric,"C_4" numeric,"INPORT_TASKED_PORT" char(255),"INPORT_NOT_TASKED_PORT" char(255),"MAINT_PORT" char(255),"C_4_PORT" char(255) ) 
/*
Author:			JMM
Purpose:		This Procedure is used to get the Summary of a vessels Ready for Tasking Data
From RFT Details no Midnights
Called From:
Calls:          SLR.RFTDetails
DbRevision:		8/24/2010
Views:
*/
begin
  call "SLR"."RFTDetails"(@SiteID,@BDate,@EDate,@LogID,@Midnights)
end