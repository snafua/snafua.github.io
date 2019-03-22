create procedure "_SPM"."MaintenanceReferencesUpdate"( 
  in @VesselId integer,
  in @EquipmentId integer,
  in @ProcedureId integer,
  in @ItemId char(20),
  in @AvailabilityId long varchar default null,
  in @ContractId long varchar default null,
  in @WorkItemId long varchar default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  if(@AvailabilityId = 'NULL') or(@AvailabilityId = '') then
    set @AvailabilityId = null
  end if;
  if(@ContractId = 'NULL') or(@ContractId = '') then
    set @ContractId = null
  end if;
  if(@WorkItemId = 'NULL') or(@WorkItemId = '') then
    set @WorkItemId = null
  end if;
  call "SPM"."MaintenanceReferencesUpdate"(@VesselId,@EquipmentId,@ProcedureId,@ItemId,@AvailabilityId,@ContractId,@WorkItemId)
end