create procedure "_NS5"."GetStandardEquipmentFaultData"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "Frequency" real,"FrequencyLabel" char(3),"DriverRatio" real,"DrivenRatio" real ) 
begin
  call "NS5"."GetStandardEquipmentFaultData"(@VesselId,@EquipmentId,@TestResultId)
end