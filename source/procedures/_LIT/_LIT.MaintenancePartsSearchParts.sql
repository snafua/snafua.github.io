create procedure "_LIT"."MaintenancePartsSearchParts"( 
  in @EquipmentRowId char(1024),
  in @NavyStockNumber char(20) default null,
  in @PartNumber char(40) default null,
  in @PartDescription char(80) default null,
  in @SupplierName char(80) default null,
  in @CageCode char(10) default null,
  in @PartsSource char(50) default null,
  in @OrderBy char(512) default null,
  in @APLSource bit default 1,
  in @UseVessel bit default 1 ) 
result( 
  "RowId" char(1024),
  "PartNumber" char(40),
  "PartDescription" char(80),
  "NavyStockNumber" char(20),
  "IsMaterial" bit,
  "OrderBy" char(1024),
  "HSC" char(12) ) 
begin
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @HSC char(25);
  declare @APL char(25);
  declare @CAGE char(25);
  declare @Manufacturer char(128);
  declare @ModelNumber char(128);
  set @VesselId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'MaintenanceProcedureId');
  set @HSC = "SWA"."KeyValuePairParse"(@EquipmentRowId,'HSC');
  set @APL = "SWA"."KeyValuePairParse"(@EquipmentRowId,'APL');
  set @CAGE = "SWA"."KeyValuePairParse"(@EquipmentRowId,'CAGE');
  set @Manufacturer = "SWA"."KeyValuePairParse"(@EquipmentRowId,'Manufacturer');
  set @ModelNumber = "SWA"."KeyValuePairParse"(@EquipmentRowId,'ModelNumber');
  set @NavyStockNumber = "ECO"."Base64Decode"(@NavyStockNumber);
  set @PartNumber = "ECO"."Base64Decode"(@PartNumber);
  set @PartDescription = "ECO"."Base64Decode"(@PartDescription);
  set @SupplierName = "ECO"."Base64Decode"(@SupplierName);
  set @CageCode = "ECO"."Base64Decode"(@CageCode);
  set @PartsSource = "ECO"."Base64Decode"(@PartsSource);
  set @OrderBy = "ECO"."Base64Decode"(@OrderBy);
  set @HSC = "ECO"."Base64Decode"(@HSC);
  set @APL = "ECO"."Base64Decode"(@APL);
  set @CAGE = "ECO"."Base64Decode"(@CAGE);
  set @Manufacturer = "ECO"."Base64Decode"(@Manufacturer);
  set @ModelNumber = "ECO"."Base64Decode"(@ModelNumber);
  if @OrderBy is null then set @OrderBy = 'PartNumber ASC, PartDescription ASC' end if;
  if @APLSource is null then set @APLSource = 1 end if;
  if @UseVessel is null then set @UseVessel = 1 end if;
  message @EquipmentRowId type info to console;
  if @PartsSource = 'Logistics Database' or @PartsSource = '''Logistics Database''' then
    select "STRING"('VesselId','=',
      @VesselId,',',
      'EquipmentId','=',
      @EquipmentId,',',
      'MaintenanceProcedureId','=',
      @MaintenanceProcedureId,',',
      'HSC','=',
      "BASE64_ENCODE"("LogisticsHSC"),',',
      'NSN','=',
      "BASE64_ENCODE"("NavyStockNumber"),',',
      'Cage','=',
      "BASE64_ENCODE"("PartCage"),',',
      'Manufacturer','=',
      "BASE64_ENCODE"("PartManufacturer"),',',
      'PartNumber','=',
      "BASE64_ENCODE"("PartNumber"),',',
      'Description','=',
      "BASE64_ENCODE"("PartDescription"),',',
      'UnitPrice','=',
      "UnitPrice",',',
      'UnitOfMeasure','=',
      "BASE64_ENCODE"("UnitOfMeasure")) as "RowId",
      "PartNumber" as "PartNumber",
      "PartDescription" as "PartDescription",
      "NavyStockNumber" as "NavyStockNumber",
      0 as "IsMaterial",
      @OrderBy as "OrderBy",
      "LogisticsHSC" as "HSC"
      from "LIT"."MaintenancePartsSearchLogisticsParts"(@VesselId,@EquipmentId,@UseVessel,@HSC,@APL,@CAGE,@Manufacturer,@ModelNumber,@NavyStockNumber,@PartNumber,@PartDescription,@SupplierName,@CageCode)
  end if
exception
  when others then message "STRING"('Error: ',sqlcode,'; ',"ERRORMSG"()) type info to console
end