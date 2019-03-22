create procedure -- 4/23/2018 JLD E-03997 B-17681 added RowId to return
"_SPM"."DetailsCostHistoryGrid"( 
  in @RowId char(512),
  in @OrderBy char(256) default null ) 
result( 
  "RowId" char(512),
  "VesselId" integer,
  "VesselName" char(128),
  "MaintenanceDate" date,
  "Location" char(128),
  "Availability" char(128),
  "Contract" char(128),
  "WorkItem" char(25),
  "Estimate" numeric(15,2),
  "Actual" numeric(15,2),
  "OrderBy" char(256),
  "WorkItemId" integer,
  "PMsComplete" char(6) ) 
begin
  declare @VesselId integer;
  declare @WorkItemLibraryId integer;
  declare @WorkItemId integer;
  call "SPM"."RowIdDecode"(@RowId,@VesselId,@WorkItemLibraryId,@WorkItemId);
  call "SPM"."DetailsCostHistoryGrid"(@WorkItemLibraryId,@OrderBy)
end