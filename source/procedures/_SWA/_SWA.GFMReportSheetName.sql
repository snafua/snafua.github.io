create procedure "_SWA"."GFMReportSheetName"( 
  in @VesselId integer,
  in @AvailabilityId integer ) 
result( 
  "SheetName" char(80) ) 
begin
  call "SWA"."GFMReportSheetName"(@VesselId,@AvailabilityId)
end