create procedure "_SWA"."MaintenanceActualHoursDivest"( 
  in @RowId long varchar ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @ErrorMessage long varchar;
  declare @Success bit;
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @MachineryHistoryId integer;
  declare @MachineryHistoryType char(15);
  declare @BilletId integer;
  declare @ManHourItemNo integer;
  set @MachineryHistoryType = 'Maintenance';
  set @Success = 1;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowId,'MachineryHistoryId');
  set @BilletId = "SWA"."KeyValuePairParse"(@RowId,'BilletId');
  if @MachineryHistoryId is not null then
    set @ManHourItemNo = "SWA"."PlannedMaintenanceManHourItemNo"(@VesselId,@MachineryHistoryId,@EquipmentId,@MaintenanceProcedureId);
    call "SAMM"."VesselsBilletsManHoursDelete"(@VesselId,@ManHourItemNo,@BilletId)
  else
    set @Success = 0;
    set @ErrorMessage = 'There is no MachineryHistoryId for this record'
  end if;
  select @Success as "Success",
    null as "ErrorMessage"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select 0 as "Success",
      @ErrorMessage as "ErrorMessage"
end