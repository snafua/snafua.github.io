create procedure "_TAR"."TransaltsExecutionPlan"( in @RowId char(1024) ) 
result( "RowId" char(1024),
  "VesselId" integer,
  "Transaltid" integer,
  "VesselName" char(80),
  "VesselsStatus" char(25),
  "FiscalYear" integer,
  "EstimatedCost" numeric(15,2),
  "ActualCost" numeric(15,2) ) 
begin
  call "TAR"."TransaltsExecutionPlan"(@RowId)
end