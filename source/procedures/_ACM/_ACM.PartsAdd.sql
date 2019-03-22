create procedure --E-03519
--RJM
"_ACM"."PartsAdd"( 
  in @Equipments long varchar,
  in @Parts long varchar,
  in @QuantityRequired integer default 1 ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2018-08-14 RJM
*/
  declare @VesselId integer;
  declare @WorkRequestId integer;
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
  declare local temporary table @TempEquipments(
    "EquipmentId" integer null,
    ) not transactional;
  -- Initialize qty variables
  set @PartQuantity = 0;
  set @NumberOfEquipment = 0;
  set @NumberOfParts = 0;
  set @PartQuantity = @QuantityRequired;
  for "EachEquipmentRow" as "EquipmentCursor" insensitive cursor for
    select "ECO"."Base64Decode"("CSValue") as @Equipment
      from "SWA"."ParseList"(@Equipments,',')
  do
    set @VesselId = "SWA"."KeyValuePairParse"(@Equipment,'VesselId');
    set @EquipmentId = "SWA"."KeyValuePairParse"(@Equipment,'EquipmentId');
    set @WorkRequestId = "SWA"."KeyValuePairParse"(@Equipment,'WorkRequestId');
    set @NumberOfEquipment = @NumberOfEquipment+1;
    insert into @TempEquipments( "EquipmentId" ) values( @EquipmentId ) 
  end for;
  -- Create a CSV list of EquipmentId's and calculate the total quantity of each part
  if @NumberOfEquipment > 0 then
    set @PartQuantity = @QuantityRequired*@NumberOfEquipment;
    select "LIST"("EquipmentId") into @EquipmentList from @TempEquipments
  end if;
  for "EachPartRow" as "PartCursor" insensitive cursor for
    select "ECO"."Base64Decode"("CSValue") as @Part
      from "SWA"."ParseList"(@Parts,',')
  do
    set @NumberOfParts = @NumberOfParts+1;
    set @LogisticsHSC = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'HSC'));
    set @NavyStockNumber = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'NSN'));
    set @PartCage = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'Cage'));
    set @PartManufacturer = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'Manufacturer'));
    set @PartNumber = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'PartNumber'));
    set @PartDescription = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'Description'));
    set @UnitPrice = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'UnitPrice'));
    set @UnitOfMeasure = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'UnitOfMeasure'));
    call "ACM"."PartsAdd"(@VesselId,@WorkRequestId,@PartQuantity,@PartDescription,@PartManufacturer,@PartCage,
    @NavyStockNumber,@PartNumber,@UnitOfMeasure,@UnitPrice,@QuantityRequired,@EquipmentList)
  end for;
  select 1,"STRING"(@NumberOfParts,' parts were added successfully...') from "DUMMY"
exception
  when others then
    select 0,"ERRORMSG"() from "Dummy"
end