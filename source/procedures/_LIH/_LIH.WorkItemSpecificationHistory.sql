create procedure "_LIH"."WorkItemSpecificationHistory"( 
  in @RowId char(512) ) 
result( 
  "RowId" char(512),
  "VesselName" char(128),
  "Availability" char(128),
  "Location" char(200),
  "EstimatedCost" numeric(15,2),
  "ActualCost" numeric(15,2),
  "AwardedCost" numeric(15,2),
  "RFPCount" integer,
  "RFPCost" numeric(15,2) ) 
begin
  declare @VesselId smallint;
  declare @WorkItemId integer;
  -- These are stupid to have here, not part of anything to do with specs
  declare @AvailabilityId integer;
  declare @ContractId integer;
  declare @WorkItemLibraryId integer;
  call "LIH"."RowIdDecode"(@RowId,@VesselId,@WorkItemId);
  call "LIH"."WorkItemSpecificationHistory"(@VesselId,@AvailabilityId,@ContractId,@WorkItemId,@WorkItemLibraryId)
end