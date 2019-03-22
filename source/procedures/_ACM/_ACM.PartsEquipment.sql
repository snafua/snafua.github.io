create procedure --JLD
"_ACM"."PartsEquipment"( 
  in @RowId char(1024),
  in @EquipmentRowId char(1024) default null ) 
result( 
  "NavyStockNumber" char(20),
  "PartDescription" char(80),
  "PartNumber" char(40),
  "PartStatus" char(40),
  "UnitCost" numeric(15,2),
  "QuantityOrdered" integer,
  "QuantityRequired" integer,
  "PartPermission" integer,
  "PartRowId" char(1024) ) 
begin
  /*
2018-08-15 RJM E-04174
2018-09-27 JLD E-04166 B-19397
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
  call "ACM"."PartsEquipment"(@VesselId,@WorkRequestId,@EquipmentId)
end