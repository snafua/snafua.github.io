create procedure "_AWB"."RunMaintenanceScheduler"( 
  in @NodeId char(1024),
  in @BeginDate date default null,
  in @EndDate date default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  if "ISNUMERIC"(@NodeId) = 1 then
    set @VesselId = @NodeId
  else
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId')
  end if;
  call "AWB"."RunMaintenanceScheduler"(@VesselId,@BeginDate,@EndDate)
end