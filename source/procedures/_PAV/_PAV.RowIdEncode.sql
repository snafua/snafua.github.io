create procedure "_PAV"."RowIdEncode"( 
  in @VesselId smallint default null,
  in @AvailabilityId integer default null,
  in @ContractId integer default null,
  in @WorkItemId integer default null,
  in @ReferenceTypeId integer default null,
  in @WorkItemReferenceType char(15) default null,
  in @EquipmentId integer default null,
  in @WorkItemReferenceId integer default null ) 
result( 
  "RowId" char(1024) ) 
begin
  declare @RowId char(1024);
  set @RowId
     = "PAV"."RowIdEncode"(
    @VesselId,
    @AvailabilityId,
    @ContractId,
    @WorkItemId,
    @WorkItemReferenceType,
    @EquipmentId,
    @WorkItemReferenceId);
  select @RowId as "RowId"
    from "DUMMY"
end