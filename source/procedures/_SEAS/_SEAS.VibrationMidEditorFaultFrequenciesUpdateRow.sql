create procedure "_SEAS"."VibrationMidEditorFaultFrequenciesUpdateRow"( in @StandardMachineId integer,in @FaultId integer,in @SpeedRatio real,in @FaultCode char(3),in @RowId integer ) 
begin
  call "SEAS"."VibrationMidEditorFaultFrequenciesUpdateRow"(@StandardMachineId,@RowId,@FaultId,@SpeedRatio)
end