create procedure "_NS5"."UpdateVibrationResultRequiresAnalysis"( in @VesselId integer,in @EquipmentId integer,in @TestResultId integer,
  in @AnalysisComplete integer default 1,
  in @UpdatePriority integer default 1 ) 
begin
  declare @RequiresAnalysis integer;
  -- If NS5DB Analysis Failed @AnalysisComplete is sent as 0
  if @AnalysisComplete = 1 then
    set @RequiresAnalysis = 0
  else
    set @RequiresAnalysis = 1
  end if;
  call "NS5"."UpdateVibrationResultRequiresAnalysis"(@VesselId,@EquipmentId,@TestResultId,@RequiresAnalysis,@UpdatePriority)
end