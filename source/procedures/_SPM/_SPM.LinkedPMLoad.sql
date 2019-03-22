create procedure "_SPM"."LinkedPMLoad"( 
  in @RowId char(512),
  in @OrderBy char(512) default null ) 
result( 
  "RowId" char(512),
  "EquipmentDescription" char(80),
  "MaintenanceCode" char(15),
  "MaintenanceDate" char(15),
  "MaintenanceSelected" bit,
  "Enabled" bit,
  "EquipmentId" integer,
  "MaintenanceDialogJSON" long varchar,
  "CanEdit" bit ) 
begin
  call "SPM"."LinkedPMLoad"(@RowId,@OrderBy)
end