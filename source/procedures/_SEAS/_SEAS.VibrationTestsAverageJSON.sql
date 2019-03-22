create function "_SEAS"."VibrationTestsAverageJSON"( in @SiteId smallint,in @EquipmentId integer,
  in @PointId char(20) default null,
  in @Scaling integer default 1,
  in @Measurement integer default 0,
  in @Reference integer default 0,
  in @AUnits integer default 0,
  in @Averaging integer default 0,
  in @FUnits integer default 1 ) 
returns long varchar
/*
Author:      James J. Diaz
Copyright:   Public Domain
Revision:    2010.07.16.001
*/
begin
  declare @Result long varchar;
  declare @DLLUnits integer;
  -- Set Defaults
  if @PointId = 'NULL' then set @PointId = null
  end if;
  if @Scaling is null then set @Scaling = 1
  end if;
  if @Measurement is null then set @Measurement = 0
  end if;
  if @Reference is null then set @Reference = 0
  end if;
  if @AUnits is null then set @AUnits = 0
  end if;
  if @Averaging is null then set @Averaging = 0
  end if;
  if @FUnits is null then set @FUnits = 1
  end if;
  set @DLLUnits = "SEAS"."VibrationTestsAmplitudeUnits"(@Scaling,@Measurement,@AUnits);
  set @Result = "SEAS"."VibrationTestsAverageJSON"(@SiteId,@EquipmentId,@PointId,@DLLUnits,@Averaging,@Reference,@FUnits);
  return(@Result)
end