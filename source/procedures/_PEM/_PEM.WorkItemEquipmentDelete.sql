create procedure "_PEM"."WorkItemEquipmentDelete"( 
  in @VesselId integer,
  in @ContractId integer,
  in @WorkItemId integer,
  in @EquipmentId integer ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PEM"."WorkItemEquipmentDelete"(@VesselId,@ContractId,@WorkItemId,@EquipmentId)
end