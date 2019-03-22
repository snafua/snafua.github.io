create procedure "_SPM"."MaintenanceAssignmentPrompt"( 
  in @PMIARowId char(1024),
  in @WorkItemId integer ) 
result( 
  "HasError" bit,
  "ErrorMessage" char(1024) ) 
begin
  declare @VesselId integer;
  declare @WorkItemLibraryId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@PMIARowId,'VesselId');
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@PMIARowId,'WorkItemLibraryId');
  call "SPM"."MaintenanceAssignmentPrompt"(@VesselId,@WorkItemId,@WorkItemLibraryId)
end