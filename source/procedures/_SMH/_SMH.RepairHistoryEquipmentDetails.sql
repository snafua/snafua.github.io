create procedure "_SMH"."RepairHistoryEquipmentDetails"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @MachineryHistoryId integer ) 
result( 
  "VesselId" smallint,
  "EquipmentId" integer,
  "MachineryHistoryId" integer,
  "RepairEquipmentId" integer,
  "RepairEquipmentDescription" char(50),
  "Tools" integer,
  "Parts" integer,
  "MaintenanceProcedure" char(50) ) 
begin
  call "SMH"."RepairHistoryEquipmentDetails"(@VesselId,@EquipmentId,@MachineryHistoryId)
end