create procedure "_SWA"."QuickEditAttachmentsLoad"( 
  in @RowIds long varchar ) 
result( 
  "RowId" char(256),
  "FileSize" integer,
  "FileName" char(128),
  "FileDescription" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkRequestId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @MachineryHistoryId integer;
  if "CHARINDEX"(';',@RowIds) > 0 then
    select null as "RowId",
      null as "FileSize",
      'Multiple Items Selected' as "FileName",
      null as "FileDescription"
      from "DUMMY"
  else
    set @VesselId = "SWA"."KeyValuePairParse"(@RowIds,'VesselId');
    set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowIds,'WorkRequestId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@RowIds,'EquipmentId');
    set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@RowIds,'MaintenanceProcedureId');
    set @MachineryHistoryId = "SWA"."KeyValuePairParse"(@RowIds,'MachineryHistoryId');
    call "SWA"."QuickEditAttachmentsLoad"(@VesselId,@MachineryHistoryId)
  end if
end