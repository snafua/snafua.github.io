create procedure "_ACM"."RepairCompletionMaintenance"( 
  in @RowId char(1024),
  in @EquipmentRowId char(1024) default null ) 
result( 
  "RowId" char(1024),
  "MaintenanceRowId" char(1024),
  "MaintenanceProcedureTitle" char(50),
  "MCode" char(50),
  "EquipmentDescription" char(80),
  "LastCompletedDate" timestamp,
  "NextDueDate" timestamp,
  "MaintenancePermission" integer ) 
begin
  /*
2018-09-26 AIM E-04245 B-19398
2019-02-25 JLD E-04621 D-04257 Breaking for Availabilities Unsourced Items 
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
  declare @EquipmentId integer;
  declare @WorkItemReferenceType char(20);
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'WorkRequestId');
  set @WorkItemReferenceType = "ECO"."CheckNull"("SWA"."KeyValuePairParse"(@RowId,'WorkItemReferenceType'));
  if(@EquipmentRowId is not null) then
    set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'EquipmentId')
  end if;
  if(@WorkRequestId is null and @WorkItemReferenceType = 'Repair') then
    set @WorkRequestId = "SWA"."KeyValuePairParse"(@RowId,'ReferenceTypeId')
  end if;
  call "ACM"."RepairCompletionMaintenance"(@VesselId,@WorkRequestId,@EquipmentId)
end