create procedure "_PNG"."PurchaseRequestsMORData"( 
  in @RowId char(256) ) 
result( 
  "Ship" char(80),
  "Originator" char(80),
  "RDD" date,
  "OriginatorEmail" char(254),
  "StartDate" date,
  "EndDate" date,
  "EndItemApp" char(128),
  "FundCode" char(80),
  "Manufacturer" char(128),
  "Cage" char(10),
  "SerialNumber" char(80),
  "ModelNumber" char(80),
  "RIC" char(25),
  "HSC" char(12),
  "SpecItem" char(80),
  "NoteToBuyers" long varchar,
  "PTDRequired" bit,
  "CertInspection" bit,
  "EqualUnitAccept" bit,
  "SoleSource" bit,
  "Priority" integer,
  "ShippingLocation" char(128),
  "NewLocation" char(128),
  "Address1" char(128),
  "City" char(128),
  "Address2" char(128),
  "Zip" char(15),
  "StateProvince" char(128),
  "Phone" char(23),
  "Country" char(2),
  "MarkFor" char(128),
  "Total" numeric(15,2) ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  declare @WorkItemEquipmentId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@RowId,'PurchaseRequestId');
  set @WorkItemEquipmentId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemEquipmentId');
  call "PNG"."PurchaseRequestsMORData"(@VesselId,@WorkItemId,@PurchaseRequestId,@WorkItemEquipmentId)
end