create procedure "_PAV"."WorkItemsTransfer"( 
  in @SrcRowId char(256),
  in @DstRowId char(256) ) 
result( 
  "RowId" char(256),
  "Success" bit,
  "ErrorMessage" char(3000) ) 
begin
  --2014-05-13 RJM updated RowId encode/decode
  declare @SrcVesselId integer;
  declare @DstVesselId integer;
  declare @SrcContractId integer;
  declare @SrcWorkItemId integer;
  declare @DstWorkItemId integer;
  declare @DstContractId integer;
  declare @SrcAvailabilityId integer;
  declare @DstAvailabilityId integer;
  declare @NewRowId char(256);
  declare @Message char(3000);
  call "PAV"."RowIdDecode"(@SrcRowId,@SrcVesselId,@SrcAvailabilityId,@SrcContractId,@SrcWorkItemId);
  call "PAV"."RowIdDecode"(@DstRowId,@DstVesselId,@DstAvailabilityId,@DstContractId,@DstWorkItemId);
  if @DstRowId is null then
    call "PAV"."WorkItemsServiceOrderCreate"(@SrcVesselId,@SrcAvailabilityId,@SrcContractId,@SrcWorkItemId);
    set @NewRowId = "PAV"."RowIdEncode"(@SrcVesselId,@SrcAvailabilityId,@SrcContractId,@SrcWorkItemId)
  else
    call "PAV"."WorkItemsTransfer"(@SrcVesselId,@DstContractId,@SrcWorkItemId);
    set @NewRowId = "PAV"."RowIdEncode"(@DstVesselId,@DstAvailabilityId,@DstContractId,@SrcWorkItemId)
  end if;
  select @NewRowId as "RowId",
    1 as "Success",
    null as "ErrorMessage"
    from "DUMMY"
exception
  when others then set @Message = "ERRORMSG"();
    select @NewRowId as "RowId",
      0 as "Success",
      @Message as "ErrorMessage"
      from "DUMMY"
end