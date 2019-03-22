create procedure "_SEAS"."VesselEquipmentSystemsLoad"( in @VesselId smallint,
  in @MID integer default null,
  in @SMP integer default null ) 
result( "EquipmentSystemId" char(50),"EquipmentSystemDescription" char(50) ) 
begin
  call "SEAS"."VesselEquipmentSystemsLoad"(@VesselId,@MID,@SMP)
end