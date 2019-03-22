create procedure "_SWA"."VesselOperationalStatusSave"( 
  in @VesselId integer,
  in @OperationalStatusId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselIdInt integer;
  if "ISNUMERIC"(@VesselId) = 1 then
    set @VesselIdInt = @VesselId
  else
    set @VesselIdInt = "SWA"."KeyValuePairParse"(@VesselId,'VesselId')
  end if;
  call "SWA"."VesselOperationalStatusSave"(@VesselIdInt,@OperationalStatusId)
end