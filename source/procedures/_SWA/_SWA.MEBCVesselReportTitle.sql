create procedure "_SWA"."MEBCVesselReportTitle"( 
  in @VesselId integer ) 
result( 
  "Title" char(128),
  "SheetName" char(80) ) 
begin
  call "SWA"."MEBCVesselReportTitle"(@VesselId)
end