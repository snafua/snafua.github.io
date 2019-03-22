create procedure --AIM
"_SUA"."UserRoleManagementDetails"( 
  in @NodeId char(1024),
  in @RowId char(1024) default null ) 
result( 
  "VesselId" integer,
  "VesselName" char(56),
  "VesselPermissions" integer ) 
begin
  /*
2018-12-07 AIM E-04333 B-20326
*/
  declare @VesselId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId');
  if(@VesselId is null and @RowId is not null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  call "SUA"."UserRoleManagementDetails"(@VesselId)
end