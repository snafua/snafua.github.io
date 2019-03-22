create procedure "_PEM"."WorkItemsPermissions"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "CanCreate" integer,
  "CanExportBrowse" integer,
  "CanExportSpecifications" integer,
  "CanExportEstimates" integer,
  "EnableEstimatesCheckbox" integer,
  "EnableAwardCheckbox" integer,
  "EnableActualsCheckbox" integer,
  "CanViewDetails" integer,
  "CanViewSpecifications" integer,
  "CanViewEstimates" integer ) 
begin
  call "PEM"."WorkItemsPermissions"(@VesselId,@ContractId)
end