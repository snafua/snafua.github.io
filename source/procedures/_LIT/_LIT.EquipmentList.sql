create procedure "_LIT"."EquipmentList"( 
  in @ModuleRowId char(1024),
  in @EquipmentRowIds long varchar default null,
  in @RowType char(25) default null,
  in @ApplicationId integer default null ) 
result( 
  "EquipmentRowId" char(1024),
  "EquipmentDescription" char(80),
  "AllowancePartsList" char(25),
  "EquipmentId" integer,
  "IsSelected" bit,
  "EncodedEquipmentRowId" char(1024) ) 
begin
  call "LIT"."EquipmentList"(@ModuleRowId,@EquipmentRowIds,@RowType,@ApplicationId)
end