create procedure "_PNG"."PurchaseRequestLocationInsertUpdate"( 
  in @RowId char(1024),
  in @ShipToLocation char(128),
  in @AddressLineOne char(128),
  in @AddressLineTwo char(128) default null,
  in @AddressLineThree char(128) default null,
  in @City char(128),
  in @StateProvince char(128),
  in @ZipPostalCode char(15),
  in @Country char(128) ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@RowId,'PurchaseRequestId');
  call "PNG"."PurchaseRequestLocationInsertUpdate"(@VesselId,@WorkItemId,@PurchaseRequestId,@ShipToLocation,
  @AddressLineOne,@AddressLineTwo,@AddressLineThree,
  @City,@StateProvince,@ZipPostalCode,@Country)
end