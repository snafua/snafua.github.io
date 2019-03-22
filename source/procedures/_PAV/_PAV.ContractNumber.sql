create procedure "_PAV"."ContractNumber"( 
  in @RowId char(1024) ) 
result( 
  "ContractNumber" char(25) ) 
begin
  declare @VesselId integer;
  declare @ContractId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @ContractId = "SWA"."KeyValuePairParse"(@RowId,'ContractId');
  call "PAV"."ContractNumber"(@VesselId,@ContractId)
end