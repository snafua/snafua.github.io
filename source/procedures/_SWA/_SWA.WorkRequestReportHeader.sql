create procedure "_SWA"."WorkRequestReportHeader"( 
  in @RowId char(1024) ) 
result( 
  "ReportDate" date,
  "VesselClassHullNumber" char(50),
  "WorkRequestType" char(25),
  "VesselName" char(80) ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "SWA"."WorkRequestReportHeader"(@VesselId,@WorkRequestId)
end