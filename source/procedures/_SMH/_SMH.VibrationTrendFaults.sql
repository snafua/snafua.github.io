create procedure "_SMH"."VibrationTrendFaults"( 
  in @VesselId smallint,
  in @EquipmentId integer ) 
result( 
  "FaultId" integer,
  "FaultTitle" char(80),
  "X" bigint,
  "Y" integer ) 
begin
  call "SMH"."VibrationTrendFaults"(@VesselId,@EquipmentId)
end