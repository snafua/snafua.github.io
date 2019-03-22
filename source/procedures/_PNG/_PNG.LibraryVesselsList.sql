create procedure "_PNG"."LibraryVesselsList"()
result( 
  "VesselId" integer,
  "VesselName" char(128),
  "VesselClass" char(30),
  "ProgramManagerCode" char(10) ) 
begin
  call "PNG"."LibraryVesselsList"()
end