create procedure "_SWA"."MEBCReportFOM"( 
  in @VesselIds long varchar default null ) 
result( 
  "VesselName" char(80),
  "VesselClass" char(30),
  "L4" char(8),
  "Total" char(8),
  "PMFOM" char(8),
  "CHENG" char(256),
  "FOMComments" long varchar,
  "EmailAddress" char(256) ) 
begin
  call "SWA"."MEBCReportFOM"(@VesselIds)
end