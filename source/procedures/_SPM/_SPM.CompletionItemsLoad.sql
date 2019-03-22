create procedure "_SPM"."CompletionItemsLoad"( 
  in @RowId char(512),
  in @LinkedPMRowIds long varchar,
  in @OrderBy char(512) default null ) 
result( 
  "RowId" char(512),
  "EquipmentId" integer,
  "EquipmentDescription" char(80),
  "MaintenanceCode" char(4),
  "MaintenanceDate" char(10),
  "OrderBy" char(256) ) 
begin
  call "SPM"."CompletionItemsLoad"(@RowId,@LinkedPMRowIds,@OrderBy)
end