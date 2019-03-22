create procedure "_PNG"."WorkItemsPartsOrderEditSave"( 
  in @PartRowId long varchar,
  in @CageCode char(25) default null,
  in @Quantity char(25) default null,
  in @UnitCost char(25) default null,
  in @DateRequired char(25) default null,
  in @SourceOfSupply char(1024) default null ) 
result( 
  "Success" bit,
  "ErrorMessage" long varchar ) 
begin
  call "PNG"."WorkItemsPartsOrderEditSave"(@PartRowId,@CageCode,@Quantity,@UnitCost,@DateRequired,@SourceOfSupply)
end