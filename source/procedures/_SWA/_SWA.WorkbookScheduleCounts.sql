create procedure "_SWA"."WorkbookScheduleCounts"( 
  in @RowId char(1024) ) 
result( 
  "PMCompletions" integer,
  "PMDeferrals" integer,
  "PMIncompletes" integer,
  "PMTotal" integer ) 
begin
  declare @VesselId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  call "SWA"."WorkbookScheduleCounts"(@VesselId)
end