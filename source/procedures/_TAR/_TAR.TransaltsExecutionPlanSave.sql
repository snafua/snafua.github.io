create procedure "_TAR"."TransaltsExecutionPlanSave"( in @RowId char(1024),in @VesselId integer,
  in @FiscalYear integer,
  in @EstimatedCost numeric(15,2) ) 
result( "RowId" char(1024),
  "VesselId" integer,
  "Transaltid" integer,
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "TAR"."TransaltsExecutionPlanSave"(@RowId,@VesselId,@FiscalYear,@EstimatedCost)
end