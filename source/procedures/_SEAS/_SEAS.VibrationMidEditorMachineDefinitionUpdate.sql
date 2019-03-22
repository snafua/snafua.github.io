create procedure "_SEAS"."VibrationMidEditorMachineDefinitionUpdate"( in @StandardMachineId integer,in @MachineName char(80),in @ReferenceSpeed integer,in @NormTolerance numeric,in @DriverRatio numeric,in @DrivenRatio numeric,in @LowRangeSelected smallint,in @HighRangeSelected smallint,in @DemodulationSelected smallint,in @Overlap integer,in @TestConditions long varchar ) 
begin
  call "SEAS"."VibrationMidEditorMachineDefinitionUpdate"(@StandardMachineId,@MachineName,@ReferenceSpeed,
  @NormTolerance,@DriverRatio,@DrivenRatio,@LowRangeSelected,@HighRangeSelected,@DemodulationSelected,
  @Overlap,@TestConditions)
end