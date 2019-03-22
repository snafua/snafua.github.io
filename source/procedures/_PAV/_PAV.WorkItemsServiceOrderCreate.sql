create procedure "_PAV"."WorkItemsServiceOrderCreate"( 
  in @WorkItemRowId char(256) ) 
result( 
  "RowId" char(256),
  "Success" bit,
  "ErrorMessage" char(3000) ) 
begin
  --2014-05-13 RJM updated RowId encode/decode
  declare @VesselId integer;
  declare @AvailabilityId integer;
  declare @ContractId integer;
  declare @WorkItemId integer;
  declare @Message char(3000);
  call "PAV"."RowIdDecode"(@WorkItemRowId,@VesselId,@AvailabilityId,@ContractId,@WorkItemId);
  call "PAV"."WorkItemsServiceOrderCreate"(@VesselId,@AvailabilityId,@ContractId,@WorkItemId);
  select @WorkItemRowId as "RowId",
    1 as "Success",
    null as "ErrorMessage"
    from "DUMMY"
exception
  when others then set @Message = "ERRORMSG"();
    select @WorkItemRowId as "RowId",
      0 as "Success",
      @Message as "ErrorMessage"
      from "DUMMY"
end