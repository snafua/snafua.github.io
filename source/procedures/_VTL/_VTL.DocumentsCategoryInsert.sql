create procedure "_VTL"."DocumentsCategoryInsert"( in @RowId char(1024),in @DocumentCategoryId integer ) 
result( 
  "Success" bit,
  "ErrorMEssage" long varchar ) 
begin
  call "VTL"."DocumentsCategoryInsert"(@RowId,@DocumentCategoryId)
end