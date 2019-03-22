create procedure "_LIT"."EstimatePermissions"( 
  in @RowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "Permissions" integer ) 
begin
  declare @VesselId integer;
  declare @WorkItemLibraryId integer;
  if @ApplicationId is null then
    set @ApplicationId = "LIT"."ApplicationId"()
  end if;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemLibraryId');
  select "LIT"."EstimatePermissions"(@VesselId,@WorkItemLibraryId,@ApplicationId) as "Permissions"
end