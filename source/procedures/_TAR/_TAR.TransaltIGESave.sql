create procedure "_TAR"."TransaltIGESave"( in @RowId char(1024),
  in @EstimateIsActive bit default 1,
  in @EstimateFileName char(128) default null,
  in @Estimate long binary default null,
  in @LaborHours numeric(15,2) default 0,
  in @LaborRate numeric(15,2) default 0,
  in @LaborDollars numeric(15,2) default 0,
  in @OtherDollars numeric(15,2) default 0 ) 
result( "RowId" char(1024),
  "EstimateId" integer,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAR"."TransaltIGESave"(@RowId,
  @EstimateIsActive,
  @EstimateFileName,
  @Estimate,
  @LaborHours,
  @LaborRate,
  @LaborDollars,
  @OtherDollars)
end