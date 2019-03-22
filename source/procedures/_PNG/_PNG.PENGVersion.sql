create procedure --E-03647
--RJM
"_PNG"."PENGVersion"( 
  in @ApplicationId integer default null,
  in @NodeId long varchar default null,
  in @RowId long varchar default null ) 
result( 
  "PENGVersion" integer ) 
begin
  declare @VesselId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId');
  if(@VesselId is null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
  end if;
  call "PNG"."PENGVersion"(@VesselId)
end