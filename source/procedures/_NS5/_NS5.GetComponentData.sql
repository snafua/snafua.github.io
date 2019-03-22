create procedure "_NS5"."GetComponentData"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "ComponentCode" numeric(4,2),"CodeString" char(25),"Locations" integer,"ShaftOrientation" char(3),"ComponentType" integer,"CSDMSize" integer,"CSDMRelational" integer,"CSDMReference" char(2) ) 
begin
  call "NS5"."GetComponentData"(@VesselId,@EquipmentId,@TestResultId)
end