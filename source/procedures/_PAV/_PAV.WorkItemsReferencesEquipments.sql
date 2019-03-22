create procedure "_PAV"."WorkItemsReferencesEquipments"( 
  in @NodeId char(1024),
  in @RowId char(1024),
  in @ApplicationId integer default null ) 
result( 
  "RowId" char(1024),
  "SourceItemTitle" varchar(50),
  "EquipmentDescription" char(80),
  "AllowancePartsList" char(20),
  "EquipmentIsSelected" bit,
  "EquipmentReferencesTotal" integer,
  "SourceItemTitlesList" long varchar,
  "OrderBy" char(256) ) 
begin
  call "PAV"."WorkItemsReferencesEquipments"(@NodeId,@RowId,@ApplicationId)
end