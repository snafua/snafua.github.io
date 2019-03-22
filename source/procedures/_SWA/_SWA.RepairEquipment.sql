create procedure --JLD
"_SWA"."RepairEquipment"( 
  in @RowId char(1024),
  in @EquipmentRowId char(1024) default null ) 
result( 
  "RowId" char(1024),
  "VesselEquipmentRowId" char(1024),
  "EFD" char(80),
  "AllowancePartsList" char(20),
  "PartsQuantity" integer,
  "HasDescendants" bit,
  "EquipmentPermissions" integer ) 
begin
  /*
2018-10-30 JLD E-04166 B-19397
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
  call "SWA"."RepairEquipment"(@VesselId,@WorkRequestId,@EquipmentId)
end