create procedure --RJM
"_APM"."MaintenancePartsSearchParts"( 
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
  /*
2018-08-06 RJM E-04174
*/
  declare @VesselId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  declare @HSC char(25); -- HSC
  declare @APL char(25); -- APL
  declare @CAGE char(25); -- CAGE
  declare @Manufacturer char(128); -- Manufacturer
  declare @ModelNumber char(128); -- ModelNumber
  set @VesselId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'VesselId');
  set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'EquipmentId');
  set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'MaintenanceProcedureId');
  set @HSC = "SWA"."KeyValuePairParse"(@EquipmentRowId,'HSC');
  set @APL = "SWA"."KeyValuePairParse"(@EquipmentRowId,'APL');
  set @CAGE = "SWA"."KeyValuePairParse"(@EquipmentRowId,'CAGE');
  set @Manufacturer = "SWA"."KeyValuePairParse"(@EquipmentRowId,'Manufacturer');
  set @ModelNumber = "SWA"."KeyValuePairParse"(@EquipmentRowId,'ModelNumber');
  set @NavyStockNumber = "ECO"."BASE64DECODE"(@NavyStockNumber);
  set @PartNumber = "ECO"."BASE64DECODE"(@PartNumber);
  set @PartDescription = "ECO"."BASE64DECODE"(@PartDescription);
  set @SupplierName = "ECO"."BASE64DECODE"(@SupplierName);
  set @CageCode = "ECO"."BASE64DECODE"(@CageCode);
  set @PartsSource = "ECO"."BASE64DECODE"(@PartsSource);
  set @OrderBy = "ECO"."BASE64DECODE"(@OrderBy);
  set @HSC = "ECO"."BASE64DECODE"(@HSC);
  set @APL = "ECO"."BASE64DECODE"(@APL);
  set @CAGE = "ECO"."BASE64DECODE"(@CAGE);
  set @Manufacturer = "ECO"."BASE64DECODE"(@Manufacturer);
  set @ModelNumber = "ECO"."BASE64DECODE"(@ModelNumber);
  if @OrderBy is null then set @OrderBy = 'PartNumber ASC, PartDescription ASC' end if;
  if @APLSource is null then set @APLSource = 1 end if;
  if @UseVessel is null then set @UseVessel = 1 end if;
  if(@PartsSource = 'Logistics Database') or(@PartsSource = '''Logistics Database''') then
    select
      "STRING"(
      'VesselId','=',
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
      from "APM"."MaintenancePartsSearchLogisticsParts"(@VesselId,@EquipmentId,@UseVessel,@HSC,@APL,@CAGE,@Manufacturer,@ModelNumber,
        @NavyStockNumber,@PartNumber,@PartDescription,@SupplierName,@CageCode)
  end if
exception
  when others then
    message "STRING"('Error: ',sqlcode,'; ',"ERRORMSG"()) type info to console
end