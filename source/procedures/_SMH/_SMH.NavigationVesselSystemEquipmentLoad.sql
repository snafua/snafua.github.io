create procedure "_SMH"."NavigationVesselSystemEquipmentLoad"( 
  in @VesselId smallint,
  in @SystemId integer ) 
result( 
  "VesselId" smallint,
  "SystemId" integer,
  "EquipmentId" integer,
  "EquipmentDescription" char(80) ) 
begin
  call "SMH"."NavigationVesselSystemEquipmentLoad"(@VesselId,@SystemId)
end