create procedure --AIM
"_APM"."VesselsEquipmentMaintenance"( 
  in @RowId char(1024),
  in @EquipmentId char(1024),
  in @VesselId char(1024) default null ) 
result( 
  "RowId" char(1024),
  "MCode" char(50),
  "MaintenanceProcedureType" char(15),
  "MaintenanceCompletionDate" timestamp,
  "MaintenanceScheduleDate" timestamp,
  "ProgramName" char(20),
  "MaintenancePermission" smallint,
  "IsSelected" bit ) 
begin
  /*
2018-09-26 AIM E-04245 B-19398
*/
  declare @WorkRequestId integer;
  if "ISNUMERIC"(@VesselId) <> 1 then
    set @VesselId = "SWA"."KeyValuePairParse"(@VesselId,'VesselId');
    if(@VesselId is null) then
      set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId')
    end if
  end if;
  if "ISNUMERIC"(@EquipmentId) <> 1 then
    set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentId,'EquipmentId')
  end if;
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  call "APM"."VesselsEquipmentMaintenance"(@VesselId,@EquipmentId,@WorkRequestId)
end