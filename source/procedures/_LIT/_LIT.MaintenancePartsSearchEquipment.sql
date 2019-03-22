create procedure --JLD
"_LIT"."MaintenancePartsSearchEquipment"( 
  in @EquipmentRowId char(1024),
  in @ModuleRowId char(1024) default null,
  in @NavyStockNumber char(20) default null,
  in @PartNumber char(40) default null,
  in @PartDescription char(80) default null,
  in @SupplierName char(80) default null,
  in @CageCode char(10) default null,
  in @PartsSource char(50) default null,
  in @OrderBy char(512) default null,
  in @HSC char(12) default null,
  in @EFD char(80) default null,
  in @HSCScopeId smallint default null,
  in @EFDScopeID smallint default null,
  in @APLSource bit default 1,
  in @UseVessel bit default 1,
  in @APLRIC char(25) default null,
  in @APLRICScopeId smallint default null ) 
result( 
  "RowId" char(1024),
  "EFD" char(150),
  "PartCount" integer,
  "HSC" char(12),
  "APLRIC" char(11) ) 
begin
  /*
2016-08-29 RJM  Adapted from _PAV.WorkItemsPartsSearchEquipment
2019-02-15 JLD E-04898 D-04245 Add in @ModuleRowId Parameter
*/
  declare @VesselId integer;
  declare @WorkItemLibraryId integer;
  declare @EquipmentId integer;
  declare @MaintenanceProcedureId integer;
  set @NavyStockNumber = "ECO"."Base64Decode"(@NavyStockNumber);
  set @PartNumber = "ECO"."Base64Decode"(@PartNumber);
  set @PartDescription = "ECO"."Base64Decode"(@PartDescription);
  set @SupplierName = "ECO"."Base64Decode"(@SupplierName);
  set @CageCode = "ECO"."Base64Decode"(@CageCode);
  set @HSC = "ECO"."Base64Decode"(@HSC);
  set @EFD = "ECO"."Base64Decode"(@EFD);
  if @APLSource is null then set @APLSource = 1 end if;
  if @UseVessel is null then set @UseVessel = 1 end if;
  if @OrderBy is null then set @OrderBy = 'HSC ASC' end if;
  if("ECO"."CheckNull"(@EquipmentRowId) is not null) then
    set @VesselId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'VesselId');
    set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'WorkItemLibraryId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'EquipmentId');
    set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@EquipmentRowId,'MaintenanceProcedureId')
  else
    set @VesselId = "SWA"."KeyValuePairParse"(@ModuleRowId,'VesselId');
    set @WorkItemLibraryId = "SWA"."KeyValuePairParse"(@ModuleRowId,'WorkItemLibraryId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@ModuleRowId,'EquipmentId');
    set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@ModuleRowId,'MaintenanceProcedureId')
  end if;
  message "STRING"('Equipment Row Id: ',@EquipmentRowId) type info to console;
  --Call other PAV if new PartsSource added
  if @PartsSource = 'Logistics Database' or @PartsSource = '''Logistics Database''' then
    select "STRING"('VesselId','=',
      @VesselId,',',
      'WorkItemLibraryId','=',
      @WorkItemLibraryId,',',
      'EquipmentId','=',
      @EquipmentId,',',
      'MaintenanceProcedureId','=',
      @MaintenanceProcedureId,',',
      'HSC','=',
      "BASE64_ENCODE"("LogisticsHSC"),',',
      'APL','=',
      "BASE64_ENCODE"("AllowancePartsList"),',',
      'CAGE','=',
      "BASE64_ENCODE"("EquipmentCAGE"),',',
      'Manufacturer','=',
      "BASE64_ENCODE"("EquipmentManufacturer"),',',
      'ModelNumber','=',
      "BASE64_ENCODE"("EquipmentModelNumber"),',',
      'UID','=',
      "TemporaryId") as "RowId",
      "STRING"("LogisticsHSC",' - ',
      "EquipmentDescription",' - ',
      "EquipmentManufacturer",' - ',
      "EquipmentModelNumber") as "EFD",
      "EquipmentPartCount" as "PartCount",
      "LogisticsHSC" as "HSC",
      "AllowancePartsList" as "APLRIC"
      from "LIT"."MaintenancePartsSearchLogisticsEquipment"(@VesselId,@EquipmentId,@MaintenanceProcedureId,@APLSource,@UseVessel,@NavyStockNumber,@PartNumber,@PartDescription,@SupplierName,@CageCode,@HSC,@EFD,@HSCScopeId,@EFDScopeID,@APLRIC,@APLRICScopeId)
  end if
exception
  when others then
    message "STRING"('Error: ',sqlcode,'; ',"ERRORMSG"()) type info to console
end