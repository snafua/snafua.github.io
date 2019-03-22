create procedure "_SWA"."WorkbookResetSchedule"( 
  in @NodeId char(1024) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @ErrorMessage long varchar;
  if "ISNUMERIC"(@NodeId) = 1 then
    set @VesselId = @NodeId
  else
    set @VesselId = "SWA"."KeyValuePairParse"(@NodeId,'VesselId')
  end if;
  call "SAMM"."P_MaintenanceResetScheduleVessel"(@VesselId);
  select 1 as "Success",
    null as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select 0 as "Success",
      @ErrorMessage as "ErrorMessage"
      from "DUMMY"
end