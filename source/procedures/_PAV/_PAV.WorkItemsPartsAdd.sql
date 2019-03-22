create procedure "_PAV"."WorkItemsPartsAdd"( 
  in @Parts long varchar,
  in @Equipments long varchar,
  in @QuantityRequired integer default 1 ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  /*
2017-11-13 RJM CSET @WorkItemId       = ECO.Base64Decode( SWA.KeyValuePairParse( @Part, 'WorkItemId' ) ); was breaking proc. 9378 decodes as gibberish
2019-01-17 AIM E-04898 D-04226 pulling @VesselId and @WorkItemId from @Equipments instead of @Parts
2019-02-12 JLD E-04898 D-04245 Need to check for @VesselId and @WorkItemId in @Parts if it doesn't exist in @Equipments
*/
  declare @VesselId integer;
  declare @WorkItemId integer;
  declare @WorkItemEquipmentId integer;
  declare @LogisticsHSC char(25);
  declare @NavyStockNumber char(25);
  declare @PartCage char(25);
  declare @PartManufacturer char(128);
  declare @PartNumber char(40);
  declare @PartDescription char(128);
  declare @UnitPrice numeric(15,2);
  declare @UnitOfMeasure char(25);
  declare @ErrorMessage char(256);
  declare @WorkItemEquipmentList long varchar;
  declare @PartQuantity integer;
  declare @NumberOfEquipment integer;
  declare @NumberOfParts integer;
  declare local temporary table @TempEquipments(
    "WorkItemEquipmentId" integer null,
    ) not transactional;
  -- Initialize qty variables
  set @PartQuantity = 0;
  set @NumberOfEquipment = 0;
  set @NumberOfParts = 0;
  set @PartQuantity = @QuantityRequired;
  set @ErrorMessage = null;
  for "EachEquipmentRow" as "EquipmentCursor" insensitive cursor for
    select "ECO"."Base64Decode"("CSValue") as @Equipment
      from "SWA"."ParseList"(@Equipments)
  do
    set @VesselId = "SWA"."KeyValuePairParse"(@Equipment,'VesselId');
    set @WorkItemId = "SWA"."KeyValuePairParse"(@Equipment,'WorkItemId');
    set @WorkItemEquipmentId = "SWA"."KeyValuePairParse"(@Equipment,'WorkItemEquipmentId');
    set @NumberOfEquipment = @NumberOfEquipment+1;
    insert into @TempEquipments( "WorkItemEquipmentId" ) values( @WorkItemEquipmentId ) 
  end for;
  -- Create a CSV list of WorkItemEquipmentId's and calculate the total quantity of each part
  if @NumberOfEquipment > 0 then
    set @PartQuantity = @QuantityRequired*@NumberOfEquipment;
    select "LIST"("WorkItemEquipmentId") into @WorkItemEquipmentList from @TempEquipments
  end if;
  for "EachPartRow" as "PartCursor" insensitive cursor for
    select "ECO"."Base64Decode"("CSValue") as @Part
      from "SWA"."ParseList"(@Parts)
  do
    set @NumberOfParts = @NumberOfParts+1;
    if(@VesselId is null) then
      set @VesselId = "SWA"."KeyValuePairParse"(@Part,'VesselId')
    end if;
    if(@WorkItemId is null) then
      set @WorkItemId = "SWA"."KeyValuePairParse"(@Part,'WorkItemId')
    end if;
    set @LogisticsHSC = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'HSC'));
    set @NavyStockNumber = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'NSN'));
    set @PartCage = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'Cage'));
    set @PartManufacturer = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'Manufacturer'));
    set @PartNumber = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'PartNumber'));
    set @PartDescription = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'Description'));
    set @UnitPrice = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'UnitPrice'));
    set @UnitOfMeasure = "ECO"."Base64Decode"("SWA"."KeyValuePairParse"(@Part,'UnitOfMeasure'));
    call "PAV"."WorkItemsPartsAdd"(@VesselId,@WorkItemId,@PartQuantity,@PartDescription,@PartManufacturer,@PartCage,@NavyStockNumber,@PartNumber,@UnitOfMeasure,@UnitPrice,@QuantityRequired,@WorkItemEquipmentList)
  end for;
  select 1,"STRING"(@NumberOfParts,' parts were added successfully...') from "DUMMY"
exception
  when others then
    set @ErrorMessage = "ERRORMSG"();
    select 0 as "Success",
      @ErrorMessage as "ErrorMessage"
      from "DUMMY"
end