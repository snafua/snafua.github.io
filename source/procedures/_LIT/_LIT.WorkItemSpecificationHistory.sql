create procedure -- TWH Moved back into Beta SQL because review comments require an app change
-- JJD Rejected due to unrecognizable attribute names
"_LIT"."WorkItemSpecificationHistory"( 
  in @RowId char(512) ) 
result( 
  "RowId" char(512),
  "VesselName" char(128),
  "Availability" char(128),
  "Location" char(200),
  "WorkItem" char(25),
  "CAT" char(5),
  "Originator" char(128),
  "EstimatedCost" numeric(15,2),
  "ActualCost" numeric(15,2),
  "AwardedCost" numeric(15,2),
  "RFPCount" integer,
  "RFPCost" numeric(15,2),
  "IsServiceOrder" bit ) 
begin
  --2014-09-03 RJM removed PENG JSON
  declare @VesselId smallint;
  declare @WorkItemLibraryId integer;
  call "LIT"."RowIdDecode"(@RowId,@VesselId,@WorkItemLibraryId);
  call "LIT"."WorkItemSpecificationHistory"(@VesselId,@WorkItemLibraryId,null)
end