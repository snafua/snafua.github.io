create function "_SMH"."VibrationTestsSpectraJSON"( 
  in @VesselId smallint,
  in @EquipmentId integer,
  in @TestResultId integer,
  in @PointId char(20) default null,
  in @RangeId integer default null,
  in @AUnits integer default 0,
  in @Averaging integer default 0,
  in @Reference integer default 0,
  in @FUnits integer default 1 ) 
returns long varchar
begin
  declare @Result long varchar;
  set @Result = "SMH"."VibrationTestsSpectraJSON"(@VesselId,@EquipmentId,@TestResultId,@PointId,@RangeId,@AUnits,@Averaging,@Reference,@FUnits);
  return(@Result)
end