create procedure "_SUA"."UserLoginTypeUpdate"( 
  in @NodeId char(1024),
  in @RowId char(1024),
  in @LoginType char(25) ) 
result( 
  "RowId" char(1024),
  "UserPassword" char(128),
  "Success" bit,
  "ErrorMessage" char(256) ) 
begin
  declare @VesselId integer;
  declare @UserId integer;
  declare @AllVessels bit;
  if(@RowId is null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId');
    set @UserId = null
  else
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
    set @UserId = "SWA"."KeyValuePairParse"(@RowId,'UserId')
  end if;
  select @RowId as "RowId",
    "UserPassword" as "UserPassword",
    "Success" as "Success",
    "ErrorMessage" as "ErrorMessage"
    from "SUA"."UserLoginTypeUpdate"(@VesselId,@UserId,@LoginType)
end