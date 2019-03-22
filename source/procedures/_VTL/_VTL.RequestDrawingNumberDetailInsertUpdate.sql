create procedure "_VTL"."RequestDrawingNumberDetailInsertUpdate"( 
  in @RequestDrawingNumberDetailId integer default null,
  in @RequestDrawingNumberId integer default null,
  in @RequestDrawingNumberDetailTitle varchar(100) default null,
  in @GroupNumber char(3) default null,
  in @TALTAssociated varchar(200) default null,
  in @SRDDrawing bit default null,
  in @AsBuilt bit default null,
  in @Functional bit default null,
  in @NDDrawing bit default null,
  in @Change char(10) default null,
  in @Revision char(10) default null,
  in @DrawingNumber varchar(20) default null,
  in @DocumentId integer default null,
  in @VTLVesselIDs long varchar default null ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar,
  "RequestDrawingNumberDetailId" integer ) 
begin
  call "VTL"."RequestDrawingNumberDetailInsertUpdate"(@RequestDrawingNumberDetailId,
  @RequestDrawingNumberId,
  @RequestDrawingNumberDetailTitle,
  @GroupNumber,
  @TALTAssociated,
  @SRDDrawing,
  @AsBuilt,
  @Functional,
  @NDDrawing,
  @Change,
  @Revision,
  @DrawingNumber,
  @DocumentId,
  @VTLVesselIDs)
end