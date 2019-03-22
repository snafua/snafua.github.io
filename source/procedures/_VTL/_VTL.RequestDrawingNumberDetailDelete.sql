create procedure "_VTL"."RequestDrawingNumberDetailDelete"( 
  in @RequestDrawingNumberDetailId integer default null,
  in @DrawingNumber char(20) default null,
  in @DocumentId integer default null ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."RequestDrawingNumberDetailDelete"(@RequestDrawingNumberDetailId,
  @DrawingNumber,
  @DocumentId)
end