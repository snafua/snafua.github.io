create procedure "_VTL"."DocumentsRelationshipDelete"( in @RowId char(1024),in @ChildDocumentId integer ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentsRelationshipDelete"(@RowId,@ChildDocumentId)
end