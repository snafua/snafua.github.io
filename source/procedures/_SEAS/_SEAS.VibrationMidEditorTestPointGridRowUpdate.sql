create function "_SEAS"."VibrationMidEditorTestPointGridRowUpdate"( in @StandardMachineId integer,in @ComponentCode numeric,in @ComponentOrder integer,in @DemodR bit,in @DemodA bit,in @DemodT bit,in @Low bit,in @High bit,in @Bearing smallint,in @Location char(10),in @Orientation char(3),
  in @RowId integer default null ) 
returns bit
begin
  declare @Result bit;
  set @Result = "SEAS"."VibrationMidEditorTestPointGridRowUpdate"(@StandardMachineId,@ComponentCode,@ComponentOrder,
    @DemodR,@DemodA,@DemodT,@Low,@High,@Bearing,@Location,@Orientation,@RowId);
  return(@Result)
end