create procedure "_PNG"."PurchaseRequestsSourcesAddEditSave"( 
  in @VendorName char(128),
  in @CageCode char(5) default null,
  in @AddressLineOne char(100) default null,
  in @AddressLineTwo char(100) default null,
  in @AddressLineThree char(100) default null,
  in @City char(128) default null,
  in @StateProvince char(128) default null,
  in @ZipPostalCode char(15) default null,
  in @Country char(128) default null,
  in @PhoneNumber char(25) default null,
  in @FaxNumber char(25) default null,
  in @EmailAddress char(128) default null,
  in @PointOfContact char(128) default null,
  in @RowId char(256) default null,
  in @SourceRowId char(256) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar,
  "SourceRowId" char(256) ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  declare @PurchaseRequestVendorId integer;
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@RowId,'PurchaseRequestId');
  set @PurchaseRequestVendorId = "SWA"."KeyValuePairParse"(@SourceRowId,'PurchaseRequestVendorId');
  set @VendorName = "ECO"."CheckNull"(@VendorName);
  set @CageCode = "ECO"."CheckNull"(@CageCode);
  set @AddressLineOne = "ECO"."CheckNull"(@AddressLineOne);
  set @AddressLineTwo = "ECO"."CheckNull"(@AddressLineTwo);
  set @AddressLineThree = "ECO"."CheckNull"(@AddressLineThree);
  set @City = "ECO"."CheckNull"(@City);
  set @StateProvince = "ECO"."CheckNull"(@StateProvince);
  set @ZipPostalCode = "ECO"."CheckNull"(@ZipPostalCode);
  set @Country = "ECO"."CheckNull"(@Country);
  set @PhoneNumber = "ECO"."CheckNull"(@PhoneNumber);
  set @FaxNumber = "ECO"."CheckNull"(@FaxNumber);
  set @EmailAddress = "ECO"."CheckNull"(@EmailAddress);
  set @PointOfContact = "ECO"."CheckNull"(@PointOfContact);
  set @SourceRowId = "ECO"."CheckNull"(@SourceRowId);
  call "PNG"."PurchaseRequestsSourcesAddEditSave"(@VendorName,@CageCode,@AddressLineOne,@AddressLineTwo,@AddressLineThree,@City,@StateProvince,@ZipPostalCode,@Country,
  @PhoneNumber,@FaxNumber,@EmailAddress,@PointOfContact,@VesselId,@WorkItemId,@PurchaseRequestId,@PurchaseRequestVendorId,@SourceRowId)
end