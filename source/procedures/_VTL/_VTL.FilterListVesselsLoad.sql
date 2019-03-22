create procedure "_VTL"."FilterListVesselsLoad"()
result( 
  "VesselId" integer,
  "VesselName" char(80),
  "VesselClass" char(30),
  "ProgramManagerCode" char(10),
  "Filtered" integer ) 
begin
  call "VTL"."FilterListVesselsLoad"()
end