create procedure "_AWB"."WorkbookUserNotes"( 
  in @RowId char(1024) ) 
result( 
  "UserNotes" long varchar ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @WorkRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@RowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowId,'MaintenanceProcedureId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  if @MaintenanceProcedureId is not null then
    call "AWB"."MaintenanceUserNotes"(@VesselId,@EquipmentId,@MaintenanceProcedureId)
  elseif @WorkRequestId is not null then
    select "AWB"."WorkRequestNotes"(@VesselId,@WorkRequestId) as "UserNotes"
  else
    select null as "UserNotes"
      from "DUMMY"
  end if
end