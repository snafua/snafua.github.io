create procedure "_SWA"."VesselSystemOperationalStatusSave"( 
  in @VesselId integer,
  in @NodeId char(1024),
  in @OperationalStatusId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @SystemId integer;
  set @SystemId = "SWA"."KeyValuePairParse"(@NodeId,'SystemId');
  call "SWA"."VesselSystemOperationalStatusSave"(@VesselId,@SystemId,@OperationalStatusId)
end