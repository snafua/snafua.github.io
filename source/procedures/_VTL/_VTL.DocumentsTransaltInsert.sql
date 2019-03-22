create procedure "_VTL"."DocumentsTransaltInsert"( in @RowId char(1024),in @TransaltId integer,in @TransAltNumber char(25) ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentsTransaltInsert"(@RowId,@TransaltId,@TransAltNumber)
end