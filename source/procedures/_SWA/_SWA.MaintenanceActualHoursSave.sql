create procedure "_SWA"."MaintenanceActualHoursSave"( 
  in @RowId long varchar,
  in @BilletId integer,
  in @RegularHours numeric(16,2),
  in @OvertimeHours numeric(16,2) ) 
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
  declare @ManHourItemNo integer;
  set @MachineryHistoryType = 'Maintenance';
  set @Success = 1;
  for "MaintenanceItems" as "MaintenanceCursor" insensitive cursor for
    select "CSValue" as "_MaintenanceData"
      from "SWA"."ParseList"(@RowId,';')
  do
    set @VesselId = "SWA"."KeyValuePairParse"("_MaintenanceData",'VesselId');
    set @EquipmentId = "SWA"."KeyValuePairParse"("_MaintenanceData",'EquipmentId');
    set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"("_MaintenanceData",'MaintenanceProcedureId');
    set @MachineryHistoryId = "SWA"."KeyValuePairParse"("_MaintenanceData",'MachineryHistoryId');
    if(@MachineryHistoryId is not null) then
      set @ManHourItemNo = "SWA"."PlannedMaintenanceManHourItemNo"(@VesselId,@MachineryHistoryId);
      if(@ManHourItemNo is null) then
        set @ManHourItemNo = "SAMM"."VesselsManHoursItemsInsert"(@VesselId,null,@MachineryHistoryId,current utc timestamp,0,'Maintenance')
      end if;
      call "SAMM"."VesselsBilletsManHoursInsertUpdate"(@VesselId,@ManHourItemNo,'Regular',@BilletId,@RegularHours);
      call "SAMM"."VesselsBilletsManHoursInsertUpdate"(@VesselId,@ManHourItemNo,'OverTime',@BilletId,@OvertimeHours)
    else
      set @Success = 0;
      set @ErrorMessage = 'There is no MachineryHistoryId for this record'
    end if end for;
  select @Success as "Success",
    null as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    set @Success = 0;
    select 0 as "Success",
      @ErrorMessage as "ErrorMessage"
      from "DUMMY"
end