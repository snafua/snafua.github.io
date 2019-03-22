create procedure --RJM
"_APM"."MaintenancePartsAdd"( 
  in @Equipments long varchar,
  in @Parts long varchar,
  in @QuantityRequired integer default 1 ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-08-02 RJM E-04174
*/
  declare @VesselId integer;
  declare @MaintenanceProcedureId integer;
  declare @EquipmentId integer;
  declare @LogisticsHSC char(25);
  declare @NavyStockNumber char(25);
  declare @PartCage char(25);
  declare @PartManufacturer char(128);
  declare @PartNumber char(40);
  declare @PartDescription char(128);
  declare @UnitPrice numeric(15,2);
  declare @UnitOfMeasure char(25);
  declare @EquipmentList long varchar;
  declare @PartQuantity integer;
  declare @NumberOfEquipment integer;
  declare @NumberOfParts integer;
  declare @ErrorMessage long varchar;
  declare local temporary table @TempEquipments(
    "EquipmentId" integer null,
    ) not transactional;
  -- Initialize qty variables
  set @PartQuantity = 0;
  set @NumberOfEquipment = 0;
  set @NumberOfParts = 0;
  set @PartQuantity = @QuantityRequired;
  for "EachEquipmentRow" as "EquipmentCursor" insensitive cursor for
    select "ECO"."BASE64DECODE"("CSValue") as @Equipment
      from "SWA"."ParseList"(@Equipments,',')
  do
    set @VesselId = "SWA"."KeyValuePairParse"(@Equipment,'VesselId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@Equipment,'EquipmentId');
    set @MaintenanceProcedureId = "SWA"."KeyValuePairParse"(@Equipment,'MaintenanceProcedureId');
    set @NumberOfEquipment = @NumberOfEquipment+1;
    insert into @TempEquipments( "EquipmentId" ) values
      ( @EquipmentId ) 
  end for;
  -- Create a CSV list of EquipmentId's and calculate the total quantity of each part
  if @NumberOfEquipment > 0 then
    set @PartQuantity = @QuantityRequired*@NumberOfEquipment;
    select "LIST"("EquipmentId") into @EquipmentList from @TempEquipments
  end if;
  for "EachPartRow" as "PartCursor" insensitive cursor for
    select "ECO"."BASE64DECODE"("CSValue") as @Part
      from "SWA"."ParseList"(@Parts,',')
  do
    set @NumberOfParts = @NumberOfParts+1;
    set @LogisticsHSC = "ECO"."BASE64DECODE"("SWA"."KeyValuePairParse"(@Part,'HSC'));
    set @NavyStockNumber = "ECO"."BASE64DECODE"("SWA"."KeyValuePairParse"(@Part,'NSN'));
    set @PartCage = "ECO"."BASE64DECODE"("SWA"."KeyValuePairParse"(@Part,'Cage'));
    set @PartManufacturer = "ECO"."BASE64DECODE"("SWA"."KeyValuePairParse"(@Part,'Manufacturer'));
    set @PartNumber = "ECO"."BASE64DECODE"("SWA"."KeyValuePairParse"(@Part,'PartNumber'));
    set @PartDescription = "ECO"."BASE64DECODE"("SWA"."KeyValuePairParse"(@Part,'Description'));
    set @UnitPrice = "ECO"."BASE64DECODE"("SWA"."KeyValuePairParse"(@Part,'UnitPrice'));
    set @UnitOfMeasure = "ECO"."BASE64DECODE"("SWA"."KeyValuePairParse"(@Part,'UnitOfMeasure'));
    call "APM"."MaintenancePartsAdd"(@VesselId,@MaintenanceProcedureId,@PartQuantity,@PartDescription,@PartManufacturer,@PartCage,
    @NavyStockNumber,@PartNumber,@UnitOfMeasure,@UnitPrice,@QuantityRequired,@EquipmentList)
  end for;
  set @ErrorMessage = "STRING"(@NumberOfParts,' parts were added successfully.');
  select 1 as "Success",
    @ErrorMessage as "ErrorMessage"
    from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select 0 as "Success",
      @ErrorMessage as "ErrorMessage"
      from "DUMMY"
end