create procedure "_PAV"."WorkItemsPartsEquipmentList"( 
  in @ModuleRowId char(1024),
  in @EquipmentRowIds long varchar default null,
  in @RowType char(25) default null,
  in @ApplicationId integer default null ) 
result( 
  "EquipmentRowId" char(1024),
  "EquipmentDescription" char(120),
  "AllowancePartsList" char(25),
  "WorkItemEquipmentId" integer,
  "IsSelected" bit,
  "EncodedEquipmentRowId" char(1024) ) 
begin
  call "PAV"."WorkItemsPartsEquipmentList"(@ModuleRowId,@EquipmentRowIds,@RowType,@ApplicationId)
end