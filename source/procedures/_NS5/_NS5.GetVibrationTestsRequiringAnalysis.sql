create procedure "_NS5"."GetVibrationTestsRequiringAnalysis"( 
  in @VesselId integer default null ) 
result( "VesselId" integer,"EquipmentId" integer,"TestResultId" integer ) 
begin
  if @VesselId <= 0 then
    set @VesselId = null
  end if;
  call "NS5"."GetVibrationTestsRequiringAnalysis"(@VesselId)
end