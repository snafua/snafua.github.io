create procedure "_PNG"."PurchaseRequestsGeneral"( 
  in @RowId char(256) ) 
result( 
  "DateRequired" date,
  "FundCode" char(80),
  "WorkItemTitle" char(128),
  "Originator" char(256),
  "OriginatorEmail" char(128),
  "TechnicalDocumentsRequired" bit,
  "InspectionRequired" bit,
  "AcceptEquivalent" bit,
  "PurchaseRequestPriority" integer,
  "WorkItemNumber" char(25),
  "SoleSourceJustification" bit,
  "ShipToLocation" char(128),
  "AddressLineOne" char(128),
  "AddressLineTwo" char(128),
  "AddressLineThree" char(128),
  "City" char(128),
  "StateProvince" char(128),
  "ZipPostalCode" char(15),
  "Country" char(128),
  "PhoneNumber" char(25),
  "Attention" char(128),
  "NoteToBuyer" long varchar,
  "CanImportSources" bit ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@RowId,'PurchaseRequestId');
  call "PNG"."PurchaseRequestsGeneral"(@VesselId,@WorkItemId,@PurchaseRequestId)
end