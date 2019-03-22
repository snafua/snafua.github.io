create procedure "_PAV"."AvailabilitiesMainGridVesselsSummary"( 
  in @NodeId char(256) default null,
  in @OrderBy char(256) default null,
  in @IsLimited bit default 1 ) 
result( 
  "RowId" char(256),
  "VesselId" smallint,
  "VesselName" char(80),
  "Availability" char(128),
  "StartDate" date,
  "StartDateIsActual" char(1),
  "EndDate" date,
  "EndDateIsActual" char(1),
  "AvailabilityType" char(25),
  "Planning" integer,
  "Awarded" integer,
  "EstimatedCost" numeric(15,2),
  "AwardedCost" numeric(15,2),
  "ActualCost" numeric(15,2),
  "CanEdit" bit,
  "CanDelete" bit,
  "OrderBy" char(256),
  "IsDeleted" bit,
  "CanRestore" bit,
  "TotalRows" integer ) 
begin
  call "PAV"."AvailabilitiesMainGridVesselsSummary"(@NodeId,@OrderBy,@IsLimited)
end