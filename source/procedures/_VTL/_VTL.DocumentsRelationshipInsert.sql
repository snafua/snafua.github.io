create procedure "_VTL"."DocumentsRelationshipInsert"( in @RowId char(1024),in @ChildRowId char(1024),in @DocumentRelationShipTypeId smallint,in @DocumentRemarks long varchar ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentsRelationshipInsert"(@RowId,@ChildRowId,@DocumentRelationShipTypeId,@DocumentRemarks)
end