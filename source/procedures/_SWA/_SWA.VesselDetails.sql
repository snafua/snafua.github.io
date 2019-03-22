create procedure "_SWA"."VesselDetails"( 
  in @VesselId char(1024) ) 
result( 
  "VesselId" integer,
  "VesselName" char(128),
  "VesselClassId" integer,
  "VesselProgramManager" char(10),
  "VesselHullNumber" char(25),
  "VesselClass" char(30) ) 
begin
  declare @VesselInt integer;
  if "ISNUMERIC"(@VesselId) = 1 then
    set @VesselInt = @VesselId
  else
    set @VesselInt = "SWA"."KeyValuePairParse"(@VesselId,'VesselId')
  end if;
  call "SWA"."VesselDetails"(@VesselInt)
end