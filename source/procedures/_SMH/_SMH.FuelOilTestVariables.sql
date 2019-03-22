create procedure "_SMH"."FuelOilTestVariables"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer ) 
result( "Category" char(50),"VariableId" integer,"VariableDesc" char(50),"HighAlarmLevel" char(20),"LowAlarmLevel" char(20),"VariableChecked" bit ) 
begin
  call "SMH"."FuelOilTestVariables"(@VesselId,@EquipmentId,@TestResultId)
end