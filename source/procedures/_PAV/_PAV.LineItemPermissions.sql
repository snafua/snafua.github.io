create procedure "_PAV"."LineItemPermissions"( 
  in @RowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "Permissions" integer ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  if @ApplicationId is null then
    set @ApplicationId = "PAV"."ApplicationId"()
  end if;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  select "PAV"."LineItemPermissions"(@VesselId,@WorkItemId,@ApplicationId) as "Permissions"
end