create procedure "_PEM"."WorkItemModificationNumberGenerate"( 
  in @VesselId integer,
  in @ContractId integer ) 
result( 
  "WorkItemModNumber" char(10) ) 
begin
  call "PEM"."WorkItemModificationNumberGenerate"(@VesselId,@ContractId)
end