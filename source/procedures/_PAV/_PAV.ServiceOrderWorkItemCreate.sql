create procedure "_PAV"."ServiceOrderWorkItemCreate"( 
  in @ServiceOrderRowId char(256),
  in @WorkPackageRowId char(256) ) 
result( 
  "RowId" char(256),
  "Success" bit,
  "ErrorMessage" char(3000) ) 
--2014-05-13 RJM updated RowId encode/decode
begin
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
  call "PAV"."RowIdDecode"(@ServiceOrderRowId,@SrcVesselId,@SrcAvailabilityId,@SrcContractId,@SrcWorkItemId);
  call "PAV"."RowIdDecode"(@WorkPackageRowId,@DstVesselId,@DstAvailabilityId,@DstContractId,@DstWorkItemId);
  call "PAV"."ServiceOrderWorkItemCreate"(@SrcVesselId,@SrcAvailabilityId,@SrcContractId,@DstContractId,@SrcWorkItemId);
  set @NewRowId = "PAV"."RowIdEncode"(@DstVesselId,@DstAvailabilityId,@DstContractId,@SrcWorkItemId);
  select @NewRowId as "RowId",
    1 as "Success",
    null as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @Message = "ERRORMSG"();
    select @NewRowId as "RowId",
      0 as "Success",
      @Message as "ErrorMessage"
      from "DUMMY"
end