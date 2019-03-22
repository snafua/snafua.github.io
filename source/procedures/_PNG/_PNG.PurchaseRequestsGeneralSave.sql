create procedure "_PNG"."PurchaseRequestsGeneralSave"( 
  in @RowId char(256),
  in @DateRequired date,
  in @OriginatorEmail char(128),
  in @TechnicalDocumentsRequired bit default 0,
  in @InspectionRequired bit default 0,
  in @AcceptEquivalent bit default 0,
  in @PurchaseRequestPriority integer default 5,
  in @SoleSourceJustification bit default 0,
  in @ShipToLocation char(128),
  in @AddressLineOne char(128),
  in @AddressLineTwo char(128),
  in @AddressLineThree char(128),
  in @City char(128),
  in @StateProvince char(128),
  in @ZipPostalCode char(15),
  in @Country char(128),
  in @PhoneNumber char(25),
  in @Attention char(128),
  in @NoteToBuyer long varchar,
  in @SubmitPurchaseRequest bit default 0 ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar,
  "SubmissionSuccess" bit,
  "SubmissionError" long varchar ) 
begin
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @PurchaseRequestId integer;
  declare @Success bit;
  declare @ErrorMessage long varchar;
  declare @SubmissionSuccess bit;
  declare @SubmissionError long varchar;
  set @Success = 1;
  set @ErrorMessage = 'No Error';
  set @SubmissionSuccess = @SubmitPurchaseRequest;
  set @SubmissionError = 'No Error';
  set @VesselId = "SWA"."KeyValuePairParse"(@RowId,'VesselId');
  set @WorkItemId = "SWA"."KeyValuePairParse"(@RowId,'WorkItemId');
  set @PurchaseRequestId = "SWA"."KeyValuePairParse"(@RowId,'PurchaseRequestId');
  call "PNG"."PurchaseRequestsGeneralSave"(@VesselId,@WorkItemId,@PurchaseRequestId,@DateRequired,@OriginatorEmail,@TechnicalDocumentsRequired,
  @InspectionRequired,@AcceptEquivalent,@PurchaseRequestPriority,@SoleSourceJustification,@ShipToLocation,@AddressLineOne,@AddressLineTwo,
  @AddressLineThree,@City,@StateProvince,@ZipPostalCode,@Country,@PhoneNumber,@Attention,@NoteToBuyer,@SubmitPurchaseRequest)
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    set @Success = 0;
    set @SubmissionSuccess = 0;
    select @Success as "Success",
      "REPLACE"(
      "REPLACE"(
      "REPLACE"(
      @ErrorMessage,
      "CHAR"(0),
      ''),
      "CHAR"(10),
      ''),
      "CHAR"(13),
      '') as "ErrorMessage",
      @SubmissionSuccess as "SubmissionSuccess",
      @SubmissionError as "SubmissionError"
      from "DUMMY"
end