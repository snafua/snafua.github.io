create procedure "_VTL"."DocumentColne"( in @DocumentId integer,in @OriginalRowId char(1024) ) 
result( 
  "RowId" char(1024),
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentColne"(@DocumentId,@OriginalRowId)
end