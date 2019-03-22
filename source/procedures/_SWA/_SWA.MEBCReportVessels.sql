create procedure "_SWA"."MEBCReportVessels"( 
  in @VesselIds long varchar ) 
result( 
  "VesselId" integer,
  "VesselName" char(80) ) 
begin
  call "SWA"."MEBCReportVessels"(@VesselIds)
end