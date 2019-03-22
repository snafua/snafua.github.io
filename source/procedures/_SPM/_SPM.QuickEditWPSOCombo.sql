create procedure "_SPM"."QuickEditWPSOCombo"( 
  in @RowIds long varchar,
  in @AvailabilityId integer default null ) 
result( 
  "ContractId" char(512),
  "ContractNumber" char(25),
  "ContractType" char(15) ) 
begin
  call "SPM"."QuickEditWPSOCombo"(@RowIds,@AvailabilityId)
end