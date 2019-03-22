create procedure -- JHM
"_TAE"."RowIdEncode"( 
  in @VesselId smallint default null,
  in @TransaltId integer default null,
  in @SWBS char(4) default null,
  in @SpecificationId integer default null,
  in @WorkItemLibraryId integer default null,
  in @WorkItemId integer default null,
  in @WorkItemReferenceId integer default null,
  in @AvailabilityId integer default null,
  in @ContractId integer default null ) 
result( 
  "RowId" long varchar ) 
begin
  /*
2019-01-03 JHM E-03401, B-20509 - Initial object creation
*/
  declare @RowId long varchar;
  set @RowId = "TAE"."RowIdEncode"(@VesselId,@TransaltId,@SWBS,@SpecificationId,@WorkItemLibraryId,@WorkItemId,@WorkItemReferenceId,@AvailabilityId,@ContractId);
  select @RowId as "RowId"
    from "DUMMY"
end