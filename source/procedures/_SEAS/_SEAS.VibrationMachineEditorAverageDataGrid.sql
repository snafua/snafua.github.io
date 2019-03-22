create procedure "_SEAS"."VibrationMachineEditorAverageDataGrid"( in @StandardMachineId integer,in @RangeId smallint,in @LocationId smallint ) 
result( "Vessel" char(80),"VesselId" integer,"Equipment" char(80),"EquipmentId" integer,"TestDate" timestamp,"TestId" integer,"Priority" char(20),"PositionNumber" smallint,"Axis" char(20),"AxisId" smallint,"Range" char(20),"RangeId" smallint,"Rpm" integer,"PendingAdd" bit,"PendingDelete" bit,"RowId" char(50) ) 
begin
  call "SEAS"."VibrationMachineEditorAverageDataGrid"(@StandardMachineId,@RangeId,@LocationId)
end